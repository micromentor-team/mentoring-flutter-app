class UnseenMessages {
  final String messageId,createdBy,channelId,messageText,senderFullName;

  UnseenMessages(
      {required this.channelId,
        required this.messageId,
        required this.messageText,
        required this.createdBy,
        required this.senderFullName});

  UnseenMessages.fromJson(Map<String, dynamic> json)
      : messageId = json['id'].toString(),
        messageText = json['messageText'].toString(),
        createdBy = json['createdBy'].toString(),
        senderFullName = json['senderFullName'].toString(),
        channelId = json['channelId'].toString();
}