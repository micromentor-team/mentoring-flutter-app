import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mm_flutter_app/data/models/base/base_operation.dart';

class FindUsers implements BaseOperation<FindUsersModel> {
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
  OperationResult<FindUsersModel> transformQueryResult(
      QueryResult queryResult) {
    return OperationResult(
      dataModel: queryResult.data != null
          ? FindUsersModel._fromJson(queryResult.data![operation])
          : null,
      gqlQueryResult: queryResult,
    );
  }
}

class FindUsersModel extends BaseModel {
  List<FindUsersModelElement> list;

  FindUsersModel._fromJson(List jsonList)
      : list = jsonList.map((e) => FindUsersModelElement.fromJson(e)).toList();

  List<Map<String, dynamic>>? toJson() {
    return list.map((e) => e.toJson()).toList();
  }
}

class FindUsersModelElement {
  String id;
  String? email;
  String? fullName;
  String? avatarUrl;
  String userHandle;

  FindUsersModelElement.fromJson(Map<String, dynamic> json)
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
