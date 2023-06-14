class User {
  final String id, userHandle, firstName, fullName;
  String? avatarUrl, email, cityOfResidence, adminNotes;

  User(
      {required this.id,
      required this.userHandle,
      required this.firstName,
      required this.fullName,
      this.cityOfResidence,
      this.avatarUrl,
      this.email,
      this.adminNotes});

  // this a named constructor to build a class from Json
  // used to extract the class from a graphQL response for example
  User.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        userHandle = json['userHandle'],
        firstName = json['firstName'] ?? '',
        fullName = json['fullName'] ?? '',
        avatarUrl = json['avatarUrl'] ??
            'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png',
        email = json['email'] ?? '',
        cityOfResidence = json['cityOfResidence'],
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
