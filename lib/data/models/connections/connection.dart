class Connection {
  final String id,
      userId,
      displayName,
      userHandle,
      connectedToUserId,
      createTime;
  final String? photo;

  Connection({
    required this.id,
    required this.userId,
    required this.displayName,
    required this.userHandle,
    required this.connectedToUserId,
    required this.createTime,
    this.photo,
  });

  // this a named constructor to build a class from Json
  // used to extract the class from a graphQL response for example
  Connection.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        userId = json['userId'],
        displayName = json['displayName'],
        connectedToUserId = json['connectedToUserId'],
        userHandle = json['userHandle'],
        createTime = json['createTime'],
        photo = json['photo'] ?? '';

  String get initials {
    return displayName
        .trim()
        .split(RegExp(' +'))
        .map((name) => name[0])
        .take(3)
        .join();
  }
}
