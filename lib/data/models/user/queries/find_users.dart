import 'package:mm_flutter_app/data/models/base/base_operation.dart';

class FindUsers implements BaseOperation {
  @override
  String get operation => 'findUsers';

  @override
  String get gql => """
  query Q(\$filter: UserListFilter) {
    findUsers(filter: \$filter){
      id
      email
      fullName
      avatarUrl
      userHandle
    }
  }
""";

  @override
  Map<String, dynamic>? get variables => const {
        "filter": {"searchText": ''}
      };

  @override
  FindUsersResult resultFromResponseData(Map<String, dynamic> data) {
    return FindUsersResult.fromJson(data[operation]);
  }
}

class FindUsersResult extends BaseResult {
  List<FindUsersResultElement> list;

  FindUsersResult({required this.list});

  FindUsersResult.fromJson(List jsonList)
      : list = jsonList
            .map((e) {
              try {
                var el = FindUsersResultElement.fromJson(e);
                if (el.avatarUrl == "") {
                  el.avatarUrl = null;
                }
                return el;
              } catch (e) {
                return null;
              }
            })
            .nonNulls
            .toList();

  List<Map<String, dynamic>> toJson() {
    return list.map((e) => e.toJson()).toList();
  }
}

class FindUsersResultElement extends BaseResult {
  String id;
  String? email;
  String? fullName;
  String? avatarUrl;
  String userHandle;

  FindUsersResultElement({
    required this.id,
    this.email,
    this.fullName,
    this.avatarUrl,
    required this.userHandle,
  });

  FindUsersResultElement.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        email = json['email'],
        fullName = json['fullName'],
        avatarUrl = json['avatarUrl'],
        userHandle = json['userHandle'];

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'email': email,
      'fullName': fullName,
      'avatarUrl': avatarUrl,
      'userHandle': userHandle,
    };
  }
}
