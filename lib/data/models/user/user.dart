class User {
  final String id;
  String? userHandle, fullName, avatarUrl, email, adminNotes;
  int? profileCompletionPercentage;
  DateTime? updatedAt;

  User(
      {required this.id,
      this.userHandle,
      this.fullName,
      this.avatarUrl,
      this.email,
      this.adminNotes,
      this.profileCompletionPercentage,
      this.updatedAt});

  // this a named constructor to build a class from Json
  // used to extract the class from a graphQL response for example
  User.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        userHandle = json['userHandle'],
        fullName = json['fullName'] ?? '',
        avatarUrl = json['avatarUrl'] ??
            'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png',
        email = json['email'] ?? '',
        adminNotes = json['adminNotes'] ?? '',
        profileCompletionPercentage = json['profileCompletionPercentage'],
        updatedAt = json['updatedAt'];

  Map<String, dynamic> toJson() => {
        'id': id,
        'userHandle': userHandle,
        'fullName': fullName,
        'avatarUrl': avatarUrl,
        'email': email,
        'adminNotes': adminNotes,
        'profileCompletionPercentage': profileCompletionPercentage,
        'updatedAt': updatedAt,
      };
}
