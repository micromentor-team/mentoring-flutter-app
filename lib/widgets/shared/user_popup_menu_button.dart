import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../constants/constants.dart';
import '../../models/inbox_model.dart';
import '../../services/graphql/providers/channels_provider.dart';
import '../../utilities/debug_logger.dart';
import '../../utilities/errors/errors.dart';
import 'report_user_dialog.dart';

class UserPopupMenuButton extends StatelessWidget {
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
  Widget build(BuildContext context) {
    if (includeArchiveOption && includeUnarchiveOption) {
      throw UnexpectedStateError(
        message: 'Cannot show options to archive and unarchive simultaneously',
      );
    }
    if ((includeArchiveOption || includeUnarchiveOption) && channelId == null) {
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
        if (includeArchiveOption)
          PopupMenuItem(
            value: 0,
            child: Text(l10n.userOverflowActionArchive),
          ),
        if (includeUnarchiveOption)
          PopupMenuItem(
            value: 1,
            child: Text(l10n.userOverflowActionUnarchive),
          ),
        if (includeBlockOption)
          PopupMenuItem(
            value: 2,
            child: Text(l10n.userOverflowActionBlock),
          ),
        if (includeReportOption)
          PopupMenuItem(
            value: 3,
            child: Text(l10n.userOverflowActionReport),
          ),
      ],
      onSelected: (value) async {
        switch (value) {
          case 0:
            await channelsProvider.archiveChannelForAuthenticatedUser(
              channelId: channelId!,
            );
            inboxModel.setChannelArchived(
              channelId: channelId!,
              isArchivedForMe: true,
            );
            await inboxModel.refreshUnseenMessages();
            router.push(Routes.inboxChats.path);
            break;
          case 1:
            await channelsProvider.unarchiveChannelForAuthenticatedUser(
              channelId: channelId!,
            );
            inboxModel.setChannelArchived(
              channelId: channelId!,
              isArchivedForMe: false,
            );
            await inboxModel.refreshUnseenMessages();
            router.push(Routes.inboxChats.path);
            break;
          case 2:
            showDialog(
                context: context,
                builder: (dialogContext) {
                  return AlertDialog(
                    title: Text(l10n.userBlockTitle(userFullName)),
                    content: Text(l10n.userBlockSubtitle(userFullName)),
                    actions: [
                      TextButton(
                        child: Text(l10n.actionCancel),
                        onPressed: () => Navigator.pop(dialogContext),
                      ),
                      OutlinedButton(
                        child: Text(l10n.actionConfirm),
                        onPressed: () {
                          //TODO: Block user
                          DebugLogger.info('TODO: Block user');
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
                userId: userId,
                userFullName: userFullName,
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
