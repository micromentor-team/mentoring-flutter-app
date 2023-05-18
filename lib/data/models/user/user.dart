class User {
  final String id, userHandle, fullName;
  String? avatarUrl, email, adminNotes;

  User(
      {required this.id,
      required this.userHandle,
      required this.fullName,
      this.avatarUrl,
      this.email,
      this.adminNotes});

  // this a named constructor to build a class from Json
  // used to extract the class from a graphQL response for example
  User.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        userHandle = json['userHandle'],
        fullName = json['fullName'] ?? '',
        avatarUrl = json['avatarUrl'] ??
            'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png',
        email = json['email'] ?? '',
        adminNotes = json['adminNotes'] ?? '';

  String get initials {
    return fullName
        .trim()
        .split(RegExp(' +'))
        .map((name) => name[0])
        .take(3)
        .join();
  }
}
