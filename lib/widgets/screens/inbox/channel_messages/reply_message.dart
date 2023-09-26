import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/providers/channels_provider.dart';
import 'package:mm_flutter_app/providers/user_provider.dart';
import 'package:provider/provider.dart';

import '../../../../providers/messages_provider.dart';

class ReplyMessage extends StatelessWidget {
  const ReplyMessage({
    super.key,
    required this.replyMessage,
    required this.participants,
    this.onClose,
  });

  final List<ChannelParticipant> participants;
  final ChannelMessage replyMessage;
  final VoidCallback? onClose;

  bool _isCurrentUser({userId, context}) {
    return Provider.of<UserProvider>(context, listen: false).user?.id == userId;
  }

  String _participantName({userId}) {
    final ChannelParticipant? participant =
        participants.where((item) => item.user.id == userId).firstOrNull;
    if (participant != null) {
      return participant.user.fullName!
          .trim()
          .split(RegExp(' +'))
          .take(1)
          .join();
    }
    return '';
  }

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    final ThemeData theme = Theme.of(context);
    final isUser = _isCurrentUser(
      userId: replyMessage.createdBy,
      context: context,
    );
    return Material(
      elevation: Elevations.level1,
      color: isUser
          ? theme.colorScheme.primaryContainer
          : theme.colorScheme.tertiaryContainer,
      borderRadius: BorderRadius.circular(Radii.roundedRectRadiusSmall),
      child: Stack(
        children: [
          PositionedDirectional(
            top: 0,
            bottom: 0,
            start: 0,
            child: Container(
              decoration: BoxDecoration(
                color: isUser
                    ? theme.colorScheme.primary
                    : theme.colorScheme.tertiary,
                borderRadius: const BorderRadiusDirectional.only(
                  topStart: Radius.circular(Radii.roundedRectRadiusSmall),
                  bottomStart: Radius.circular(Radii.roundedRectRadiusSmall),
                ),
              ),
              width: Insets.paddingSmall,
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(
              start: Insets.paddingSmall,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(Insets.paddingSmall),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          _participantName(userId: replyMessage.createdBy),
                          maxLines: 1,
                          style: theme.textTheme.bodyMedium?.copyWith(
                            color: isUser
                                ? theme.colorScheme.onPrimaryContainer
                                : theme.colorScheme.onTertiaryContainer,
                            overflow: TextOverflow.ellipsis,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          replyMessage.deletedAt == null
                              ? replyMessage.messageText!
                              : l10n.messagesStatusDeletedByOther,
                          maxLines: 1,
                          style: theme.textTheme.bodyMedium?.copyWith(
                            color: isUser
                                ? theme.colorScheme.onPrimaryContainer
                                : theme.colorScheme.onTertiaryContainer,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                if (onClose != null)
                  IconButton(
                    padding: EdgeInsets.zero,
                    // An empty BoxConstraints overrides the default size, moreso than setting the visualDensity
                    constraints: const BoxConstraints(),
                    //  Hide the splash effect
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    icon: const Icon(
                      Icons.close,
                      size: 24.0,
                    ),
                    onPressed: onClose,
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
