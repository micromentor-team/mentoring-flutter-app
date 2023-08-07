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
            name: NameNode(value: 'firstName'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'lastName'),
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
    this.firstName,
    this.lastName,
    this.fullName,
    this.avatarUrl,
    this.userHandle,
    this.$__typename = 'User',
  });

  factory Query$FindAllUsers$findUsers.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$email = json['email'];
    final l$firstName = json['firstName'];
    final l$lastName = json['lastName'];
    final l$fullName = json['fullName'];
    final l$avatarUrl = json['avatarUrl'];
    final l$userHandle = json['userHandle'];
    final l$$__typename = json['__typename'];
    return Query$FindAllUsers$findUsers(
      id: (l$id as String),
      email: (l$email as String?),
      firstName: (l$firstName as String?),
      lastName: (l$lastName as String?),
      fullName: (l$fullName as String?),
      avatarUrl: (l$avatarUrl as String?),
      userHandle: (l$userHandle as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String? email;

  final String? firstName;

  final String? lastName;

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
    final l$firstName = firstName;
    _resultData['firstName'] = l$firstName;
    final l$lastName = lastName;
    _resultData['lastName'] = l$lastName;
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
    final l$firstName = firstName;
    final l$lastName = lastName;
    final l$fullName = fullName;
    final l$avatarUrl = avatarUrl;
    final l$userHandle = userHandle;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$email,
      l$firstName,
      l$lastName,
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
    final l$firstName = firstName;
    final lOther$firstName = other.firstName;
    if (l$firstName != lOther$firstName) {
      return false;
    }
    final l$lastName = lastName;
    final lOther$lastName = other.lastName;
    if (l$lastName != lOther$lastName) {
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
    String? firstName,
    String? lastName,
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
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? fullName = _undefined,
    Object? avatarUrl = _undefined,
    Object? userHandle = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindAllUsers$findUsers(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        email: email == _undefined ? _instance.email : (email as String?),
        firstName: firstName == _undefined
            ? _instance.firstName
            : (firstName as String?),
        lastName:
            lastName == _undefined ? _instance.lastName : (lastName as String?),
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
    String? firstName,
    String? lastName,
    String? fullName,
    String? avatarUrl,
    String? userHandle,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$FindMenteeUsers {
  factory Variables$Query$FindMenteeUsers({
    Input$FindObjectsOptions? options,
    Input$UserListFilter? filter,
    Input$UserInput? match,
  }) =>
      Variables$Query$FindMenteeUsers._({
        if (options != null) r'options': options,
        if (filter != null) r'filter': filter,
        if (match != null) r'match': match,
      });

  Variables$Query$FindMenteeUsers._(this._$data);

  factory Variables$Query$FindMenteeUsers.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('options')) {
      final l$options = data['options'];
      result$data['options'] = l$options == null
          ? null
          : Input$FindObjectsOptions.fromJson(
              (l$options as Map<String, dynamic>));
    }
    if (data.containsKey('filter')) {
      final l$filter = data['filter'];
      result$data['filter'] = l$filter == null
          ? null
          : Input$UserListFilter.fromJson((l$filter as Map<String, dynamic>));
    }
    if (data.containsKey('match')) {
      final l$match = data['match'];
      result$data['match'] = l$match == null
          ? null
          : Input$UserInput.fromJson((l$match as Map<String, dynamic>));
    }
    return Variables$Query$FindMenteeUsers._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$FindObjectsOptions? get options =>
      (_$data['options'] as Input$FindObjectsOptions?);
  Input$UserListFilter? get filter =>
      (_$data['filter'] as Input$UserListFilter?);
  Input$UserInput? get match => (_$data['match'] as Input$UserInput?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('options')) {
      final l$options = options;
      result$data['options'] = l$options?.toJson();
    }
    if (_$data.containsKey('filter')) {
      final l$filter = filter;
      result$data['filter'] = l$filter?.toJson();
    }
    if (_$data.containsKey('match')) {
      final l$match = match;
      result$data['match'] = l$match?.toJson();
    }
    return result$data;
  }

  CopyWith$Variables$Query$FindMenteeUsers<Variables$Query$FindMenteeUsers>
      get copyWith => CopyWith$Variables$Query$FindMenteeUsers(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$FindMenteeUsers) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$options = options;
    final lOther$options = other.options;
    if (_$data.containsKey('options') != other._$data.containsKey('options')) {
      return false;
    }
    if (l$options != lOther$options) {
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
    final l$match = match;
    final lOther$match = other.match;
    if (_$data.containsKey('match') != other._$data.containsKey('match')) {
      return false;
    }
    if (l$match != lOther$match) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$options = options;
    final l$filter = filter;
    final l$match = match;
    return Object.hashAll([
      _$data.containsKey('options') ? l$options : const {},
      _$data.containsKey('filter') ? l$filter : const {},
      _$data.containsKey('match') ? l$match : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$FindMenteeUsers<TRes> {
  factory CopyWith$Variables$Query$FindMenteeUsers(
    Variables$Query$FindMenteeUsers instance,
    TRes Function(Variables$Query$FindMenteeUsers) then,
  ) = _CopyWithImpl$Variables$Query$FindMenteeUsers;

  factory CopyWith$Variables$Query$FindMenteeUsers.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$FindMenteeUsers;

  TRes call({
    Input$FindObjectsOptions? options,
    Input$UserListFilter? filter,
    Input$UserInput? match,
  });
}

class _CopyWithImpl$Variables$Query$FindMenteeUsers<TRes>
    implements CopyWith$Variables$Query$FindMenteeUsers<TRes> {
  _CopyWithImpl$Variables$Query$FindMenteeUsers(
    this._instance,
    this._then,
  );

  final Variables$Query$FindMenteeUsers _instance;

  final TRes Function(Variables$Query$FindMenteeUsers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? options = _undefined,
    Object? filter = _undefined,
    Object? match = _undefined,
  }) =>
      _then(Variables$Query$FindMenteeUsers._({
        ..._instance._$data,
        if (options != _undefined)
          'options': (options as Input$FindObjectsOptions?),
        if (filter != _undefined) 'filter': (filter as Input$UserListFilter?),
        if (match != _undefined) 'match': (match as Input$UserInput?),
      }));
}

class _CopyWithStubImpl$Variables$Query$FindMenteeUsers<TRes>
    implements CopyWith$Variables$Query$FindMenteeUsers<TRes> {
  _CopyWithStubImpl$Variables$Query$FindMenteeUsers(this._res);

  TRes _res;

  call({
    Input$FindObjectsOptions? options,
    Input$UserListFilter? filter,
    Input$UserInput? match,
  }) =>
      _res;
}

class Query$FindMenteeUsers {
  Query$FindMenteeUsers({
    required this.findUsers,
    this.$__typename = 'Query',
  });

  factory Query$FindMenteeUsers.fromJson(Map<String, dynamic> json) {
    final l$findUsers = json['findUsers'];
    final l$$__typename = json['__typename'];
    return Query$FindMenteeUsers(
      findUsers: (l$findUsers as List<dynamic>)
          .map((e) => Query$FindMenteeUsers$findUsers.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$FindMenteeUsers$findUsers> findUsers;

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
    if (!(other is Query$FindMenteeUsers) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$FindMenteeUsers on Query$FindMenteeUsers {
  CopyWith$Query$FindMenteeUsers<Query$FindMenteeUsers> get copyWith =>
      CopyWith$Query$FindMenteeUsers(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FindMenteeUsers<TRes> {
  factory CopyWith$Query$FindMenteeUsers(
    Query$FindMenteeUsers instance,
    TRes Function(Query$FindMenteeUsers) then,
  ) = _CopyWithImpl$Query$FindMenteeUsers;

  factory CopyWith$Query$FindMenteeUsers.stub(TRes res) =
      _CopyWithStubImpl$Query$FindMenteeUsers;

  TRes call({
    List<Query$FindMenteeUsers$findUsers>? findUsers,
    String? $__typename,
  });
  TRes findUsers(
      Iterable<Query$FindMenteeUsers$findUsers> Function(
              Iterable<
                  CopyWith$Query$FindMenteeUsers$findUsers<
                      Query$FindMenteeUsers$findUsers>>)
          _fn);
}

class _CopyWithImpl$Query$FindMenteeUsers<TRes>
    implements CopyWith$Query$FindMenteeUsers<TRes> {
  _CopyWithImpl$Query$FindMenteeUsers(
    this._instance,
    this._then,
  );

  final Query$FindMenteeUsers _instance;

  final TRes Function(Query$FindMenteeUsers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? findUsers = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindMenteeUsers(
        findUsers: findUsers == _undefined || findUsers == null
            ? _instance.findUsers
            : (findUsers as List<Query$FindMenteeUsers$findUsers>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes findUsers(
          Iterable<Query$FindMenteeUsers$findUsers> Function(
                  Iterable<
                      CopyWith$Query$FindMenteeUsers$findUsers<
                          Query$FindMenteeUsers$findUsers>>)
              _fn) =>
      call(
          findUsers: _fn(_instance.findUsers
              .map((e) => CopyWith$Query$FindMenteeUsers$findUsers(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$FindMenteeUsers<TRes>
    implements CopyWith$Query$FindMenteeUsers<TRes> {
  _CopyWithStubImpl$Query$FindMenteeUsers(this._res);

  TRes _res;

  call({
    List<Query$FindMenteeUsers$findUsers>? findUsers,
    String? $__typename,
  }) =>
      _res;
  findUsers(_fn) => _res;
}

const documentNodeQueryFindMenteeUsers = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FindMenteeUsers'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'options')),
        type: NamedTypeNode(
          name: NameNode(value: 'FindObjectsOptions'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'filter')),
        type: NamedTypeNode(
          name: NameNode(value: 'UserListFilter'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'match')),
        type: NamedTypeNode(
          name: NameNode(value: 'UserInput'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'findUsers'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'options'),
            value: VariableNode(name: NameNode(value: 'options')),
          ),
          ArgumentNode(
            name: NameNode(value: 'filter'),
            value: VariableNode(name: NameNode(value: 'filter')),
          ),
          ArgumentNode(
            name: NameNode(value: 'match'),
            value: VariableNode(name: NameNode(value: 'match')),
          ),
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
            name: NameNode(value: 'firstName'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'lastName'),
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
            name: NameNode(value: 'cityOfResidence'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'regionOfResidence'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'countryOfResidence'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'translatedValue'),
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
            name: NameNode(value: 'jobTitle'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'groupMemberships'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              InlineFragmentNode(
                typeCondition: TypeConditionNode(
                    on: NamedTypeNode(
                  name: NameNode(value: 'MenteesGroupMembership'),
                  isNonNull: false,
                )),
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'soughtExpertises'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'translatedValue'),
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
                    name: NameNode(value: 'industry'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'translatedValue'),
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
            name: NameNode(value: 'companies'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'companyStage'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'translatedValue'),
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

class Query$FindMenteeUsers$findUsers {
  Query$FindMenteeUsers$findUsers({
    required this.id,
    this.email,
    this.firstName,
    this.lastName,
    this.fullName,
    this.avatarUrl,
    this.userHandle,
    this.cityOfResidence,
    this.regionOfResidence,
    this.countryOfResidence,
    this.jobTitle,
    required this.groupMemberships,
    required this.companies,
    this.$__typename = 'User',
  });

  factory Query$FindMenteeUsers$findUsers.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$email = json['email'];
    final l$firstName = json['firstName'];
    final l$lastName = json['lastName'];
    final l$fullName = json['fullName'];
    final l$avatarUrl = json['avatarUrl'];
    final l$userHandle = json['userHandle'];
    final l$cityOfResidence = json['cityOfResidence'];
    final l$regionOfResidence = json['regionOfResidence'];
    final l$countryOfResidence = json['countryOfResidence'];
    final l$jobTitle = json['jobTitle'];
    final l$groupMemberships = json['groupMemberships'];
    final l$companies = json['companies'];
    final l$$__typename = json['__typename'];
    return Query$FindMenteeUsers$findUsers(
      id: (l$id as String),
      email: (l$email as String?),
      firstName: (l$firstName as String?),
      lastName: (l$lastName as String?),
      fullName: (l$fullName as String?),
      avatarUrl: (l$avatarUrl as String?),
      userHandle: (l$userHandle as String?),
      cityOfResidence: (l$cityOfResidence as String?),
      regionOfResidence: (l$regionOfResidence as String?),
      countryOfResidence: l$countryOfResidence == null
          ? null
          : Query$FindMenteeUsers$findUsers$countryOfResidence.fromJson(
              (l$countryOfResidence as Map<String, dynamic>)),
      jobTitle: (l$jobTitle as String?),
      groupMemberships: (l$groupMemberships as List<dynamic>)
          .map((e) => Query$FindMenteeUsers$findUsers$groupMemberships.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      companies: (l$companies as List<dynamic>)
          .map((e) => Query$FindMenteeUsers$findUsers$companies.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String? email;

  final String? firstName;

  final String? lastName;

  final String? fullName;

  final String? avatarUrl;

  final String? userHandle;

  final String? cityOfResidence;

  final String? regionOfResidence;

  final Query$FindMenteeUsers$findUsers$countryOfResidence? countryOfResidence;

  final String? jobTitle;

  final List<Query$FindMenteeUsers$findUsers$groupMemberships> groupMemberships;

  final List<Query$FindMenteeUsers$findUsers$companies> companies;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$email = email;
    _resultData['email'] = l$email;
    final l$firstName = firstName;
    _resultData['firstName'] = l$firstName;
    final l$lastName = lastName;
    _resultData['lastName'] = l$lastName;
    final l$fullName = fullName;
    _resultData['fullName'] = l$fullName;
    final l$avatarUrl = avatarUrl;
    _resultData['avatarUrl'] = l$avatarUrl;
    final l$userHandle = userHandle;
    _resultData['userHandle'] = l$userHandle;
    final l$cityOfResidence = cityOfResidence;
    _resultData['cityOfResidence'] = l$cityOfResidence;
    final l$regionOfResidence = regionOfResidence;
    _resultData['regionOfResidence'] = l$regionOfResidence;
    final l$countryOfResidence = countryOfResidence;
    _resultData['countryOfResidence'] = l$countryOfResidence?.toJson();
    final l$jobTitle = jobTitle;
    _resultData['jobTitle'] = l$jobTitle;
    final l$groupMemberships = groupMemberships;
    _resultData['groupMemberships'] =
        l$groupMemberships.map((e) => e.toJson()).toList();
    final l$companies = companies;
    _resultData['companies'] = l$companies.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$email = email;
    final l$firstName = firstName;
    final l$lastName = lastName;
    final l$fullName = fullName;
    final l$avatarUrl = avatarUrl;
    final l$userHandle = userHandle;
    final l$cityOfResidence = cityOfResidence;
    final l$regionOfResidence = regionOfResidence;
    final l$countryOfResidence = countryOfResidence;
    final l$jobTitle = jobTitle;
    final l$groupMemberships = groupMemberships;
    final l$companies = companies;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$email,
      l$firstName,
      l$lastName,
      l$fullName,
      l$avatarUrl,
      l$userHandle,
      l$cityOfResidence,
      l$regionOfResidence,
      l$countryOfResidence,
      l$jobTitle,
      Object.hashAll(l$groupMemberships.map((v) => v)),
      Object.hashAll(l$companies.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FindMenteeUsers$findUsers) ||
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
    final l$firstName = firstName;
    final lOther$firstName = other.firstName;
    if (l$firstName != lOther$firstName) {
      return false;
    }
    final l$lastName = lastName;
    final lOther$lastName = other.lastName;
    if (l$lastName != lOther$lastName) {
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
    final l$cityOfResidence = cityOfResidence;
    final lOther$cityOfResidence = other.cityOfResidence;
    if (l$cityOfResidence != lOther$cityOfResidence) {
      return false;
    }
    final l$regionOfResidence = regionOfResidence;
    final lOther$regionOfResidence = other.regionOfResidence;
    if (l$regionOfResidence != lOther$regionOfResidence) {
      return false;
    }
    final l$countryOfResidence = countryOfResidence;
    final lOther$countryOfResidence = other.countryOfResidence;
    if (l$countryOfResidence != lOther$countryOfResidence) {
      return false;
    }
    final l$jobTitle = jobTitle;
    final lOther$jobTitle = other.jobTitle;
    if (l$jobTitle != lOther$jobTitle) {
      return false;
    }
    final l$groupMemberships = groupMemberships;
    final lOther$groupMemberships = other.groupMemberships;
    if (l$groupMemberships.length != lOther$groupMemberships.length) {
      return false;
    }
    for (int i = 0; i < l$groupMemberships.length; i++) {
      final l$groupMemberships$entry = l$groupMemberships[i];
      final lOther$groupMemberships$entry = lOther$groupMemberships[i];
      if (l$groupMemberships$entry != lOther$groupMemberships$entry) {
        return false;
      }
    }
    final l$companies = companies;
    final lOther$companies = other.companies;
    if (l$companies.length != lOther$companies.length) {
      return false;
    }
    for (int i = 0; i < l$companies.length; i++) {
      final l$companies$entry = l$companies[i];
      final lOther$companies$entry = lOther$companies[i];
      if (l$companies$entry != lOther$companies$entry) {
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

extension UtilityExtension$Query$FindMenteeUsers$findUsers
    on Query$FindMenteeUsers$findUsers {
  CopyWith$Query$FindMenteeUsers$findUsers<Query$FindMenteeUsers$findUsers>
      get copyWith => CopyWith$Query$FindMenteeUsers$findUsers(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindMenteeUsers$findUsers<TRes> {
  factory CopyWith$Query$FindMenteeUsers$findUsers(
    Query$FindMenteeUsers$findUsers instance,
    TRes Function(Query$FindMenteeUsers$findUsers) then,
  ) = _CopyWithImpl$Query$FindMenteeUsers$findUsers;

  factory CopyWith$Query$FindMenteeUsers$findUsers.stub(TRes res) =
      _CopyWithStubImpl$Query$FindMenteeUsers$findUsers;

  TRes call({
    String? id,
    String? email,
    String? firstName,
    String? lastName,
    String? fullName,
    String? avatarUrl,
    String? userHandle,
    String? cityOfResidence,
    String? regionOfResidence,
    Query$FindMenteeUsers$findUsers$countryOfResidence? countryOfResidence,
    String? jobTitle,
    List<Query$FindMenteeUsers$findUsers$groupMemberships>? groupMemberships,
    List<Query$FindMenteeUsers$findUsers$companies>? companies,
    String? $__typename,
  });
  CopyWith$Query$FindMenteeUsers$findUsers$countryOfResidence<TRes>
      get countryOfResidence;
  TRes groupMemberships(
      Iterable<Query$FindMenteeUsers$findUsers$groupMemberships> Function(
              Iterable<
                  CopyWith$Query$FindMenteeUsers$findUsers$groupMemberships<
                      Query$FindMenteeUsers$findUsers$groupMemberships>>)
          _fn);
  TRes companies(
      Iterable<Query$FindMenteeUsers$findUsers$companies> Function(
              Iterable<
                  CopyWith$Query$FindMenteeUsers$findUsers$companies<
                      Query$FindMenteeUsers$findUsers$companies>>)
          _fn);
}

class _CopyWithImpl$Query$FindMenteeUsers$findUsers<TRes>
    implements CopyWith$Query$FindMenteeUsers$findUsers<TRes> {
  _CopyWithImpl$Query$FindMenteeUsers$findUsers(
    this._instance,
    this._then,
  );

  final Query$FindMenteeUsers$findUsers _instance;

  final TRes Function(Query$FindMenteeUsers$findUsers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? email = _undefined,
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? fullName = _undefined,
    Object? avatarUrl = _undefined,
    Object? userHandle = _undefined,
    Object? cityOfResidence = _undefined,
    Object? regionOfResidence = _undefined,
    Object? countryOfResidence = _undefined,
    Object? jobTitle = _undefined,
    Object? groupMemberships = _undefined,
    Object? companies = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindMenteeUsers$findUsers(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        email: email == _undefined ? _instance.email : (email as String?),
        firstName: firstName == _undefined
            ? _instance.firstName
            : (firstName as String?),
        lastName:
            lastName == _undefined ? _instance.lastName : (lastName as String?),
        fullName:
            fullName == _undefined ? _instance.fullName : (fullName as String?),
        avatarUrl: avatarUrl == _undefined
            ? _instance.avatarUrl
            : (avatarUrl as String?),
        userHandle: userHandle == _undefined
            ? _instance.userHandle
            : (userHandle as String?),
        cityOfResidence: cityOfResidence == _undefined
            ? _instance.cityOfResidence
            : (cityOfResidence as String?),
        regionOfResidence: regionOfResidence == _undefined
            ? _instance.regionOfResidence
            : (regionOfResidence as String?),
        countryOfResidence: countryOfResidence == _undefined
            ? _instance.countryOfResidence
            : (countryOfResidence
                as Query$FindMenteeUsers$findUsers$countryOfResidence?),
        jobTitle:
            jobTitle == _undefined ? _instance.jobTitle : (jobTitle as String?),
        groupMemberships:
            groupMemberships == _undefined || groupMemberships == null
                ? _instance.groupMemberships
                : (groupMemberships
                    as List<Query$FindMenteeUsers$findUsers$groupMemberships>),
        companies: companies == _undefined || companies == null
            ? _instance.companies
            : (companies as List<Query$FindMenteeUsers$findUsers$companies>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$FindMenteeUsers$findUsers$countryOfResidence<TRes>
      get countryOfResidence {
    final local$countryOfResidence = _instance.countryOfResidence;
    return local$countryOfResidence == null
        ? CopyWith$Query$FindMenteeUsers$findUsers$countryOfResidence.stub(
            _then(_instance))
        : CopyWith$Query$FindMenteeUsers$findUsers$countryOfResidence(
            local$countryOfResidence, (e) => call(countryOfResidence: e));
  }

  TRes groupMemberships(
          Iterable<Query$FindMenteeUsers$findUsers$groupMemberships> Function(
                  Iterable<
                      CopyWith$Query$FindMenteeUsers$findUsers$groupMemberships<
                          Query$FindMenteeUsers$findUsers$groupMemberships>>)
              _fn) =>
      call(
          groupMemberships: _fn(_instance.groupMemberships.map(
              (e) => CopyWith$Query$FindMenteeUsers$findUsers$groupMemberships(
                    e,
                    (i) => i,
                  ))).toList());
  TRes companies(
          Iterable<Query$FindMenteeUsers$findUsers$companies> Function(
                  Iterable<
                      CopyWith$Query$FindMenteeUsers$findUsers$companies<
                          Query$FindMenteeUsers$findUsers$companies>>)
              _fn) =>
      call(
          companies: _fn(_instance.companies
              .map((e) => CopyWith$Query$FindMenteeUsers$findUsers$companies(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$FindMenteeUsers$findUsers<TRes>
    implements CopyWith$Query$FindMenteeUsers$findUsers<TRes> {
  _CopyWithStubImpl$Query$FindMenteeUsers$findUsers(this._res);

  TRes _res;

  call({
    String? id,
    String? email,
    String? firstName,
    String? lastName,
    String? fullName,
    String? avatarUrl,
    String? userHandle,
    String? cityOfResidence,
    String? regionOfResidence,
    Query$FindMenteeUsers$findUsers$countryOfResidence? countryOfResidence,
    String? jobTitle,
    List<Query$FindMenteeUsers$findUsers$groupMemberships>? groupMemberships,
    List<Query$FindMenteeUsers$findUsers$companies>? companies,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$FindMenteeUsers$findUsers$countryOfResidence<TRes>
      get countryOfResidence =>
          CopyWith$Query$FindMenteeUsers$findUsers$countryOfResidence.stub(
              _res);
  groupMemberships(_fn) => _res;
  companies(_fn) => _res;
}

class Query$FindMenteeUsers$findUsers$countryOfResidence {
  Query$FindMenteeUsers$findUsers$countryOfResidence({
    this.translatedValue,
    this.$__typename = 'Country',
  });

  factory Query$FindMenteeUsers$findUsers$countryOfResidence.fromJson(
      Map<String, dynamic> json) {
    final l$translatedValue = json['translatedValue'];
    final l$$__typename = json['__typename'];
    return Query$FindMenteeUsers$findUsers$countryOfResidence(
      translatedValue: (l$translatedValue as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? translatedValue;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$translatedValue = translatedValue;
    _resultData['translatedValue'] = l$translatedValue;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$translatedValue = translatedValue;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$translatedValue,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FindMenteeUsers$findUsers$countryOfResidence) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$translatedValue = translatedValue;
    final lOther$translatedValue = other.translatedValue;
    if (l$translatedValue != lOther$translatedValue) {
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

extension UtilityExtension$Query$FindMenteeUsers$findUsers$countryOfResidence
    on Query$FindMenteeUsers$findUsers$countryOfResidence {
  CopyWith$Query$FindMenteeUsers$findUsers$countryOfResidence<
          Query$FindMenteeUsers$findUsers$countryOfResidence>
      get copyWith =>
          CopyWith$Query$FindMenteeUsers$findUsers$countryOfResidence(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindMenteeUsers$findUsers$countryOfResidence<
    TRes> {
  factory CopyWith$Query$FindMenteeUsers$findUsers$countryOfResidence(
    Query$FindMenteeUsers$findUsers$countryOfResidence instance,
    TRes Function(Query$FindMenteeUsers$findUsers$countryOfResidence) then,
  ) = _CopyWithImpl$Query$FindMenteeUsers$findUsers$countryOfResidence;

  factory CopyWith$Query$FindMenteeUsers$findUsers$countryOfResidence.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindMenteeUsers$findUsers$countryOfResidence;

  TRes call({
    String? translatedValue,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindMenteeUsers$findUsers$countryOfResidence<TRes>
    implements
        CopyWith$Query$FindMenteeUsers$findUsers$countryOfResidence<TRes> {
  _CopyWithImpl$Query$FindMenteeUsers$findUsers$countryOfResidence(
    this._instance,
    this._then,
  );

  final Query$FindMenteeUsers$findUsers$countryOfResidence _instance;

  final TRes Function(Query$FindMenteeUsers$findUsers$countryOfResidence) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? translatedValue = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindMenteeUsers$findUsers$countryOfResidence(
        translatedValue: translatedValue == _undefined
            ? _instance.translatedValue
            : (translatedValue as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FindMenteeUsers$findUsers$countryOfResidence<TRes>
    implements
        CopyWith$Query$FindMenteeUsers$findUsers$countryOfResidence<TRes> {
  _CopyWithStubImpl$Query$FindMenteeUsers$findUsers$countryOfResidence(
      this._res);

  TRes _res;

  call({
    String? translatedValue,
    String? $__typename,
  }) =>
      _res;
}

class Query$FindMenteeUsers$findUsers$groupMemberships {
  Query$FindMenteeUsers$findUsers$groupMemberships({required this.$__typename});

  factory Query$FindMenteeUsers$findUsers$groupMemberships.fromJson(
      Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "MenteesGroupMembership":
        return Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership
            .fromJson(json);

      case "GroupMembership":
        return Query$FindMenteeUsers$findUsers$groupMemberships$$GroupMembership
            .fromJson(json);

      case "MentorsGroupMembership":
        return Query$FindMenteeUsers$findUsers$groupMemberships$$MentorsGroupMembership
            .fromJson(json);

      default:
        final l$$__typename = json['__typename'];
        return Query$FindMenteeUsers$findUsers$groupMemberships(
            $__typename: (l$$__typename as String));
    }
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FindMenteeUsers$findUsers$groupMemberships) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$FindMenteeUsers$findUsers$groupMemberships
    on Query$FindMenteeUsers$findUsers$groupMemberships {
  CopyWith$Query$FindMenteeUsers$findUsers$groupMemberships<
          Query$FindMenteeUsers$findUsers$groupMemberships>
      get copyWith => CopyWith$Query$FindMenteeUsers$findUsers$groupMemberships(
            this,
            (i) => i,
          );
  _T when<_T>({
    required _T Function(
            Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership)
        menteesGroupMembership,
    required _T Function(
            Query$FindMenteeUsers$findUsers$groupMemberships$$GroupMembership)
        groupMembership,
    required _T Function(
            Query$FindMenteeUsers$findUsers$groupMemberships$$MentorsGroupMembership)
        mentorsGroupMembership,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "MenteesGroupMembership":
        return menteesGroupMembership(this
            as Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership);

      case "GroupMembership":
        return groupMembership(this
            as Query$FindMenteeUsers$findUsers$groupMemberships$$GroupMembership);

      case "MentorsGroupMembership":
        return mentorsGroupMembership(this
            as Query$FindMenteeUsers$findUsers$groupMemberships$$MentorsGroupMembership);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(
            Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership)?
        menteesGroupMembership,
    _T Function(
            Query$FindMenteeUsers$findUsers$groupMemberships$$GroupMembership)?
        groupMembership,
    _T Function(
            Query$FindMenteeUsers$findUsers$groupMemberships$$MentorsGroupMembership)?
        mentorsGroupMembership,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "MenteesGroupMembership":
        if (menteesGroupMembership != null) {
          return menteesGroupMembership(this
              as Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership);
        } else {
          return orElse();
        }

      case "GroupMembership":
        if (groupMembership != null) {
          return groupMembership(this
              as Query$FindMenteeUsers$findUsers$groupMemberships$$GroupMembership);
        } else {
          return orElse();
        }

      case "MentorsGroupMembership":
        if (mentorsGroupMembership != null) {
          return mentorsGroupMembership(this
              as Query$FindMenteeUsers$findUsers$groupMemberships$$MentorsGroupMembership);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Query$FindMenteeUsers$findUsers$groupMemberships<TRes> {
  factory CopyWith$Query$FindMenteeUsers$findUsers$groupMemberships(
    Query$FindMenteeUsers$findUsers$groupMemberships instance,
    TRes Function(Query$FindMenteeUsers$findUsers$groupMemberships) then,
  ) = _CopyWithImpl$Query$FindMenteeUsers$findUsers$groupMemberships;

  factory CopyWith$Query$FindMenteeUsers$findUsers$groupMemberships.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindMenteeUsers$findUsers$groupMemberships;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$FindMenteeUsers$findUsers$groupMemberships<TRes>
    implements CopyWith$Query$FindMenteeUsers$findUsers$groupMemberships<TRes> {
  _CopyWithImpl$Query$FindMenteeUsers$findUsers$groupMemberships(
    this._instance,
    this._then,
  );

  final Query$FindMenteeUsers$findUsers$groupMemberships _instance;

  final TRes Function(Query$FindMenteeUsers$findUsers$groupMemberships) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Query$FindMenteeUsers$findUsers$groupMemberships(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$FindMenteeUsers$findUsers$groupMemberships<TRes>
    implements CopyWith$Query$FindMenteeUsers$findUsers$groupMemberships<TRes> {
  _CopyWithStubImpl$Query$FindMenteeUsers$findUsers$groupMemberships(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership
    implements Query$FindMenteeUsers$findUsers$groupMemberships {
  Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership({
    required this.soughtExpertises,
    this.industry,
    this.$__typename = 'MenteesGroupMembership',
  });

  factory Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership.fromJson(
      Map<String, dynamic> json) {
    final l$soughtExpertises = json['soughtExpertises'];
    final l$industry = json['industry'];
    final l$$__typename = json['__typename'];
    return Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership(
      soughtExpertises: (l$soughtExpertises as List<dynamic>)
          .map((e) =>
              Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      industry: l$industry == null
          ? null
          : Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership$industry
              .fromJson((l$industry as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
          Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises>
      soughtExpertises;

  final Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership$industry?
      industry;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$soughtExpertises = soughtExpertises;
    _resultData['soughtExpertises'] =
        l$soughtExpertises.map((e) => e.toJson()).toList();
    final l$industry = industry;
    _resultData['industry'] = l$industry?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$soughtExpertises = soughtExpertises;
    final l$industry = industry;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$soughtExpertises.map((v) => v)),
      l$industry,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$soughtExpertises = soughtExpertises;
    final lOther$soughtExpertises = other.soughtExpertises;
    if (l$soughtExpertises.length != lOther$soughtExpertises.length) {
      return false;
    }
    for (int i = 0; i < l$soughtExpertises.length; i++) {
      final l$soughtExpertises$entry = l$soughtExpertises[i];
      final lOther$soughtExpertises$entry = lOther$soughtExpertises[i];
      if (l$soughtExpertises$entry != lOther$soughtExpertises$entry) {
        return false;
      }
    }
    final l$industry = industry;
    final lOther$industry = other.industry;
    if (l$industry != lOther$industry) {
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

extension UtilityExtension$Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership
    on Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership {
  CopyWith$Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership<
          Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership>
      get copyWith =>
          CopyWith$Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership<
    TRes> {
  factory CopyWith$Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership(
    Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership
        instance,
    TRes Function(
            Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership)
        then,
  ) = _CopyWithImpl$Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership;

  factory CopyWith$Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership;

  TRes call({
    List<Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises>?
        soughtExpertises,
    Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership$industry?
        industry,
    String? $__typename,
  });
  TRes soughtExpertises(
      Iterable<Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises> Function(
              Iterable<
                  CopyWith$Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises<
                      Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises>>)
          _fn);
  CopyWith$Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership$industry<
      TRes> get industry;
}

class _CopyWithImpl$Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership<
        TRes>
    implements
        CopyWith$Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership<
            TRes> {
  _CopyWithImpl$Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership(
    this._instance,
    this._then,
  );

  final Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership
      _instance;

  final TRes Function(
          Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? soughtExpertises = _undefined,
    Object? industry = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership(
        soughtExpertises: soughtExpertises == _undefined ||
                soughtExpertises == null
            ? _instance.soughtExpertises
            : (soughtExpertises as List<
                Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises>),
        industry: industry == _undefined
            ? _instance.industry
            : (industry
                as Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership$industry?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes soughtExpertises(
          Iterable<Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises> Function(
                  Iterable<
                      CopyWith$Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises<
                          Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises>>)
              _fn) =>
      call(
          soughtExpertises: _fn(_instance.soughtExpertises.map((e) =>
              CopyWith$Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises(
                e,
                (i) => i,
              ))).toList());
  CopyWith$Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership$industry<
      TRes> get industry {
    final local$industry = _instance.industry;
    return local$industry == null
        ? CopyWith$Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership$industry
            .stub(_then(_instance))
        : CopyWith$Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership$industry(
            local$industry, (e) => call(industry: e));
  }
}

class _CopyWithStubImpl$Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership<
        TRes>
    implements
        CopyWith$Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership<
            TRes> {
  _CopyWithStubImpl$Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership(
      this._res);

  TRes _res;

  call({
    List<Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises>?
        soughtExpertises,
    Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership$industry?
        industry,
    String? $__typename,
  }) =>
      _res;
  soughtExpertises(_fn) => _res;
  CopyWith$Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership$industry<
          TRes>
      get industry =>
          CopyWith$Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership$industry
              .stub(_res);
}

class Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises {
  Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises({
    this.translatedValue,
    this.$__typename = 'Expertise',
  });

  factory Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises.fromJson(
      Map<String, dynamic> json) {
    final l$translatedValue = json['translatedValue'];
    final l$$__typename = json['__typename'];
    return Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises(
      translatedValue: (l$translatedValue as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? translatedValue;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$translatedValue = translatedValue;
    _resultData['translatedValue'] = l$translatedValue;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$translatedValue = translatedValue;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$translatedValue,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$translatedValue = translatedValue;
    final lOther$translatedValue = other.translatedValue;
    if (l$translatedValue != lOther$translatedValue) {
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

extension UtilityExtension$Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises
    on Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises {
  CopyWith$Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises<
          Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises>
      get copyWith =>
          CopyWith$Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises<
    TRes> {
  factory CopyWith$Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises(
    Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises
        instance,
    TRes Function(
            Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises)
        then,
  ) = _CopyWithImpl$Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises;

  factory CopyWith$Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises;

  TRes call({
    String? translatedValue,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises<
        TRes>
    implements
        CopyWith$Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises<
            TRes> {
  _CopyWithImpl$Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises(
    this._instance,
    this._then,
  );

  final Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises
      _instance;

  final TRes Function(
          Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? translatedValue = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises(
        translatedValue: translatedValue == _undefined
            ? _instance.translatedValue
            : (translatedValue as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises<
        TRes>
    implements
        CopyWith$Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises<
            TRes> {
  _CopyWithStubImpl$Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises(
      this._res);

  TRes _res;

  call({
    String? translatedValue,
    String? $__typename,
  }) =>
      _res;
}

class Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership$industry {
  Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership$industry({
    this.translatedValue,
    this.$__typename = 'Industry',
  });

  factory Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership$industry.fromJson(
      Map<String, dynamic> json) {
    final l$translatedValue = json['translatedValue'];
    final l$$__typename = json['__typename'];
    return Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership$industry(
      translatedValue: (l$translatedValue as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? translatedValue;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$translatedValue = translatedValue;
    _resultData['translatedValue'] = l$translatedValue;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$translatedValue = translatedValue;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$translatedValue,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership$industry) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$translatedValue = translatedValue;
    final lOther$translatedValue = other.translatedValue;
    if (l$translatedValue != lOther$translatedValue) {
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

extension UtilityExtension$Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership$industry
    on Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership$industry {
  CopyWith$Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership$industry<
          Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership$industry>
      get copyWith =>
          CopyWith$Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership$industry(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership$industry<
    TRes> {
  factory CopyWith$Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership$industry(
    Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership$industry
        instance,
    TRes Function(
            Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership$industry)
        then,
  ) = _CopyWithImpl$Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership$industry;

  factory CopyWith$Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership$industry.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership$industry;

  TRes call({
    String? translatedValue,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership$industry<
        TRes>
    implements
        CopyWith$Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership$industry<
            TRes> {
  _CopyWithImpl$Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership$industry(
    this._instance,
    this._then,
  );

  final Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership$industry
      _instance;

  final TRes Function(
          Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership$industry)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? translatedValue = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership$industry(
        translatedValue: translatedValue == _undefined
            ? _instance.translatedValue
            : (translatedValue as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership$industry<
        TRes>
    implements
        CopyWith$Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership$industry<
            TRes> {
  _CopyWithStubImpl$Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership$industry(
      this._res);

  TRes _res;

  call({
    String? translatedValue,
    String? $__typename,
  }) =>
      _res;
}

class Query$FindMenteeUsers$findUsers$groupMemberships$$GroupMembership
    implements Query$FindMenteeUsers$findUsers$groupMemberships {
  Query$FindMenteeUsers$findUsers$groupMemberships$$GroupMembership(
      {this.$__typename = 'GroupMembership'});

  factory Query$FindMenteeUsers$findUsers$groupMemberships$$GroupMembership.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return Query$FindMenteeUsers$findUsers$groupMemberships$$GroupMembership(
        $__typename: (l$$__typename as String));
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$FindMenteeUsers$findUsers$groupMemberships$$GroupMembership) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$FindMenteeUsers$findUsers$groupMemberships$$GroupMembership
    on Query$FindMenteeUsers$findUsers$groupMemberships$$GroupMembership {
  CopyWith$Query$FindMenteeUsers$findUsers$groupMemberships$$GroupMembership<
          Query$FindMenteeUsers$findUsers$groupMemberships$$GroupMembership>
      get copyWith =>
          CopyWith$Query$FindMenteeUsers$findUsers$groupMemberships$$GroupMembership(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindMenteeUsers$findUsers$groupMemberships$$GroupMembership<
    TRes> {
  factory CopyWith$Query$FindMenteeUsers$findUsers$groupMemberships$$GroupMembership(
    Query$FindMenteeUsers$findUsers$groupMemberships$$GroupMembership instance,
    TRes Function(
            Query$FindMenteeUsers$findUsers$groupMemberships$$GroupMembership)
        then,
  ) = _CopyWithImpl$Query$FindMenteeUsers$findUsers$groupMemberships$$GroupMembership;

  factory CopyWith$Query$FindMenteeUsers$findUsers$groupMemberships$$GroupMembership.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindMenteeUsers$findUsers$groupMemberships$$GroupMembership;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$FindMenteeUsers$findUsers$groupMemberships$$GroupMembership<
        TRes>
    implements
        CopyWith$Query$FindMenteeUsers$findUsers$groupMemberships$$GroupMembership<
            TRes> {
  _CopyWithImpl$Query$FindMenteeUsers$findUsers$groupMemberships$$GroupMembership(
    this._instance,
    this._then,
  );

  final Query$FindMenteeUsers$findUsers$groupMemberships$$GroupMembership
      _instance;

  final TRes Function(
      Query$FindMenteeUsers$findUsers$groupMemberships$$GroupMembership) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Query$FindMenteeUsers$findUsers$groupMemberships$$GroupMembership(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$FindMenteeUsers$findUsers$groupMemberships$$GroupMembership<
        TRes>
    implements
        CopyWith$Query$FindMenteeUsers$findUsers$groupMemberships$$GroupMembership<
            TRes> {
  _CopyWithStubImpl$Query$FindMenteeUsers$findUsers$groupMemberships$$GroupMembership(
      this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$FindMenteeUsers$findUsers$groupMemberships$$MentorsGroupMembership
    implements Query$FindMenteeUsers$findUsers$groupMemberships {
  Query$FindMenteeUsers$findUsers$groupMemberships$$MentorsGroupMembership(
      {this.$__typename = 'MentorsGroupMembership'});

  factory Query$FindMenteeUsers$findUsers$groupMemberships$$MentorsGroupMembership.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return Query$FindMenteeUsers$findUsers$groupMemberships$$MentorsGroupMembership(
        $__typename: (l$$__typename as String));
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$FindMenteeUsers$findUsers$groupMemberships$$MentorsGroupMembership) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$FindMenteeUsers$findUsers$groupMemberships$$MentorsGroupMembership
    on Query$FindMenteeUsers$findUsers$groupMemberships$$MentorsGroupMembership {
  CopyWith$Query$FindMenteeUsers$findUsers$groupMemberships$$MentorsGroupMembership<
          Query$FindMenteeUsers$findUsers$groupMemberships$$MentorsGroupMembership>
      get copyWith =>
          CopyWith$Query$FindMenteeUsers$findUsers$groupMemberships$$MentorsGroupMembership(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindMenteeUsers$findUsers$groupMemberships$$MentorsGroupMembership<
    TRes> {
  factory CopyWith$Query$FindMenteeUsers$findUsers$groupMemberships$$MentorsGroupMembership(
    Query$FindMenteeUsers$findUsers$groupMemberships$$MentorsGroupMembership
        instance,
    TRes Function(
            Query$FindMenteeUsers$findUsers$groupMemberships$$MentorsGroupMembership)
        then,
  ) = _CopyWithImpl$Query$FindMenteeUsers$findUsers$groupMemberships$$MentorsGroupMembership;

  factory CopyWith$Query$FindMenteeUsers$findUsers$groupMemberships$$MentorsGroupMembership.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindMenteeUsers$findUsers$groupMemberships$$MentorsGroupMembership;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$FindMenteeUsers$findUsers$groupMemberships$$MentorsGroupMembership<
        TRes>
    implements
        CopyWith$Query$FindMenteeUsers$findUsers$groupMemberships$$MentorsGroupMembership<
            TRes> {
  _CopyWithImpl$Query$FindMenteeUsers$findUsers$groupMemberships$$MentorsGroupMembership(
    this._instance,
    this._then,
  );

  final Query$FindMenteeUsers$findUsers$groupMemberships$$MentorsGroupMembership
      _instance;

  final TRes Function(
          Query$FindMenteeUsers$findUsers$groupMemberships$$MentorsGroupMembership)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) => _then(
      Query$FindMenteeUsers$findUsers$groupMemberships$$MentorsGroupMembership(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$FindMenteeUsers$findUsers$groupMemberships$$MentorsGroupMembership<
        TRes>
    implements
        CopyWith$Query$FindMenteeUsers$findUsers$groupMemberships$$MentorsGroupMembership<
            TRes> {
  _CopyWithStubImpl$Query$FindMenteeUsers$findUsers$groupMemberships$$MentorsGroupMembership(
      this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$FindMenteeUsers$findUsers$companies {
  Query$FindMenteeUsers$findUsers$companies({
    this.companyStage,
    this.$__typename = 'Company',
  });

  factory Query$FindMenteeUsers$findUsers$companies.fromJson(
      Map<String, dynamic> json) {
    final l$companyStage = json['companyStage'];
    final l$$__typename = json['__typename'];
    return Query$FindMenteeUsers$findUsers$companies(
      companyStage: l$companyStage == null
          ? null
          : Query$FindMenteeUsers$findUsers$companies$companyStage.fromJson(
              (l$companyStage as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$FindMenteeUsers$findUsers$companies$companyStage? companyStage;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$companyStage = companyStage;
    _resultData['companyStage'] = l$companyStage?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$companyStage = companyStage;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$companyStage,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FindMenteeUsers$findUsers$companies) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$companyStage = companyStage;
    final lOther$companyStage = other.companyStage;
    if (l$companyStage != lOther$companyStage) {
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

extension UtilityExtension$Query$FindMenteeUsers$findUsers$companies
    on Query$FindMenteeUsers$findUsers$companies {
  CopyWith$Query$FindMenteeUsers$findUsers$companies<
          Query$FindMenteeUsers$findUsers$companies>
      get copyWith => CopyWith$Query$FindMenteeUsers$findUsers$companies(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindMenteeUsers$findUsers$companies<TRes> {
  factory CopyWith$Query$FindMenteeUsers$findUsers$companies(
    Query$FindMenteeUsers$findUsers$companies instance,
    TRes Function(Query$FindMenteeUsers$findUsers$companies) then,
  ) = _CopyWithImpl$Query$FindMenteeUsers$findUsers$companies;

  factory CopyWith$Query$FindMenteeUsers$findUsers$companies.stub(TRes res) =
      _CopyWithStubImpl$Query$FindMenteeUsers$findUsers$companies;

  TRes call({
    Query$FindMenteeUsers$findUsers$companies$companyStage? companyStage,
    String? $__typename,
  });
  CopyWith$Query$FindMenteeUsers$findUsers$companies$companyStage<TRes>
      get companyStage;
}

class _CopyWithImpl$Query$FindMenteeUsers$findUsers$companies<TRes>
    implements CopyWith$Query$FindMenteeUsers$findUsers$companies<TRes> {
  _CopyWithImpl$Query$FindMenteeUsers$findUsers$companies(
    this._instance,
    this._then,
  );

  final Query$FindMenteeUsers$findUsers$companies _instance;

  final TRes Function(Query$FindMenteeUsers$findUsers$companies) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? companyStage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindMenteeUsers$findUsers$companies(
        companyStage: companyStage == _undefined
            ? _instance.companyStage
            : (companyStage
                as Query$FindMenteeUsers$findUsers$companies$companyStage?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$FindMenteeUsers$findUsers$companies$companyStage<TRes>
      get companyStage {
    final local$companyStage = _instance.companyStage;
    return local$companyStage == null
        ? CopyWith$Query$FindMenteeUsers$findUsers$companies$companyStage.stub(
            _then(_instance))
        : CopyWith$Query$FindMenteeUsers$findUsers$companies$companyStage(
            local$companyStage, (e) => call(companyStage: e));
  }
}

class _CopyWithStubImpl$Query$FindMenteeUsers$findUsers$companies<TRes>
    implements CopyWith$Query$FindMenteeUsers$findUsers$companies<TRes> {
  _CopyWithStubImpl$Query$FindMenteeUsers$findUsers$companies(this._res);

  TRes _res;

  call({
    Query$FindMenteeUsers$findUsers$companies$companyStage? companyStage,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$FindMenteeUsers$findUsers$companies$companyStage<TRes>
      get companyStage =>
          CopyWith$Query$FindMenteeUsers$findUsers$companies$companyStage.stub(
              _res);
}

class Query$FindMenteeUsers$findUsers$companies$companyStage {
  Query$FindMenteeUsers$findUsers$companies$companyStage({
    this.translatedValue,
    this.$__typename = 'CompanyStage',
  });

  factory Query$FindMenteeUsers$findUsers$companies$companyStage.fromJson(
      Map<String, dynamic> json) {
    final l$translatedValue = json['translatedValue'];
    final l$$__typename = json['__typename'];
    return Query$FindMenteeUsers$findUsers$companies$companyStage(
      translatedValue: (l$translatedValue as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? translatedValue;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$translatedValue = translatedValue;
    _resultData['translatedValue'] = l$translatedValue;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$translatedValue = translatedValue;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$translatedValue,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FindMenteeUsers$findUsers$companies$companyStage) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$translatedValue = translatedValue;
    final lOther$translatedValue = other.translatedValue;
    if (l$translatedValue != lOther$translatedValue) {
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

extension UtilityExtension$Query$FindMenteeUsers$findUsers$companies$companyStage
    on Query$FindMenteeUsers$findUsers$companies$companyStage {
  CopyWith$Query$FindMenteeUsers$findUsers$companies$companyStage<
          Query$FindMenteeUsers$findUsers$companies$companyStage>
      get copyWith =>
          CopyWith$Query$FindMenteeUsers$findUsers$companies$companyStage(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindMenteeUsers$findUsers$companies$companyStage<
    TRes> {
  factory CopyWith$Query$FindMenteeUsers$findUsers$companies$companyStage(
    Query$FindMenteeUsers$findUsers$companies$companyStage instance,
    TRes Function(Query$FindMenteeUsers$findUsers$companies$companyStage) then,
  ) = _CopyWithImpl$Query$FindMenteeUsers$findUsers$companies$companyStage;

  factory CopyWith$Query$FindMenteeUsers$findUsers$companies$companyStage.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindMenteeUsers$findUsers$companies$companyStage;

  TRes call({
    String? translatedValue,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindMenteeUsers$findUsers$companies$companyStage<TRes>
    implements
        CopyWith$Query$FindMenteeUsers$findUsers$companies$companyStage<TRes> {
  _CopyWithImpl$Query$FindMenteeUsers$findUsers$companies$companyStage(
    this._instance,
    this._then,
  );

  final Query$FindMenteeUsers$findUsers$companies$companyStage _instance;

  final TRes Function(Query$FindMenteeUsers$findUsers$companies$companyStage)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? translatedValue = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindMenteeUsers$findUsers$companies$companyStage(
        translatedValue: translatedValue == _undefined
            ? _instance.translatedValue
            : (translatedValue as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FindMenteeUsers$findUsers$companies$companyStage<
        TRes>
    implements
        CopyWith$Query$FindMenteeUsers$findUsers$companies$companyStage<TRes> {
  _CopyWithStubImpl$Query$FindMenteeUsers$findUsers$companies$companyStage(
      this._res);

  TRes _res;

  call({
    String? translatedValue,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$FindMentorUsers {
  factory Variables$Query$FindMentorUsers({
    Input$FindObjectsOptions? options,
    Input$UserListFilter? filter,
    Input$UserInput? match,
  }) =>
      Variables$Query$FindMentorUsers._({
        if (options != null) r'options': options,
        if (filter != null) r'filter': filter,
        if (match != null) r'match': match,
      });

  Variables$Query$FindMentorUsers._(this._$data);

  factory Variables$Query$FindMentorUsers.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('options')) {
      final l$options = data['options'];
      result$data['options'] = l$options == null
          ? null
          : Input$FindObjectsOptions.fromJson(
              (l$options as Map<String, dynamic>));
    }
    if (data.containsKey('filter')) {
      final l$filter = data['filter'];
      result$data['filter'] = l$filter == null
          ? null
          : Input$UserListFilter.fromJson((l$filter as Map<String, dynamic>));
    }
    if (data.containsKey('match')) {
      final l$match = data['match'];
      result$data['match'] = l$match == null
          ? null
          : Input$UserInput.fromJson((l$match as Map<String, dynamic>));
    }
    return Variables$Query$FindMentorUsers._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$FindObjectsOptions? get options =>
      (_$data['options'] as Input$FindObjectsOptions?);
  Input$UserListFilter? get filter =>
      (_$data['filter'] as Input$UserListFilter?);
  Input$UserInput? get match => (_$data['match'] as Input$UserInput?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('options')) {
      final l$options = options;
      result$data['options'] = l$options?.toJson();
    }
    if (_$data.containsKey('filter')) {
      final l$filter = filter;
      result$data['filter'] = l$filter?.toJson();
    }
    if (_$data.containsKey('match')) {
      final l$match = match;
      result$data['match'] = l$match?.toJson();
    }
    return result$data;
  }

  CopyWith$Variables$Query$FindMentorUsers<Variables$Query$FindMentorUsers>
      get copyWith => CopyWith$Variables$Query$FindMentorUsers(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$FindMentorUsers) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$options = options;
    final lOther$options = other.options;
    if (_$data.containsKey('options') != other._$data.containsKey('options')) {
      return false;
    }
    if (l$options != lOther$options) {
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
    final l$match = match;
    final lOther$match = other.match;
    if (_$data.containsKey('match') != other._$data.containsKey('match')) {
      return false;
    }
    if (l$match != lOther$match) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$options = options;
    final l$filter = filter;
    final l$match = match;
    return Object.hashAll([
      _$data.containsKey('options') ? l$options : const {},
      _$data.containsKey('filter') ? l$filter : const {},
      _$data.containsKey('match') ? l$match : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$FindMentorUsers<TRes> {
  factory CopyWith$Variables$Query$FindMentorUsers(
    Variables$Query$FindMentorUsers instance,
    TRes Function(Variables$Query$FindMentorUsers) then,
  ) = _CopyWithImpl$Variables$Query$FindMentorUsers;

  factory CopyWith$Variables$Query$FindMentorUsers.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$FindMentorUsers;

  TRes call({
    Input$FindObjectsOptions? options,
    Input$UserListFilter? filter,
    Input$UserInput? match,
  });
}

class _CopyWithImpl$Variables$Query$FindMentorUsers<TRes>
    implements CopyWith$Variables$Query$FindMentorUsers<TRes> {
  _CopyWithImpl$Variables$Query$FindMentorUsers(
    this._instance,
    this._then,
  );

  final Variables$Query$FindMentorUsers _instance;

  final TRes Function(Variables$Query$FindMentorUsers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? options = _undefined,
    Object? filter = _undefined,
    Object? match = _undefined,
  }) =>
      _then(Variables$Query$FindMentorUsers._({
        ..._instance._$data,
        if (options != _undefined)
          'options': (options as Input$FindObjectsOptions?),
        if (filter != _undefined) 'filter': (filter as Input$UserListFilter?),
        if (match != _undefined) 'match': (match as Input$UserInput?),
      }));
}

class _CopyWithStubImpl$Variables$Query$FindMentorUsers<TRes>
    implements CopyWith$Variables$Query$FindMentorUsers<TRes> {
  _CopyWithStubImpl$Variables$Query$FindMentorUsers(this._res);

  TRes _res;

  call({
    Input$FindObjectsOptions? options,
    Input$UserListFilter? filter,
    Input$UserInput? match,
  }) =>
      _res;
}

class Query$FindMentorUsers {
  Query$FindMentorUsers({
    required this.findUsers,
    this.$__typename = 'Query',
  });

  factory Query$FindMentorUsers.fromJson(Map<String, dynamic> json) {
    final l$findUsers = json['findUsers'];
    final l$$__typename = json['__typename'];
    return Query$FindMentorUsers(
      findUsers: (l$findUsers as List<dynamic>)
          .map((e) => Query$FindMentorUsers$findUsers.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$FindMentorUsers$findUsers> findUsers;

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
    if (!(other is Query$FindMentorUsers) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$FindMentorUsers on Query$FindMentorUsers {
  CopyWith$Query$FindMentorUsers<Query$FindMentorUsers> get copyWith =>
      CopyWith$Query$FindMentorUsers(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FindMentorUsers<TRes> {
  factory CopyWith$Query$FindMentorUsers(
    Query$FindMentorUsers instance,
    TRes Function(Query$FindMentorUsers) then,
  ) = _CopyWithImpl$Query$FindMentorUsers;

  factory CopyWith$Query$FindMentorUsers.stub(TRes res) =
      _CopyWithStubImpl$Query$FindMentorUsers;

  TRes call({
    List<Query$FindMentorUsers$findUsers>? findUsers,
    String? $__typename,
  });
  TRes findUsers(
      Iterable<Query$FindMentorUsers$findUsers> Function(
              Iterable<
                  CopyWith$Query$FindMentorUsers$findUsers<
                      Query$FindMentorUsers$findUsers>>)
          _fn);
}

class _CopyWithImpl$Query$FindMentorUsers<TRes>
    implements CopyWith$Query$FindMentorUsers<TRes> {
  _CopyWithImpl$Query$FindMentorUsers(
    this._instance,
    this._then,
  );

  final Query$FindMentorUsers _instance;

  final TRes Function(Query$FindMentorUsers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? findUsers = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindMentorUsers(
        findUsers: findUsers == _undefined || findUsers == null
            ? _instance.findUsers
            : (findUsers as List<Query$FindMentorUsers$findUsers>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes findUsers(
          Iterable<Query$FindMentorUsers$findUsers> Function(
                  Iterable<
                      CopyWith$Query$FindMentorUsers$findUsers<
                          Query$FindMentorUsers$findUsers>>)
              _fn) =>
      call(
          findUsers: _fn(_instance.findUsers
              .map((e) => CopyWith$Query$FindMentorUsers$findUsers(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$FindMentorUsers<TRes>
    implements CopyWith$Query$FindMentorUsers<TRes> {
  _CopyWithStubImpl$Query$FindMentorUsers(this._res);

  TRes _res;

  call({
    List<Query$FindMentorUsers$findUsers>? findUsers,
    String? $__typename,
  }) =>
      _res;
  findUsers(_fn) => _res;
}

const documentNodeQueryFindMentorUsers = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FindMentorUsers'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'options')),
        type: NamedTypeNode(
          name: NameNode(value: 'FindObjectsOptions'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'filter')),
        type: NamedTypeNode(
          name: NameNode(value: 'UserListFilter'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'match')),
        type: NamedTypeNode(
          name: NameNode(value: 'UserInput'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'findUsers'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'options'),
            value: VariableNode(name: NameNode(value: 'options')),
          ),
          ArgumentNode(
            name: NameNode(value: 'filter'),
            value: VariableNode(name: NameNode(value: 'filter')),
          ),
          ArgumentNode(
            name: NameNode(value: 'match'),
            value: VariableNode(name: NameNode(value: 'match')),
          ),
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
            name: NameNode(value: 'firstName'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'lastName'),
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
            name: NameNode(value: 'cityOfResidence'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'regionOfResidence'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'countryOfResidence'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'translatedValue'),
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
            name: NameNode(value: 'jobTitle'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'groupMemberships'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'groupId'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              InlineFragmentNode(
                typeCondition: TypeConditionNode(
                    on: NamedTypeNode(
                  name: NameNode(value: 'MentorsGroupMembership'),
                  isNonNull: false,
                )),
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'expertises'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'translatedValue'),
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
                    name: NameNode(value: 'industries'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'translatedValue'),
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
                    name: NameNode(value: 'endorsements'),
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

class Query$FindMentorUsers$findUsers {
  Query$FindMentorUsers$findUsers({
    required this.id,
    this.email,
    this.firstName,
    this.lastName,
    this.fullName,
    this.avatarUrl,
    this.userHandle,
    this.cityOfResidence,
    this.regionOfResidence,
    this.countryOfResidence,
    this.jobTitle,
    required this.groupMemberships,
    this.$__typename = 'User',
  });

  factory Query$FindMentorUsers$findUsers.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$email = json['email'];
    final l$firstName = json['firstName'];
    final l$lastName = json['lastName'];
    final l$fullName = json['fullName'];
    final l$avatarUrl = json['avatarUrl'];
    final l$userHandle = json['userHandle'];
    final l$cityOfResidence = json['cityOfResidence'];
    final l$regionOfResidence = json['regionOfResidence'];
    final l$countryOfResidence = json['countryOfResidence'];
    final l$jobTitle = json['jobTitle'];
    final l$groupMemberships = json['groupMemberships'];
    final l$$__typename = json['__typename'];
    return Query$FindMentorUsers$findUsers(
      id: (l$id as String),
      email: (l$email as String?),
      firstName: (l$firstName as String?),
      lastName: (l$lastName as String?),
      fullName: (l$fullName as String?),
      avatarUrl: (l$avatarUrl as String?),
      userHandle: (l$userHandle as String?),
      cityOfResidence: (l$cityOfResidence as String?),
      regionOfResidence: (l$regionOfResidence as String?),
      countryOfResidence: l$countryOfResidence == null
          ? null
          : Query$FindMentorUsers$findUsers$countryOfResidence.fromJson(
              (l$countryOfResidence as Map<String, dynamic>)),
      jobTitle: (l$jobTitle as String?),
      groupMemberships: (l$groupMemberships as List<dynamic>)
          .map((e) => Query$FindMentorUsers$findUsers$groupMemberships.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String? email;

  final String? firstName;

  final String? lastName;

  final String? fullName;

  final String? avatarUrl;

  final String? userHandle;

  final String? cityOfResidence;

  final String? regionOfResidence;

  final Query$FindMentorUsers$findUsers$countryOfResidence? countryOfResidence;

  final String? jobTitle;

  final List<Query$FindMentorUsers$findUsers$groupMemberships> groupMemberships;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$email = email;
    _resultData['email'] = l$email;
    final l$firstName = firstName;
    _resultData['firstName'] = l$firstName;
    final l$lastName = lastName;
    _resultData['lastName'] = l$lastName;
    final l$fullName = fullName;
    _resultData['fullName'] = l$fullName;
    final l$avatarUrl = avatarUrl;
    _resultData['avatarUrl'] = l$avatarUrl;
    final l$userHandle = userHandle;
    _resultData['userHandle'] = l$userHandle;
    final l$cityOfResidence = cityOfResidence;
    _resultData['cityOfResidence'] = l$cityOfResidence;
    final l$regionOfResidence = regionOfResidence;
    _resultData['regionOfResidence'] = l$regionOfResidence;
    final l$countryOfResidence = countryOfResidence;
    _resultData['countryOfResidence'] = l$countryOfResidence?.toJson();
    final l$jobTitle = jobTitle;
    _resultData['jobTitle'] = l$jobTitle;
    final l$groupMemberships = groupMemberships;
    _resultData['groupMemberships'] =
        l$groupMemberships.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$email = email;
    final l$firstName = firstName;
    final l$lastName = lastName;
    final l$fullName = fullName;
    final l$avatarUrl = avatarUrl;
    final l$userHandle = userHandle;
    final l$cityOfResidence = cityOfResidence;
    final l$regionOfResidence = regionOfResidence;
    final l$countryOfResidence = countryOfResidence;
    final l$jobTitle = jobTitle;
    final l$groupMemberships = groupMemberships;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$email,
      l$firstName,
      l$lastName,
      l$fullName,
      l$avatarUrl,
      l$userHandle,
      l$cityOfResidence,
      l$regionOfResidence,
      l$countryOfResidence,
      l$jobTitle,
      Object.hashAll(l$groupMemberships.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FindMentorUsers$findUsers) ||
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
    final l$firstName = firstName;
    final lOther$firstName = other.firstName;
    if (l$firstName != lOther$firstName) {
      return false;
    }
    final l$lastName = lastName;
    final lOther$lastName = other.lastName;
    if (l$lastName != lOther$lastName) {
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
    final l$cityOfResidence = cityOfResidence;
    final lOther$cityOfResidence = other.cityOfResidence;
    if (l$cityOfResidence != lOther$cityOfResidence) {
      return false;
    }
    final l$regionOfResidence = regionOfResidence;
    final lOther$regionOfResidence = other.regionOfResidence;
    if (l$regionOfResidence != lOther$regionOfResidence) {
      return false;
    }
    final l$countryOfResidence = countryOfResidence;
    final lOther$countryOfResidence = other.countryOfResidence;
    if (l$countryOfResidence != lOther$countryOfResidence) {
      return false;
    }
    final l$jobTitle = jobTitle;
    final lOther$jobTitle = other.jobTitle;
    if (l$jobTitle != lOther$jobTitle) {
      return false;
    }
    final l$groupMemberships = groupMemberships;
    final lOther$groupMemberships = other.groupMemberships;
    if (l$groupMemberships.length != lOther$groupMemberships.length) {
      return false;
    }
    for (int i = 0; i < l$groupMemberships.length; i++) {
      final l$groupMemberships$entry = l$groupMemberships[i];
      final lOther$groupMemberships$entry = lOther$groupMemberships[i];
      if (l$groupMemberships$entry != lOther$groupMemberships$entry) {
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

extension UtilityExtension$Query$FindMentorUsers$findUsers
    on Query$FindMentorUsers$findUsers {
  CopyWith$Query$FindMentorUsers$findUsers<Query$FindMentorUsers$findUsers>
      get copyWith => CopyWith$Query$FindMentorUsers$findUsers(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindMentorUsers$findUsers<TRes> {
  factory CopyWith$Query$FindMentorUsers$findUsers(
    Query$FindMentorUsers$findUsers instance,
    TRes Function(Query$FindMentorUsers$findUsers) then,
  ) = _CopyWithImpl$Query$FindMentorUsers$findUsers;

  factory CopyWith$Query$FindMentorUsers$findUsers.stub(TRes res) =
      _CopyWithStubImpl$Query$FindMentorUsers$findUsers;

  TRes call({
    String? id,
    String? email,
    String? firstName,
    String? lastName,
    String? fullName,
    String? avatarUrl,
    String? userHandle,
    String? cityOfResidence,
    String? regionOfResidence,
    Query$FindMentorUsers$findUsers$countryOfResidence? countryOfResidence,
    String? jobTitle,
    List<Query$FindMentorUsers$findUsers$groupMemberships>? groupMemberships,
    String? $__typename,
  });
  CopyWith$Query$FindMentorUsers$findUsers$countryOfResidence<TRes>
      get countryOfResidence;
  TRes groupMemberships(
      Iterable<Query$FindMentorUsers$findUsers$groupMemberships> Function(
              Iterable<
                  CopyWith$Query$FindMentorUsers$findUsers$groupMemberships<
                      Query$FindMentorUsers$findUsers$groupMemberships>>)
          _fn);
}

class _CopyWithImpl$Query$FindMentorUsers$findUsers<TRes>
    implements CopyWith$Query$FindMentorUsers$findUsers<TRes> {
  _CopyWithImpl$Query$FindMentorUsers$findUsers(
    this._instance,
    this._then,
  );

  final Query$FindMentorUsers$findUsers _instance;

  final TRes Function(Query$FindMentorUsers$findUsers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? email = _undefined,
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? fullName = _undefined,
    Object? avatarUrl = _undefined,
    Object? userHandle = _undefined,
    Object? cityOfResidence = _undefined,
    Object? regionOfResidence = _undefined,
    Object? countryOfResidence = _undefined,
    Object? jobTitle = _undefined,
    Object? groupMemberships = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindMentorUsers$findUsers(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        email: email == _undefined ? _instance.email : (email as String?),
        firstName: firstName == _undefined
            ? _instance.firstName
            : (firstName as String?),
        lastName:
            lastName == _undefined ? _instance.lastName : (lastName as String?),
        fullName:
            fullName == _undefined ? _instance.fullName : (fullName as String?),
        avatarUrl: avatarUrl == _undefined
            ? _instance.avatarUrl
            : (avatarUrl as String?),
        userHandle: userHandle == _undefined
            ? _instance.userHandle
            : (userHandle as String?),
        cityOfResidence: cityOfResidence == _undefined
            ? _instance.cityOfResidence
            : (cityOfResidence as String?),
        regionOfResidence: regionOfResidence == _undefined
            ? _instance.regionOfResidence
            : (regionOfResidence as String?),
        countryOfResidence: countryOfResidence == _undefined
            ? _instance.countryOfResidence
            : (countryOfResidence
                as Query$FindMentorUsers$findUsers$countryOfResidence?),
        jobTitle:
            jobTitle == _undefined ? _instance.jobTitle : (jobTitle as String?),
        groupMemberships:
            groupMemberships == _undefined || groupMemberships == null
                ? _instance.groupMemberships
                : (groupMemberships
                    as List<Query$FindMentorUsers$findUsers$groupMemberships>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$FindMentorUsers$findUsers$countryOfResidence<TRes>
      get countryOfResidence {
    final local$countryOfResidence = _instance.countryOfResidence;
    return local$countryOfResidence == null
        ? CopyWith$Query$FindMentorUsers$findUsers$countryOfResidence.stub(
            _then(_instance))
        : CopyWith$Query$FindMentorUsers$findUsers$countryOfResidence(
            local$countryOfResidence, (e) => call(countryOfResidence: e));
  }

  TRes groupMemberships(
          Iterable<Query$FindMentorUsers$findUsers$groupMemberships> Function(
                  Iterable<
                      CopyWith$Query$FindMentorUsers$findUsers$groupMemberships<
                          Query$FindMentorUsers$findUsers$groupMemberships>>)
              _fn) =>
      call(
          groupMemberships: _fn(_instance.groupMemberships.map(
              (e) => CopyWith$Query$FindMentorUsers$findUsers$groupMemberships(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$FindMentorUsers$findUsers<TRes>
    implements CopyWith$Query$FindMentorUsers$findUsers<TRes> {
  _CopyWithStubImpl$Query$FindMentorUsers$findUsers(this._res);

  TRes _res;

  call({
    String? id,
    String? email,
    String? firstName,
    String? lastName,
    String? fullName,
    String? avatarUrl,
    String? userHandle,
    String? cityOfResidence,
    String? regionOfResidence,
    Query$FindMentorUsers$findUsers$countryOfResidence? countryOfResidence,
    String? jobTitle,
    List<Query$FindMentorUsers$findUsers$groupMemberships>? groupMemberships,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$FindMentorUsers$findUsers$countryOfResidence<TRes>
      get countryOfResidence =>
          CopyWith$Query$FindMentorUsers$findUsers$countryOfResidence.stub(
              _res);
  groupMemberships(_fn) => _res;
}

class Query$FindMentorUsers$findUsers$countryOfResidence {
  Query$FindMentorUsers$findUsers$countryOfResidence({
    this.translatedValue,
    this.$__typename = 'Country',
  });

  factory Query$FindMentorUsers$findUsers$countryOfResidence.fromJson(
      Map<String, dynamic> json) {
    final l$translatedValue = json['translatedValue'];
    final l$$__typename = json['__typename'];
    return Query$FindMentorUsers$findUsers$countryOfResidence(
      translatedValue: (l$translatedValue as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? translatedValue;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$translatedValue = translatedValue;
    _resultData['translatedValue'] = l$translatedValue;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$translatedValue = translatedValue;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$translatedValue,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FindMentorUsers$findUsers$countryOfResidence) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$translatedValue = translatedValue;
    final lOther$translatedValue = other.translatedValue;
    if (l$translatedValue != lOther$translatedValue) {
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

extension UtilityExtension$Query$FindMentorUsers$findUsers$countryOfResidence
    on Query$FindMentorUsers$findUsers$countryOfResidence {
  CopyWith$Query$FindMentorUsers$findUsers$countryOfResidence<
          Query$FindMentorUsers$findUsers$countryOfResidence>
      get copyWith =>
          CopyWith$Query$FindMentorUsers$findUsers$countryOfResidence(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindMentorUsers$findUsers$countryOfResidence<
    TRes> {
  factory CopyWith$Query$FindMentorUsers$findUsers$countryOfResidence(
    Query$FindMentorUsers$findUsers$countryOfResidence instance,
    TRes Function(Query$FindMentorUsers$findUsers$countryOfResidence) then,
  ) = _CopyWithImpl$Query$FindMentorUsers$findUsers$countryOfResidence;

  factory CopyWith$Query$FindMentorUsers$findUsers$countryOfResidence.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindMentorUsers$findUsers$countryOfResidence;

  TRes call({
    String? translatedValue,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindMentorUsers$findUsers$countryOfResidence<TRes>
    implements
        CopyWith$Query$FindMentorUsers$findUsers$countryOfResidence<TRes> {
  _CopyWithImpl$Query$FindMentorUsers$findUsers$countryOfResidence(
    this._instance,
    this._then,
  );

  final Query$FindMentorUsers$findUsers$countryOfResidence _instance;

  final TRes Function(Query$FindMentorUsers$findUsers$countryOfResidence) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? translatedValue = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindMentorUsers$findUsers$countryOfResidence(
        translatedValue: translatedValue == _undefined
            ? _instance.translatedValue
            : (translatedValue as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FindMentorUsers$findUsers$countryOfResidence<TRes>
    implements
        CopyWith$Query$FindMentorUsers$findUsers$countryOfResidence<TRes> {
  _CopyWithStubImpl$Query$FindMentorUsers$findUsers$countryOfResidence(
      this._res);

  TRes _res;

  call({
    String? translatedValue,
    String? $__typename,
  }) =>
      _res;
}

class Query$FindMentorUsers$findUsers$groupMemberships {
  Query$FindMentorUsers$findUsers$groupMemberships({
    required this.groupId,
    required this.$__typename,
  });

  factory Query$FindMentorUsers$findUsers$groupMemberships.fromJson(
      Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "MentorsGroupMembership":
        return Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership
            .fromJson(json);

      case "GroupMembership":
        return Query$FindMentorUsers$findUsers$groupMemberships$$GroupMembership
            .fromJson(json);

      case "MenteesGroupMembership":
        return Query$FindMentorUsers$findUsers$groupMemberships$$MenteesGroupMembership
            .fromJson(json);

      default:
        final l$groupId = json['groupId'];
        final l$$__typename = json['__typename'];
        return Query$FindMentorUsers$findUsers$groupMemberships(
          groupId: (l$groupId as String),
          $__typename: (l$$__typename as String),
        );
    }
  }

  final String groupId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$groupId = groupId;
    _resultData['groupId'] = l$groupId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$groupId = groupId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$groupId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FindMentorUsers$findUsers$groupMemberships) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$groupId = groupId;
    final lOther$groupId = other.groupId;
    if (l$groupId != lOther$groupId) {
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

extension UtilityExtension$Query$FindMentorUsers$findUsers$groupMemberships
    on Query$FindMentorUsers$findUsers$groupMemberships {
  CopyWith$Query$FindMentorUsers$findUsers$groupMemberships<
          Query$FindMentorUsers$findUsers$groupMemberships>
      get copyWith => CopyWith$Query$FindMentorUsers$findUsers$groupMemberships(
            this,
            (i) => i,
          );
  _T when<_T>({
    required _T Function(
            Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership)
        mentorsGroupMembership,
    required _T Function(
            Query$FindMentorUsers$findUsers$groupMemberships$$GroupMembership)
        groupMembership,
    required _T Function(
            Query$FindMentorUsers$findUsers$groupMemberships$$MenteesGroupMembership)
        menteesGroupMembership,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "MentorsGroupMembership":
        return mentorsGroupMembership(this
            as Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership);

      case "GroupMembership":
        return groupMembership(this
            as Query$FindMentorUsers$findUsers$groupMemberships$$GroupMembership);

      case "MenteesGroupMembership":
        return menteesGroupMembership(this
            as Query$FindMentorUsers$findUsers$groupMemberships$$MenteesGroupMembership);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(
            Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership)?
        mentorsGroupMembership,
    _T Function(
            Query$FindMentorUsers$findUsers$groupMemberships$$GroupMembership)?
        groupMembership,
    _T Function(
            Query$FindMentorUsers$findUsers$groupMemberships$$MenteesGroupMembership)?
        menteesGroupMembership,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "MentorsGroupMembership":
        if (mentorsGroupMembership != null) {
          return mentorsGroupMembership(this
              as Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership);
        } else {
          return orElse();
        }

      case "GroupMembership":
        if (groupMembership != null) {
          return groupMembership(this
              as Query$FindMentorUsers$findUsers$groupMemberships$$GroupMembership);
        } else {
          return orElse();
        }

      case "MenteesGroupMembership":
        if (menteesGroupMembership != null) {
          return menteesGroupMembership(this
              as Query$FindMentorUsers$findUsers$groupMemberships$$MenteesGroupMembership);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Query$FindMentorUsers$findUsers$groupMemberships<TRes> {
  factory CopyWith$Query$FindMentorUsers$findUsers$groupMemberships(
    Query$FindMentorUsers$findUsers$groupMemberships instance,
    TRes Function(Query$FindMentorUsers$findUsers$groupMemberships) then,
  ) = _CopyWithImpl$Query$FindMentorUsers$findUsers$groupMemberships;

  factory CopyWith$Query$FindMentorUsers$findUsers$groupMemberships.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindMentorUsers$findUsers$groupMemberships;

  TRes call({
    String? groupId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindMentorUsers$findUsers$groupMemberships<TRes>
    implements CopyWith$Query$FindMentorUsers$findUsers$groupMemberships<TRes> {
  _CopyWithImpl$Query$FindMentorUsers$findUsers$groupMemberships(
    this._instance,
    this._then,
  );

  final Query$FindMentorUsers$findUsers$groupMemberships _instance;

  final TRes Function(Query$FindMentorUsers$findUsers$groupMemberships) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? groupId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindMentorUsers$findUsers$groupMemberships(
        groupId: groupId == _undefined || groupId == null
            ? _instance.groupId
            : (groupId as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FindMentorUsers$findUsers$groupMemberships<TRes>
    implements CopyWith$Query$FindMentorUsers$findUsers$groupMemberships<TRes> {
  _CopyWithStubImpl$Query$FindMentorUsers$findUsers$groupMemberships(this._res);

  TRes _res;

  call({
    String? groupId,
    String? $__typename,
  }) =>
      _res;
}

class Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership
    implements Query$FindMentorUsers$findUsers$groupMemberships {
  Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership({
    required this.expertises,
    required this.industries,
    this.endorsements,
    this.$__typename = 'MentorsGroupMembership',
    required this.groupId,
  });

  factory Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership.fromJson(
      Map<String, dynamic> json) {
    final l$expertises = json['expertises'];
    final l$industries = json['industries'];
    final l$endorsements = json['endorsements'];
    final l$$__typename = json['__typename'];
    final l$groupId = json['groupId'];
    return Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership(
      expertises: (l$expertises as List<dynamic>)
          .map((e) =>
              Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership$expertises
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      industries: (l$industries as List<dynamic>)
          .map((e) =>
              Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership$industries
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      endorsements: (l$endorsements as int?),
      $__typename: (l$$__typename as String),
      groupId: (l$groupId as String),
    );
  }

  final List<
          Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership$expertises>
      expertises;

  final List<
          Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership$industries>
      industries;

  final int? endorsements;

  final String $__typename;

  final String groupId;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$expertises = expertises;
    _resultData['expertises'] = l$expertises.map((e) => e.toJson()).toList();
    final l$industries = industries;
    _resultData['industries'] = l$industries.map((e) => e.toJson()).toList();
    final l$endorsements = endorsements;
    _resultData['endorsements'] = l$endorsements;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$groupId = groupId;
    _resultData['groupId'] = l$groupId;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$expertises = expertises;
    final l$industries = industries;
    final l$endorsements = endorsements;
    final l$$__typename = $__typename;
    final l$groupId = groupId;
    return Object.hashAll([
      Object.hashAll(l$expertises.map((v) => v)),
      Object.hashAll(l$industries.map((v) => v)),
      l$endorsements,
      l$$__typename,
      l$groupId,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$expertises = expertises;
    final lOther$expertises = other.expertises;
    if (l$expertises.length != lOther$expertises.length) {
      return false;
    }
    for (int i = 0; i < l$expertises.length; i++) {
      final l$expertises$entry = l$expertises[i];
      final lOther$expertises$entry = lOther$expertises[i];
      if (l$expertises$entry != lOther$expertises$entry) {
        return false;
      }
    }
    final l$industries = industries;
    final lOther$industries = other.industries;
    if (l$industries.length != lOther$industries.length) {
      return false;
    }
    for (int i = 0; i < l$industries.length; i++) {
      final l$industries$entry = l$industries[i];
      final lOther$industries$entry = lOther$industries[i];
      if (l$industries$entry != lOther$industries$entry) {
        return false;
      }
    }
    final l$endorsements = endorsements;
    final lOther$endorsements = other.endorsements;
    if (l$endorsements != lOther$endorsements) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$groupId = groupId;
    final lOther$groupId = other.groupId;
    if (l$groupId != lOther$groupId) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership
    on Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership {
  CopyWith$Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership<
          Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership>
      get copyWith =>
          CopyWith$Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership<
    TRes> {
  factory CopyWith$Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership(
    Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership
        instance,
    TRes Function(
            Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership)
        then,
  ) = _CopyWithImpl$Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership;

  factory CopyWith$Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership;

  TRes call({
    List<Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership$expertises>?
        expertises,
    List<Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership$industries>?
        industries,
    int? endorsements,
    String? $__typename,
    String? groupId,
  });
  TRes expertises(
      Iterable<Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership$expertises> Function(
              Iterable<
                  CopyWith$Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership$expertises<
                      Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership$expertises>>)
          _fn);
  TRes industries(
      Iterable<Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership$industries> Function(
              Iterable<
                  CopyWith$Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership$industries<
                      Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership$industries>>)
          _fn);
}

class _CopyWithImpl$Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership<
        TRes>
    implements
        CopyWith$Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership<
            TRes> {
  _CopyWithImpl$Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership(
    this._instance,
    this._then,
  );

  final Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership
      _instance;

  final TRes Function(
          Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? expertises = _undefined,
    Object? industries = _undefined,
    Object? endorsements = _undefined,
    Object? $__typename = _undefined,
    Object? groupId = _undefined,
  }) =>
      _then(
          Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership(
        expertises: expertises == _undefined || expertises == null
            ? _instance.expertises
            : (expertises as List<
                Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership$expertises>),
        industries: industries == _undefined || industries == null
            ? _instance.industries
            : (industries as List<
                Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership$industries>),
        endorsements: endorsements == _undefined
            ? _instance.endorsements
            : (endorsements as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        groupId: groupId == _undefined || groupId == null
            ? _instance.groupId
            : (groupId as String),
      ));
  TRes expertises(
          Iterable<Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership$expertises> Function(
                  Iterable<
                      CopyWith$Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership$expertises<
                          Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership$expertises>>)
              _fn) =>
      call(
          expertises: _fn(_instance.expertises.map((e) =>
              CopyWith$Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership$expertises(
                e,
                (i) => i,
              ))).toList());
  TRes industries(
          Iterable<Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership$industries> Function(
                  Iterable<
                      CopyWith$Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership$industries<
                          Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership$industries>>)
              _fn) =>
      call(
          industries: _fn(_instance.industries.map((e) =>
              CopyWith$Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership$industries(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership<
        TRes>
    implements
        CopyWith$Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership<
            TRes> {
  _CopyWithStubImpl$Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership(
      this._res);

  TRes _res;

  call({
    List<Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership$expertises>?
        expertises,
    List<Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership$industries>?
        industries,
    int? endorsements,
    String? $__typename,
    String? groupId,
  }) =>
      _res;
  expertises(_fn) => _res;
  industries(_fn) => _res;
}

class Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership$expertises {
  Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership$expertises({
    this.translatedValue,
    this.$__typename = 'Expertise',
  });

  factory Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership$expertises.fromJson(
      Map<String, dynamic> json) {
    final l$translatedValue = json['translatedValue'];
    final l$$__typename = json['__typename'];
    return Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership$expertises(
      translatedValue: (l$translatedValue as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? translatedValue;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$translatedValue = translatedValue;
    _resultData['translatedValue'] = l$translatedValue;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$translatedValue = translatedValue;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$translatedValue,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership$expertises) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$translatedValue = translatedValue;
    final lOther$translatedValue = other.translatedValue;
    if (l$translatedValue != lOther$translatedValue) {
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

extension UtilityExtension$Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership$expertises
    on Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership$expertises {
  CopyWith$Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership$expertises<
          Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership$expertises>
      get copyWith =>
          CopyWith$Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership$expertises(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership$expertises<
    TRes> {
  factory CopyWith$Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership$expertises(
    Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership$expertises
        instance,
    TRes Function(
            Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership$expertises)
        then,
  ) = _CopyWithImpl$Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership$expertises;

  factory CopyWith$Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership$expertises.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership$expertises;

  TRes call({
    String? translatedValue,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership$expertises<
        TRes>
    implements
        CopyWith$Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership$expertises<
            TRes> {
  _CopyWithImpl$Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership$expertises(
    this._instance,
    this._then,
  );

  final Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership$expertises
      _instance;

  final TRes Function(
          Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership$expertises)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? translatedValue = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership$expertises(
        translatedValue: translatedValue == _undefined
            ? _instance.translatedValue
            : (translatedValue as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership$expertises<
        TRes>
    implements
        CopyWith$Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership$expertises<
            TRes> {
  _CopyWithStubImpl$Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership$expertises(
      this._res);

  TRes _res;

  call({
    String? translatedValue,
    String? $__typename,
  }) =>
      _res;
}

class Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership$industries {
  Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership$industries({
    this.translatedValue,
    this.$__typename = 'Industry',
  });

  factory Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership$industries.fromJson(
      Map<String, dynamic> json) {
    final l$translatedValue = json['translatedValue'];
    final l$$__typename = json['__typename'];
    return Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership$industries(
      translatedValue: (l$translatedValue as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? translatedValue;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$translatedValue = translatedValue;
    _resultData['translatedValue'] = l$translatedValue;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$translatedValue = translatedValue;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$translatedValue,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership$industries) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$translatedValue = translatedValue;
    final lOther$translatedValue = other.translatedValue;
    if (l$translatedValue != lOther$translatedValue) {
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

extension UtilityExtension$Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership$industries
    on Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership$industries {
  CopyWith$Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership$industries<
          Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership$industries>
      get copyWith =>
          CopyWith$Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership$industries(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership$industries<
    TRes> {
  factory CopyWith$Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership$industries(
    Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership$industries
        instance,
    TRes Function(
            Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership$industries)
        then,
  ) = _CopyWithImpl$Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership$industries;

  factory CopyWith$Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership$industries.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership$industries;

  TRes call({
    String? translatedValue,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership$industries<
        TRes>
    implements
        CopyWith$Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership$industries<
            TRes> {
  _CopyWithImpl$Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership$industries(
    this._instance,
    this._then,
  );

  final Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership$industries
      _instance;

  final TRes Function(
          Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership$industries)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? translatedValue = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership$industries(
        translatedValue: translatedValue == _undefined
            ? _instance.translatedValue
            : (translatedValue as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership$industries<
        TRes>
    implements
        CopyWith$Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership$industries<
            TRes> {
  _CopyWithStubImpl$Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership$industries(
      this._res);

  TRes _res;

  call({
    String? translatedValue,
    String? $__typename,
  }) =>
      _res;
}

class Query$FindMentorUsers$findUsers$groupMemberships$$GroupMembership
    implements Query$FindMentorUsers$findUsers$groupMemberships {
  Query$FindMentorUsers$findUsers$groupMemberships$$GroupMembership({
    required this.groupId,
    this.$__typename = 'GroupMembership',
  });

  factory Query$FindMentorUsers$findUsers$groupMemberships$$GroupMembership.fromJson(
      Map<String, dynamic> json) {
    final l$groupId = json['groupId'];
    final l$$__typename = json['__typename'];
    return Query$FindMentorUsers$findUsers$groupMemberships$$GroupMembership(
      groupId: (l$groupId as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String groupId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$groupId = groupId;
    _resultData['groupId'] = l$groupId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$groupId = groupId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$groupId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$FindMentorUsers$findUsers$groupMemberships$$GroupMembership) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$groupId = groupId;
    final lOther$groupId = other.groupId;
    if (l$groupId != lOther$groupId) {
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

extension UtilityExtension$Query$FindMentorUsers$findUsers$groupMemberships$$GroupMembership
    on Query$FindMentorUsers$findUsers$groupMemberships$$GroupMembership {
  CopyWith$Query$FindMentorUsers$findUsers$groupMemberships$$GroupMembership<
          Query$FindMentorUsers$findUsers$groupMemberships$$GroupMembership>
      get copyWith =>
          CopyWith$Query$FindMentorUsers$findUsers$groupMemberships$$GroupMembership(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindMentorUsers$findUsers$groupMemberships$$GroupMembership<
    TRes> {
  factory CopyWith$Query$FindMentorUsers$findUsers$groupMemberships$$GroupMembership(
    Query$FindMentorUsers$findUsers$groupMemberships$$GroupMembership instance,
    TRes Function(
            Query$FindMentorUsers$findUsers$groupMemberships$$GroupMembership)
        then,
  ) = _CopyWithImpl$Query$FindMentorUsers$findUsers$groupMemberships$$GroupMembership;

  factory CopyWith$Query$FindMentorUsers$findUsers$groupMemberships$$GroupMembership.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindMentorUsers$findUsers$groupMemberships$$GroupMembership;

  TRes call({
    String? groupId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindMentorUsers$findUsers$groupMemberships$$GroupMembership<
        TRes>
    implements
        CopyWith$Query$FindMentorUsers$findUsers$groupMemberships$$GroupMembership<
            TRes> {
  _CopyWithImpl$Query$FindMentorUsers$findUsers$groupMemberships$$GroupMembership(
    this._instance,
    this._then,
  );

  final Query$FindMentorUsers$findUsers$groupMemberships$$GroupMembership
      _instance;

  final TRes Function(
      Query$FindMentorUsers$findUsers$groupMemberships$$GroupMembership) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? groupId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindMentorUsers$findUsers$groupMemberships$$GroupMembership(
        groupId: groupId == _undefined || groupId == null
            ? _instance.groupId
            : (groupId as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FindMentorUsers$findUsers$groupMemberships$$GroupMembership<
        TRes>
    implements
        CopyWith$Query$FindMentorUsers$findUsers$groupMemberships$$GroupMembership<
            TRes> {
  _CopyWithStubImpl$Query$FindMentorUsers$findUsers$groupMemberships$$GroupMembership(
      this._res);

  TRes _res;

  call({
    String? groupId,
    String? $__typename,
  }) =>
      _res;
}

class Query$FindMentorUsers$findUsers$groupMemberships$$MenteesGroupMembership
    implements Query$FindMentorUsers$findUsers$groupMemberships {
  Query$FindMentorUsers$findUsers$groupMemberships$$MenteesGroupMembership({
    required this.groupId,
    this.$__typename = 'MenteesGroupMembership',
  });

  factory Query$FindMentorUsers$findUsers$groupMemberships$$MenteesGroupMembership.fromJson(
      Map<String, dynamic> json) {
    final l$groupId = json['groupId'];
    final l$$__typename = json['__typename'];
    return Query$FindMentorUsers$findUsers$groupMemberships$$MenteesGroupMembership(
      groupId: (l$groupId as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String groupId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$groupId = groupId;
    _resultData['groupId'] = l$groupId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$groupId = groupId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$groupId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$FindMentorUsers$findUsers$groupMemberships$$MenteesGroupMembership) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$groupId = groupId;
    final lOther$groupId = other.groupId;
    if (l$groupId != lOther$groupId) {
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

extension UtilityExtension$Query$FindMentorUsers$findUsers$groupMemberships$$MenteesGroupMembership
    on Query$FindMentorUsers$findUsers$groupMemberships$$MenteesGroupMembership {
  CopyWith$Query$FindMentorUsers$findUsers$groupMemberships$$MenteesGroupMembership<
          Query$FindMentorUsers$findUsers$groupMemberships$$MenteesGroupMembership>
      get copyWith =>
          CopyWith$Query$FindMentorUsers$findUsers$groupMemberships$$MenteesGroupMembership(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindMentorUsers$findUsers$groupMemberships$$MenteesGroupMembership<
    TRes> {
  factory CopyWith$Query$FindMentorUsers$findUsers$groupMemberships$$MenteesGroupMembership(
    Query$FindMentorUsers$findUsers$groupMemberships$$MenteesGroupMembership
        instance,
    TRes Function(
            Query$FindMentorUsers$findUsers$groupMemberships$$MenteesGroupMembership)
        then,
  ) = _CopyWithImpl$Query$FindMentorUsers$findUsers$groupMemberships$$MenteesGroupMembership;

  factory CopyWith$Query$FindMentorUsers$findUsers$groupMemberships$$MenteesGroupMembership.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindMentorUsers$findUsers$groupMemberships$$MenteesGroupMembership;

  TRes call({
    String? groupId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindMentorUsers$findUsers$groupMemberships$$MenteesGroupMembership<
        TRes>
    implements
        CopyWith$Query$FindMentorUsers$findUsers$groupMemberships$$MenteesGroupMembership<
            TRes> {
  _CopyWithImpl$Query$FindMentorUsers$findUsers$groupMemberships$$MenteesGroupMembership(
    this._instance,
    this._then,
  );

  final Query$FindMentorUsers$findUsers$groupMemberships$$MenteesGroupMembership
      _instance;

  final TRes Function(
          Query$FindMentorUsers$findUsers$groupMemberships$$MenteesGroupMembership)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? groupId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$FindMentorUsers$findUsers$groupMemberships$$MenteesGroupMembership(
        groupId: groupId == _undefined || groupId == null
            ? _instance.groupId
            : (groupId as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FindMentorUsers$findUsers$groupMemberships$$MenteesGroupMembership<
        TRes>
    implements
        CopyWith$Query$FindMentorUsers$findUsers$groupMemberships$$MenteesGroupMembership<
            TRes> {
  _CopyWithStubImpl$Query$FindMentorUsers$findUsers$groupMemberships$$MenteesGroupMembership(
      this._res);

  TRes _res;

  call({
    String? groupId,
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
