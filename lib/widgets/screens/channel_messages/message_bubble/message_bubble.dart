import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:intl/intl.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/providers/channels_provider.dart';
import 'package:mm_flutter_app/providers/user_provider.dart';
import 'package:mm_flutter_app/utilities/emoji_utils/emoji_utils.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../providers/messages_provider.dart';
import '../reply_message.dart';

class MessageBubble extends StatelessWidget {
  const MessageBubble({
    Key? key,
    required this.message,
    required this.participants,
    this.replyingTo,
  }) : super(key: key);
  final List<ChannelParticipant> participants;
  final ChannelMessage message;
  final ChannelMessage? replyingTo;

  Future<void> _onOpenLink(LinkableElement link) async {
    try {
      if (await canLaunchUrl(link.url as Uri)) {
        await launchUrl(link.url as Uri);
      } else {
        throw 'Could not launch $link';
      }
    } catch (error) {
      debugPrint('$error');
    }
  }

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

  Widget _buildMessageStatus(AppLocalizations l10n, ThemeData theme, isUser) {
    String? status;
    if (message.deletedAt != null) {
      if (isUser) {
        status = l10n.messagesStatusDeleted;
      }
    } else if (message.editedAt != null) {
      status = l10n.messagesStatusEdited;
    }

    if (status != null) {
      return Text(
        status,
        style: theme.textTheme.labelSmall?.copyWith(
          fontStyle: FontStyle.italic,
          color: theme.colorScheme.outline,
        ),
      );
    } else {
      return const SizedBox();
    }
  }

  Widget _buildMessageText(AppLocalizations l10n, ThemeData theme, isUser) {
    final isEmoji = EmojiUtils.strictlyEmojis(message.messageText!);
    if (message.deletedAt != null && !isUser) {
      return Padding(
        padding: const EdgeInsets.only(
          top: Insets.widgetSmallInset,
          bottom: Insets.widgetMediumInset,
        ),
        child: Text(
          l10n.messagesStatusDeleted,
          style: theme.textTheme.bodyMedium?.copyWith(
            color: theme.colorScheme.outline,
          ),
        ),
      );
    } else {
      return Padding(
        padding: isEmoji
            ? const EdgeInsets.only(
                bottom: Insets.widgetMediumInset,
              )
            : EdgeInsets.zero,
        child: SelectableLinkify(
          text: message.messageText!,
          onOpen: (link) => _onOpenLink(link),
          linkStyle: theme.textTheme.bodyMedium?.copyWith(
            color: isUser
                ? theme.colorScheme.onPrimaryContainer
                : theme.colorScheme.onTertiaryContainer,
          ),
          style: theme.textTheme.bodyMedium?.copyWith(
            fontSize: isEmoji ? 30.0 : null,
            decoration:
                message.deletedAt != null ? TextDecoration.lineThrough : null,
            decorationThickness: 2.0,
            decorationColor: theme.colorScheme.error,
            color: isUser
                ? theme.colorScheme.onPrimaryContainer
                : theme.colorScheme.onTertiaryContainer,
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final sentAt = DateFormat.jm().format(message.createdAt).toLowerCase();
    final isUser = _isCurrentUser(
      userId: message.createdBy,
      context: context,
    );
    // 🚨 TODO: If the message has ANY related content/attachments: maintain `false`.
    final isEmoji = EmojiUtils.strictlyEmojis(message.messageText!);
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    final ThemeData theme = Theme.of(context);

    return Padding(
      // Bubble padding
      padding: const EdgeInsets.symmetric(vertical: Insets.widgetSmallInset),
      child: Row(
        children: [
          Column(
            children: [
              Container(
                constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width * 0.8,
                ),
                child: Material(
                  // If the message is only emojis, ditch the elevation and don't deal with the shadow.
                  elevation: isEmoji ? 0 : Elevations.level1,
                  borderRadius: BorderRadiusDirectional.only(
                    topStart: isUser
                        ? const Radius.circular(
                            Radii.roundedRectRadiusSmall,
                          )
                        : Radius.zero,
                    topEnd: isUser
                        ? Radius.zero
                        : const Radius.circular(
                            Radii.roundedRectRadiusSmall,
                          ),
                    bottomStart: const Radius.circular(
                      Radii.roundedRectRadiusSmall,
                    ),
                    bottomEnd: const Radius.circular(
                      Radii.roundedRectRadiusSmall,
                    ),
                  ),
                  // If the message is only emojis, make the bubble transparent
                  color: isEmoji
                      ? Colors.transparent
                      : isUser
                          ? theme.colorScheme.primaryContainer
                          : theme.colorScheme.tertiaryContainer,
                  child: Padding(
                    // Message content padding
                    padding: EdgeInsets.only(
                      left: Insets.widgetSmallInset,
                      top: Insets.widgetSmallInset,
                      right: Insets.widgetSmallInset,
                      // If the message is only emojis, we'll provide this padding for sentAt down the line
                      bottom: isEmoji ? 0 : Insets.widgetSmallInset,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        if (!isUser)
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              if (participants.length > 2)
                                Text(
                                  _participantName(userId: message.createdBy),
                                  style: theme.textTheme.labelSmall?.copyWith(
                                    overflow: TextOverflow.ellipsis,
                                    fontWeight: FontWeight.bold,
                                    color: theme.colorScheme.outline,
                                  ),
                                ),
                              _buildMessageStatus(l10n, theme, isUser),
                            ],
                          ),
                        // TODO: Paint attachments/content
                        if (replyingTo != null && message.deletedAt == null)
                          Padding(
                            // Padding between attachment and message body
                            padding: const EdgeInsets.only(
                              bottom: Insets.widgetSmallInset,
                            ),
                            child: ReplyMessage(
                              replyMessage: replyingTo!,
                              participants: participants,
                            ),
                          ),
                        _buildMessageText(l10n, theme, isUser),
                        const SizedBox(
                          height: Insets.widgetSmallestInset,
                        ),
                        Row(
                          children: [
                            if (isUser)
                              const Expanded(
                                child: SizedBox(),
                              ),
                            Text(
                              sentAt,
                              style: theme.textTheme.labelSmall?.copyWith(
                                color: theme.colorScheme.outline,
                              ),
                            ),
                            if (!isUser)
                              const Expanded(
                                child: SizedBox(),
                              ),
                          ],
                        ),
                        // _buildMessageStatus(isUser)
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
