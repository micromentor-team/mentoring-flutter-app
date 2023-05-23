class Message {
  final String id, createdBy, channelId, messageText, createdAt;
  final String? updatedAt, deletedAt, editedAt, replyToMessageId;
  final List? statuses;

  Message({
    required this.id,
    required this.createdBy,
    required this.channelId,
    required this.messageText,
    required this.createdAt,
    this.editedAt,
    this.updatedAt,
    this.deletedAt,
    this.replyToMessageId,
    this.statuses,
  });

  // this a named constructor to build a class from Json
  // used to extract the class from a graphQL response for example
  Message.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        createdBy = json['createdBy'],
        channelId = json['channelId'],
        messageText = json['messageText'],
        createdAt = DateTime.parse(json['createdAt']).toLocal().toString(),
        editedAt = json['editedAt'],
        updatedAt = json['updatedAt'],
        deletedAt = json['deletedAt'],
        replyToMessageId = json['replyToMessageId'],
        statuses = json['statuses']??[];
}
