import 'package:mm_flutter_app/data/models/user/user.dart';

class Participant {
  final String id, userId, displayName, userHandle;
  final String? invitedByUserHandle, avtarUrl, meetMe;
  final bool admin, creator;
  final List<User> participants;

  Participant({
    required this.id,
    required this.userId,
    required this.displayName,
    required this.admin,
    required this.creator,
    required this.userHandle,
    required this.invitedByUserHandle,
    required this.participants,
    this.avtarUrl,
    this.meetMe,
  });

  // this a named constructor to build a class from Json
  // used to extract the class from a graphQL response for example
  Participant.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        userId = json['userId'],
        displayName = json['displayName'],
        admin = json['admin'] ?? false,
        creator = json['creator'] ?? false,
        invitedByUserHandle = json['invitedByUserHandle'] ?? '',
        userHandle = json['userHandle'],
        avtarUrl = json['photo'] ?? '',
        participants = [User.fromJson(json['participants'])],
        meetMe = json['meetMe'] ?? '';

  String get initials {
    return displayName
        .trim()
        .split(RegExp(' +'))
        .map((name) => name[0])
        .take(3)
        .join();
  }
}
