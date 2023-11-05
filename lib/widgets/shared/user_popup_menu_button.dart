import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/services/graphql/providers/user_provider.dart';
import 'package:provider/provider.dart';

import '../../constants/constants.dart';
import '../../models/inbox_model.dart';
import '../../services/graphql/providers/channels_provider.dart';
import '../../utilities/debug_logger.dart';
import '../../utilities/errors/errors.dart';
import 'report_user_dialog.dart';

class UserPopupMenuButton extends StatefulWidget {
  final bool includeArchiveOption;
  final bool includeUnarchiveOption;
  final bool includeBlockOption;
  final bool includeReportOption;
  final String userFullName;

  final String userId;
  final String? channelId;

  const UserPopupMenuButton({
    super.key,
    this.includeArchiveOption = false,
    this.includeUnarchiveOption = false,
    this.includeBlockOption = true,
    this.includeReportOption = true,
    required this.userFullName,
    required this.userId,
    this.channelId,
  });

  @override
  State<UserPopupMenuButton> createState() => _UserPopupMenuButtonState();
}

class _UserPopupMenuButtonState extends State<UserPopupMenuButton> {
  late final UserProvider _userProvider;
  @override
  void initState() {
    super.initState();
    _userProvider = Provider.of<UserProvider>(context, listen: false);
  }

  Future<void> _archiveChannel(
    GoRouter router,
    ChannelsProvider channelsProvider,
    InboxModel inboxModel,
  ) async {
    await channelsProvider.archiveChannelForAuthenticatedUser(
      channelId: widget.channelId!,
    );
    inboxModel.setChannelArchived(
      channelId: widget.channelId!,
      isArchivedForMe: true,
    );
    await inboxModel.refreshUnseenMessages();
    router.push(Routes.inboxChats.path);
  }

  Future<void> _unarchiveChannel(
    GoRouter router,
    ChannelsProvider channelsProvider,
    InboxModel inboxModel,
  ) async {
    await channelsProvider.unarchiveChannelForAuthenticatedUser(
      channelId: widget.channelId!,
    );
    inboxModel.setChannelArchived(
      channelId: widget.channelId!,
      isArchivedForMe: false,
    );
    await inboxModel.refreshUnseenMessages();
    router.push(Routes.inboxChats.path);
  }

  @override
  Widget build(BuildContext context) {
    if (widget.includeArchiveOption && widget.includeUnarchiveOption) {
      throw UnexpectedStateError(
        message: 'Cannot show options to archive and unarchive simultaneously',
      );
    }
    if ((widget.includeArchiveOption || widget.includeUnarchiveOption) &&
        widget.channelId == null) {
      throw UnexpectedStateError(
        message: 'ChannelId needed to archive or unarchive chat',
      );
    }
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    final channelsProvider = Provider.of<ChannelsProvider>(
      context,
      listen: false,
    );
    final inboxModel = Provider.of<InboxModel>(
      context,
      listen: false,
    );
    final GoRouter router = GoRouter.of(context);
    return PopupMenuButton(
      icon: const Icon(Icons.more_vert),
      itemBuilder: (context) => [
        if (widget.includeArchiveOption)
          PopupMenuItem(
            value: 0,
            child: Text(l10n.userOverflowActionArchive),
          ),
        if (widget.includeUnarchiveOption)
          PopupMenuItem(
            value: 1,
            child: Text(l10n.userOverflowActionUnarchive),
          ),
        if (widget.includeBlockOption)
          PopupMenuItem(
            value: 2,
            child: Text(l10n.userOverflowActionBlock),
          ),
        if (widget.includeReportOption)
          PopupMenuItem(
            value: 3,
            child: Text(l10n.userOverflowActionReport),
          ),
      ],
      onSelected: (value) {
        switch (value) {
          case 0:
            _archiveChannel(router, channelsProvider, inboxModel);
            break;
          case 1:
            _unarchiveChannel(router, channelsProvider, inboxModel);
            break;
          case 2:
            showDialog(
                context: context,
                builder: (dialogContext) {
                  return AlertDialog(
                    title: Text(l10n.userBlockTitle(widget.userFullName)),
                    content: Text(l10n.userBlockSubtitle(widget.userFullName)),
                    actions: [
                      TextButton(
                        child: Text(l10n.actionCancel),
                        onPressed: () => Navigator.pop(dialogContext),
                      ),
                      OutlinedButton(
                        child: Text(l10n.actionConfirm),
                        onPressed: () {
                          _userProvider.blockUser(userId: widget.userId);
                          DebugLogger.info(
                              'TODO: Blocked user${widget.userFullName}');
                          Navigator.pop(dialogContext);
                        },
                      ),
                    ],
                  );
                });
            break;
          case 3:
            showDialog(
              context: context,
              builder: (context) => ReportUserDialog(
                userId: widget.userId,
                userFullName: widget.userFullName,
              ),
            );
            break;
          default:
            throw UnexpectedStateError(
              message: 'Invalid PopupMenuItem value: $value ',
            );
        }
      },
    );
  }
}
