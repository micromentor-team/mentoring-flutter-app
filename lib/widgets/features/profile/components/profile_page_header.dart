import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../../../constants/constants.dart';
import '../../../../models/inbox_model.dart';
import '../../../../services/graphql/providers/channels_provider.dart';
import '../../../../services/graphql/providers/invitations_provider.dart';
import '../../../../services/graphql/providers/user_provider.dart';

class ProfilePageHeader extends StatefulWidget {
  final AuthenticatedUser authenticatedUser;
  final String userId;
  final String? invitationId;
  final String userFirstName;
  final MessageDirection invitationDirection;

  const ProfilePageHeader({
    super.key,
    required this.authenticatedUser,
    required this.userId,
    required this.userFirstName,
    this.invitationId,
    this.invitationDirection = MessageDirection.unset,
  });

  @override
  State<ProfilePageHeader> createState() => _ProfilePageHeaderState();
}

class _ProfilePageHeaderState extends State<ProfilePageHeader> {
  late final InvitationsProvider _invitationsProvider;
  late final InboxModel _inboxModel;

  @override
  void initState() {
    super.initState();
    _invitationsProvider = Provider.of<InvitationsProvider>(
      context,
      listen: false,
    );
    _inboxModel = Provider.of<InboxModel>(
      context,
      listen: false,
    );
  }

  Widget _createAcceptRejectInviteButtons(
    ThemeData theme,
    AppLocalizations l10n,
    GoRouter router,
  ) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          style: ElevatedButton.styleFrom(
            minimumSize: Dimensions.bigButtonSize,
            backgroundColor: theme.colorScheme.secondaryContainer,
            textStyle: theme.textTheme.labelLarge,
          ),
          onPressed: () async {
            await _invitationsProvider.declineChannelInvitation(
              channelInvitationId: widget.invitationId!,
            );
            await _inboxModel.refreshPendingReceivedInvitations();
          },
          child: Text(
            l10n.actionDecline,
            style: theme.textTheme.labelLarge?.copyWith(
              color: theme.colorScheme.primary,
            ),
          ),
        ),
        const SizedBox(width: Insets.paddingMedium),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            minimumSize: Dimensions.bigButtonSize,
            backgroundColor: theme.colorScheme.primary,
            textStyle: theme.textTheme.labelLarge,
          ),
          onPressed: () async {
            await _invitationsProvider.acceptChannelInvitation(
              channelInvitationId: widget.invitationId!,
            );
            await _inboxModel.refreshPendingReceivedInvitations();
            await _inboxModel.refreshActiveChannels();
            final ChannelForUser? newChannel = _inboxModel.activeChannels
                .where(
                  (e) => e.participants.any((p) => p.user.id == widget.userId),
                )
                .firstOrNull;
            if (newChannel != null) {
              router.push('${Routes.inboxChats.path}/${newChannel.id}');
            } else {
              router.push(Routes.inboxChats.path);
            }
          },
          child: Text(
            l10n.actionAccept,
            style: theme.textTheme.labelLarge?.copyWith(
              color: theme.colorScheme.onPrimary,
            ),
          ),
        ),
      ],
    );
  }

  Widget _createSendInviteButton(
    ThemeData theme,
    AppLocalizations l10n,
    GoRouter router,
  ) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Dimensions.bigButtonSize,
        backgroundColor: theme.colorScheme.surface,
        disabledBackgroundColor: theme.colorScheme.surface,
      ),
      onPressed: () {
        router.push('${Routes.profileInvite.path}/${widget.userId}');
      },
      child: Row(
        children: [
          Text(
            l10n.profileViewHeaderInvite(widget.userFirstName),
            style: theme.textTheme.labelLarge?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
            ),
          ),
          const SizedBox(
            width: Insets.paddingSmall,
          ),
          Icon(
            Icons.send_outlined,
            color: theme.colorScheme.onSurfaceVariant,
          ),
        ],
      ),
    );
  }

  Widget _createWithdrawInviteButton(
    ThemeData theme,
    AppLocalizations l10n,
  ) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Dimensions.bigButtonSize,
        backgroundColor: theme.colorScheme.primary,
        textStyle: theme.textTheme.labelLarge,
      ),
      onPressed: () async {
        await _invitationsProvider.withdrawChannelInvitation(
          channelInvitationId: widget.invitationId!,
        );
        _inboxModel.refreshPendingSentInvitations();
      },
      child: Text(
        l10n.profileViewHeaderWithdraw,
        style: theme.textTheme.labelLarge?.copyWith(
          color: theme.colorScheme.onPrimary,
        ),
      ),
    );
  }

  Widget _createEditProfileButton(
    ThemeData theme,
    AppLocalizations l10n,
  ) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Dimensions.bigButtonSize,
        backgroundColor: theme.colorScheme.primary,
        textStyle: theme.textTheme.labelLarge,
      ),
      onPressed: () {
        context.push(Routes.profileEdit.path);
      },
      child: Text(
        l10n.profileViewEditButtonLabel,
        style: theme.textTheme.labelLarge?.copyWith(
          color: theme.colorScheme.onPrimary,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    final GoRouter router = GoRouter.of(context);
    final Widget actions;
    switch (widget.invitationDirection) {
      case MessageDirection.unset:
        actions = _createSendInviteButton(theme, l10n, router);
        break;
      case MessageDirection.received:
        actions = _createAcceptRejectInviteButtons(theme, l10n, router);
        break;
      case MessageDirection.sent:
        actions = _createWithdrawInviteButton(theme, l10n);
        break;
      case MessageDirection.self:
        actions = _createEditProfileButton(theme, l10n);
        break;
    }
    return Container(
      color: theme.colorScheme.secondaryContainer,
      height: 68.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: Icon(
              Icons.keyboard_backspace_outlined,
              color: theme.colorScheme.secondary,
            ),
            onPressed: () => router.pop(),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(end: Insets.paddingLarge),
            child: actions,
          )
        ],
      ),
    );
  }
}
