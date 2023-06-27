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
            name: NameNode(value: 'profileCompletionPercentage'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'updatedAt'),
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
    required this.profileCompletionPercentage,
    this.updatedAt,
    this.$__typename = 'User',
  });

  factory Query$GetAuthenticatedUser$getAuthenticatedUser.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$email = json['email'];
    final l$fullName = json['fullName'];
    final l$avatarUrl = json['avatarUrl'];
    final l$userHandle = json['userHandle'];
    final l$profileCompletionPercentage = json['profileCompletionPercentage'];
    final l$updatedAt = json['updatedAt'];
    final l$$__typename = json['__typename'];
    return Query$GetAuthenticatedUser$getAuthenticatedUser(
      id: (l$id as String),
      email: (l$email as String?),
      fullName: (l$fullName as String?),
      avatarUrl: (l$avatarUrl as String?),
      userHandle: (l$userHandle as String?),
      profileCompletionPercentage: (l$profileCompletionPercentage as int),
      updatedAt:
          l$updatedAt == null ? null : DateTime.parse((l$updatedAt as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String? email;

  final String? fullName;

  final String? avatarUrl;

  final String? userHandle;

  final int profileCompletionPercentage;

  final DateTime? updatedAt;

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
    final l$profileCompletionPercentage = profileCompletionPercentage;
    _resultData['profileCompletionPercentage'] = l$profileCompletionPercentage;
    final l$updatedAt = updatedAt;
    _resultData['updatedAt'] = l$updatedAt?.toIso8601String();
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
    final l$profileCompletionPercentage = profileCompletionPercentage;
    final l$updatedAt = updatedAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$email,
      l$fullName,
      l$avatarUrl,
      l$userHandle,
      l$profileCompletionPercentage,
      l$updatedAt,
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
    final l$profileCompletionPercentage = profileCompletionPercentage;
    final lOther$profileCompletionPercentage =
        other.profileCompletionPercentage;
    if (l$profileCompletionPercentage != lOther$profileCompletionPercentage) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (l$updatedAt != lOther$updatedAt) {
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
    int? profileCompletionPercentage,
    DateTime? updatedAt,
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
    Object? profileCompletionPercentage = _undefined,
    Object? updatedAt = _undefined,
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
        profileCompletionPercentage:
            profileCompletionPercentage == _undefined ||
                    profileCompletionPercentage == null
                ? _instance.profileCompletionPercentage
                : (profileCompletionPercentage as int),
        updatedAt: updatedAt == _undefined
            ? _instance.updatedAt
            : (updatedAt as DateTime?),
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
    int? profileCompletionPercentage,
    DateTime? updatedAt,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$FindAllUsers {
  factory Variables$Query$FindAllUsers({Input$UserListFilter? filter}) =>
      Variables$Query$FindAllUsers._({
        if (filter != null) r'filter': filter,
      });

  Variables$Query$FindAllUsers._(this._$data);

  factory Variables$Query$FindAllUsers.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('filter')) {
      final l$filter = data['filter'];
      result$data['filter'] = l$filter == null
          ? null
          : Input$UserListFilter.fromJson((l$filter as Map<String, dynamic>));
    }
    return Variables$Query$FindAllUsers._(result$data);
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

  CopyWith$Variables$Query$FindAllUsers<Variables$Query$FindAllUsers>
      get copyWith => CopyWith$Variables$Query$FindAllUsers(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$FindAllUsers) ||
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

abstract class CopyWith$Variables$Query$FindAllUsers<TRes> {
  factory CopyWith$Variables$Query$FindAllUsers(
    Variables$Query$FindAllUsers instance,
    TRes Function(Variables$Query$FindAllUsers) then,
  ) = _CopyWithImpl$Variables$Query$FindAllUsers;

  factory CopyWith$Variables$Query$FindAllUsers.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$FindAllUsers;

  TRes call({Input$UserListFilter? filter});
}

class _CopyWithImpl$Variables$Query$FindAllUsers<TRes>
    implements CopyWith$Variables$Query$FindAllUsers<TRes> {
  _CopyWithImpl$Variables$Query$FindAllUsers(
    this._instance,
    this._then,
  );

  final Variables$Query$FindAllUsers _instance;

  final TRes Function(Variables$Query$FindAllUsers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? filter = _undefined}) =>
      _then(Variables$Query$FindAllUsers._({
        ..._instance._$data,
        if (filter != _undefined) 'filter': (filter as Input$UserListFilter?),
      }));
}

class _CopyWithStubImpl$Variables$Query$FindAllUsers<TRes>
    implements CopyWith$Variables$Query$FindAllUsers<TRes> {
  _CopyWithStubImpl$Variables$Query$FindAllUsers(this._res);

  TRes _res;

  call({Input$UserListFilter? filter}) => _res;
}

class Query$FindAllUsers {
  Query$FindAllUsers({
    required this.findUsers,
    this.$__typename = 'Query',
  });

  factory Query$FindAllUsers.fromJson(Map<String, dynamic> json) {
    final l$findUsers = json['findUsers'];
    final l$$__typename = json['__typename'];
    return Query$FindAllUsers(
      findUsers: (l$findUsers as List<dynamic>)
          .map((e) => Query$FindAllUsers$findUsers.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$FindAllUsers$findUsers> findUsers;

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
    if (!(other is Query$FindAllUsers) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$FindAllUsers on Query$FindAllUsers {
  CopyWith$Query$FindAllUsers<Query$FindAllUsers> get copyWith =>
      CopyWith$Query$FindAllUsers(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FindAllUsers<TRes> {
  factory CopyWith$Query$FindAllUsers(
    Query$FindAllUsers instance,
    TRes Function(Query$FindAllUsers) then,
  ) = _CopyWithImpl$Query$FindAllUsers;

  factory CopyWith$Query$FindAllUsers.stub(TRes res) =
      _CopyWithStubImpl$Query$FindAllUsers;

  TRes call({
    List<Query$FindAllUsers$findUsers>? findUsers,
    String? $__typename,
  });
  TRes findUsers(
      Iterable<Query$FindAllUsers$findUsers> Function(
              Iterable<
                  CopyWith$Query$FindAllUsers$findUsers<
                      Query$FindAllUsers$findUsers>>)
          _fn);
}

class _CopyWithImpl$Query$FindAllUsers<TRes>
    implements CopyWith$Query$FindAllUsers<TRes> {
  _CopyWithImpl$Query$FindAllUsers(
    this._instance,
    this._then,
  );

  final Query$FindAllUsers _instance;

  final TRes Function(Query$FindAllUsers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? findUsers = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindAllUsers(
        findUsers: findUsers == _undefined || findUsers == null
            ? _instance.findUsers
            : (findUsers as List<Query$FindAllUsers$findUsers>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes findUsers(
          Iterable<Query$FindAllUsers$findUsers> Function(
                  Iterable<
                      CopyWith$Query$FindAllUsers$findUsers<
                          Query$FindAllUsers$findUsers>>)
              _fn) =>
      call(
          findUsers: _fn(_instance.findUsers
              .map((e) => CopyWith$Query$FindAllUsers$findUsers(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$FindAllUsers<TRes>
    implements CopyWith$Query$FindAllUsers<TRes> {
  _CopyWithStubImpl$Query$FindAllUsers(this._res);

  TRes _res;

  call({
    List<Query$FindAllUsers$findUsers>? findUsers,
    String? $__typename,
  }) =>
      _res;
  findUsers(_fn) => _res;
}

const documentNodeQueryFindAllUsers = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FindAllUsers'),
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

class Query$FindAllUsers$findUsers {
  Query$FindAllUsers$findUsers({
    required this.id,
    this.email,
    this.fullName,
    this.avatarUrl,
    this.userHandle,
    this.$__typename = 'User',
  });

  factory Query$FindAllUsers$findUsers.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$email = json['email'];
    final l$fullName = json['fullName'];
    final l$avatarUrl = json['avatarUrl'];
    final l$userHandle = json['userHandle'];
    final l$$__typename = json['__typename'];
    return Query$FindAllUsers$findUsers(
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
    if (!(other is Query$FindAllUsers$findUsers) ||
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

extension UtilityExtension$Query$FindAllUsers$findUsers
    on Query$FindAllUsers$findUsers {
  CopyWith$Query$FindAllUsers$findUsers<Query$FindAllUsers$findUsers>
      get copyWith => CopyWith$Query$FindAllUsers$findUsers(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindAllUsers$findUsers<TRes> {
  factory CopyWith$Query$FindAllUsers$findUsers(
    Query$FindAllUsers$findUsers instance,
    TRes Function(Query$FindAllUsers$findUsers) then,
  ) = _CopyWithImpl$Query$FindAllUsers$findUsers;

  factory CopyWith$Query$FindAllUsers$findUsers.stub(TRes res) =
      _CopyWithStubImpl$Query$FindAllUsers$findUsers;

  TRes call({
    String? id,
    String? email,
    String? fullName,
    String? avatarUrl,
    String? userHandle,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindAllUsers$findUsers<TRes>
    implements CopyWith$Query$FindAllUsers$findUsers<TRes> {
  _CopyWithImpl$Query$FindAllUsers$findUsers(
    this._instance,
    this._then,
  );

  final Query$FindAllUsers$findUsers _instance;

  final TRes Function(Query$FindAllUsers$findUsers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? email = _undefined,
    Object? fullName = _undefined,
    Object? avatarUrl = _undefined,
    Object? userHandle = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindAllUsers$findUsers(
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

class _CopyWithStubImpl$Query$FindAllUsers$findUsers<TRes>
    implements CopyWith$Query$FindAllUsers$findUsers<TRes> {
  _CopyWithStubImpl$Query$FindAllUsers$findUsers(this._res);

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

class Variables$Query$FindUsersWithFilter {
  factory Variables$Query$FindUsersWithFilter({Input$UserListFilter? filter}) =>
      Variables$Query$FindUsersWithFilter._({
        if (filter != null) r'filter': filter,
      });

  Variables$Query$FindUsersWithFilter._(this._$data);

  factory Variables$Query$FindUsersWithFilter.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('filter')) {
      final l$filter = data['filter'];
      result$data['filter'] = l$filter == null
          ? null
          : Input$UserListFilter.fromJson((l$filter as Map<String, dynamic>));
    }
    return Variables$Query$FindUsersWithFilter._(result$data);
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

  CopyWith$Variables$Query$FindUsersWithFilter<
          Variables$Query$FindUsersWithFilter>
      get copyWith => CopyWith$Variables$Query$FindUsersWithFilter(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$FindUsersWithFilter) ||
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

abstract class CopyWith$Variables$Query$FindUsersWithFilter<TRes> {
  factory CopyWith$Variables$Query$FindUsersWithFilter(
    Variables$Query$FindUsersWithFilter instance,
    TRes Function(Variables$Query$FindUsersWithFilter) then,
  ) = _CopyWithImpl$Variables$Query$FindUsersWithFilter;

  factory CopyWith$Variables$Query$FindUsersWithFilter.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$FindUsersWithFilter;

  TRes call({Input$UserListFilter? filter});
}

class _CopyWithImpl$Variables$Query$FindUsersWithFilter<TRes>
    implements CopyWith$Variables$Query$FindUsersWithFilter<TRes> {
  _CopyWithImpl$Variables$Query$FindUsersWithFilter(
    this._instance,
    this._then,
  );

  final Variables$Query$FindUsersWithFilter _instance;

  final TRes Function(Variables$Query$FindUsersWithFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? filter = _undefined}) =>
      _then(Variables$Query$FindUsersWithFilter._({
        ..._instance._$data,
        if (filter != _undefined) 'filter': (filter as Input$UserListFilter?),
      }));
}

class _CopyWithStubImpl$Variables$Query$FindUsersWithFilter<TRes>
    implements CopyWith$Variables$Query$FindUsersWithFilter<TRes> {
  _CopyWithStubImpl$Variables$Query$FindUsersWithFilter(this._res);

  TRes _res;

  call({Input$UserListFilter? filter}) => _res;
}

class Query$FindUsersWithFilter {
  Query$FindUsersWithFilter({
    required this.findUsers,
    this.$__typename = 'Query',
  });

  factory Query$FindUsersWithFilter.fromJson(Map<String, dynamic> json) {
    final l$findUsers = json['findUsers'];
    final l$$__typename = json['__typename'];
    return Query$FindUsersWithFilter(
      findUsers: (l$findUsers as List<dynamic>)
          .map((e) => Query$FindUsersWithFilter$findUsers.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$FindUsersWithFilter$findUsers> findUsers;

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
    if (!(other is Query$FindUsersWithFilter) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$FindUsersWithFilter
    on Query$FindUsersWithFilter {
  CopyWith$Query$FindUsersWithFilter<Query$FindUsersWithFilter> get copyWith =>
      CopyWith$Query$FindUsersWithFilter(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FindUsersWithFilter<TRes> {
  factory CopyWith$Query$FindUsersWithFilter(
    Query$FindUsersWithFilter instance,
    TRes Function(Query$FindUsersWithFilter) then,
  ) = _CopyWithImpl$Query$FindUsersWithFilter;

  factory CopyWith$Query$FindUsersWithFilter.stub(TRes res) =
      _CopyWithStubImpl$Query$FindUsersWithFilter;

  TRes call({
    List<Query$FindUsersWithFilter$findUsers>? findUsers,
    String? $__typename,
  });
  TRes findUsers(
      Iterable<Query$FindUsersWithFilter$findUsers> Function(
              Iterable<
                  CopyWith$Query$FindUsersWithFilter$findUsers<
                      Query$FindUsersWithFilter$findUsers>>)
          _fn);
}

class _CopyWithImpl$Query$FindUsersWithFilter<TRes>
    implements CopyWith$Query$FindUsersWithFilter<TRes> {
  _CopyWithImpl$Query$FindUsersWithFilter(
    this._instance,
    this._then,
  );

  final Query$FindUsersWithFilter _instance;

  final TRes Function(Query$FindUsersWithFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? findUsers = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindUsersWithFilter(
        findUsers: findUsers == _undefined || findUsers == null
            ? _instance.findUsers
            : (findUsers as List<Query$FindUsersWithFilter$findUsers>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes findUsers(
          Iterable<Query$FindUsersWithFilter$findUsers> Function(
                  Iterable<
                      CopyWith$Query$FindUsersWithFilter$findUsers<
                          Query$FindUsersWithFilter$findUsers>>)
              _fn) =>
      call(
          findUsers: _fn(_instance.findUsers
              .map((e) => CopyWith$Query$FindUsersWithFilter$findUsers(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$FindUsersWithFilter<TRes>
    implements CopyWith$Query$FindUsersWithFilter<TRes> {
  _CopyWithStubImpl$Query$FindUsersWithFilter(this._res);

  TRes _res;

  call({
    List<Query$FindUsersWithFilter$findUsers>? findUsers,
    String? $__typename,
  }) =>
      _res;
  findUsers(_fn) => _res;
}

const documentNodeQueryFindUsersWithFilter = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FindUsersWithFilter'),
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
            name: NameNode(value: 'jobTitle'),
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

class Query$FindUsersWithFilter$findUsers {
  Query$FindUsersWithFilter$findUsers({
    required this.id,
    this.email,
    this.fullName,
    this.avatarUrl,
    this.userHandle,
    this.jobTitle,
    this.$__typename = 'User',
  });

  factory Query$FindUsersWithFilter$findUsers.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$email = json['email'];
    final l$fullName = json['fullName'];
    final l$avatarUrl = json['avatarUrl'];
    final l$userHandle = json['userHandle'];
    final l$jobTitle = json['jobTitle'];
    final l$$__typename = json['__typename'];
    return Query$FindUsersWithFilter$findUsers(
      id: (l$id as String),
      email: (l$email as String?),
      fullName: (l$fullName as String?),
      avatarUrl: (l$avatarUrl as String?),
      userHandle: (l$userHandle as String?),
      jobTitle: (l$jobTitle as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String? email;

  final String? fullName;

  final String? avatarUrl;

  final String? userHandle;

  final String? jobTitle;

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
    final l$jobTitle = jobTitle;
    _resultData['jobTitle'] = l$jobTitle;
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
    final l$jobTitle = jobTitle;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$email,
      l$fullName,
      l$avatarUrl,
      l$userHandle,
      l$jobTitle,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FindUsersWithFilter$findUsers) ||
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
    final l$jobTitle = jobTitle;
    final lOther$jobTitle = other.jobTitle;
    if (l$jobTitle != lOther$jobTitle) {
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

extension UtilityExtension$Query$FindUsersWithFilter$findUsers
    on Query$FindUsersWithFilter$findUsers {
  CopyWith$Query$FindUsersWithFilter$findUsers<
          Query$FindUsersWithFilter$findUsers>
      get copyWith => CopyWith$Query$FindUsersWithFilter$findUsers(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindUsersWithFilter$findUsers<TRes> {
  factory CopyWith$Query$FindUsersWithFilter$findUsers(
    Query$FindUsersWithFilter$findUsers instance,
    TRes Function(Query$FindUsersWithFilter$findUsers) then,
  ) = _CopyWithImpl$Query$FindUsersWithFilter$findUsers;

  factory CopyWith$Query$FindUsersWithFilter$findUsers.stub(TRes res) =
      _CopyWithStubImpl$Query$FindUsersWithFilter$findUsers;

  TRes call({
    String? id,
    String? email,
    String? fullName,
    String? avatarUrl,
    String? userHandle,
    String? jobTitle,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindUsersWithFilter$findUsers<TRes>
    implements CopyWith$Query$FindUsersWithFilter$findUsers<TRes> {
  _CopyWithImpl$Query$FindUsersWithFilter$findUsers(
    this._instance,
    this._then,
  );

  final Query$FindUsersWithFilter$findUsers _instance;

  final TRes Function(Query$FindUsersWithFilter$findUsers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? email = _undefined,
    Object? fullName = _undefined,
    Object? avatarUrl = _undefined,
    Object? userHandle = _undefined,
    Object? jobTitle = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindUsersWithFilter$findUsers(
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
        jobTitle:
            jobTitle == _undefined ? _instance.jobTitle : (jobTitle as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FindUsersWithFilter$findUsers<TRes>
    implements CopyWith$Query$FindUsersWithFilter$findUsers<TRes> {
  _CopyWithStubImpl$Query$FindUsersWithFilter$findUsers(this._res);

  TRes _res;

  call({
    String? id,
    String? email,
    String? fullName,
    String? avatarUrl,
    String? userHandle,
    String? jobTitle,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetInboxInvitations {
  Query$GetInboxInvitations({
    required this.myInbox,
    this.$__typename = 'Query',
  });

  factory Query$GetInboxInvitations.fromJson(Map<String, dynamic> json) {
    final l$myInbox = json['myInbox'];
    final l$$__typename = json['__typename'];
    return Query$GetInboxInvitations(
      myInbox: Query$GetInboxInvitations$myInbox.fromJson(
          (l$myInbox as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetInboxInvitations$myInbox myInbox;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$myInbox = myInbox;
    _resultData['myInbox'] = l$myInbox.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$myInbox = myInbox;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$myInbox,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetInboxInvitations) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$myInbox = myInbox;
    final lOther$myInbox = other.myInbox;
    if (l$myInbox != lOther$myInbox) {
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

extension UtilityExtension$Query$GetInboxInvitations
    on Query$GetInboxInvitations {
  CopyWith$Query$GetInboxInvitations<Query$GetInboxInvitations> get copyWith =>
      CopyWith$Query$GetInboxInvitations(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetInboxInvitations<TRes> {
  factory CopyWith$Query$GetInboxInvitations(
    Query$GetInboxInvitations instance,
    TRes Function(Query$GetInboxInvitations) then,
  ) = _CopyWithImpl$Query$GetInboxInvitations;

  factory CopyWith$Query$GetInboxInvitations.stub(TRes res) =
      _CopyWithStubImpl$Query$GetInboxInvitations;

  TRes call({
    Query$GetInboxInvitations$myInbox? myInbox,
    String? $__typename,
  });
  CopyWith$Query$GetInboxInvitations$myInbox<TRes> get myInbox;
}

class _CopyWithImpl$Query$GetInboxInvitations<TRes>
    implements CopyWith$Query$GetInboxInvitations<TRes> {
  _CopyWithImpl$Query$GetInboxInvitations(
    this._instance,
    this._then,
  );

  final Query$GetInboxInvitations _instance;

  final TRes Function(Query$GetInboxInvitations) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? myInbox = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetInboxInvitations(
        myInbox: myInbox == _undefined || myInbox == null
            ? _instance.myInbox
            : (myInbox as Query$GetInboxInvitations$myInbox),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$GetInboxInvitations$myInbox<TRes> get myInbox {
    final local$myInbox = _instance.myInbox;
    return CopyWith$Query$GetInboxInvitations$myInbox(
        local$myInbox, (e) => call(myInbox: e));
  }
}

class _CopyWithStubImpl$Query$GetInboxInvitations<TRes>
    implements CopyWith$Query$GetInboxInvitations<TRes> {
  _CopyWithStubImpl$Query$GetInboxInvitations(this._res);

  TRes _res;

  call({
    Query$GetInboxInvitations$myInbox? myInbox,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$GetInboxInvitations$myInbox<TRes> get myInbox =>
      CopyWith$Query$GetInboxInvitations$myInbox.stub(_res);
}

const documentNodeQueryGetInboxInvitations = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetInboxInvitations'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'myInbox'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'channels'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'invitations'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'channelId'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'createdAt'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'createdBy'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'id'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'messageText'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'status'),
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
                name: NameNode(value: 'pendingInvitations'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'channelId'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'createdAt'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'createdBy'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'id'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'messageText'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'status'),
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

class Query$GetInboxInvitations$myInbox {
  Query$GetInboxInvitations$myInbox({
    this.channels,
    this.$__typename = 'UserInbox',
  });

  factory Query$GetInboxInvitations$myInbox.fromJson(
      Map<String, dynamic> json) {
    final l$channels = json['channels'];
    final l$$__typename = json['__typename'];
    return Query$GetInboxInvitations$myInbox(
      channels: l$channels == null
          ? null
          : Query$GetInboxInvitations$myInbox$channels.fromJson(
              (l$channels as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetInboxInvitations$myInbox$channels? channels;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$channels = channels;
    _resultData['channels'] = l$channels?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$channels = channels;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$channels,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetInboxInvitations$myInbox) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$channels = channels;
    final lOther$channels = other.channels;
    if (l$channels != lOther$channels) {
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

extension UtilityExtension$Query$GetInboxInvitations$myInbox
    on Query$GetInboxInvitations$myInbox {
  CopyWith$Query$GetInboxInvitations$myInbox<Query$GetInboxInvitations$myInbox>
      get copyWith => CopyWith$Query$GetInboxInvitations$myInbox(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetInboxInvitations$myInbox<TRes> {
  factory CopyWith$Query$GetInboxInvitations$myInbox(
    Query$GetInboxInvitations$myInbox instance,
    TRes Function(Query$GetInboxInvitations$myInbox) then,
  ) = _CopyWithImpl$Query$GetInboxInvitations$myInbox;

  factory CopyWith$Query$GetInboxInvitations$myInbox.stub(TRes res) =
      _CopyWithStubImpl$Query$GetInboxInvitations$myInbox;

  TRes call({
    Query$GetInboxInvitations$myInbox$channels? channels,
    String? $__typename,
  });
  CopyWith$Query$GetInboxInvitations$myInbox$channels<TRes> get channels;
}

class _CopyWithImpl$Query$GetInboxInvitations$myInbox<TRes>
    implements CopyWith$Query$GetInboxInvitations$myInbox<TRes> {
  _CopyWithImpl$Query$GetInboxInvitations$myInbox(
    this._instance,
    this._then,
  );

  final Query$GetInboxInvitations$myInbox _instance;

  final TRes Function(Query$GetInboxInvitations$myInbox) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? channels = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetInboxInvitations$myInbox(
        channels: channels == _undefined
            ? _instance.channels
            : (channels as Query$GetInboxInvitations$myInbox$channels?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$GetInboxInvitations$myInbox$channels<TRes> get channels {
    final local$channels = _instance.channels;
    return local$channels == null
        ? CopyWith$Query$GetInboxInvitations$myInbox$channels.stub(
            _then(_instance))
        : CopyWith$Query$GetInboxInvitations$myInbox$channels(
            local$channels, (e) => call(channels: e));
  }
}

class _CopyWithStubImpl$Query$GetInboxInvitations$myInbox<TRes>
    implements CopyWith$Query$GetInboxInvitations$myInbox<TRes> {
  _CopyWithStubImpl$Query$GetInboxInvitations$myInbox(this._res);

  TRes _res;

  call({
    Query$GetInboxInvitations$myInbox$channels? channels,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$GetInboxInvitations$myInbox$channels<TRes> get channels =>
      CopyWith$Query$GetInboxInvitations$myInbox$channels.stub(_res);
}

class Query$GetInboxInvitations$myInbox$channels {
  Query$GetInboxInvitations$myInbox$channels({
    this.invitations,
    this.pendingInvitations,
    this.$__typename = 'ChannelInbox',
  });

  factory Query$GetInboxInvitations$myInbox$channels.fromJson(
      Map<String, dynamic> json) {
    final l$invitations = json['invitations'];
    final l$pendingInvitations = json['pendingInvitations'];
    final l$$__typename = json['__typename'];
    return Query$GetInboxInvitations$myInbox$channels(
      invitations: (l$invitations as List<dynamic>?)
          ?.map((e) =>
              Query$GetInboxInvitations$myInbox$channels$invitations.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      pendingInvitations: (l$pendingInvitations as List<dynamic>?)
          ?.map((e) =>
              Query$GetInboxInvitations$myInbox$channels$pendingInvitations
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetInboxInvitations$myInbox$channels$invitations>?
      invitations;

  final List<Query$GetInboxInvitations$myInbox$channels$pendingInvitations>?
      pendingInvitations;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$invitations = invitations;
    _resultData['invitations'] = l$invitations?.map((e) => e.toJson()).toList();
    final l$pendingInvitations = pendingInvitations;
    _resultData['pendingInvitations'] =
        l$pendingInvitations?.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$invitations = invitations;
    final l$pendingInvitations = pendingInvitations;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$invitations == null
          ? null
          : Object.hashAll(l$invitations.map((v) => v)),
      l$pendingInvitations == null
          ? null
          : Object.hashAll(l$pendingInvitations.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetInboxInvitations$myInbox$channels) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$invitations = invitations;
    final lOther$invitations = other.invitations;
    if (l$invitations != null && lOther$invitations != null) {
      if (l$invitations.length != lOther$invitations.length) {
        return false;
      }
      for (int i = 0; i < l$invitations.length; i++) {
        final l$invitations$entry = l$invitations[i];
        final lOther$invitations$entry = lOther$invitations[i];
        if (l$invitations$entry != lOther$invitations$entry) {
          return false;
        }
      }
    } else if (l$invitations != lOther$invitations) {
      return false;
    }
    final l$pendingInvitations = pendingInvitations;
    final lOther$pendingInvitations = other.pendingInvitations;
    if (l$pendingInvitations != null && lOther$pendingInvitations != null) {
      if (l$pendingInvitations.length != lOther$pendingInvitations.length) {
        return false;
      }
      for (int i = 0; i < l$pendingInvitations.length; i++) {
        final l$pendingInvitations$entry = l$pendingInvitations[i];
        final lOther$pendingInvitations$entry = lOther$pendingInvitations[i];
        if (l$pendingInvitations$entry != lOther$pendingInvitations$entry) {
          return false;
        }
      }
    } else if (l$pendingInvitations != lOther$pendingInvitations) {
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

extension UtilityExtension$Query$GetInboxInvitations$myInbox$channels
    on Query$GetInboxInvitations$myInbox$channels {
  CopyWith$Query$GetInboxInvitations$myInbox$channels<
          Query$GetInboxInvitations$myInbox$channels>
      get copyWith => CopyWith$Query$GetInboxInvitations$myInbox$channels(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetInboxInvitations$myInbox$channels<TRes> {
  factory CopyWith$Query$GetInboxInvitations$myInbox$channels(
    Query$GetInboxInvitations$myInbox$channels instance,
    TRes Function(Query$GetInboxInvitations$myInbox$channels) then,
  ) = _CopyWithImpl$Query$GetInboxInvitations$myInbox$channels;

  factory CopyWith$Query$GetInboxInvitations$myInbox$channels.stub(TRes res) =
      _CopyWithStubImpl$Query$GetInboxInvitations$myInbox$channels;

  TRes call({
    List<Query$GetInboxInvitations$myInbox$channels$invitations>? invitations,
    List<Query$GetInboxInvitations$myInbox$channels$pendingInvitations>?
        pendingInvitations,
    String? $__typename,
  });
  TRes invitations(
      Iterable<Query$GetInboxInvitations$myInbox$channels$invitations>? Function(
              Iterable<
                  CopyWith$Query$GetInboxInvitations$myInbox$channels$invitations<
                      Query$GetInboxInvitations$myInbox$channels$invitations>>?)
          _fn);
  TRes pendingInvitations(
      Iterable<Query$GetInboxInvitations$myInbox$channels$pendingInvitations>? Function(
              Iterable<
                  CopyWith$Query$GetInboxInvitations$myInbox$channels$pendingInvitations<
                      Query$GetInboxInvitations$myInbox$channels$pendingInvitations>>?)
          _fn);
}

class _CopyWithImpl$Query$GetInboxInvitations$myInbox$channels<TRes>
    implements CopyWith$Query$GetInboxInvitations$myInbox$channels<TRes> {
  _CopyWithImpl$Query$GetInboxInvitations$myInbox$channels(
    this._instance,
    this._then,
  );

  final Query$GetInboxInvitations$myInbox$channels _instance;

  final TRes Function(Query$GetInboxInvitations$myInbox$channels) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? invitations = _undefined,
    Object? pendingInvitations = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetInboxInvitations$myInbox$channels(
        invitations: invitations == _undefined
            ? _instance.invitations
            : (invitations as List<
                Query$GetInboxInvitations$myInbox$channels$invitations>?),
        pendingInvitations: pendingInvitations == _undefined
            ? _instance.pendingInvitations
            : (pendingInvitations as List<
                Query$GetInboxInvitations$myInbox$channels$pendingInvitations>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes invitations(
          Iterable<Query$GetInboxInvitations$myInbox$channels$invitations>? Function(
                  Iterable<
                      CopyWith$Query$GetInboxInvitations$myInbox$channels$invitations<
                          Query$GetInboxInvitations$myInbox$channels$invitations>>?)
              _fn) =>
      call(
          invitations: _fn(_instance.invitations?.map((e) =>
              CopyWith$Query$GetInboxInvitations$myInbox$channels$invitations(
                e,
                (i) => i,
              )))?.toList());
  TRes pendingInvitations(
          Iterable<Query$GetInboxInvitations$myInbox$channels$pendingInvitations>? Function(
                  Iterable<
                      CopyWith$Query$GetInboxInvitations$myInbox$channels$pendingInvitations<
                          Query$GetInboxInvitations$myInbox$channels$pendingInvitations>>?)
              _fn) =>
      call(
          pendingInvitations: _fn(_instance.pendingInvitations?.map((e) =>
              CopyWith$Query$GetInboxInvitations$myInbox$channels$pendingInvitations(
                e,
                (i) => i,
              )))?.toList());
}

class _CopyWithStubImpl$Query$GetInboxInvitations$myInbox$channels<TRes>
    implements CopyWith$Query$GetInboxInvitations$myInbox$channels<TRes> {
  _CopyWithStubImpl$Query$GetInboxInvitations$myInbox$channels(this._res);

  TRes _res;

  call({
    List<Query$GetInboxInvitations$myInbox$channels$invitations>? invitations,
    List<Query$GetInboxInvitations$myInbox$channels$pendingInvitations>?
        pendingInvitations,
    String? $__typename,
  }) =>
      _res;
  invitations(_fn) => _res;
  pendingInvitations(_fn) => _res;
}

class Query$GetInboxInvitations$myInbox$channels$invitations {
  Query$GetInboxInvitations$myInbox$channels$invitations({
    this.channelId,
    required this.createdAt,
    this.createdBy,
    required this.id,
    this.messageText,
    required this.status,
    this.$__typename = 'ChannelInboxItemInvitation',
  });

  factory Query$GetInboxInvitations$myInbox$channels$invitations.fromJson(
      Map<String, dynamic> json) {
    final l$channelId = json['channelId'];
    final l$createdAt = json['createdAt'];
    final l$createdBy = json['createdBy'];
    final l$id = json['id'];
    final l$messageText = json['messageText'];
    final l$status = json['status'];
    final l$$__typename = json['__typename'];
    return Query$GetInboxInvitations$myInbox$channels$invitations(
      channelId: (l$channelId as String?),
      createdAt: DateTime.parse((l$createdAt as String)),
      createdBy: (l$createdBy as String?),
      id: (l$id as String),
      messageText: (l$messageText as String?),
      status: fromJson$Enum$ChannelInvitationStatus((l$status as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String? channelId;

  final DateTime createdAt;

  final String? createdBy;

  final String id;

  final String? messageText;

  final Enum$ChannelInvitationStatus status;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$channelId = channelId;
    _resultData['channelId'] = l$channelId;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt.toIso8601String();
    final l$createdBy = createdBy;
    _resultData['createdBy'] = l$createdBy;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$messageText = messageText;
    _resultData['messageText'] = l$messageText;
    final l$status = status;
    _resultData['status'] = toJson$Enum$ChannelInvitationStatus(l$status);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$channelId = channelId;
    final l$createdAt = createdAt;
    final l$createdBy = createdBy;
    final l$id = id;
    final l$messageText = messageText;
    final l$status = status;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$channelId,
      l$createdAt,
      l$createdBy,
      l$id,
      l$messageText,
      l$status,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetInboxInvitations$myInbox$channels$invitations) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$channelId = channelId;
    final lOther$channelId = other.channelId;
    if (l$channelId != lOther$channelId) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$createdBy = createdBy;
    final lOther$createdBy = other.createdBy;
    if (l$createdBy != lOther$createdBy) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$messageText = messageText;
    final lOther$messageText = other.messageText;
    if (l$messageText != lOther$messageText) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
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

extension UtilityExtension$Query$GetInboxInvitations$myInbox$channels$invitations
    on Query$GetInboxInvitations$myInbox$channels$invitations {
  CopyWith$Query$GetInboxInvitations$myInbox$channels$invitations<
          Query$GetInboxInvitations$myInbox$channels$invitations>
      get copyWith =>
          CopyWith$Query$GetInboxInvitations$myInbox$channels$invitations(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetInboxInvitations$myInbox$channels$invitations<
    TRes> {
  factory CopyWith$Query$GetInboxInvitations$myInbox$channels$invitations(
    Query$GetInboxInvitations$myInbox$channels$invitations instance,
    TRes Function(Query$GetInboxInvitations$myInbox$channels$invitations) then,
  ) = _CopyWithImpl$Query$GetInboxInvitations$myInbox$channels$invitations;

  factory CopyWith$Query$GetInboxInvitations$myInbox$channels$invitations.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetInboxInvitations$myInbox$channels$invitations;

  TRes call({
    String? channelId,
    DateTime? createdAt,
    String? createdBy,
    String? id,
    String? messageText,
    Enum$ChannelInvitationStatus? status,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetInboxInvitations$myInbox$channels$invitations<TRes>
    implements
        CopyWith$Query$GetInboxInvitations$myInbox$channels$invitations<TRes> {
  _CopyWithImpl$Query$GetInboxInvitations$myInbox$channels$invitations(
    this._instance,
    this._then,
  );

  final Query$GetInboxInvitations$myInbox$channels$invitations _instance;

  final TRes Function(Query$GetInboxInvitations$myInbox$channels$invitations)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? channelId = _undefined,
    Object? createdAt = _undefined,
    Object? createdBy = _undefined,
    Object? id = _undefined,
    Object? messageText = _undefined,
    Object? status = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetInboxInvitations$myInbox$channels$invitations(
        channelId: channelId == _undefined
            ? _instance.channelId
            : (channelId as String?),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as DateTime),
        createdBy: createdBy == _undefined
            ? _instance.createdBy
            : (createdBy as String?),
        id: id == _undefined || id == null ? _instance.id : (id as String),
        messageText: messageText == _undefined
            ? _instance.messageText
            : (messageText as String?),
        status: status == _undefined || status == null
            ? _instance.status
            : (status as Enum$ChannelInvitationStatus),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetInboxInvitations$myInbox$channels$invitations<
        TRes>
    implements
        CopyWith$Query$GetInboxInvitations$myInbox$channels$invitations<TRes> {
  _CopyWithStubImpl$Query$GetInboxInvitations$myInbox$channels$invitations(
      this._res);

  TRes _res;

  call({
    String? channelId,
    DateTime? createdAt,
    String? createdBy,
    String? id,
    String? messageText,
    Enum$ChannelInvitationStatus? status,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetInboxInvitations$myInbox$channels$pendingInvitations {
  Query$GetInboxInvitations$myInbox$channels$pendingInvitations({
    this.channelId,
    required this.createdAt,
    this.createdBy,
    required this.id,
    this.messageText,
    required this.status,
    this.$__typename = 'ChannelInboxItemInvitation',
  });

  factory Query$GetInboxInvitations$myInbox$channels$pendingInvitations.fromJson(
      Map<String, dynamic> json) {
    final l$channelId = json['channelId'];
    final l$createdAt = json['createdAt'];
    final l$createdBy = json['createdBy'];
    final l$id = json['id'];
    final l$messageText = json['messageText'];
    final l$status = json['status'];
    final l$$__typename = json['__typename'];
    return Query$GetInboxInvitations$myInbox$channels$pendingInvitations(
      channelId: (l$channelId as String?),
      createdAt: DateTime.parse((l$createdAt as String)),
      createdBy: (l$createdBy as String?),
      id: (l$id as String),
      messageText: (l$messageText as String?),
      status: fromJson$Enum$ChannelInvitationStatus((l$status as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String? channelId;

  final DateTime createdAt;

  final String? createdBy;

  final String id;

  final String? messageText;

  final Enum$ChannelInvitationStatus status;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$channelId = channelId;
    _resultData['channelId'] = l$channelId;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt.toIso8601String();
    final l$createdBy = createdBy;
    _resultData['createdBy'] = l$createdBy;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$messageText = messageText;
    _resultData['messageText'] = l$messageText;
    final l$status = status;
    _resultData['status'] = toJson$Enum$ChannelInvitationStatus(l$status);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$channelId = channelId;
    final l$createdAt = createdAt;
    final l$createdBy = createdBy;
    final l$id = id;
    final l$messageText = messageText;
    final l$status = status;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$channelId,
      l$createdAt,
      l$createdBy,
      l$id,
      l$messageText,
      l$status,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetInboxInvitations$myInbox$channels$pendingInvitations) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$channelId = channelId;
    final lOther$channelId = other.channelId;
    if (l$channelId != lOther$channelId) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$createdBy = createdBy;
    final lOther$createdBy = other.createdBy;
    if (l$createdBy != lOther$createdBy) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$messageText = messageText;
    final lOther$messageText = other.messageText;
    if (l$messageText != lOther$messageText) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
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

extension UtilityExtension$Query$GetInboxInvitations$myInbox$channels$pendingInvitations
    on Query$GetInboxInvitations$myInbox$channels$pendingInvitations {
  CopyWith$Query$GetInboxInvitations$myInbox$channels$pendingInvitations<
          Query$GetInboxInvitations$myInbox$channels$pendingInvitations>
      get copyWith =>
          CopyWith$Query$GetInboxInvitations$myInbox$channels$pendingInvitations(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetInboxInvitations$myInbox$channels$pendingInvitations<
    TRes> {
  factory CopyWith$Query$GetInboxInvitations$myInbox$channels$pendingInvitations(
    Query$GetInboxInvitations$myInbox$channels$pendingInvitations instance,
    TRes Function(Query$GetInboxInvitations$myInbox$channels$pendingInvitations)
        then,
  ) = _CopyWithImpl$Query$GetInboxInvitations$myInbox$channels$pendingInvitations;

  factory CopyWith$Query$GetInboxInvitations$myInbox$channels$pendingInvitations.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetInboxInvitations$myInbox$channels$pendingInvitations;

  TRes call({
    String? channelId,
    DateTime? createdAt,
    String? createdBy,
    String? id,
    String? messageText,
    Enum$ChannelInvitationStatus? status,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetInboxInvitations$myInbox$channels$pendingInvitations<
        TRes>
    implements
        CopyWith$Query$GetInboxInvitations$myInbox$channels$pendingInvitations<
            TRes> {
  _CopyWithImpl$Query$GetInboxInvitations$myInbox$channels$pendingInvitations(
    this._instance,
    this._then,
  );

  final Query$GetInboxInvitations$myInbox$channels$pendingInvitations _instance;

  final TRes Function(
      Query$GetInboxInvitations$myInbox$channels$pendingInvitations) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? channelId = _undefined,
    Object? createdAt = _undefined,
    Object? createdBy = _undefined,
    Object? id = _undefined,
    Object? messageText = _undefined,
    Object? status = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetInboxInvitations$myInbox$channels$pendingInvitations(
        channelId: channelId == _undefined
            ? _instance.channelId
            : (channelId as String?),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as DateTime),
        createdBy: createdBy == _undefined
            ? _instance.createdBy
            : (createdBy as String?),
        id: id == _undefined || id == null ? _instance.id : (id as String),
        messageText: messageText == _undefined
            ? _instance.messageText
            : (messageText as String?),
        status: status == _undefined || status == null
            ? _instance.status
            : (status as Enum$ChannelInvitationStatus),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetInboxInvitations$myInbox$channels$pendingInvitations<
        TRes>
    implements
        CopyWith$Query$GetInboxInvitations$myInbox$channels$pendingInvitations<
            TRes> {
  _CopyWithStubImpl$Query$GetInboxInvitations$myInbox$channels$pendingInvitations(
      this._res);

  TRes _res;

  call({
    String? channelId,
    DateTime? createdAt,
    String? createdBy,
    String? id,
    String? messageText,
    Enum$ChannelInvitationStatus? status,
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
