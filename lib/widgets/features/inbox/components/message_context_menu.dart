import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/providers/messages_provider.dart';
import 'package:provider/provider.dart';

import '../../../../__generated/schema/schema.graphql.dart';
import 'message_bubble.dart';
import 'message_input.dart';

class MessageContextMenu extends StatefulWidget {
  final MessageBubble messageBubble;

  const MessageContextMenu({
    Key? key,
    required this.messageBubble,
  }) : super(key: key);

  @override
  State<MessageContextMenu> createState() => _MessageContextMenuState();
}

class _MessageContextMenuState extends State<MessageContextMenu> {
  late AppLocalizations _l10n;
  late final MessagesProvider _messagesProvider;
  final GlobalKey _key = GlobalKey();

  @override
  void initState() {
    super.initState();
    _messagesProvider = Provider.of<MessagesProvider>(context, listen: false);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _l10n = AppLocalizations.of(context)!;
  }

  void _showContextDialog(bool isEditing) {
    showDialog(
      context: context,
      builder: (dialogContext) {
        final renderBox = _key.currentContext?.findRenderObject() as RenderBox?;
        final position = renderBox?.localToGlobal(Offset.zero);
        final size = renderBox?.size;
        final double verticalOffset;
        if (kIsWeb) {
          verticalOffset = 0;
        } else {
          verticalOffset = Dimensions.customToolbarHeight - kToolbarHeight;
        }
        final ThemeData theme = Theme.of(dialogContext);
        final focusedMessageBubble = SizedBox(
          width: size?.width ?? 0,
          height: size?.height ?? 0,
          child: widget.messageBubble,
        );
        return GestureDetector(
          onTap: () => _closeDialog(dialogContext),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Stack(
              children: [
                if (!isEditing)
                  PositionedDirectional(
                    start: widget.messageBubble.isSentByAuthenticatedUser
                        ? null
                        : AppEdgeInsets.paddingCompact,
                    end: widget.messageBubble.isSentByAuthenticatedUser
                        ? AppEdgeInsets.paddingCompact
                        : null,
                    top: position != null ? position.dy - verticalOffset : 0,
                    width: MediaQuery.of(dialogContext).size.width -
                        2 * AppEdgeInsets.paddingCompact,
                    child: Column(
                      crossAxisAlignment:
                          widget.messageBubble.isSentByAuthenticatedUser
                              ? CrossAxisAlignment.end
                              : CrossAxisAlignment.start,
                      children: [
                        focusedMessageBubble,
                        if (widget.messageBubble.isSentByAuthenticatedUser &&
                            !widget.messageBubble.isDeleted)
                          _createBottomMessageMenu(dialogContext, theme),
                      ],
                    ),
                  ),
                if (isEditing)
                  Builder(
                    builder: (editDialogContext) {
                      final controller = TextEditingController();
                      controller.text =
                          widget.messageBubble.message.messageText!;
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: AppEdgeInsets.paddingCompact,
                              vertical: Insets.paddingSmall,
                            ),
                            child: focusedMessageBubble,
                          ),
                          Material(
                            color: Colors.transparent,
                            child: MessageInput(
                              participants: widget.messageBubble.participants,
                              autoFocus: true,
                              controller: controller,
                              onSubmit: (val, replyingToMessageId) {
                                _messagesProvider.updateMessage(
                                  input: Input$ChannelMessageInput(
                                    channelId:
                                        widget.messageBubble.message.channelId,
                                    id: widget.messageBubble.message.id,
                                    messageText: val,
                                  ),
                                );
                                _closeDialog(dialogContext);
                              },
                            ),
                          ),
                        ],
                      );
                    },
                  ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _closeDialog(BuildContext dialogContext) {
    Navigator.pop(dialogContext);
  }

  void _editMessage(BuildContext dialogContext) {
    _closeDialog(dialogContext);
    _showContextDialog(true);
  }

  void _deleteMessage(BuildContext dialogContext) {
    _messagesProvider.deleteMessage(
      deletePhysically: false,
      channelMessageId: widget.messageBubble.message.id,
    );
    _closeDialog(dialogContext);
  }

  Widget _createBottomMessageMenu(BuildContext dialogContext, ThemeData theme) {
    const menuWidth = 128.0;
    return Padding(
      padding: const EdgeInsets.only(top: Insets.paddingExtraSmall),
      child: Material(
        elevation: Elevations.level1,
        textStyle: theme.textTheme.bodyMedium?.copyWith(
          color: theme.colorScheme.onPrimaryContainer,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(
            Radii.roundedRectRadiusSmall,
          ),
        ),
        color: theme.colorScheme.primaryContainer,
        child: Column(
          children: [
            InkWell(
              onTap: () => _editMessage(dialogContext),
              child: SizedBox(
                width: menuWidth,
                child: Padding(
                  padding: const EdgeInsets.all(Insets.paddingSmall),
                  child: Row(
                    children: [
                      Text(_l10n.messagesActionEdit),
                      const Spacer(),
                      Icon(
                        Icons.edit_outlined,
                        size: 16.0,
                        color: theme.colorScheme.onPrimaryContainer,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: menuWidth,
              child: Divider(
                height: 0,
                indent: Insets.paddingSmall,
                endIndent: Insets.paddingSmall,
              ),
            ),
            InkWell(
              onTap: () => _deleteMessage(dialogContext),
              child: SizedBox(
                width: menuWidth,
                child: Padding(
                  padding: const EdgeInsets.all(Insets.paddingSmall),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(_l10n.messagesActionDelete),
                      const Spacer(),
                      Icon(
                        Icons.delete_outlined,
                        size: 16.0,
                        color: theme.colorScheme.onPrimaryContainer,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      key: _key,
      onLongPress: () => _showContextDialog(false),
      onSecondaryTap: () => _showContextDialog(false),
      child: Builder(builder: (context) {
        return widget.messageBubble;
      }),
    );
  }
}
