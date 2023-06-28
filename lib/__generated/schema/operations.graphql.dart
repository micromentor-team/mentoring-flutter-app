// GENERATED WITH GRAPHQL_CODEGEN
// DO NOT MODIFY
// ignore_for_file: type=lint

import 'package:gql/ast.dart';
import 'schema.graphql.dart';

class Query$GetAuthenticatedUser {
  Query$GetAuthenticatedUser({
    required this.getAuthenticatedUser,
    this.$__typename = 'Query',
  });

  factory Query$GetAuthenticatedUser.fromJson(Map<String, dynamic> json) {
    final l$getAuthenticatedUser = json['getAuthenticatedUser'];
    final l$$__typename = json['__typename'];
    return Query$GetAuthenticatedUser(
      getAuthenticatedUser:
          Query$GetAuthenticatedUser$getAuthenticatedUser.fromJson(
              (l$getAuthenticatedUser as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetAuthenticatedUser$getAuthenticatedUser getAuthenticatedUser;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$getAuthenticatedUser = getAuthenticatedUser;
    _resultData['getAuthenticatedUser'] = l$getAuthenticatedUser.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$getAuthenticatedUser = getAuthenticatedUser;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$getAuthenticatedUser,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetAuthenticatedUser) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$getAuthenticatedUser = getAuthenticatedUser;
    final lOther$getAuthenticatedUser = other.getAuthenticatedUser;
    if (l$getAuthenticatedUser != lOther$getAuthenticatedUser) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetAuthenticatedUser
    on Query$GetAuthenticatedUser {
  CopyWith$Query$GetAuthenticatedUser<Query$GetAuthenticatedUser>
      get copyWith => CopyWith$Query$GetAuthenticatedUser(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAuthenticatedUser<TRes> {
  factory CopyWith$Query$GetAuthenticatedUser(
    Query$GetAuthenticatedUser instance,
    TRes Function(Query$GetAuthenticatedUser) then,
  ) = _CopyWithImpl$Query$GetAuthenticatedUser;

  factory CopyWith$Query$GetAuthenticatedUser.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAuthenticatedUser;

  TRes call({
    Query$GetAuthenticatedUser$getAuthenticatedUser? getAuthenticatedUser,
    String? $__typename,
  });
  CopyWith$Query$GetAuthenticatedUser$getAuthenticatedUser<TRes>
      get getAuthenticatedUser;
}

class _CopyWithImpl$Query$GetAuthenticatedUser<TRes>
    implements CopyWith$Query$GetAuthenticatedUser<TRes> {
  _CopyWithImpl$Query$GetAuthenticatedUser(
    this._instance,
    this._then,
  );

  final Query$GetAuthenticatedUser _instance;

  final TRes Function(Query$GetAuthenticatedUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? getAuthenticatedUser = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAuthenticatedUser(
        getAuthenticatedUser:
            getAuthenticatedUser == _undefined || getAuthenticatedUser == null
                ? _instance.getAuthenticatedUser
                : (getAuthenticatedUser
                    as Query$GetAuthenticatedUser$getAuthenticatedUser),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$GetAuthenticatedUser$getAuthenticatedUser<TRes>
      get getAuthenticatedUser {
    final local$getAuthenticatedUser = _instance.getAuthenticatedUser;
    return CopyWith$Query$GetAuthenticatedUser$getAuthenticatedUser(
        local$getAuthenticatedUser, (e) => call(getAuthenticatedUser: e));
  }
}

class _CopyWithStubImpl$Query$GetAuthenticatedUser<TRes>
    implements CopyWith$Query$GetAuthenticatedUser<TRes> {
  _CopyWithStubImpl$Query$GetAuthenticatedUser(this._res);

  TRes _res;

  call({
    Query$GetAuthenticatedUser$getAuthenticatedUser? getAuthenticatedUser,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$GetAuthenticatedUser$getAuthenticatedUser<TRes>
      get getAuthenticatedUser =>
          CopyWith$Query$GetAuthenticatedUser$getAuthenticatedUser.stub(_res);
}

const documentNodeQueryGetAuthenticatedUser = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetAuthenticatedUser'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'getAuthenticatedUser'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'email'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'fullName'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'avatarUrl'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'userHandle'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class Query$GetAuthenticatedUser$getAuthenticatedUser {
  Query$GetAuthenticatedUser$getAuthenticatedUser({
    required this.id,
    this.email,
    this.fullName,
    this.avatarUrl,
    this.userHandle,
    this.$__typename = 'User',
  });

  factory Query$GetAuthenticatedUser$getAuthenticatedUser.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$email = json['email'];
    final l$fullName = json['fullName'];
    final l$avatarUrl = json['avatarUrl'];
    final l$userHandle = json['userHandle'];
    final l$$__typename = json['__typename'];
    return Query$GetAuthenticatedUser$getAuthenticatedUser(
      id: (l$id as String),
      email: (l$email as String?),
      fullName: (l$fullName as String?),
      avatarUrl: (l$avatarUrl as String?),
      userHandle: (l$userHandle as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String? email;

  final String? fullName;

  final String? avatarUrl;

  final String? userHandle;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$email = email;
    _resultData['email'] = l$email;
    final l$fullName = fullName;
    _resultData['fullName'] = l$fullName;
    final l$avatarUrl = avatarUrl;
    _resultData['avatarUrl'] = l$avatarUrl;
    final l$userHandle = userHandle;
    _resultData['userHandle'] = l$userHandle;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$email = email;
    final l$fullName = fullName;
    final l$avatarUrl = avatarUrl;
    final l$userHandle = userHandle;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$email,
      l$fullName,
      l$avatarUrl,
      l$userHandle,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetAuthenticatedUser$getAuthenticatedUser) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    final l$fullName = fullName;
    final lOther$fullName = other.fullName;
    if (l$fullName != lOther$fullName) {
      return false;
    }
    final l$avatarUrl = avatarUrl;
    final lOther$avatarUrl = other.avatarUrl;
    if (l$avatarUrl != lOther$avatarUrl) {
      return false;
    }
    final l$userHandle = userHandle;
    final lOther$userHandle = other.userHandle;
    if (l$userHandle != lOther$userHandle) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetAuthenticatedUser$getAuthenticatedUser
    on Query$GetAuthenticatedUser$getAuthenticatedUser {
  CopyWith$Query$GetAuthenticatedUser$getAuthenticatedUser<
          Query$GetAuthenticatedUser$getAuthenticatedUser>
      get copyWith => CopyWith$Query$GetAuthenticatedUser$getAuthenticatedUser(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAuthenticatedUser$getAuthenticatedUser<TRes> {
  factory CopyWith$Query$GetAuthenticatedUser$getAuthenticatedUser(
    Query$GetAuthenticatedUser$getAuthenticatedUser instance,
    TRes Function(Query$GetAuthenticatedUser$getAuthenticatedUser) then,
  ) = _CopyWithImpl$Query$GetAuthenticatedUser$getAuthenticatedUser;

  factory CopyWith$Query$GetAuthenticatedUser$getAuthenticatedUser.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetAuthenticatedUser$getAuthenticatedUser;

  TRes call({
    String? id,
    String? email,
    String? fullName,
    String? avatarUrl,
    String? userHandle,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAuthenticatedUser$getAuthenticatedUser<TRes>
    implements CopyWith$Query$GetAuthenticatedUser$getAuthenticatedUser<TRes> {
  _CopyWithImpl$Query$GetAuthenticatedUser$getAuthenticatedUser(
    this._instance,
    this._then,
  );

  final Query$GetAuthenticatedUser$getAuthenticatedUser _instance;

  final TRes Function(Query$GetAuthenticatedUser$getAuthenticatedUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? email = _undefined,
    Object? fullName = _undefined,
    Object? avatarUrl = _undefined,
    Object? userHandle = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAuthenticatedUser$getAuthenticatedUser(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        email: email == _undefined ? _instance.email : (email as String?),
        fullName:
            fullName == _undefined ? _instance.fullName : (fullName as String?),
        avatarUrl: avatarUrl == _undefined
            ? _instance.avatarUrl
            : (avatarUrl as String?),
        userHandle: userHandle == _undefined
            ? _instance.userHandle
            : (userHandle as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetAuthenticatedUser$getAuthenticatedUser<TRes>
    implements CopyWith$Query$GetAuthenticatedUser$getAuthenticatedUser<TRes> {
  _CopyWithStubImpl$Query$GetAuthenticatedUser$getAuthenticatedUser(this._res);

  TRes _res;

  call({
    String? id,
    String? email,
    String? fullName,
    String? avatarUrl,
    String? userHandle,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetUserProfileInfo {
  Query$GetUserProfileInfo({
    required this.getUserProfileInfo,
    this.$__typename = 'Query',
  });

  factory Query$GetUserProfileInfo.fromJson(Map<String, dynamic> json) {
    final l$getUserProfileInfo = json['getUserProfileInfo'];
    final l$$__typename = json['__typename'];
    return Query$GetUserProfileInfo(
      getUserProfileInfo: Query$GetUserProfileInfo$getUserProfileInfo.fromJson(
          (l$getUserProfileInfo as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetUserProfileInfo$getUserProfileInfo getUserProfileInfo;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$getUserProfileInfo = getUserProfileInfo;
    _resultData['getUserProfileInfo'] = l$getUserProfileInfo.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$getUserProfileInfo = getUserProfileInfo;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$getUserProfileInfo,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetUserProfileInfo) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$getUserProfileInfo = getUserProfileInfo;
    final lOther$getUserProfileInfo = other.getUserProfileInfo;
    if (l$getUserProfileInfo != lOther$getUserProfileInfo) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetUserProfileInfo
    on Query$GetUserProfileInfo {
  CopyWith$Query$GetUserProfileInfo<Query$GetUserProfileInfo> get copyWith =>
      CopyWith$Query$GetUserProfileInfo(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetUserProfileInfo<TRes> {
  factory CopyWith$Query$GetUserProfileInfo(
    Query$GetUserProfileInfo instance,
    TRes Function(Query$GetUserProfileInfo) then,
  ) = _CopyWithImpl$Query$GetUserProfileInfo;

  factory CopyWith$Query$GetUserProfileInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$GetUserProfileInfo;

  TRes call({
    Query$GetUserProfileInfo$getUserProfileInfo? getUserProfileInfo,
    String? $__typename,
  });
  CopyWith$Query$GetUserProfileInfo$getUserProfileInfo<TRes>
      get getUserProfileInfo;
}

class _CopyWithImpl$Query$GetUserProfileInfo<TRes>
    implements CopyWith$Query$GetUserProfileInfo<TRes> {
  _CopyWithImpl$Query$GetUserProfileInfo(
    this._instance,
    this._then,
  );

  final Query$GetUserProfileInfo _instance;

  final TRes Function(Query$GetUserProfileInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? getUserProfileInfo = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetUserProfileInfo(
        getUserProfileInfo:
            getUserProfileInfo == _undefined || getUserProfileInfo == null
                ? _instance.getUserProfileInfo
                : (getUserProfileInfo
                    as Query$GetUserProfileInfo$getUserProfileInfo),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$GetUserProfileInfo$getUserProfileInfo<TRes>
      get getUserProfileInfo {
    final local$getUserProfileInfo = _instance.getUserProfileInfo;
    return CopyWith$Query$GetUserProfileInfo$getUserProfileInfo(
        local$getUserProfileInfo, (e) => call(getUserProfileInfo: e));
  }
}

class _CopyWithStubImpl$Query$GetUserProfileInfo<TRes>
    implements CopyWith$Query$GetUserProfileInfo<TRes> {
  _CopyWithStubImpl$Query$GetUserProfileInfo(this._res);

  TRes _res;

  call({
    Query$GetUserProfileInfo$getUserProfileInfo? getUserProfileInfo,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$GetUserProfileInfo$getUserProfileInfo<TRes>
      get getUserProfileInfo =>
          CopyWith$Query$GetUserProfileInfo$getUserProfileInfo.stub(_res);
}

const documentNodeQueryGetUserProfileInfo = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetUserProfileInfo'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'getUserProfileInfo'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'profileCompletionPercentage'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'lastUpdateTime'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class Query$GetUserProfileInfo$getUserProfileInfo {
  Query$GetUserProfileInfo$getUserProfileInfo({
    this.profileCompletionPercentage,
    this.lastUpdateTime,
    this.$__typename = 'User',
  });

  factory Query$GetUserProfileInfo$getUserProfileInfo.fromJson(
      Map<String, dynamic> json) {
    final l$profileCompletionPercentage = json['profileCompletionPercentage'];
    final l$lastUpdateTime = json['lastUpdateTime'];
    final l$$__typename = json['__typename'];
    return Query$GetUserProfileInfo$getUserProfileInfo(
      profileCompletionPercentage: (l$profileCompletionPercentage as int?),
      lastUpdateTime: l$lastUpdateTime == null
          ? null
          : DateTime.parse((l$lastUpdateTime as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final int? profileCompletionPercentage;

  final DateTime? lastUpdateTime;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$profileCompletionPercentage = profileCompletionPercentage;
    _resultData['profileCompletionPercentage'] = l$profileCompletionPercentage;
    final l$lastUpdateTime = lastUpdateTime;
    _resultData['lastUpdateTime'] = l$lastUpdateTime?.toIso8601String();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$profileCompletionPercentage = profileCompletionPercentage;
    final l$lastUpdateTime = lastUpdateTime;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$profileCompletionPercentage,
      l$lastUpdateTime,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetUserProfileInfo$getUserProfileInfo) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$profileCompletionPercentage = profileCompletionPercentage;
    final lOther$profileCompletionPercentage =
        other.profileCompletionPercentage;
    if (l$profileCompletionPercentage != lOther$profileCompletionPercentage) {
      return false;
    }
    final l$lastUpdateTime = lastUpdateTime;
    final lOther$lastUpdateTime = other.lastUpdateTime;
    if (l$lastUpdateTime != lOther$lastUpdateTime) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetUserProfileInfo$getUserProfileInfo
    on Query$GetUserProfileInfo$getUserProfileInfo {
  CopyWith$Query$GetUserProfileInfo$getUserProfileInfo<
          Query$GetUserProfileInfo$getUserProfileInfo>
      get copyWith => CopyWith$Query$GetUserProfileInfo$getUserProfileInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetUserProfileInfo$getUserProfileInfo<TRes> {
  factory CopyWith$Query$GetUserProfileInfo$getUserProfileInfo(
    Query$GetUserProfileInfo$getUserProfileInfo instance,
    TRes Function(Query$GetUserProfileInfo$getUserProfileInfo) then,
  ) = _CopyWithImpl$Query$GetUserProfileInfo$getUserProfileInfo;

  factory CopyWith$Query$GetUserProfileInfo$getUserProfileInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$GetUserProfileInfo$getUserProfileInfo;

  TRes call({
    int? profileCompletionPercentage,
    DateTime? lastUpdateTime,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetUserProfileInfo$getUserProfileInfo<TRes>
    implements CopyWith$Query$GetUserProfileInfo$getUserProfileInfo<TRes> {
  _CopyWithImpl$Query$GetUserProfileInfo$getUserProfileInfo(
    this._instance,
    this._then,
  );

  final Query$GetUserProfileInfo$getUserProfileInfo _instance;

  final TRes Function(Query$GetUserProfileInfo$getUserProfileInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? profileCompletionPercentage = _undefined,
    Object? lastUpdateTime = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetUserProfileInfo$getUserProfileInfo(
        profileCompletionPercentage: profileCompletionPercentage == _undefined
            ? _instance.profileCompletionPercentage
            : (profileCompletionPercentage as int?),
        lastUpdateTime: lastUpdateTime == _undefined
            ? _instance.lastUpdateTime
            : (lastUpdateTime as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetUserProfileInfo$getUserProfileInfo<TRes>
    implements CopyWith$Query$GetUserProfileInfo$getUserProfileInfo<TRes> {
  _CopyWithStubImpl$Query$GetUserProfileInfo$getUserProfileInfo(this._res);

  TRes _res;

  call({
    int? profileCompletionPercentage,
    DateTime? lastUpdateTime,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$FindUsers {
  factory Variables$Query$FindUsers({Input$UserListFilter? filter}) =>
      Variables$Query$FindUsers._({
        if (filter != null) r'filter': filter,
      });

  Variables$Query$FindUsers._(this._$data);

  factory Variables$Query$FindUsers.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('filter')) {
      final l$filter = data['filter'];
      result$data['filter'] = l$filter == null
          ? null
          : Input$UserListFilter.fromJson((l$filter as Map<String, dynamic>));
    }
    return Variables$Query$FindUsers._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$UserListFilter? get filter =>
      (_$data['filter'] as Input$UserListFilter?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('filter')) {
      final l$filter = filter;
      result$data['filter'] = l$filter?.toJson();
    }
    return result$data;
  }

  CopyWith$Variables$Query$FindUsers<Variables$Query$FindUsers> get copyWith =>
      CopyWith$Variables$Query$FindUsers(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$FindUsers) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$filter = filter;
    final lOther$filter = other.filter;
    if (_$data.containsKey('filter') != other._$data.containsKey('filter')) {
      return false;
    }
    if (l$filter != lOther$filter) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$filter = filter;
    return Object.hashAll([_$data.containsKey('filter') ? l$filter : const {}]);
  }
}

abstract class CopyWith$Variables$Query$FindUsers<TRes> {
  factory CopyWith$Variables$Query$FindUsers(
    Variables$Query$FindUsers instance,
    TRes Function(Variables$Query$FindUsers) then,
  ) = _CopyWithImpl$Variables$Query$FindUsers;

  factory CopyWith$Variables$Query$FindUsers.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$FindUsers;

  TRes call({Input$UserListFilter? filter});
}

class _CopyWithImpl$Variables$Query$FindUsers<TRes>
    implements CopyWith$Variables$Query$FindUsers<TRes> {
  _CopyWithImpl$Variables$Query$FindUsers(
    this._instance,
    this._then,
  );

  final Variables$Query$FindUsers _instance;

  final TRes Function(Variables$Query$FindUsers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? filter = _undefined}) =>
      _then(Variables$Query$FindUsers._({
        ..._instance._$data,
        if (filter != _undefined) 'filter': (filter as Input$UserListFilter?),
      }));
}

class _CopyWithStubImpl$Variables$Query$FindUsers<TRes>
    implements CopyWith$Variables$Query$FindUsers<TRes> {
  _CopyWithStubImpl$Variables$Query$FindUsers(this._res);

  TRes _res;

  call({Input$UserListFilter? filter}) => _res;
}

class Query$FindUsers {
  Query$FindUsers({
    required this.findUsers,
    this.$__typename = 'Query',
  });

  factory Query$FindUsers.fromJson(Map<String, dynamic> json) {
    final l$findUsers = json['findUsers'];
    final l$$__typename = json['__typename'];
    return Query$FindUsers(
      findUsers: (l$findUsers as List<dynamic>)
          .map((e) =>
              Query$FindUsers$findUsers.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$FindUsers$findUsers> findUsers;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$findUsers = findUsers;
    _resultData['findUsers'] = l$findUsers.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$findUsers = findUsers;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$findUsers.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FindUsers) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$findUsers = findUsers;
    final lOther$findUsers = other.findUsers;
    if (l$findUsers.length != lOther$findUsers.length) {
      return false;
    }
    for (int i = 0; i < l$findUsers.length; i++) {
      final l$findUsers$entry = l$findUsers[i];
      final lOther$findUsers$entry = lOther$findUsers[i];
      if (l$findUsers$entry != lOther$findUsers$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FindUsers on Query$FindUsers {
  CopyWith$Query$FindUsers<Query$FindUsers> get copyWith =>
      CopyWith$Query$FindUsers(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FindUsers<TRes> {
  factory CopyWith$Query$FindUsers(
    Query$FindUsers instance,
    TRes Function(Query$FindUsers) then,
  ) = _CopyWithImpl$Query$FindUsers;

  factory CopyWith$Query$FindUsers.stub(TRes res) =
      _CopyWithStubImpl$Query$FindUsers;

  TRes call({
    List<Query$FindUsers$findUsers>? findUsers,
    String? $__typename,
  });
  TRes findUsers(
      Iterable<Query$FindUsers$findUsers> Function(
              Iterable<
                  CopyWith$Query$FindUsers$findUsers<
                      Query$FindUsers$findUsers>>)
          _fn);
}

class _CopyWithImpl$Query$FindUsers<TRes>
    implements CopyWith$Query$FindUsers<TRes> {
  _CopyWithImpl$Query$FindUsers(
    this._instance,
    this._then,
  );

  final Query$FindUsers _instance;

  final TRes Function(Query$FindUsers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? findUsers = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindUsers(
        findUsers: findUsers == _undefined || findUsers == null
            ? _instance.findUsers
            : (findUsers as List<Query$FindUsers$findUsers>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes findUsers(
          Iterable<Query$FindUsers$findUsers> Function(
                  Iterable<
                      CopyWith$Query$FindUsers$findUsers<
                          Query$FindUsers$findUsers>>)
              _fn) =>
      call(
          findUsers: _fn(
              _instance.findUsers.map((e) => CopyWith$Query$FindUsers$findUsers(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$FindUsers<TRes>
    implements CopyWith$Query$FindUsers<TRes> {
  _CopyWithStubImpl$Query$FindUsers(this._res);

  TRes _res;

  call({
    List<Query$FindUsers$findUsers>? findUsers,
    String? $__typename,
  }) =>
      _res;
  findUsers(_fn) => _res;
}

const documentNodeQueryFindUsers = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FindUsers'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'filter')),
        type: NamedTypeNode(
          name: NameNode(value: 'UserListFilter'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'findUsers'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'filter'),
            value: VariableNode(name: NameNode(value: 'filter')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'email'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'fullName'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'avatarUrl'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'userHandle'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class Query$FindUsers$findUsers {
  Query$FindUsers$findUsers({
    required this.id,
    this.email,
    this.fullName,
    this.avatarUrl,
    this.userHandle,
    this.$__typename = 'User',
  });

  factory Query$FindUsers$findUsers.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$email = json['email'];
    final l$fullName = json['fullName'];
    final l$avatarUrl = json['avatarUrl'];
    final l$userHandle = json['userHandle'];
    final l$$__typename = json['__typename'];
    return Query$FindUsers$findUsers(
      id: (l$id as String),
      email: (l$email as String?),
      fullName: (l$fullName as String?),
      avatarUrl: (l$avatarUrl as String?),
      userHandle: (l$userHandle as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String? email;

  final String? fullName;

  final String? avatarUrl;

  final String? userHandle;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$email = email;
    _resultData['email'] = l$email;
    final l$fullName = fullName;
    _resultData['fullName'] = l$fullName;
    final l$avatarUrl = avatarUrl;
    _resultData['avatarUrl'] = l$avatarUrl;
    final l$userHandle = userHandle;
    _resultData['userHandle'] = l$userHandle;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$email = email;
    final l$fullName = fullName;
    final l$avatarUrl = avatarUrl;
    final l$userHandle = userHandle;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$email,
      l$fullName,
      l$avatarUrl,
      l$userHandle,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FindUsers$findUsers) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    final l$fullName = fullName;
    final lOther$fullName = other.fullName;
    if (l$fullName != lOther$fullName) {
      return false;
    }
    final l$avatarUrl = avatarUrl;
    final lOther$avatarUrl = other.avatarUrl;
    if (l$avatarUrl != lOther$avatarUrl) {
      return false;
    }
    final l$userHandle = userHandle;
    final lOther$userHandle = other.userHandle;
    if (l$userHandle != lOther$userHandle) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FindUsers$findUsers
    on Query$FindUsers$findUsers {
  CopyWith$Query$FindUsers$findUsers<Query$FindUsers$findUsers> get copyWith =>
      CopyWith$Query$FindUsers$findUsers(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FindUsers$findUsers<TRes> {
  factory CopyWith$Query$FindUsers$findUsers(
    Query$FindUsers$findUsers instance,
    TRes Function(Query$FindUsers$findUsers) then,
  ) = _CopyWithImpl$Query$FindUsers$findUsers;

  factory CopyWith$Query$FindUsers$findUsers.stub(TRes res) =
      _CopyWithStubImpl$Query$FindUsers$findUsers;

  TRes call({
    String? id,
    String? email,
    String? fullName,
    String? avatarUrl,
    String? userHandle,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindUsers$findUsers<TRes>
    implements CopyWith$Query$FindUsers$findUsers<TRes> {
  _CopyWithImpl$Query$FindUsers$findUsers(
    this._instance,
    this._then,
  );

  final Query$FindUsers$findUsers _instance;

  final TRes Function(Query$FindUsers$findUsers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? email = _undefined,
    Object? fullName = _undefined,
    Object? avatarUrl = _undefined,
    Object? userHandle = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindUsers$findUsers(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        email: email == _undefined ? _instance.email : (email as String?),
        fullName:
            fullName == _undefined ? _instance.fullName : (fullName as String?),
        avatarUrl: avatarUrl == _undefined
            ? _instance.avatarUrl
            : (avatarUrl as String?),
        userHandle: userHandle == _undefined
            ? _instance.userHandle
            : (userHandle as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FindUsers$findUsers<TRes>
    implements CopyWith$Query$FindUsers$findUsers<TRes> {
  _CopyWithStubImpl$Query$FindUsers$findUsers(this._res);

  TRes _res;

  call({
    String? id,
    String? email,
    String? fullName,
    String? avatarUrl,
    String? userHandle,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$SignInUser {
  factory Variables$Mutation$SignInUser(
          {required Input$UserSignInInput input}) =>
      Variables$Mutation$SignInUser._({
        r'input': input,
      });

  Variables$Mutation$SignInUser._(this._$data);

  factory Variables$Mutation$SignInUser.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$UserSignInInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Mutation$SignInUser._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$UserSignInInput get input => (_$data['input'] as Input$UserSignInInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$SignInUser<Variables$Mutation$SignInUser>
      get copyWith => CopyWith$Variables$Mutation$SignInUser(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$SignInUser) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$input = input;
    return Object.hashAll([l$input]);
  }
}

abstract class CopyWith$Variables$Mutation$SignInUser<TRes> {
  factory CopyWith$Variables$Mutation$SignInUser(
    Variables$Mutation$SignInUser instance,
    TRes Function(Variables$Mutation$SignInUser) then,
  ) = _CopyWithImpl$Variables$Mutation$SignInUser;

  factory CopyWith$Variables$Mutation$SignInUser.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$SignInUser;

  TRes call({Input$UserSignInInput? input});
}

class _CopyWithImpl$Variables$Mutation$SignInUser<TRes>
    implements CopyWith$Variables$Mutation$SignInUser<TRes> {
  _CopyWithImpl$Variables$Mutation$SignInUser(
    this._instance,
    this._then,
  );

  final Variables$Mutation$SignInUser _instance;

  final TRes Function(Variables$Mutation$SignInUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$SignInUser._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$UserSignInInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$SignInUser<TRes>
    implements CopyWith$Variables$Mutation$SignInUser<TRes> {
  _CopyWithStubImpl$Variables$Mutation$SignInUser(this._res);

  TRes _res;

  call({Input$UserSignInInput? input}) => _res;
}

class Mutation$SignInUser {
  Mutation$SignInUser({
    required this.signInUser,
    this.$__typename = 'Mutation',
  });

  factory Mutation$SignInUser.fromJson(Map<String, dynamic> json) {
    final l$signInUser = json['signInUser'];
    final l$$__typename = json['__typename'];
    return Mutation$SignInUser(
      signInUser: Mutation$SignInUser$signInUser.fromJson(
          (l$signInUser as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$SignInUser$signInUser signInUser;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$signInUser = signInUser;
    _resultData['signInUser'] = l$signInUser.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$signInUser = signInUser;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$signInUser,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$SignInUser) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$signInUser = signInUser;
    final lOther$signInUser = other.signInUser;
    if (l$signInUser != lOther$signInUser) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$SignInUser on Mutation$SignInUser {
  CopyWith$Mutation$SignInUser<Mutation$SignInUser> get copyWith =>
      CopyWith$Mutation$SignInUser(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$SignInUser<TRes> {
  factory CopyWith$Mutation$SignInUser(
    Mutation$SignInUser instance,
    TRes Function(Mutation$SignInUser) then,
  ) = _CopyWithImpl$Mutation$SignInUser;

  factory CopyWith$Mutation$SignInUser.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SignInUser;

  TRes call({
    Mutation$SignInUser$signInUser? signInUser,
    String? $__typename,
  });
  CopyWith$Mutation$SignInUser$signInUser<TRes> get signInUser;
}

class _CopyWithImpl$Mutation$SignInUser<TRes>
    implements CopyWith$Mutation$SignInUser<TRes> {
  _CopyWithImpl$Mutation$SignInUser(
    this._instance,
    this._then,
  );

  final Mutation$SignInUser _instance;

  final TRes Function(Mutation$SignInUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? signInUser = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$SignInUser(
        signInUser: signInUser == _undefined || signInUser == null
            ? _instance.signInUser
            : (signInUser as Mutation$SignInUser$signInUser),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$SignInUser$signInUser<TRes> get signInUser {
    final local$signInUser = _instance.signInUser;
    return CopyWith$Mutation$SignInUser$signInUser(
        local$signInUser, (e) => call(signInUser: e));
  }
}

class _CopyWithStubImpl$Mutation$SignInUser<TRes>
    implements CopyWith$Mutation$SignInUser<TRes> {
  _CopyWithStubImpl$Mutation$SignInUser(this._res);

  TRes _res;

  call({
    Mutation$SignInUser$signInUser? signInUser,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$SignInUser$signInUser<TRes> get signInUser =>
      CopyWith$Mutation$SignInUser$signInUser.stub(_res);
}

const documentNodeMutationSignInUser = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'SignInUser'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'UserSignInInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'signInUser'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'input')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'userId'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'deviceId'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'authToken'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class Mutation$SignInUser$signInUser {
  Mutation$SignInUser$signInUser({
    required this.userId,
    required this.deviceId,
    required this.authToken,
    this.$__typename = 'UserAuthResponse',
  });

  factory Mutation$SignInUser$signInUser.fromJson(Map<String, dynamic> json) {
    final l$userId = json['userId'];
    final l$deviceId = json['deviceId'];
    final l$authToken = json['authToken'];
    final l$$__typename = json['__typename'];
    return Mutation$SignInUser$signInUser(
      userId: (l$userId as String),
      deviceId: (l$deviceId as String),
      authToken: (l$authToken as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String userId;

  final String deviceId;

  final String authToken;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$userId = userId;
    _resultData['userId'] = l$userId;
    final l$deviceId = deviceId;
    _resultData['deviceId'] = l$deviceId;
    final l$authToken = authToken;
    _resultData['authToken'] = l$authToken;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$userId = userId;
    final l$deviceId = deviceId;
    final l$authToken = authToken;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$userId,
      l$deviceId,
      l$authToken,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$SignInUser$signInUser) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) {
      return false;
    }
    final l$deviceId = deviceId;
    final lOther$deviceId = other.deviceId;
    if (l$deviceId != lOther$deviceId) {
      return false;
    }
    final l$authToken = authToken;
    final lOther$authToken = other.authToken;
    if (l$authToken != lOther$authToken) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$SignInUser$signInUser
    on Mutation$SignInUser$signInUser {
  CopyWith$Mutation$SignInUser$signInUser<Mutation$SignInUser$signInUser>
      get copyWith => CopyWith$Mutation$SignInUser$signInUser(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$SignInUser$signInUser<TRes> {
  factory CopyWith$Mutation$SignInUser$signInUser(
    Mutation$SignInUser$signInUser instance,
    TRes Function(Mutation$SignInUser$signInUser) then,
  ) = _CopyWithImpl$Mutation$SignInUser$signInUser;

  factory CopyWith$Mutation$SignInUser$signInUser.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SignInUser$signInUser;

  TRes call({
    String? userId,
    String? deviceId,
    String? authToken,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$SignInUser$signInUser<TRes>
    implements CopyWith$Mutation$SignInUser$signInUser<TRes> {
  _CopyWithImpl$Mutation$SignInUser$signInUser(
    this._instance,
    this._then,
  );

  final Mutation$SignInUser$signInUser _instance;

  final TRes Function(Mutation$SignInUser$signInUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userId = _undefined,
    Object? deviceId = _undefined,
    Object? authToken = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$SignInUser$signInUser(
        userId: userId == _undefined || userId == null
            ? _instance.userId
            : (userId as String),
        deviceId: deviceId == _undefined || deviceId == null
            ? _instance.deviceId
            : (deviceId as String),
        authToken: authToken == _undefined || authToken == null
            ? _instance.authToken
            : (authToken as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$SignInUser$signInUser<TRes>
    implements CopyWith$Mutation$SignInUser$signInUser<TRes> {
  _CopyWithStubImpl$Mutation$SignInUser$signInUser(this._res);

  TRes _res;

  call({
    String? userId,
    String? deviceId,
    String? authToken,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$SignOutUser {
  Mutation$SignOutUser({
    required this.signMeOut,
    this.$__typename = 'Mutation',
  });

  factory Mutation$SignOutUser.fromJson(Map<String, dynamic> json) {
    final l$signMeOut = json['signMeOut'];
    final l$$__typename = json['__typename'];
    return Mutation$SignOutUser(
      signMeOut: (l$signMeOut as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String signMeOut;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$signMeOut = signMeOut;
    _resultData['signMeOut'] = l$signMeOut;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$signMeOut = signMeOut;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$signMeOut,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$SignOutUser) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$signMeOut = signMeOut;
    final lOther$signMeOut = other.signMeOut;
    if (l$signMeOut != lOther$signMeOut) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$SignOutUser on Mutation$SignOutUser {
  CopyWith$Mutation$SignOutUser<Mutation$SignOutUser> get copyWith =>
      CopyWith$Mutation$SignOutUser(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$SignOutUser<TRes> {
  factory CopyWith$Mutation$SignOutUser(
    Mutation$SignOutUser instance,
    TRes Function(Mutation$SignOutUser) then,
  ) = _CopyWithImpl$Mutation$SignOutUser;

  factory CopyWith$Mutation$SignOutUser.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SignOutUser;

  TRes call({
    String? signMeOut,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$SignOutUser<TRes>
    implements CopyWith$Mutation$SignOutUser<TRes> {
  _CopyWithImpl$Mutation$SignOutUser(
    this._instance,
    this._then,
  );

  final Mutation$SignOutUser _instance;

  final TRes Function(Mutation$SignOutUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? signMeOut = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$SignOutUser(
        signMeOut: signMeOut == _undefined || signMeOut == null
            ? _instance.signMeOut
            : (signMeOut as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$SignOutUser<TRes>
    implements CopyWith$Mutation$SignOutUser<TRes> {
  _CopyWithStubImpl$Mutation$SignOutUser(this._res);

  TRes _res;

  call({
    String? signMeOut,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeMutationSignOutUser = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'SignOutUser'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'signMeOut'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class Variables$Mutation$SignUpUser {
  factory Variables$Mutation$SignUpUser(
          {required Input$UserSignUpInput input}) =>
      Variables$Mutation$SignUpUser._({
        r'input': input,
      });

  Variables$Mutation$SignUpUser._(this._$data);

  factory Variables$Mutation$SignUpUser.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$UserSignUpInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Mutation$SignUpUser._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$UserSignUpInput get input => (_$data['input'] as Input$UserSignUpInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$SignUpUser<Variables$Mutation$SignUpUser>
      get copyWith => CopyWith$Variables$Mutation$SignUpUser(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$SignUpUser) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$input = input;
    return Object.hashAll([l$input]);
  }
}

abstract class CopyWith$Variables$Mutation$SignUpUser<TRes> {
  factory CopyWith$Variables$Mutation$SignUpUser(
    Variables$Mutation$SignUpUser instance,
    TRes Function(Variables$Mutation$SignUpUser) then,
  ) = _CopyWithImpl$Variables$Mutation$SignUpUser;

  factory CopyWith$Variables$Mutation$SignUpUser.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$SignUpUser;

  TRes call({Input$UserSignUpInput? input});
}

class _CopyWithImpl$Variables$Mutation$SignUpUser<TRes>
    implements CopyWith$Variables$Mutation$SignUpUser<TRes> {
  _CopyWithImpl$Variables$Mutation$SignUpUser(
    this._instance,
    this._then,
  );

  final Variables$Mutation$SignUpUser _instance;

  final TRes Function(Variables$Mutation$SignUpUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$SignUpUser._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$UserSignUpInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$SignUpUser<TRes>
    implements CopyWith$Variables$Mutation$SignUpUser<TRes> {
  _CopyWithStubImpl$Variables$Mutation$SignUpUser(this._res);

  TRes _res;

  call({Input$UserSignUpInput? input}) => _res;
}

class Mutation$SignUpUser {
  Mutation$SignUpUser({
    required this.signUpUser,
    this.$__typename = 'Mutation',
  });

  factory Mutation$SignUpUser.fromJson(Map<String, dynamic> json) {
    final l$signUpUser = json['signUpUser'];
    final l$$__typename = json['__typename'];
    return Mutation$SignUpUser(
      signUpUser: Mutation$SignUpUser$signUpUser.fromJson(
          (l$signUpUser as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$SignUpUser$signUpUser signUpUser;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$signUpUser = signUpUser;
    _resultData['signUpUser'] = l$signUpUser.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$signUpUser = signUpUser;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$signUpUser,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$SignUpUser) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$signUpUser = signUpUser;
    final lOther$signUpUser = other.signUpUser;
    if (l$signUpUser != lOther$signUpUser) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$SignUpUser on Mutation$SignUpUser {
  CopyWith$Mutation$SignUpUser<Mutation$SignUpUser> get copyWith =>
      CopyWith$Mutation$SignUpUser(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$SignUpUser<TRes> {
  factory CopyWith$Mutation$SignUpUser(
    Mutation$SignUpUser instance,
    TRes Function(Mutation$SignUpUser) then,
  ) = _CopyWithImpl$Mutation$SignUpUser;

  factory CopyWith$Mutation$SignUpUser.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SignUpUser;

  TRes call({
    Mutation$SignUpUser$signUpUser? signUpUser,
    String? $__typename,
  });
  CopyWith$Mutation$SignUpUser$signUpUser<TRes> get signUpUser;
}

class _CopyWithImpl$Mutation$SignUpUser<TRes>
    implements CopyWith$Mutation$SignUpUser<TRes> {
  _CopyWithImpl$Mutation$SignUpUser(
    this._instance,
    this._then,
  );

  final Mutation$SignUpUser _instance;

  final TRes Function(Mutation$SignUpUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? signUpUser = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$SignUpUser(
        signUpUser: signUpUser == _undefined || signUpUser == null
            ? _instance.signUpUser
            : (signUpUser as Mutation$SignUpUser$signUpUser),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$SignUpUser$signUpUser<TRes> get signUpUser {
    final local$signUpUser = _instance.signUpUser;
    return CopyWith$Mutation$SignUpUser$signUpUser(
        local$signUpUser, (e) => call(signUpUser: e));
  }
}

class _CopyWithStubImpl$Mutation$SignUpUser<TRes>
    implements CopyWith$Mutation$SignUpUser<TRes> {
  _CopyWithStubImpl$Mutation$SignUpUser(this._res);

  TRes _res;

  call({
    Mutation$SignUpUser$signUpUser? signUpUser,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$SignUpUser$signUpUser<TRes> get signUpUser =>
      CopyWith$Mutation$SignUpUser$signUpUser.stub(_res);
}

const documentNodeMutationSignUpUser = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'SignUpUser'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'UserSignUpInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'signUpUser'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'input')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'userId'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'deviceId'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'authToken'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class Mutation$SignUpUser$signUpUser {
  Mutation$SignUpUser$signUpUser({
    required this.userId,
    required this.deviceId,
    required this.authToken,
    this.$__typename = 'UserAuthResponse',
  });

  factory Mutation$SignUpUser$signUpUser.fromJson(Map<String, dynamic> json) {
    final l$userId = json['userId'];
    final l$deviceId = json['deviceId'];
    final l$authToken = json['authToken'];
    final l$$__typename = json['__typename'];
    return Mutation$SignUpUser$signUpUser(
      userId: (l$userId as String),
      deviceId: (l$deviceId as String),
      authToken: (l$authToken as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String userId;

  final String deviceId;

  final String authToken;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$userId = userId;
    _resultData['userId'] = l$userId;
    final l$deviceId = deviceId;
    _resultData['deviceId'] = l$deviceId;
    final l$authToken = authToken;
    _resultData['authToken'] = l$authToken;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$userId = userId;
    final l$deviceId = deviceId;
    final l$authToken = authToken;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$userId,
      l$deviceId,
      l$authToken,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$SignUpUser$signUpUser) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) {
      return false;
    }
    final l$deviceId = deviceId;
    final lOther$deviceId = other.deviceId;
    if (l$deviceId != lOther$deviceId) {
      return false;
    }
    final l$authToken = authToken;
    final lOther$authToken = other.authToken;
    if (l$authToken != lOther$authToken) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$SignUpUser$signUpUser
    on Mutation$SignUpUser$signUpUser {
  CopyWith$Mutation$SignUpUser$signUpUser<Mutation$SignUpUser$signUpUser>
      get copyWith => CopyWith$Mutation$SignUpUser$signUpUser(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$SignUpUser$signUpUser<TRes> {
  factory CopyWith$Mutation$SignUpUser$signUpUser(
    Mutation$SignUpUser$signUpUser instance,
    TRes Function(Mutation$SignUpUser$signUpUser) then,
  ) = _CopyWithImpl$Mutation$SignUpUser$signUpUser;

  factory CopyWith$Mutation$SignUpUser$signUpUser.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SignUpUser$signUpUser;

  TRes call({
    String? userId,
    String? deviceId,
    String? authToken,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$SignUpUser$signUpUser<TRes>
    implements CopyWith$Mutation$SignUpUser$signUpUser<TRes> {
  _CopyWithImpl$Mutation$SignUpUser$signUpUser(
    this._instance,
    this._then,
  );

  final Mutation$SignUpUser$signUpUser _instance;

  final TRes Function(Mutation$SignUpUser$signUpUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userId = _undefined,
    Object? deviceId = _undefined,
    Object? authToken = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$SignUpUser$signUpUser(
        userId: userId == _undefined || userId == null
            ? _instance.userId
            : (userId as String),
        deviceId: deviceId == _undefined || deviceId == null
            ? _instance.deviceId
            : (deviceId as String),
        authToken: authToken == _undefined || authToken == null
            ? _instance.authToken
            : (authToken as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$SignUpUser$signUpUser<TRes>
    implements CopyWith$Mutation$SignUpUser$signUpUser<TRes> {
  _CopyWithStubImpl$Mutation$SignUpUser$signUpUser(this._res);

  TRes _res;

  call({
    String? userId,
    String? deviceId,
    String? authToken,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$DeleteUser {
  factory Variables$Mutation$DeleteUser({
    required String userId,
    required bool deletePhysically,
  }) =>
      Variables$Mutation$DeleteUser._({
        r'userId': userId,
        r'deletePhysically': deletePhysically,
      });

  Variables$Mutation$DeleteUser._(this._$data);

  factory Variables$Mutation$DeleteUser.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$userId = data['userId'];
    result$data['userId'] = (l$userId as String);
    final l$deletePhysically = data['deletePhysically'];
    result$data['deletePhysically'] = (l$deletePhysically as bool);
    return Variables$Mutation$DeleteUser._(result$data);
  }

  Map<String, dynamic> _$data;

  String get userId => (_$data['userId'] as String);
  bool get deletePhysically => (_$data['deletePhysically'] as bool);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$userId = userId;
    result$data['userId'] = l$userId;
    final l$deletePhysically = deletePhysically;
    result$data['deletePhysically'] = l$deletePhysically;
    return result$data;
  }

  CopyWith$Variables$Mutation$DeleteUser<Variables$Mutation$DeleteUser>
      get copyWith => CopyWith$Variables$Mutation$DeleteUser(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$DeleteUser) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) {
      return false;
    }
    final l$deletePhysically = deletePhysically;
    final lOther$deletePhysically = other.deletePhysically;
    if (l$deletePhysically != lOther$deletePhysically) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$userId = userId;
    final l$deletePhysically = deletePhysically;
    return Object.hashAll([
      l$userId,
      l$deletePhysically,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$DeleteUser<TRes> {
  factory CopyWith$Variables$Mutation$DeleteUser(
    Variables$Mutation$DeleteUser instance,
    TRes Function(Variables$Mutation$DeleteUser) then,
  ) = _CopyWithImpl$Variables$Mutation$DeleteUser;

  factory CopyWith$Variables$Mutation$DeleteUser.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$DeleteUser;

  TRes call({
    String? userId,
    bool? deletePhysically,
  });
}

class _CopyWithImpl$Variables$Mutation$DeleteUser<TRes>
    implements CopyWith$Variables$Mutation$DeleteUser<TRes> {
  _CopyWithImpl$Variables$Mutation$DeleteUser(
    this._instance,
    this._then,
  );

  final Variables$Mutation$DeleteUser _instance;

  final TRes Function(Variables$Mutation$DeleteUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userId = _undefined,
    Object? deletePhysically = _undefined,
  }) =>
      _then(Variables$Mutation$DeleteUser._({
        ..._instance._$data,
        if (userId != _undefined && userId != null)
          'userId': (userId as String),
        if (deletePhysically != _undefined && deletePhysically != null)
          'deletePhysically': (deletePhysically as bool),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$DeleteUser<TRes>
    implements CopyWith$Variables$Mutation$DeleteUser<TRes> {
  _CopyWithStubImpl$Variables$Mutation$DeleteUser(this._res);

  TRes _res;

  call({
    String? userId,
    bool? deletePhysically,
  }) =>
      _res;
}

class Mutation$DeleteUser {
  Mutation$DeleteUser({
    required this.deleteUser,
    this.$__typename = 'Mutation',
  });

  factory Mutation$DeleteUser.fromJson(Map<String, dynamic> json) {
    final l$deleteUser = json['deleteUser'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteUser(
      deleteUser: (l$deleteUser as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String deleteUser;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteUser = deleteUser;
    _resultData['deleteUser'] = l$deleteUser;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteUser = deleteUser;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$deleteUser,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$DeleteUser) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteUser = deleteUser;
    final lOther$deleteUser = other.deleteUser;
    if (l$deleteUser != lOther$deleteUser) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$DeleteUser on Mutation$DeleteUser {
  CopyWith$Mutation$DeleteUser<Mutation$DeleteUser> get copyWith =>
      CopyWith$Mutation$DeleteUser(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$DeleteUser<TRes> {
  factory CopyWith$Mutation$DeleteUser(
    Mutation$DeleteUser instance,
    TRes Function(Mutation$DeleteUser) then,
  ) = _CopyWithImpl$Mutation$DeleteUser;

  factory CopyWith$Mutation$DeleteUser.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteUser;

  TRes call({
    String? deleteUser,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$DeleteUser<TRes>
    implements CopyWith$Mutation$DeleteUser<TRes> {
  _CopyWithImpl$Mutation$DeleteUser(
    this._instance,
    this._then,
  );

  final Mutation$DeleteUser _instance;

  final TRes Function(Mutation$DeleteUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleteUser = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteUser(
        deleteUser: deleteUser == _undefined || deleteUser == null
            ? _instance.deleteUser
            : (deleteUser as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$DeleteUser<TRes>
    implements CopyWith$Mutation$DeleteUser<TRes> {
  _CopyWithStubImpl$Mutation$DeleteUser(this._res);

  TRes _res;

  call({
    String? deleteUser,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeMutationDeleteUser = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'DeleteUser'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'userId')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'deletePhysically')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'deleteUser'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'userId'),
            value: VariableNode(name: NameNode(value: 'userId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'deletePhysically'),
            value: VariableNode(name: NameNode(value: 'deletePhysically')),
          ),
        ],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class Variables$Mutation$UpdateUser {
  factory Variables$Mutation$UpdateUser({required Input$UserInput input}) =>
      Variables$Mutation$UpdateUser._({
        r'input': input,
      });

  Variables$Mutation$UpdateUser._(this._$data);

  factory Variables$Mutation$UpdateUser.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$UserInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Mutation$UpdateUser._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$UserInput get input => (_$data['input'] as Input$UserInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateUser<Variables$Mutation$UpdateUser>
      get copyWith => CopyWith$Variables$Mutation$UpdateUser(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$UpdateUser) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$input = input;
    return Object.hashAll([l$input]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdateUser<TRes> {
  factory CopyWith$Variables$Mutation$UpdateUser(
    Variables$Mutation$UpdateUser instance,
    TRes Function(Variables$Mutation$UpdateUser) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateUser;

  factory CopyWith$Variables$Mutation$UpdateUser.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateUser;

  TRes call({Input$UserInput? input});
}

class _CopyWithImpl$Variables$Mutation$UpdateUser<TRes>
    implements CopyWith$Variables$Mutation$UpdateUser<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateUser(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateUser _instance;

  final TRes Function(Variables$Mutation$UpdateUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$UpdateUser._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$UserInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateUser<TRes>
    implements CopyWith$Variables$Mutation$UpdateUser<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateUser(this._res);

  TRes _res;

  call({Input$UserInput? input}) => _res;
}

class Mutation$UpdateUser {
  Mutation$UpdateUser({
    required this.updateUser,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateUser.fromJson(Map<String, dynamic> json) {
    final l$updateUser = json['updateUser'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateUser(
      updateUser: (l$updateUser as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String updateUser;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateUser = updateUser;
    _resultData['updateUser'] = l$updateUser;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateUser = updateUser;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateUser,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateUser) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateUser = updateUser;
    final lOther$updateUser = other.updateUser;
    if (l$updateUser != lOther$updateUser) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$UpdateUser on Mutation$UpdateUser {
  CopyWith$Mutation$UpdateUser<Mutation$UpdateUser> get copyWith =>
      CopyWith$Mutation$UpdateUser(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdateUser<TRes> {
  factory CopyWith$Mutation$UpdateUser(
    Mutation$UpdateUser instance,
    TRes Function(Mutation$UpdateUser) then,
  ) = _CopyWithImpl$Mutation$UpdateUser;

  factory CopyWith$Mutation$UpdateUser.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateUser;

  TRes call({
    String? updateUser,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdateUser<TRes>
    implements CopyWith$Mutation$UpdateUser<TRes> {
  _CopyWithImpl$Mutation$UpdateUser(
    this._instance,
    this._then,
  );

  final Mutation$UpdateUser _instance;

  final TRes Function(Mutation$UpdateUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateUser = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateUser(
        updateUser: updateUser == _undefined || updateUser == null
            ? _instance.updateUser
            : (updateUser as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$UpdateUser<TRes>
    implements CopyWith$Mutation$UpdateUser<TRes> {
  _CopyWithStubImpl$Mutation$UpdateUser(this._res);

  TRes _res;

  call({
    String? updateUser,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeMutationUpdateUser = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateUser'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'UserInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updateUser'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'input')),
          )
        ],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
