class User {
  final String id, fullName, avatarUrl, userHandle, email,adminNotes;

  User(
      {required this.id,
      required this.email,
      required this.fullName,
      required this.avatarUrl,
      required this.adminNotes,
      required this.userHandle});

  // this a named constructor to build a class from Json
  // used to extract the class from a graphQL response for example
  User.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        email = json['email'] ?? '',
        fullName = json['fullName'] ?? '',
        avatarUrl = json['avatarUrl'] ??
            'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png',
        userHandle = json['userHandle'] ?? '',
        adminNotes = json['adminNotes']??'';


  String get initials {
    return fullName
        .trim()
        .split(RegExp(' +'))
        .map((name) => name[0])
        .take(3)
        .join();
  }
}
