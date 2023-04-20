import 'package:flutter/material.dart';

class Message {
  final String id, createdBy,channelId, messageText;
  final DateTime? createdAt,updatedAt,deletedAt,editedAt;
  final List? statuses;
  final String? replyToMessageId;
  final bool isLocal;
  late Widget? replyContext;

  Message({
    required this.id,
    required this.createdBy,
    required this.channelId,
    required this.messageText,
    required this.createdAt,
    required this.isLocal,
    this.statuses,
    this.replyToMessageId,
    this.editedAt,
    this.updatedAt,
    this.deletedAt,
    this.replyContext,
  });

}
