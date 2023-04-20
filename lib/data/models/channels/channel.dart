import '../message/message.dart';
import '../user/user.dart';

class Channel {
  final String id, createdAt, createdBy;
  final List userIds;
  final List<User>? participants;
  final List  messages;
  final String? name;

  Channel({
    required this.id,
    this.name,
    required this.createdAt,
    required this.userIds,
    required this.createdBy,
    required this.messages,
    this.participants,
  });
  // this a named constructor to build a class from Json
  // used to extract the class from a graphQL response for example
  Channel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        userIds = json['userIds'],
        createdAt = json['createdAt'],
        messages = json['messages'],
        participants = [User.fromJson(json['participants'][0]['user']) ,User.fromJson(json['participants'][1]['user'])],
        createdBy = json['createdBy'].toString();

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'createdAt': createdAt,
        'createdBy': createdBy,
        'userIds': userIds,
        'participants':participants,
      };
}
