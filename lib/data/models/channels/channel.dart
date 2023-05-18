import '../user/user.dart';

class Channel {
  final String id, createdAt, createdBy;
  final List userIds;
  final List participants;
  final String? name;

  Channel({
    required this.id,
    required this.createdAt,
    required this.userIds,
    required this.createdBy,
    required this.participants,
    this.name,
  });
  // this a named constructor to build a class from Json
  // used to extract the class from a graphQL response for example
  Channel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        userIds = json['userIds'],
        createdAt = json['createdAt'],
        participants = json['participants']
            .map((item) => User.fromJson(item['user']))
            .toList(),
        createdBy = json['createdBy'].toString();

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'createdAt': createdAt,
        'createdBy': createdBy,
        'userIds': userIds,
        'participants': participants,
      };
}
