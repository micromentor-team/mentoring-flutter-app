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
            name: NameNode(value: 'createdAt'),
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
    required this.createdAt,
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
    final l$createdAt = json['createdAt'];
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
      createdAt: DateTime.parse((l$createdAt as String)),
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

  final DateTime createdAt;

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
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt.toIso8601String();
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
    final l$createdAt = createdAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$email,
      l$fullName,
      l$avatarUrl,
      l$userHandle,
      l$profileCompletionPercentage,
      l$updatedAt,
      l$createdAt,
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
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
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
    DateTime? createdAt,
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
    Object? createdAt = _undefined,
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
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as DateTime),
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
    DateTime? createdAt,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$CreateUserSearch {
  factory Variables$Mutation$CreateUserSearch(
          {required Input$UserSearchInput input}) =>
      Variables$Mutation$CreateUserSearch._({
        r'input': input,
      });

  Variables$Mutation$CreateUserSearch._(this._$data);

  factory Variables$Mutation$CreateUserSearch.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$UserSearchInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Mutation$CreateUserSearch._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$UserSearchInput get input => (_$data['input'] as Input$UserSearchInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$CreateUserSearch<
          Variables$Mutation$CreateUserSearch>
      get copyWith => CopyWith$Variables$Mutation$CreateUserSearch(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$CreateUserSearch) ||
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

abstract class CopyWith$Variables$Mutation$CreateUserSearch<TRes> {
  factory CopyWith$Variables$Mutation$CreateUserSearch(
    Variables$Mutation$CreateUserSearch instance,
    TRes Function(Variables$Mutation$CreateUserSearch) then,
  ) = _CopyWithImpl$Variables$Mutation$CreateUserSearch;

  factory CopyWith$Variables$Mutation$CreateUserSearch.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CreateUserSearch;

  TRes call({Input$UserSearchInput? input});
}

class _CopyWithImpl$Variables$Mutation$CreateUserSearch<TRes>
    implements CopyWith$Variables$Mutation$CreateUserSearch<TRes> {
  _CopyWithImpl$Variables$Mutation$CreateUserSearch(
    this._instance,
    this._then,
  );

  final Variables$Mutation$CreateUserSearch _instance;

  final TRes Function(Variables$Mutation$CreateUserSearch) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$CreateUserSearch._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$UserSearchInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$CreateUserSearch<TRes>
    implements CopyWith$Variables$Mutation$CreateUserSearch<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreateUserSearch(this._res);

  TRes _res;

  call({Input$UserSearchInput? input}) => _res;
}

class Mutation$CreateUserSearch {
  Mutation$CreateUserSearch({
    required this.createUserSearch,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CreateUserSearch.fromJson(Map<String, dynamic> json) {
    final l$createUserSearch = json['createUserSearch'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateUserSearch(
      createUserSearch: Mutation$CreateUserSearch$createUserSearch.fromJson(
          (l$createUserSearch as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CreateUserSearch$createUserSearch createUserSearch;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createUserSearch = createUserSearch;
    _resultData['createUserSearch'] = l$createUserSearch.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createUserSearch = createUserSearch;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$createUserSearch,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CreateUserSearch) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$createUserSearch = createUserSearch;
    final lOther$createUserSearch = other.createUserSearch;
    if (l$createUserSearch != lOther$createUserSearch) {
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

extension UtilityExtension$Mutation$CreateUserSearch
    on Mutation$CreateUserSearch {
  CopyWith$Mutation$CreateUserSearch<Mutation$CreateUserSearch> get copyWith =>
      CopyWith$Mutation$CreateUserSearch(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CreateUserSearch<TRes> {
  factory CopyWith$Mutation$CreateUserSearch(
    Mutation$CreateUserSearch instance,
    TRes Function(Mutation$CreateUserSearch) then,
  ) = _CopyWithImpl$Mutation$CreateUserSearch;

  factory CopyWith$Mutation$CreateUserSearch.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateUserSearch;

  TRes call({
    Mutation$CreateUserSearch$createUserSearch? createUserSearch,
    String? $__typename,
  });
  CopyWith$Mutation$CreateUserSearch$createUserSearch<TRes>
      get createUserSearch;
}

class _CopyWithImpl$Mutation$CreateUserSearch<TRes>
    implements CopyWith$Mutation$CreateUserSearch<TRes> {
  _CopyWithImpl$Mutation$CreateUserSearch(
    this._instance,
    this._then,
  );

  final Mutation$CreateUserSearch _instance;

  final TRes Function(Mutation$CreateUserSearch) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createUserSearch = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateUserSearch(
        createUserSearch: createUserSearch == _undefined ||
                createUserSearch == null
            ? _instance.createUserSearch
            : (createUserSearch as Mutation$CreateUserSearch$createUserSearch),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$CreateUserSearch$createUserSearch<TRes>
      get createUserSearch {
    final local$createUserSearch = _instance.createUserSearch;
    return CopyWith$Mutation$CreateUserSearch$createUserSearch(
        local$createUserSearch, (e) => call(createUserSearch: e));
  }
}

class _CopyWithStubImpl$Mutation$CreateUserSearch<TRes>
    implements CopyWith$Mutation$CreateUserSearch<TRes> {
  _CopyWithStubImpl$Mutation$CreateUserSearch(this._res);

  TRes _res;

  call({
    Mutation$CreateUserSearch$createUserSearch? createUserSearch,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$CreateUserSearch$createUserSearch<TRes>
      get createUserSearch =>
          CopyWith$Mutation$CreateUserSearch$createUserSearch.stub(_res);
}

const documentNodeMutationCreateUserSearch = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'CreateUserSearch'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'UserSearchInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'createUserSearch'),
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
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'seeksHelp'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'offersHelp'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'searchText'),
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
            name: NameNode(value: 'expiresAt'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'userId'),
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

class Mutation$CreateUserSearch$createUserSearch {
  Mutation$CreateUserSearch$createUserSearch({
    this.name,
    this.seeksHelp,
    this.offersHelp,
    this.searchText,
    required this.id,
    this.expiresAt,
    required this.userId,
    this.updatedAt,
    this.$__typename = 'UserSearch',
  });

  factory Mutation$CreateUserSearch$createUserSearch.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$seeksHelp = json['seeksHelp'];
    final l$offersHelp = json['offersHelp'];
    final l$searchText = json['searchText'];
    final l$id = json['id'];
    final l$expiresAt = json['expiresAt'];
    final l$userId = json['userId'];
    final l$updatedAt = json['updatedAt'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateUserSearch$createUserSearch(
      name: (l$name as String?),
      seeksHelp: l$seeksHelp == null
          ? null
          : fromJson$Enum$UserSearchFieldPreference((l$seeksHelp as String)),
      offersHelp: l$offersHelp == null
          ? null
          : fromJson$Enum$UserSearchFieldPreference((l$offersHelp as String)),
      searchText: (l$searchText as String?),
      id: (l$id as String),
      expiresAt:
          l$expiresAt == null ? null : DateTime.parse((l$expiresAt as String)),
      userId: (l$userId as String),
      updatedAt:
          l$updatedAt == null ? null : DateTime.parse((l$updatedAt as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String? name;

  final Enum$UserSearchFieldPreference? seeksHelp;

  final Enum$UserSearchFieldPreference? offersHelp;

  final String? searchText;

  final String id;

  final DateTime? expiresAt;

  final String userId;

  final DateTime? updatedAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$seeksHelp = seeksHelp;
    _resultData['seeksHelp'] = l$seeksHelp == null
        ? null
        : toJson$Enum$UserSearchFieldPreference(l$seeksHelp);
    final l$offersHelp = offersHelp;
    _resultData['offersHelp'] = l$offersHelp == null
        ? null
        : toJson$Enum$UserSearchFieldPreference(l$offersHelp);
    final l$searchText = searchText;
    _resultData['searchText'] = l$searchText;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$expiresAt = expiresAt;
    _resultData['expiresAt'] = l$expiresAt?.toIso8601String();
    final l$userId = userId;
    _resultData['userId'] = l$userId;
    final l$updatedAt = updatedAt;
    _resultData['updatedAt'] = l$updatedAt?.toIso8601String();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$seeksHelp = seeksHelp;
    final l$offersHelp = offersHelp;
    final l$searchText = searchText;
    final l$id = id;
    final l$expiresAt = expiresAt;
    final l$userId = userId;
    final l$updatedAt = updatedAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$seeksHelp,
      l$offersHelp,
      l$searchText,
      l$id,
      l$expiresAt,
      l$userId,
      l$updatedAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CreateUserSearch$createUserSearch) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$seeksHelp = seeksHelp;
    final lOther$seeksHelp = other.seeksHelp;
    if (l$seeksHelp != lOther$seeksHelp) {
      return false;
    }
    final l$offersHelp = offersHelp;
    final lOther$offersHelp = other.offersHelp;
    if (l$offersHelp != lOther$offersHelp) {
      return false;
    }
    final l$searchText = searchText;
    final lOther$searchText = other.searchText;
    if (l$searchText != lOther$searchText) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$expiresAt = expiresAt;
    final lOther$expiresAt = other.expiresAt;
    if (l$expiresAt != lOther$expiresAt) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) {
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

extension UtilityExtension$Mutation$CreateUserSearch$createUserSearch
    on Mutation$CreateUserSearch$createUserSearch {
  CopyWith$Mutation$CreateUserSearch$createUserSearch<
          Mutation$CreateUserSearch$createUserSearch>
      get copyWith => CopyWith$Mutation$CreateUserSearch$createUserSearch(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateUserSearch$createUserSearch<TRes> {
  factory CopyWith$Mutation$CreateUserSearch$createUserSearch(
    Mutation$CreateUserSearch$createUserSearch instance,
    TRes Function(Mutation$CreateUserSearch$createUserSearch) then,
  ) = _CopyWithImpl$Mutation$CreateUserSearch$createUserSearch;

  factory CopyWith$Mutation$CreateUserSearch$createUserSearch.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateUserSearch$createUserSearch;

  TRes call({
    String? name,
    Enum$UserSearchFieldPreference? seeksHelp,
    Enum$UserSearchFieldPreference? offersHelp,
    String? searchText,
    String? id,
    DateTime? expiresAt,
    String? userId,
    DateTime? updatedAt,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$CreateUserSearch$createUserSearch<TRes>
    implements CopyWith$Mutation$CreateUserSearch$createUserSearch<TRes> {
  _CopyWithImpl$Mutation$CreateUserSearch$createUserSearch(
    this._instance,
    this._then,
  );

  final Mutation$CreateUserSearch$createUserSearch _instance;

  final TRes Function(Mutation$CreateUserSearch$createUserSearch) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? seeksHelp = _undefined,
    Object? offersHelp = _undefined,
    Object? searchText = _undefined,
    Object? id = _undefined,
    Object? expiresAt = _undefined,
    Object? userId = _undefined,
    Object? updatedAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateUserSearch$createUserSearch(
        name: name == _undefined ? _instance.name : (name as String?),
        seeksHelp: seeksHelp == _undefined
            ? _instance.seeksHelp
            : (seeksHelp as Enum$UserSearchFieldPreference?),
        offersHelp: offersHelp == _undefined
            ? _instance.offersHelp
            : (offersHelp as Enum$UserSearchFieldPreference?),
        searchText: searchText == _undefined
            ? _instance.searchText
            : (searchText as String?),
        id: id == _undefined || id == null ? _instance.id : (id as String),
        expiresAt: expiresAt == _undefined
            ? _instance.expiresAt
            : (expiresAt as DateTime?),
        userId: userId == _undefined || userId == null
            ? _instance.userId
            : (userId as String),
        updatedAt: updatedAt == _undefined
            ? _instance.updatedAt
            : (updatedAt as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$CreateUserSearch$createUserSearch<TRes>
    implements CopyWith$Mutation$CreateUserSearch$createUserSearch<TRes> {
  _CopyWithStubImpl$Mutation$CreateUserSearch$createUserSearch(this._res);

  TRes _res;

  call({
    String? name,
    Enum$UserSearchFieldPreference? seeksHelp,
    Enum$UserSearchFieldPreference? offersHelp,
    String? searchText,
    String? id,
    DateTime? expiresAt,
    String? userId,
    DateTime? updatedAt,
    String? $__typename,
  }) =>
      _res;
}

class Query$MyUserSearches {
  Query$MyUserSearches({
    required this.myUserSearches,
    this.$__typename = 'Query',
  });

  factory Query$MyUserSearches.fromJson(Map<String, dynamic> json) {
    final l$myUserSearches = json['myUserSearches'];
    final l$$__typename = json['__typename'];
    return Query$MyUserSearches(
      myUserSearches: (l$myUserSearches as List<dynamic>)
          .map((e) => Query$MyUserSearches$myUserSearches.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$MyUserSearches$myUserSearches> myUserSearches;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$myUserSearches = myUserSearches;
    _resultData['myUserSearches'] =
        l$myUserSearches.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$myUserSearches = myUserSearches;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$myUserSearches.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$MyUserSearches) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$myUserSearches = myUserSearches;
    final lOther$myUserSearches = other.myUserSearches;
    if (l$myUserSearches.length != lOther$myUserSearches.length) {
      return false;
    }
    for (int i = 0; i < l$myUserSearches.length; i++) {
      final l$myUserSearches$entry = l$myUserSearches[i];
      final lOther$myUserSearches$entry = lOther$myUserSearches[i];
      if (l$myUserSearches$entry != lOther$myUserSearches$entry) {
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

extension UtilityExtension$Query$MyUserSearches on Query$MyUserSearches {
  CopyWith$Query$MyUserSearches<Query$MyUserSearches> get copyWith =>
      CopyWith$Query$MyUserSearches(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$MyUserSearches<TRes> {
  factory CopyWith$Query$MyUserSearches(
    Query$MyUserSearches instance,
    TRes Function(Query$MyUserSearches) then,
  ) = _CopyWithImpl$Query$MyUserSearches;

  factory CopyWith$Query$MyUserSearches.stub(TRes res) =
      _CopyWithStubImpl$Query$MyUserSearches;

  TRes call({
    List<Query$MyUserSearches$myUserSearches>? myUserSearches,
    String? $__typename,
  });
  TRes myUserSearches(
      Iterable<Query$MyUserSearches$myUserSearches> Function(
              Iterable<
                  CopyWith$Query$MyUserSearches$myUserSearches<
                      Query$MyUserSearches$myUserSearches>>)
          _fn);
}

class _CopyWithImpl$Query$MyUserSearches<TRes>
    implements CopyWith$Query$MyUserSearches<TRes> {
  _CopyWithImpl$Query$MyUserSearches(
    this._instance,
    this._then,
  );

  final Query$MyUserSearches _instance;

  final TRes Function(Query$MyUserSearches) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? myUserSearches = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MyUserSearches(
        myUserSearches: myUserSearches == _undefined || myUserSearches == null
            ? _instance.myUserSearches
            : (myUserSearches as List<Query$MyUserSearches$myUserSearches>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes myUserSearches(
          Iterable<Query$MyUserSearches$myUserSearches> Function(
                  Iterable<
                      CopyWith$Query$MyUserSearches$myUserSearches<
                          Query$MyUserSearches$myUserSearches>>)
              _fn) =>
      call(
          myUserSearches: _fn(_instance.myUserSearches
              .map((e) => CopyWith$Query$MyUserSearches$myUserSearches(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$MyUserSearches<TRes>
    implements CopyWith$Query$MyUserSearches<TRes> {
  _CopyWithStubImpl$Query$MyUserSearches(this._res);

  TRes _res;

  call({
    List<Query$MyUserSearches$myUserSearches>? myUserSearches,
    String? $__typename,
  }) =>
      _res;
  myUserSearches(_fn) => _res;
}

const documentNodeQueryMyUserSearches = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'MyUserSearches'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'myUserSearches'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'topFoundUsers'),
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
                    name: NameNode(value: 'textId'),
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
                name: NameNode(value: 'groupMemberships'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'groupIdent'),
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
                        name: NameNode(value: 'expertisesTextIds'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'industriesTextIds'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
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
                  InlineFragmentNode(
                    typeCondition: TypeConditionNode(
                        on: NamedTypeNode(
                      name: NameNode(value: 'MenteesGroupMembership'),
                      isNonNull: false,
                    )),
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'soughtExpertisesTextIds'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'industryTextId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
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
                    name: NameNode(value: 'name'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'companyStageTextId'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
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
                    name: NameNode(value: 'companyTypeTextId'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'companyType'),
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
            name: NameNode(value: 'runInfos'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'matchCount'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'topUserIds'),
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

class Query$MyUserSearches$myUserSearches {
  Query$MyUserSearches$myUserSearches({
    required this.topFoundUsers,
    this.runInfos,
    this.updatedAt,
    this.$__typename = 'UserSearch',
  });

  factory Query$MyUserSearches$myUserSearches.fromJson(
      Map<String, dynamic> json) {
    final l$topFoundUsers = json['topFoundUsers'];
    final l$runInfos = json['runInfos'];
    final l$updatedAt = json['updatedAt'];
    final l$$__typename = json['__typename'];
    return Query$MyUserSearches$myUserSearches(
      topFoundUsers: (l$topFoundUsers as List<dynamic>)
          .map((e) =>
              Query$MyUserSearches$myUserSearches$topFoundUsers.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      runInfos: (l$runInfos as List<dynamic>?)
          ?.map((e) => Query$MyUserSearches$myUserSearches$runInfos.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      updatedAt:
          l$updatedAt == null ? null : DateTime.parse((l$updatedAt as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$MyUserSearches$myUserSearches$topFoundUsers> topFoundUsers;

  final List<Query$MyUserSearches$myUserSearches$runInfos>? runInfos;

  final DateTime? updatedAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$topFoundUsers = topFoundUsers;
    _resultData['topFoundUsers'] =
        l$topFoundUsers.map((e) => e.toJson()).toList();
    final l$runInfos = runInfos;
    _resultData['runInfos'] = l$runInfos?.map((e) => e.toJson()).toList();
    final l$updatedAt = updatedAt;
    _resultData['updatedAt'] = l$updatedAt?.toIso8601String();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$topFoundUsers = topFoundUsers;
    final l$runInfos = runInfos;
    final l$updatedAt = updatedAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$topFoundUsers.map((v) => v)),
      l$runInfos == null ? null : Object.hashAll(l$runInfos.map((v) => v)),
      l$updatedAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$MyUserSearches$myUserSearches) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$topFoundUsers = topFoundUsers;
    final lOther$topFoundUsers = other.topFoundUsers;
    if (l$topFoundUsers.length != lOther$topFoundUsers.length) {
      return false;
    }
    for (int i = 0; i < l$topFoundUsers.length; i++) {
      final l$topFoundUsers$entry = l$topFoundUsers[i];
      final lOther$topFoundUsers$entry = lOther$topFoundUsers[i];
      if (l$topFoundUsers$entry != lOther$topFoundUsers$entry) {
        return false;
      }
    }
    final l$runInfos = runInfos;
    final lOther$runInfos = other.runInfos;
    if (l$runInfos != null && lOther$runInfos != null) {
      if (l$runInfos.length != lOther$runInfos.length) {
        return false;
      }
      for (int i = 0; i < l$runInfos.length; i++) {
        final l$runInfos$entry = l$runInfos[i];
        final lOther$runInfos$entry = lOther$runInfos[i];
        if (l$runInfos$entry != lOther$runInfos$entry) {
          return false;
        }
      }
    } else if (l$runInfos != lOther$runInfos) {
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

extension UtilityExtension$Query$MyUserSearches$myUserSearches
    on Query$MyUserSearches$myUserSearches {
  CopyWith$Query$MyUserSearches$myUserSearches<
          Query$MyUserSearches$myUserSearches>
      get copyWith => CopyWith$Query$MyUserSearches$myUserSearches(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$MyUserSearches$myUserSearches<TRes> {
  factory CopyWith$Query$MyUserSearches$myUserSearches(
    Query$MyUserSearches$myUserSearches instance,
    TRes Function(Query$MyUserSearches$myUserSearches) then,
  ) = _CopyWithImpl$Query$MyUserSearches$myUserSearches;

  factory CopyWith$Query$MyUserSearches$myUserSearches.stub(TRes res) =
      _CopyWithStubImpl$Query$MyUserSearches$myUserSearches;

  TRes call({
    List<Query$MyUserSearches$myUserSearches$topFoundUsers>? topFoundUsers,
    List<Query$MyUserSearches$myUserSearches$runInfos>? runInfos,
    DateTime? updatedAt,
    String? $__typename,
  });
  TRes topFoundUsers(
      Iterable<Query$MyUserSearches$myUserSearches$topFoundUsers> Function(
              Iterable<
                  CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers<
                      Query$MyUserSearches$myUserSearches$topFoundUsers>>)
          _fn);
  TRes runInfos(
      Iterable<Query$MyUserSearches$myUserSearches$runInfos>? Function(
              Iterable<
                  CopyWith$Query$MyUserSearches$myUserSearches$runInfos<
                      Query$MyUserSearches$myUserSearches$runInfos>>?)
          _fn);
}

class _CopyWithImpl$Query$MyUserSearches$myUserSearches<TRes>
    implements CopyWith$Query$MyUserSearches$myUserSearches<TRes> {
  _CopyWithImpl$Query$MyUserSearches$myUserSearches(
    this._instance,
    this._then,
  );

  final Query$MyUserSearches$myUserSearches _instance;

  final TRes Function(Query$MyUserSearches$myUserSearches) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? topFoundUsers = _undefined,
    Object? runInfos = _undefined,
    Object? updatedAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MyUserSearches$myUserSearches(
        topFoundUsers: topFoundUsers == _undefined || topFoundUsers == null
            ? _instance.topFoundUsers
            : (topFoundUsers
                as List<Query$MyUserSearches$myUserSearches$topFoundUsers>),
        runInfos: runInfos == _undefined
            ? _instance.runInfos
            : (runInfos as List<Query$MyUserSearches$myUserSearches$runInfos>?),
        updatedAt: updatedAt == _undefined
            ? _instance.updatedAt
            : (updatedAt as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes topFoundUsers(
          Iterable<Query$MyUserSearches$myUserSearches$topFoundUsers> Function(
                  Iterable<
                      CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers<
                          Query$MyUserSearches$myUserSearches$topFoundUsers>>)
              _fn) =>
      call(
          topFoundUsers: _fn(_instance.topFoundUsers.map(
              (e) => CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers(
                    e,
                    (i) => i,
                  ))).toList());
  TRes runInfos(
          Iterable<Query$MyUserSearches$myUserSearches$runInfos>? Function(
                  Iterable<
                      CopyWith$Query$MyUserSearches$myUserSearches$runInfos<
                          Query$MyUserSearches$myUserSearches$runInfos>>?)
              _fn) =>
      call(
          runInfos: _fn(_instance.runInfos?.map(
              (e) => CopyWith$Query$MyUserSearches$myUserSearches$runInfos(
                    e,
                    (i) => i,
                  )))?.toList());
}

class _CopyWithStubImpl$Query$MyUserSearches$myUserSearches<TRes>
    implements CopyWith$Query$MyUserSearches$myUserSearches<TRes> {
  _CopyWithStubImpl$Query$MyUserSearches$myUserSearches(this._res);

  TRes _res;

  call({
    List<Query$MyUserSearches$myUserSearches$topFoundUsers>? topFoundUsers,
    List<Query$MyUserSearches$myUserSearches$runInfos>? runInfos,
    DateTime? updatedAt,
    String? $__typename,
  }) =>
      _res;
  topFoundUsers(_fn) => _res;
  runInfos(_fn) => _res;
}

class Query$MyUserSearches$myUserSearches$topFoundUsers {
  Query$MyUserSearches$myUserSearches$topFoundUsers({
    required this.id,
    this.email,
    this.firstName,
    this.lastName,
    this.fullName,
    this.avatarUrl,
    this.userHandle,
    this.countryOfResidence,
    required this.groupMemberships,
    required this.companies,
    this.$__typename = 'User',
  });

  factory Query$MyUserSearches$myUserSearches$topFoundUsers.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$email = json['email'];
    final l$firstName = json['firstName'];
    final l$lastName = json['lastName'];
    final l$fullName = json['fullName'];
    final l$avatarUrl = json['avatarUrl'];
    final l$userHandle = json['userHandle'];
    final l$countryOfResidence = json['countryOfResidence'];
    final l$groupMemberships = json['groupMemberships'];
    final l$companies = json['companies'];
    final l$$__typename = json['__typename'];
    return Query$MyUserSearches$myUserSearches$topFoundUsers(
      id: (l$id as String),
      email: (l$email as String?),
      firstName: (l$firstName as String?),
      lastName: (l$lastName as String?),
      fullName: (l$fullName as String?),
      avatarUrl: (l$avatarUrl as String?),
      userHandle: (l$userHandle as String?),
      countryOfResidence: l$countryOfResidence == null
          ? null
          : Query$MyUserSearches$myUserSearches$topFoundUsers$countryOfResidence
              .fromJson((l$countryOfResidence as Map<String, dynamic>)),
      groupMemberships: (l$groupMemberships as List<dynamic>)
          .map((e) =>
              Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      companies: (l$companies as List<dynamic>)
          .map((e) =>
              Query$MyUserSearches$myUserSearches$topFoundUsers$companies
                  .fromJson((e as Map<String, dynamic>)))
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

  final Query$MyUserSearches$myUserSearches$topFoundUsers$countryOfResidence?
      countryOfResidence;

  final List<Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships>
      groupMemberships;

  final List<Query$MyUserSearches$myUserSearches$topFoundUsers$companies>
      companies;

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
    final l$countryOfResidence = countryOfResidence;
    _resultData['countryOfResidence'] = l$countryOfResidence?.toJson();
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
    final l$countryOfResidence = countryOfResidence;
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
      l$countryOfResidence,
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
    if (!(other is Query$MyUserSearches$myUserSearches$topFoundUsers) ||
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
    final l$countryOfResidence = countryOfResidence;
    final lOther$countryOfResidence = other.countryOfResidence;
    if (l$countryOfResidence != lOther$countryOfResidence) {
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

extension UtilityExtension$Query$MyUserSearches$myUserSearches$topFoundUsers
    on Query$MyUserSearches$myUserSearches$topFoundUsers {
  CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers<
          Query$MyUserSearches$myUserSearches$topFoundUsers>
      get copyWith =>
          CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers<
    TRes> {
  factory CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers(
    Query$MyUserSearches$myUserSearches$topFoundUsers instance,
    TRes Function(Query$MyUserSearches$myUserSearches$topFoundUsers) then,
  ) = _CopyWithImpl$Query$MyUserSearches$myUserSearches$topFoundUsers;

  factory CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers.stub(
          TRes res) =
      _CopyWithStubImpl$Query$MyUserSearches$myUserSearches$topFoundUsers;

  TRes call({
    String? id,
    String? email,
    String? firstName,
    String? lastName,
    String? fullName,
    String? avatarUrl,
    String? userHandle,
    Query$MyUserSearches$myUserSearches$topFoundUsers$countryOfResidence?
        countryOfResidence,
    List<Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships>?
        groupMemberships,
    List<Query$MyUserSearches$myUserSearches$topFoundUsers$companies>?
        companies,
    String? $__typename,
  });
  CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$countryOfResidence<
      TRes> get countryOfResidence;
  TRes groupMemberships(
      Iterable<Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships> Function(
              Iterable<
                  CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships<
                      Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships>>)
          _fn);
  TRes companies(
      Iterable<Query$MyUserSearches$myUserSearches$topFoundUsers$companies> Function(
              Iterable<
                  CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$companies<
                      Query$MyUserSearches$myUserSearches$topFoundUsers$companies>>)
          _fn);
}

class _CopyWithImpl$Query$MyUserSearches$myUserSearches$topFoundUsers<TRes>
    implements
        CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers<TRes> {
  _CopyWithImpl$Query$MyUserSearches$myUserSearches$topFoundUsers(
    this._instance,
    this._then,
  );

  final Query$MyUserSearches$myUserSearches$topFoundUsers _instance;

  final TRes Function(Query$MyUserSearches$myUserSearches$topFoundUsers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? email = _undefined,
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? fullName = _undefined,
    Object? avatarUrl = _undefined,
    Object? userHandle = _undefined,
    Object? countryOfResidence = _undefined,
    Object? groupMemberships = _undefined,
    Object? companies = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MyUserSearches$myUserSearches$topFoundUsers(
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
        countryOfResidence: countryOfResidence == _undefined
            ? _instance.countryOfResidence
            : (countryOfResidence
                as Query$MyUserSearches$myUserSearches$topFoundUsers$countryOfResidence?),
        groupMemberships: groupMemberships == _undefined ||
                groupMemberships == null
            ? _instance.groupMemberships
            : (groupMemberships as List<
                Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships>),
        companies: companies == _undefined || companies == null
            ? _instance.companies
            : (companies as List<
                Query$MyUserSearches$myUserSearches$topFoundUsers$companies>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$countryOfResidence<
      TRes> get countryOfResidence {
    final local$countryOfResidence = _instance.countryOfResidence;
    return local$countryOfResidence == null
        ? CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$countryOfResidence
            .stub(_then(_instance))
        : CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$countryOfResidence(
            local$countryOfResidence, (e) => call(countryOfResidence: e));
  }

  TRes groupMemberships(
          Iterable<Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships> Function(
                  Iterable<
                      CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships<
                          Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships>>)
              _fn) =>
      call(
          groupMemberships: _fn(_instance.groupMemberships.map((e) =>
              CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships(
                e,
                (i) => i,
              ))).toList());
  TRes companies(
          Iterable<Query$MyUserSearches$myUserSearches$topFoundUsers$companies> Function(
                  Iterable<
                      CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$companies<
                          Query$MyUserSearches$myUserSearches$topFoundUsers$companies>>)
              _fn) =>
      call(
          companies: _fn(_instance.companies.map((e) =>
              CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$companies(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$MyUserSearches$myUserSearches$topFoundUsers<TRes>
    implements
        CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers<TRes> {
  _CopyWithStubImpl$Query$MyUserSearches$myUserSearches$topFoundUsers(
      this._res);

  TRes _res;

  call({
    String? id,
    String? email,
    String? firstName,
    String? lastName,
    String? fullName,
    String? avatarUrl,
    String? userHandle,
    Query$MyUserSearches$myUserSearches$topFoundUsers$countryOfResidence?
        countryOfResidence,
    List<Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships>?
        groupMemberships,
    List<Query$MyUserSearches$myUserSearches$topFoundUsers$companies>?
        companies,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$countryOfResidence<
          TRes>
      get countryOfResidence =>
          CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$countryOfResidence
              .stub(_res);
  groupMemberships(_fn) => _res;
  companies(_fn) => _res;
}

class Query$MyUserSearches$myUserSearches$topFoundUsers$countryOfResidence {
  Query$MyUserSearches$myUserSearches$topFoundUsers$countryOfResidence({
    this.translatedValue,
    required this.textId,
    this.$__typename = 'Country',
  });

  factory Query$MyUserSearches$myUserSearches$topFoundUsers$countryOfResidence.fromJson(
      Map<String, dynamic> json) {
    final l$translatedValue = json['translatedValue'];
    final l$textId = json['textId'];
    final l$$__typename = json['__typename'];
    return Query$MyUserSearches$myUserSearches$topFoundUsers$countryOfResidence(
      translatedValue: (l$translatedValue as String?),
      textId: (l$textId as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String? translatedValue;

  final String textId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$translatedValue = translatedValue;
    _resultData['translatedValue'] = l$translatedValue;
    final l$textId = textId;
    _resultData['textId'] = l$textId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$translatedValue = translatedValue;
    final l$textId = textId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$translatedValue,
      l$textId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$MyUserSearches$myUserSearches$topFoundUsers$countryOfResidence) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$translatedValue = translatedValue;
    final lOther$translatedValue = other.translatedValue;
    if (l$translatedValue != lOther$translatedValue) {
      return false;
    }
    final l$textId = textId;
    final lOther$textId = other.textId;
    if (l$textId != lOther$textId) {
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

extension UtilityExtension$Query$MyUserSearches$myUserSearches$topFoundUsers$countryOfResidence
    on Query$MyUserSearches$myUserSearches$topFoundUsers$countryOfResidence {
  CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$countryOfResidence<
          Query$MyUserSearches$myUserSearches$topFoundUsers$countryOfResidence>
      get copyWith =>
          CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$countryOfResidence(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$countryOfResidence<
    TRes> {
  factory CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$countryOfResidence(
    Query$MyUserSearches$myUserSearches$topFoundUsers$countryOfResidence
        instance,
    TRes Function(
            Query$MyUserSearches$myUserSearches$topFoundUsers$countryOfResidence)
        then,
  ) = _CopyWithImpl$Query$MyUserSearches$myUserSearches$topFoundUsers$countryOfResidence;

  factory CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$countryOfResidence.stub(
          TRes res) =
      _CopyWithStubImpl$Query$MyUserSearches$myUserSearches$topFoundUsers$countryOfResidence;

  TRes call({
    String? translatedValue,
    String? textId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$MyUserSearches$myUserSearches$topFoundUsers$countryOfResidence<
        TRes>
    implements
        CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$countryOfResidence<
            TRes> {
  _CopyWithImpl$Query$MyUserSearches$myUserSearches$topFoundUsers$countryOfResidence(
    this._instance,
    this._then,
  );

  final Query$MyUserSearches$myUserSearches$topFoundUsers$countryOfResidence
      _instance;

  final TRes Function(
          Query$MyUserSearches$myUserSearches$topFoundUsers$countryOfResidence)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? translatedValue = _undefined,
    Object? textId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$MyUserSearches$myUserSearches$topFoundUsers$countryOfResidence(
        translatedValue: translatedValue == _undefined
            ? _instance.translatedValue
            : (translatedValue as String?),
        textId: textId == _undefined || textId == null
            ? _instance.textId
            : (textId as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$MyUserSearches$myUserSearches$topFoundUsers$countryOfResidence<
        TRes>
    implements
        CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$countryOfResidence<
            TRes> {
  _CopyWithStubImpl$Query$MyUserSearches$myUserSearches$topFoundUsers$countryOfResidence(
      this._res);

  TRes _res;

  call({
    String? translatedValue,
    String? textId,
    String? $__typename,
  }) =>
      _res;
}

class Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships {
  Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships({
    required this.groupIdent,
    required this.$__typename,
  });

  factory Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships.fromJson(
      Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "MentorsGroupMembership":
        return Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership
            .fromJson(json);

      case "MenteesGroupMembership":
        return Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership
            .fromJson(json);

      case "GroupMembership":
        return Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$GroupMembership
            .fromJson(json);

      default:
        final l$groupIdent = json['groupIdent'];
        final l$$__typename = json['__typename'];
        return Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships(
          groupIdent: (l$groupIdent as String),
          $__typename: (l$$__typename as String),
        );
    }
  }

  final String groupIdent;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$groupIdent = groupIdent;
    _resultData['groupIdent'] = l$groupIdent;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$groupIdent = groupIdent;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$groupIdent,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$groupIdent = groupIdent;
    final lOther$groupIdent = other.groupIdent;
    if (l$groupIdent != lOther$groupIdent) {
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

extension UtilityExtension$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships
    on Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships {
  CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships<
          Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships>
      get copyWith =>
          CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships(
            this,
            (i) => i,
          );
  _T when<_T>({
    required _T Function(
            Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership)
        mentorsGroupMembership,
    required _T Function(
            Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership)
        menteesGroupMembership,
    required _T Function(
            Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$GroupMembership)
        groupMembership,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "MentorsGroupMembership":
        return mentorsGroupMembership(this
            as Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership);

      case "MenteesGroupMembership":
        return menteesGroupMembership(this
            as Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership);

      case "GroupMembership":
        return groupMembership(this
            as Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$GroupMembership);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(
            Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership)?
        mentorsGroupMembership,
    _T Function(
            Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership)?
        menteesGroupMembership,
    _T Function(
            Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$GroupMembership)?
        groupMembership,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "MentorsGroupMembership":
        if (mentorsGroupMembership != null) {
          return mentorsGroupMembership(this
              as Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership);
        } else {
          return orElse();
        }

      case "MenteesGroupMembership":
        if (menteesGroupMembership != null) {
          return menteesGroupMembership(this
              as Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership);
        } else {
          return orElse();
        }

      case "GroupMembership":
        if (groupMembership != null) {
          return groupMembership(this
              as Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$GroupMembership);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships<
    TRes> {
  factory CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships(
    Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships instance,
    TRes Function(
            Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships)
        then,
  ) = _CopyWithImpl$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships;

  factory CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships.stub(
          TRes res) =
      _CopyWithStubImpl$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships;

  TRes call({
    String? groupIdent,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships<
        TRes>
    implements
        CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships<
            TRes> {
  _CopyWithImpl$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships(
    this._instance,
    this._then,
  );

  final Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships
      _instance;

  final TRes Function(
      Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? groupIdent = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships(
        groupIdent: groupIdent == _undefined || groupIdent == null
            ? _instance.groupIdent
            : (groupIdent as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships<
        TRes>
    implements
        CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships<
            TRes> {
  _CopyWithStubImpl$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships(
      this._res);

  TRes _res;

  call({
    String? groupIdent,
    String? $__typename,
  }) =>
      _res;
}

class Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership
    implements
        Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships {
  Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership({
    this.expertisesTextIds,
    this.industriesTextIds,
    required this.expertises,
    required this.industries,
    this.endorsements,
    this.$__typename = 'MentorsGroupMembership',
    required this.groupIdent,
  });

  factory Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership.fromJson(
      Map<String, dynamic> json) {
    final l$expertisesTextIds = json['expertisesTextIds'];
    final l$industriesTextIds = json['industriesTextIds'];
    final l$expertises = json['expertises'];
    final l$industries = json['industries'];
    final l$endorsements = json['endorsements'];
    final l$$__typename = json['__typename'];
    final l$groupIdent = json['groupIdent'];
    return Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership(
      expertisesTextIds: (l$expertisesTextIds as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList(),
      industriesTextIds: (l$industriesTextIds as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList(),
      expertises: (l$expertises as List<dynamic>)
          .map((e) =>
              Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership$expertises
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      industries: (l$industries as List<dynamic>)
          .map((e) =>
              Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership$industries
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      endorsements: (l$endorsements as int?),
      $__typename: (l$$__typename as String),
      groupIdent: (l$groupIdent as String),
    );
  }

  final List<String>? expertisesTextIds;

  final List<String>? industriesTextIds;

  final List<
          Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership$expertises>
      expertises;

  final List<
          Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership$industries>
      industries;

  final int? endorsements;

  final String $__typename;

  final String groupIdent;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$expertisesTextIds = expertisesTextIds;
    _resultData['expertisesTextIds'] =
        l$expertisesTextIds?.map((e) => e).toList();
    final l$industriesTextIds = industriesTextIds;
    _resultData['industriesTextIds'] =
        l$industriesTextIds?.map((e) => e).toList();
    final l$expertises = expertises;
    _resultData['expertises'] = l$expertises.map((e) => e.toJson()).toList();
    final l$industries = industries;
    _resultData['industries'] = l$industries.map((e) => e.toJson()).toList();
    final l$endorsements = endorsements;
    _resultData['endorsements'] = l$endorsements;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$groupIdent = groupIdent;
    _resultData['groupIdent'] = l$groupIdent;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$expertisesTextIds = expertisesTextIds;
    final l$industriesTextIds = industriesTextIds;
    final l$expertises = expertises;
    final l$industries = industries;
    final l$endorsements = endorsements;
    final l$$__typename = $__typename;
    final l$groupIdent = groupIdent;
    return Object.hashAll([
      l$expertisesTextIds == null
          ? null
          : Object.hashAll(l$expertisesTextIds.map((v) => v)),
      l$industriesTextIds == null
          ? null
          : Object.hashAll(l$industriesTextIds.map((v) => v)),
      Object.hashAll(l$expertises.map((v) => v)),
      Object.hashAll(l$industries.map((v) => v)),
      l$endorsements,
      l$$__typename,
      l$groupIdent,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$expertisesTextIds = expertisesTextIds;
    final lOther$expertisesTextIds = other.expertisesTextIds;
    if (l$expertisesTextIds != null && lOther$expertisesTextIds != null) {
      if (l$expertisesTextIds.length != lOther$expertisesTextIds.length) {
        return false;
      }
      for (int i = 0; i < l$expertisesTextIds.length; i++) {
        final l$expertisesTextIds$entry = l$expertisesTextIds[i];
        final lOther$expertisesTextIds$entry = lOther$expertisesTextIds[i];
        if (l$expertisesTextIds$entry != lOther$expertisesTextIds$entry) {
          return false;
        }
      }
    } else if (l$expertisesTextIds != lOther$expertisesTextIds) {
      return false;
    }
    final l$industriesTextIds = industriesTextIds;
    final lOther$industriesTextIds = other.industriesTextIds;
    if (l$industriesTextIds != null && lOther$industriesTextIds != null) {
      if (l$industriesTextIds.length != lOther$industriesTextIds.length) {
        return false;
      }
      for (int i = 0; i < l$industriesTextIds.length; i++) {
        final l$industriesTextIds$entry = l$industriesTextIds[i];
        final lOther$industriesTextIds$entry = lOther$industriesTextIds[i];
        if (l$industriesTextIds$entry != lOther$industriesTextIds$entry) {
          return false;
        }
      }
    } else if (l$industriesTextIds != lOther$industriesTextIds) {
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
    final l$groupIdent = groupIdent;
    final lOther$groupIdent = other.groupIdent;
    if (l$groupIdent != lOther$groupIdent) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership
    on Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership {
  CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership<
          Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership>
      get copyWith =>
          CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership<
    TRes> {
  factory CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership(
    Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership
        instance,
    TRes Function(
            Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership)
        then,
  ) = _CopyWithImpl$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership;

  factory CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership.stub(
          TRes res) =
      _CopyWithStubImpl$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership;

  TRes call({
    List<String>? expertisesTextIds,
    List<String>? industriesTextIds,
    List<Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership$expertises>?
        expertises,
    List<Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership$industries>?
        industries,
    int? endorsements,
    String? $__typename,
    String? groupIdent,
  });
  TRes expertises(
      Iterable<Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership$expertises> Function(
              Iterable<
                  CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership$expertises<
                      Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership$expertises>>)
          _fn);
  TRes industries(
      Iterable<Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership$industries> Function(
              Iterable<
                  CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership$industries<
                      Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership$industries>>)
          _fn);
}

class _CopyWithImpl$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership<
        TRes>
    implements
        CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership<
            TRes> {
  _CopyWithImpl$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership(
    this._instance,
    this._then,
  );

  final Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership
      _instance;

  final TRes Function(
          Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? expertisesTextIds = _undefined,
    Object? industriesTextIds = _undefined,
    Object? expertises = _undefined,
    Object? industries = _undefined,
    Object? endorsements = _undefined,
    Object? $__typename = _undefined,
    Object? groupIdent = _undefined,
  }) =>
      _then(
          Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership(
        expertisesTextIds: expertisesTextIds == _undefined
            ? _instance.expertisesTextIds
            : (expertisesTextIds as List<String>?),
        industriesTextIds: industriesTextIds == _undefined
            ? _instance.industriesTextIds
            : (industriesTextIds as List<String>?),
        expertises: expertises == _undefined || expertises == null
            ? _instance.expertises
            : (expertises as List<
                Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership$expertises>),
        industries: industries == _undefined || industries == null
            ? _instance.industries
            : (industries as List<
                Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership$industries>),
        endorsements: endorsements == _undefined
            ? _instance.endorsements
            : (endorsements as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        groupIdent: groupIdent == _undefined || groupIdent == null
            ? _instance.groupIdent
            : (groupIdent as String),
      ));
  TRes expertises(
          Iterable<Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership$expertises> Function(
                  Iterable<
                      CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership$expertises<
                          Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership$expertises>>)
              _fn) =>
      call(
          expertises: _fn(_instance.expertises.map((e) =>
              CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership$expertises(
                e,
                (i) => i,
              ))).toList());
  TRes industries(
          Iterable<Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership$industries> Function(
                  Iterable<
                      CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership$industries<
                          Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership$industries>>)
              _fn) =>
      call(
          industries: _fn(_instance.industries.map((e) =>
              CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership$industries(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership<
        TRes>
    implements
        CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership<
            TRes> {
  _CopyWithStubImpl$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership(
      this._res);

  TRes _res;

  call({
    List<String>? expertisesTextIds,
    List<String>? industriesTextIds,
    List<Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership$expertises>?
        expertises,
    List<Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership$industries>?
        industries,
    int? endorsements,
    String? $__typename,
    String? groupIdent,
  }) =>
      _res;
  expertises(_fn) => _res;
  industries(_fn) => _res;
}

class Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership$expertises {
  Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership$expertises({
    this.translatedValue,
    this.$__typename = 'Expertise',
  });

  factory Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership$expertises.fromJson(
      Map<String, dynamic> json) {
    final l$translatedValue = json['translatedValue'];
    final l$$__typename = json['__typename'];
    return Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership$expertises(
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
            is Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership$expertises) ||
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

extension UtilityExtension$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership$expertises
    on Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership$expertises {
  CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership$expertises<
          Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership$expertises>
      get copyWith =>
          CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership$expertises(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership$expertises<
    TRes> {
  factory CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership$expertises(
    Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership$expertises
        instance,
    TRes Function(
            Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership$expertises)
        then,
  ) = _CopyWithImpl$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership$expertises;

  factory CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership$expertises.stub(
          TRes res) =
      _CopyWithStubImpl$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership$expertises;

  TRes call({
    String? translatedValue,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership$expertises<
        TRes>
    implements
        CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership$expertises<
            TRes> {
  _CopyWithImpl$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership$expertises(
    this._instance,
    this._then,
  );

  final Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership$expertises
      _instance;

  final TRes Function(
          Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership$expertises)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? translatedValue = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership$expertises(
        translatedValue: translatedValue == _undefined
            ? _instance.translatedValue
            : (translatedValue as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership$expertises<
        TRes>
    implements
        CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership$expertises<
            TRes> {
  _CopyWithStubImpl$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership$expertises(
      this._res);

  TRes _res;

  call({
    String? translatedValue,
    String? $__typename,
  }) =>
      _res;
}

class Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership$industries {
  Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership$industries({
    this.translatedValue,
    this.$__typename = 'Industry',
  });

  factory Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership$industries.fromJson(
      Map<String, dynamic> json) {
    final l$translatedValue = json['translatedValue'];
    final l$$__typename = json['__typename'];
    return Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership$industries(
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
            is Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership$industries) ||
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

extension UtilityExtension$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership$industries
    on Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership$industries {
  CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership$industries<
          Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership$industries>
      get copyWith =>
          CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership$industries(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership$industries<
    TRes> {
  factory CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership$industries(
    Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership$industries
        instance,
    TRes Function(
            Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership$industries)
        then,
  ) = _CopyWithImpl$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership$industries;

  factory CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership$industries.stub(
          TRes res) =
      _CopyWithStubImpl$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership$industries;

  TRes call({
    String? translatedValue,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership$industries<
        TRes>
    implements
        CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership$industries<
            TRes> {
  _CopyWithImpl$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership$industries(
    this._instance,
    this._then,
  );

  final Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership$industries
      _instance;

  final TRes Function(
          Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership$industries)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? translatedValue = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership$industries(
        translatedValue: translatedValue == _undefined
            ? _instance.translatedValue
            : (translatedValue as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership$industries<
        TRes>
    implements
        CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership$industries<
            TRes> {
  _CopyWithStubImpl$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MentorsGroupMembership$industries(
      this._res);

  TRes _res;

  call({
    String? translatedValue,
    String? $__typename,
  }) =>
      _res;
}

class Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership
    implements
        Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships {
  Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership({
    this.soughtExpertisesTextIds,
    this.industryTextId,
    required this.soughtExpertises,
    this.industry,
    this.$__typename = 'MenteesGroupMembership',
    required this.groupIdent,
  });

  factory Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership.fromJson(
      Map<String, dynamic> json) {
    final l$soughtExpertisesTextIds = json['soughtExpertisesTextIds'];
    final l$industryTextId = json['industryTextId'];
    final l$soughtExpertises = json['soughtExpertises'];
    final l$industry = json['industry'];
    final l$$__typename = json['__typename'];
    final l$groupIdent = json['groupIdent'];
    return Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership(
      soughtExpertisesTextIds: (l$soughtExpertisesTextIds as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList(),
      industryTextId: (l$industryTextId as String?),
      soughtExpertises: (l$soughtExpertises as List<dynamic>)
          .map((e) =>
              Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      industry: l$industry == null
          ? null
          : Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership$industry
              .fromJson((l$industry as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
      groupIdent: (l$groupIdent as String),
    );
  }

  final List<String>? soughtExpertisesTextIds;

  final String? industryTextId;

  final List<
          Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises>
      soughtExpertises;

  final Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership$industry?
      industry;

  final String $__typename;

  final String groupIdent;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$soughtExpertisesTextIds = soughtExpertisesTextIds;
    _resultData['soughtExpertisesTextIds'] =
        l$soughtExpertisesTextIds?.map((e) => e).toList();
    final l$industryTextId = industryTextId;
    _resultData['industryTextId'] = l$industryTextId;
    final l$soughtExpertises = soughtExpertises;
    _resultData['soughtExpertises'] =
        l$soughtExpertises.map((e) => e.toJson()).toList();
    final l$industry = industry;
    _resultData['industry'] = l$industry?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$groupIdent = groupIdent;
    _resultData['groupIdent'] = l$groupIdent;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$soughtExpertisesTextIds = soughtExpertisesTextIds;
    final l$industryTextId = industryTextId;
    final l$soughtExpertises = soughtExpertises;
    final l$industry = industry;
    final l$$__typename = $__typename;
    final l$groupIdent = groupIdent;
    return Object.hashAll([
      l$soughtExpertisesTextIds == null
          ? null
          : Object.hashAll(l$soughtExpertisesTextIds.map((v) => v)),
      l$industryTextId,
      Object.hashAll(l$soughtExpertises.map((v) => v)),
      l$industry,
      l$$__typename,
      l$groupIdent,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$soughtExpertisesTextIds = soughtExpertisesTextIds;
    final lOther$soughtExpertisesTextIds = other.soughtExpertisesTextIds;
    if (l$soughtExpertisesTextIds != null &&
        lOther$soughtExpertisesTextIds != null) {
      if (l$soughtExpertisesTextIds.length !=
          lOther$soughtExpertisesTextIds.length) {
        return false;
      }
      for (int i = 0; i < l$soughtExpertisesTextIds.length; i++) {
        final l$soughtExpertisesTextIds$entry = l$soughtExpertisesTextIds[i];
        final lOther$soughtExpertisesTextIds$entry =
            lOther$soughtExpertisesTextIds[i];
        if (l$soughtExpertisesTextIds$entry !=
            lOther$soughtExpertisesTextIds$entry) {
          return false;
        }
      }
    } else if (l$soughtExpertisesTextIds != lOther$soughtExpertisesTextIds) {
      return false;
    }
    final l$industryTextId = industryTextId;
    final lOther$industryTextId = other.industryTextId;
    if (l$industryTextId != lOther$industryTextId) {
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
    final l$groupIdent = groupIdent;
    final lOther$groupIdent = other.groupIdent;
    if (l$groupIdent != lOther$groupIdent) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership
    on Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership {
  CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership<
          Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership>
      get copyWith =>
          CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership<
    TRes> {
  factory CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership(
    Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership
        instance,
    TRes Function(
            Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership)
        then,
  ) = _CopyWithImpl$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership;

  factory CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership.stub(
          TRes res) =
      _CopyWithStubImpl$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership;

  TRes call({
    List<String>? soughtExpertisesTextIds,
    String? industryTextId,
    List<Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises>?
        soughtExpertises,
    Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership$industry?
        industry,
    String? $__typename,
    String? groupIdent,
  });
  TRes soughtExpertises(
      Iterable<Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises> Function(
              Iterable<
                  CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises<
                      Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises>>)
          _fn);
  CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership$industry<
      TRes> get industry;
}

class _CopyWithImpl$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership<
        TRes>
    implements
        CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership<
            TRes> {
  _CopyWithImpl$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership(
    this._instance,
    this._then,
  );

  final Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership
      _instance;

  final TRes Function(
          Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? soughtExpertisesTextIds = _undefined,
    Object? industryTextId = _undefined,
    Object? soughtExpertises = _undefined,
    Object? industry = _undefined,
    Object? $__typename = _undefined,
    Object? groupIdent = _undefined,
  }) =>
      _then(
          Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership(
        soughtExpertisesTextIds: soughtExpertisesTextIds == _undefined
            ? _instance.soughtExpertisesTextIds
            : (soughtExpertisesTextIds as List<String>?),
        industryTextId: industryTextId == _undefined
            ? _instance.industryTextId
            : (industryTextId as String?),
        soughtExpertises: soughtExpertises == _undefined ||
                soughtExpertises == null
            ? _instance.soughtExpertises
            : (soughtExpertises as List<
                Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises>),
        industry: industry == _undefined
            ? _instance.industry
            : (industry
                as Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership$industry?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        groupIdent: groupIdent == _undefined || groupIdent == null
            ? _instance.groupIdent
            : (groupIdent as String),
      ));
  TRes soughtExpertises(
          Iterable<Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises> Function(
                  Iterable<
                      CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises<
                          Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises>>)
              _fn) =>
      call(
          soughtExpertises: _fn(_instance.soughtExpertises.map((e) =>
              CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises(
                e,
                (i) => i,
              ))).toList());
  CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership$industry<
      TRes> get industry {
    final local$industry = _instance.industry;
    return local$industry == null
        ? CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership$industry
            .stub(_then(_instance))
        : CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership$industry(
            local$industry, (e) => call(industry: e));
  }
}

class _CopyWithStubImpl$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership<
        TRes>
    implements
        CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership<
            TRes> {
  _CopyWithStubImpl$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership(
      this._res);

  TRes _res;

  call({
    List<String>? soughtExpertisesTextIds,
    String? industryTextId,
    List<Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises>?
        soughtExpertises,
    Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership$industry?
        industry,
    String? $__typename,
    String? groupIdent,
  }) =>
      _res;
  soughtExpertises(_fn) => _res;
  CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership$industry<
          TRes>
      get industry =>
          CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership$industry
              .stub(_res);
}

class Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises {
  Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises({
    this.translatedValue,
    this.$__typename = 'Expertise',
  });

  factory Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises.fromJson(
      Map<String, dynamic> json) {
    final l$translatedValue = json['translatedValue'];
    final l$$__typename = json['__typename'];
    return Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises(
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
            is Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises) ||
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

extension UtilityExtension$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises
    on Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises {
  CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises<
          Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises>
      get copyWith =>
          CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises<
    TRes> {
  factory CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises(
    Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises
        instance,
    TRes Function(
            Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises)
        then,
  ) = _CopyWithImpl$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises;

  factory CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises.stub(
          TRes res) =
      _CopyWithStubImpl$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises;

  TRes call({
    String? translatedValue,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises<
        TRes>
    implements
        CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises<
            TRes> {
  _CopyWithImpl$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises(
    this._instance,
    this._then,
  );

  final Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises
      _instance;

  final TRes Function(
          Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? translatedValue = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises(
        translatedValue: translatedValue == _undefined
            ? _instance.translatedValue
            : (translatedValue as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises<
        TRes>
    implements
        CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises<
            TRes> {
  _CopyWithStubImpl$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises(
      this._res);

  TRes _res;

  call({
    String? translatedValue,
    String? $__typename,
  }) =>
      _res;
}

class Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership$industry {
  Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership$industry({
    this.translatedValue,
    this.$__typename = 'Industry',
  });

  factory Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership$industry.fromJson(
      Map<String, dynamic> json) {
    final l$translatedValue = json['translatedValue'];
    final l$$__typename = json['__typename'];
    return Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership$industry(
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
            is Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership$industry) ||
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

extension UtilityExtension$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership$industry
    on Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership$industry {
  CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership$industry<
          Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership$industry>
      get copyWith =>
          CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership$industry(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership$industry<
    TRes> {
  factory CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership$industry(
    Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership$industry
        instance,
    TRes Function(
            Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership$industry)
        then,
  ) = _CopyWithImpl$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership$industry;

  factory CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership$industry.stub(
          TRes res) =
      _CopyWithStubImpl$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership$industry;

  TRes call({
    String? translatedValue,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership$industry<
        TRes>
    implements
        CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership$industry<
            TRes> {
  _CopyWithImpl$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership$industry(
    this._instance,
    this._then,
  );

  final Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership$industry
      _instance;

  final TRes Function(
          Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership$industry)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? translatedValue = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership$industry(
        translatedValue: translatedValue == _undefined
            ? _instance.translatedValue
            : (translatedValue as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership$industry<
        TRes>
    implements
        CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership$industry<
            TRes> {
  _CopyWithStubImpl$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$MenteesGroupMembership$industry(
      this._res);

  TRes _res;

  call({
    String? translatedValue,
    String? $__typename,
  }) =>
      _res;
}

class Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$GroupMembership
    implements
        Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships {
  Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$GroupMembership({
    required this.groupIdent,
    this.$__typename = 'GroupMembership',
  });

  factory Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$GroupMembership.fromJson(
      Map<String, dynamic> json) {
    final l$groupIdent = json['groupIdent'];
    final l$$__typename = json['__typename'];
    return Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$GroupMembership(
      groupIdent: (l$groupIdent as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String groupIdent;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$groupIdent = groupIdent;
    _resultData['groupIdent'] = l$groupIdent;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$groupIdent = groupIdent;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$groupIdent,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$GroupMembership) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$groupIdent = groupIdent;
    final lOther$groupIdent = other.groupIdent;
    if (l$groupIdent != lOther$groupIdent) {
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

extension UtilityExtension$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$GroupMembership
    on Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$GroupMembership {
  CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$GroupMembership<
          Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$GroupMembership>
      get copyWith =>
          CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$GroupMembership(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$GroupMembership<
    TRes> {
  factory CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$GroupMembership(
    Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$GroupMembership
        instance,
    TRes Function(
            Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$GroupMembership)
        then,
  ) = _CopyWithImpl$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$GroupMembership;

  factory CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$GroupMembership.stub(
          TRes res) =
      _CopyWithStubImpl$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$GroupMembership;

  TRes call({
    String? groupIdent,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$GroupMembership<
        TRes>
    implements
        CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$GroupMembership<
            TRes> {
  _CopyWithImpl$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$GroupMembership(
    this._instance,
    this._then,
  );

  final Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$GroupMembership
      _instance;

  final TRes Function(
          Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$GroupMembership)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? groupIdent = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$GroupMembership(
        groupIdent: groupIdent == _undefined || groupIdent == null
            ? _instance.groupIdent
            : (groupIdent as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$GroupMembership<
        TRes>
    implements
        CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$GroupMembership<
            TRes> {
  _CopyWithStubImpl$Query$MyUserSearches$myUserSearches$topFoundUsers$groupMemberships$$GroupMembership(
      this._res);

  TRes _res;

  call({
    String? groupIdent,
    String? $__typename,
  }) =>
      _res;
}

class Query$MyUserSearches$myUserSearches$topFoundUsers$companies {
  Query$MyUserSearches$myUserSearches$topFoundUsers$companies({
    required this.name,
    this.companyStageTextId,
    this.companyStage,
    this.companyTypeTextId,
    this.companyType,
    this.$__typename = 'Company',
  });

  factory Query$MyUserSearches$myUserSearches$topFoundUsers$companies.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$companyStageTextId = json['companyStageTextId'];
    final l$companyStage = json['companyStage'];
    final l$companyTypeTextId = json['companyTypeTextId'];
    final l$companyType = json['companyType'];
    final l$$__typename = json['__typename'];
    return Query$MyUserSearches$myUserSearches$topFoundUsers$companies(
      name: (l$name as String),
      companyStageTextId: (l$companyStageTextId as String?),
      companyStage: l$companyStage == null
          ? null
          : Query$MyUserSearches$myUserSearches$topFoundUsers$companies$companyStage
              .fromJson((l$companyStage as Map<String, dynamic>)),
      companyTypeTextId: (l$companyTypeTextId as String?),
      companyType: l$companyType == null
          ? null
          : Query$MyUserSearches$myUserSearches$topFoundUsers$companies$companyType
              .fromJson((l$companyType as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String? companyStageTextId;

  final Query$MyUserSearches$myUserSearches$topFoundUsers$companies$companyStage?
      companyStage;

  final String? companyTypeTextId;

  final Query$MyUserSearches$myUserSearches$topFoundUsers$companies$companyType?
      companyType;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$companyStageTextId = companyStageTextId;
    _resultData['companyStageTextId'] = l$companyStageTextId;
    final l$companyStage = companyStage;
    _resultData['companyStage'] = l$companyStage?.toJson();
    final l$companyTypeTextId = companyTypeTextId;
    _resultData['companyTypeTextId'] = l$companyTypeTextId;
    final l$companyType = companyType;
    _resultData['companyType'] = l$companyType?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$companyStageTextId = companyStageTextId;
    final l$companyStage = companyStage;
    final l$companyTypeTextId = companyTypeTextId;
    final l$companyType = companyType;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$companyStageTextId,
      l$companyStage,
      l$companyTypeTextId,
      l$companyType,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$MyUserSearches$myUserSearches$topFoundUsers$companies) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$companyStageTextId = companyStageTextId;
    final lOther$companyStageTextId = other.companyStageTextId;
    if (l$companyStageTextId != lOther$companyStageTextId) {
      return false;
    }
    final l$companyStage = companyStage;
    final lOther$companyStage = other.companyStage;
    if (l$companyStage != lOther$companyStage) {
      return false;
    }
    final l$companyTypeTextId = companyTypeTextId;
    final lOther$companyTypeTextId = other.companyTypeTextId;
    if (l$companyTypeTextId != lOther$companyTypeTextId) {
      return false;
    }
    final l$companyType = companyType;
    final lOther$companyType = other.companyType;
    if (l$companyType != lOther$companyType) {
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

extension UtilityExtension$Query$MyUserSearches$myUserSearches$topFoundUsers$companies
    on Query$MyUserSearches$myUserSearches$topFoundUsers$companies {
  CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$companies<
          Query$MyUserSearches$myUserSearches$topFoundUsers$companies>
      get copyWith =>
          CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$companies(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$companies<
    TRes> {
  factory CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$companies(
    Query$MyUserSearches$myUserSearches$topFoundUsers$companies instance,
    TRes Function(Query$MyUserSearches$myUserSearches$topFoundUsers$companies)
        then,
  ) = _CopyWithImpl$Query$MyUserSearches$myUserSearches$topFoundUsers$companies;

  factory CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$companies.stub(
          TRes res) =
      _CopyWithStubImpl$Query$MyUserSearches$myUserSearches$topFoundUsers$companies;

  TRes call({
    String? name,
    String? companyStageTextId,
    Query$MyUserSearches$myUserSearches$topFoundUsers$companies$companyStage?
        companyStage,
    String? companyTypeTextId,
    Query$MyUserSearches$myUserSearches$topFoundUsers$companies$companyType?
        companyType,
    String? $__typename,
  });
  CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$companies$companyStage<
      TRes> get companyStage;
  CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$companies$companyType<
      TRes> get companyType;
}

class _CopyWithImpl$Query$MyUserSearches$myUserSearches$topFoundUsers$companies<
        TRes>
    implements
        CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$companies<
            TRes> {
  _CopyWithImpl$Query$MyUserSearches$myUserSearches$topFoundUsers$companies(
    this._instance,
    this._then,
  );

  final Query$MyUserSearches$myUserSearches$topFoundUsers$companies _instance;

  final TRes Function(
      Query$MyUserSearches$myUserSearches$topFoundUsers$companies) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? companyStageTextId = _undefined,
    Object? companyStage = _undefined,
    Object? companyTypeTextId = _undefined,
    Object? companyType = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MyUserSearches$myUserSearches$topFoundUsers$companies(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        companyStageTextId: companyStageTextId == _undefined
            ? _instance.companyStageTextId
            : (companyStageTextId as String?),
        companyStage: companyStage == _undefined
            ? _instance.companyStage
            : (companyStage
                as Query$MyUserSearches$myUserSearches$topFoundUsers$companies$companyStage?),
        companyTypeTextId: companyTypeTextId == _undefined
            ? _instance.companyTypeTextId
            : (companyTypeTextId as String?),
        companyType: companyType == _undefined
            ? _instance.companyType
            : (companyType
                as Query$MyUserSearches$myUserSearches$topFoundUsers$companies$companyType?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$companies$companyStage<
      TRes> get companyStage {
    final local$companyStage = _instance.companyStage;
    return local$companyStage == null
        ? CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$companies$companyStage
            .stub(_then(_instance))
        : CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$companies$companyStage(
            local$companyStage, (e) => call(companyStage: e));
  }

  CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$companies$companyType<
      TRes> get companyType {
    final local$companyType = _instance.companyType;
    return local$companyType == null
        ? CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$companies$companyType
            .stub(_then(_instance))
        : CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$companies$companyType(
            local$companyType, (e) => call(companyType: e));
  }
}

class _CopyWithStubImpl$Query$MyUserSearches$myUserSearches$topFoundUsers$companies<
        TRes>
    implements
        CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$companies<
            TRes> {
  _CopyWithStubImpl$Query$MyUserSearches$myUserSearches$topFoundUsers$companies(
      this._res);

  TRes _res;

  call({
    String? name,
    String? companyStageTextId,
    Query$MyUserSearches$myUserSearches$topFoundUsers$companies$companyStage?
        companyStage,
    String? companyTypeTextId,
    Query$MyUserSearches$myUserSearches$topFoundUsers$companies$companyType?
        companyType,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$companies$companyStage<
          TRes>
      get companyStage =>
          CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$companies$companyStage
              .stub(_res);
  CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$companies$companyType<
          TRes>
      get companyType =>
          CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$companies$companyType
              .stub(_res);
}

class Query$MyUserSearches$myUserSearches$topFoundUsers$companies$companyStage {
  Query$MyUserSearches$myUserSearches$topFoundUsers$companies$companyStage({
    this.translatedValue,
    this.$__typename = 'CompanyStage',
  });

  factory Query$MyUserSearches$myUserSearches$topFoundUsers$companies$companyStage.fromJson(
      Map<String, dynamic> json) {
    final l$translatedValue = json['translatedValue'];
    final l$$__typename = json['__typename'];
    return Query$MyUserSearches$myUserSearches$topFoundUsers$companies$companyStage(
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
            is Query$MyUserSearches$myUserSearches$topFoundUsers$companies$companyStage) ||
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

extension UtilityExtension$Query$MyUserSearches$myUserSearches$topFoundUsers$companies$companyStage
    on Query$MyUserSearches$myUserSearches$topFoundUsers$companies$companyStage {
  CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$companies$companyStage<
          Query$MyUserSearches$myUserSearches$topFoundUsers$companies$companyStage>
      get copyWith =>
          CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$companies$companyStage(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$companies$companyStage<
    TRes> {
  factory CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$companies$companyStage(
    Query$MyUserSearches$myUserSearches$topFoundUsers$companies$companyStage
        instance,
    TRes Function(
            Query$MyUserSearches$myUserSearches$topFoundUsers$companies$companyStage)
        then,
  ) = _CopyWithImpl$Query$MyUserSearches$myUserSearches$topFoundUsers$companies$companyStage;

  factory CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$companies$companyStage.stub(
          TRes res) =
      _CopyWithStubImpl$Query$MyUserSearches$myUserSearches$topFoundUsers$companies$companyStage;

  TRes call({
    String? translatedValue,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$MyUserSearches$myUserSearches$topFoundUsers$companies$companyStage<
        TRes>
    implements
        CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$companies$companyStage<
            TRes> {
  _CopyWithImpl$Query$MyUserSearches$myUserSearches$topFoundUsers$companies$companyStage(
    this._instance,
    this._then,
  );

  final Query$MyUserSearches$myUserSearches$topFoundUsers$companies$companyStage
      _instance;

  final TRes Function(
          Query$MyUserSearches$myUserSearches$topFoundUsers$companies$companyStage)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? translatedValue = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$MyUserSearches$myUserSearches$topFoundUsers$companies$companyStage(
        translatedValue: translatedValue == _undefined
            ? _instance.translatedValue
            : (translatedValue as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$MyUserSearches$myUserSearches$topFoundUsers$companies$companyStage<
        TRes>
    implements
        CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$companies$companyStage<
            TRes> {
  _CopyWithStubImpl$Query$MyUserSearches$myUserSearches$topFoundUsers$companies$companyStage(
      this._res);

  TRes _res;

  call({
    String? translatedValue,
    String? $__typename,
  }) =>
      _res;
}

class Query$MyUserSearches$myUserSearches$topFoundUsers$companies$companyType {
  Query$MyUserSearches$myUserSearches$topFoundUsers$companies$companyType({
    this.translatedValue,
    this.$__typename = 'CompanyType',
  });

  factory Query$MyUserSearches$myUserSearches$topFoundUsers$companies$companyType.fromJson(
      Map<String, dynamic> json) {
    final l$translatedValue = json['translatedValue'];
    final l$$__typename = json['__typename'];
    return Query$MyUserSearches$myUserSearches$topFoundUsers$companies$companyType(
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
            is Query$MyUserSearches$myUserSearches$topFoundUsers$companies$companyType) ||
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

extension UtilityExtension$Query$MyUserSearches$myUserSearches$topFoundUsers$companies$companyType
    on Query$MyUserSearches$myUserSearches$topFoundUsers$companies$companyType {
  CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$companies$companyType<
          Query$MyUserSearches$myUserSearches$topFoundUsers$companies$companyType>
      get copyWith =>
          CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$companies$companyType(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$companies$companyType<
    TRes> {
  factory CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$companies$companyType(
    Query$MyUserSearches$myUserSearches$topFoundUsers$companies$companyType
        instance,
    TRes Function(
            Query$MyUserSearches$myUserSearches$topFoundUsers$companies$companyType)
        then,
  ) = _CopyWithImpl$Query$MyUserSearches$myUserSearches$topFoundUsers$companies$companyType;

  factory CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$companies$companyType.stub(
          TRes res) =
      _CopyWithStubImpl$Query$MyUserSearches$myUserSearches$topFoundUsers$companies$companyType;

  TRes call({
    String? translatedValue,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$MyUserSearches$myUserSearches$topFoundUsers$companies$companyType<
        TRes>
    implements
        CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$companies$companyType<
            TRes> {
  _CopyWithImpl$Query$MyUserSearches$myUserSearches$topFoundUsers$companies$companyType(
    this._instance,
    this._then,
  );

  final Query$MyUserSearches$myUserSearches$topFoundUsers$companies$companyType
      _instance;

  final TRes Function(
          Query$MyUserSearches$myUserSearches$topFoundUsers$companies$companyType)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? translatedValue = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$MyUserSearches$myUserSearches$topFoundUsers$companies$companyType(
        translatedValue: translatedValue == _undefined
            ? _instance.translatedValue
            : (translatedValue as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$MyUserSearches$myUserSearches$topFoundUsers$companies$companyType<
        TRes>
    implements
        CopyWith$Query$MyUserSearches$myUserSearches$topFoundUsers$companies$companyType<
            TRes> {
  _CopyWithStubImpl$Query$MyUserSearches$myUserSearches$topFoundUsers$companies$companyType(
      this._res);

  TRes _res;

  call({
    String? translatedValue,
    String? $__typename,
  }) =>
      _res;
}

class Query$MyUserSearches$myUserSearches$runInfos {
  Query$MyUserSearches$myUserSearches$runInfos({
    required this.matchCount,
    this.topUserIds,
    this.$__typename = 'UserSearchRunInfo',
  });

  factory Query$MyUserSearches$myUserSearches$runInfos.fromJson(
      Map<String, dynamic> json) {
    final l$matchCount = json['matchCount'];
    final l$topUserIds = json['topUserIds'];
    final l$$__typename = json['__typename'];
    return Query$MyUserSearches$myUserSearches$runInfos(
      matchCount: (l$matchCount as int),
      topUserIds:
          (l$topUserIds as List<dynamic>?)?.map((e) => (e as String)).toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int matchCount;

  final List<String>? topUserIds;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$matchCount = matchCount;
    _resultData['matchCount'] = l$matchCount;
    final l$topUserIds = topUserIds;
    _resultData['topUserIds'] = l$topUserIds?.map((e) => e).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$matchCount = matchCount;
    final l$topUserIds = topUserIds;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$matchCount,
      l$topUserIds == null ? null : Object.hashAll(l$topUserIds.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$MyUserSearches$myUserSearches$runInfos) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$matchCount = matchCount;
    final lOther$matchCount = other.matchCount;
    if (l$matchCount != lOther$matchCount) {
      return false;
    }
    final l$topUserIds = topUserIds;
    final lOther$topUserIds = other.topUserIds;
    if (l$topUserIds != null && lOther$topUserIds != null) {
      if (l$topUserIds.length != lOther$topUserIds.length) {
        return false;
      }
      for (int i = 0; i < l$topUserIds.length; i++) {
        final l$topUserIds$entry = l$topUserIds[i];
        final lOther$topUserIds$entry = lOther$topUserIds[i];
        if (l$topUserIds$entry != lOther$topUserIds$entry) {
          return false;
        }
      }
    } else if (l$topUserIds != lOther$topUserIds) {
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

extension UtilityExtension$Query$MyUserSearches$myUserSearches$runInfos
    on Query$MyUserSearches$myUserSearches$runInfos {
  CopyWith$Query$MyUserSearches$myUserSearches$runInfos<
          Query$MyUserSearches$myUserSearches$runInfos>
      get copyWith => CopyWith$Query$MyUserSearches$myUserSearches$runInfos(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$MyUserSearches$myUserSearches$runInfos<TRes> {
  factory CopyWith$Query$MyUserSearches$myUserSearches$runInfos(
    Query$MyUserSearches$myUserSearches$runInfos instance,
    TRes Function(Query$MyUserSearches$myUserSearches$runInfos) then,
  ) = _CopyWithImpl$Query$MyUserSearches$myUserSearches$runInfos;

  factory CopyWith$Query$MyUserSearches$myUserSearches$runInfos.stub(TRes res) =
      _CopyWithStubImpl$Query$MyUserSearches$myUserSearches$runInfos;

  TRes call({
    int? matchCount,
    List<String>? topUserIds,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$MyUserSearches$myUserSearches$runInfos<TRes>
    implements CopyWith$Query$MyUserSearches$myUserSearches$runInfos<TRes> {
  _CopyWithImpl$Query$MyUserSearches$myUserSearches$runInfos(
    this._instance,
    this._then,
  );

  final Query$MyUserSearches$myUserSearches$runInfos _instance;

  final TRes Function(Query$MyUserSearches$myUserSearches$runInfos) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? matchCount = _undefined,
    Object? topUserIds = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MyUserSearches$myUserSearches$runInfos(
        matchCount: matchCount == _undefined || matchCount == null
            ? _instance.matchCount
            : (matchCount as int),
        topUserIds: topUserIds == _undefined
            ? _instance.topUserIds
            : (topUserIds as List<String>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$MyUserSearches$myUserSearches$runInfos<TRes>
    implements CopyWith$Query$MyUserSearches$myUserSearches$runInfos<TRes> {
  _CopyWithStubImpl$Query$MyUserSearches$myUserSearches$runInfos(this._res);

  TRes _res;

  call({
    int? matchCount,
    List<String>? topUserIds,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$FindUserSearch {
  factory Variables$Query$FindUserSearch({required String userSearchId}) =>
      Variables$Query$FindUserSearch._({
        r'userSearchId': userSearchId,
      });

  Variables$Query$FindUserSearch._(this._$data);

  factory Variables$Query$FindUserSearch.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$userSearchId = data['userSearchId'];
    result$data['userSearchId'] = (l$userSearchId as String);
    return Variables$Query$FindUserSearch._(result$data);
  }

  Map<String, dynamic> _$data;

  String get userSearchId => (_$data['userSearchId'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$userSearchId = userSearchId;
    result$data['userSearchId'] = l$userSearchId;
    return result$data;
  }

  CopyWith$Variables$Query$FindUserSearch<Variables$Query$FindUserSearch>
      get copyWith => CopyWith$Variables$Query$FindUserSearch(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$FindUserSearch) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$userSearchId = userSearchId;
    final lOther$userSearchId = other.userSearchId;
    if (l$userSearchId != lOther$userSearchId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$userSearchId = userSearchId;
    return Object.hashAll([l$userSearchId]);
  }
}

abstract class CopyWith$Variables$Query$FindUserSearch<TRes> {
  factory CopyWith$Variables$Query$FindUserSearch(
    Variables$Query$FindUserSearch instance,
    TRes Function(Variables$Query$FindUserSearch) then,
  ) = _CopyWithImpl$Variables$Query$FindUserSearch;

  factory CopyWith$Variables$Query$FindUserSearch.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$FindUserSearch;

  TRes call({String? userSearchId});
}

class _CopyWithImpl$Variables$Query$FindUserSearch<TRes>
    implements CopyWith$Variables$Query$FindUserSearch<TRes> {
  _CopyWithImpl$Variables$Query$FindUserSearch(
    this._instance,
    this._then,
  );

  final Variables$Query$FindUserSearch _instance;

  final TRes Function(Variables$Query$FindUserSearch) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? userSearchId = _undefined}) =>
      _then(Variables$Query$FindUserSearch._({
        ..._instance._$data,
        if (userSearchId != _undefined && userSearchId != null)
          'userSearchId': (userSearchId as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$FindUserSearch<TRes>
    implements CopyWith$Variables$Query$FindUserSearch<TRes> {
  _CopyWithStubImpl$Variables$Query$FindUserSearch(this._res);

  TRes _res;

  call({String? userSearchId}) => _res;
}

class Query$FindUserSearch {
  Query$FindUserSearch({
    required this.findUserSearchById,
    this.$__typename = 'Query',
  });

  factory Query$FindUserSearch.fromJson(Map<String, dynamic> json) {
    final l$findUserSearchById = json['findUserSearchById'];
    final l$$__typename = json['__typename'];
    return Query$FindUserSearch(
      findUserSearchById: Query$FindUserSearch$findUserSearchById.fromJson(
          (l$findUserSearchById as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$FindUserSearch$findUserSearchById findUserSearchById;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$findUserSearchById = findUserSearchById;
    _resultData['findUserSearchById'] = l$findUserSearchById.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$findUserSearchById = findUserSearchById;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$findUserSearchById,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FindUserSearch) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$findUserSearchById = findUserSearchById;
    final lOther$findUserSearchById = other.findUserSearchById;
    if (l$findUserSearchById != lOther$findUserSearchById) {
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

extension UtilityExtension$Query$FindUserSearch on Query$FindUserSearch {
  CopyWith$Query$FindUserSearch<Query$FindUserSearch> get copyWith =>
      CopyWith$Query$FindUserSearch(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FindUserSearch<TRes> {
  factory CopyWith$Query$FindUserSearch(
    Query$FindUserSearch instance,
    TRes Function(Query$FindUserSearch) then,
  ) = _CopyWithImpl$Query$FindUserSearch;

  factory CopyWith$Query$FindUserSearch.stub(TRes res) =
      _CopyWithStubImpl$Query$FindUserSearch;

  TRes call({
    Query$FindUserSearch$findUserSearchById? findUserSearchById,
    String? $__typename,
  });
  CopyWith$Query$FindUserSearch$findUserSearchById<TRes> get findUserSearchById;
}

class _CopyWithImpl$Query$FindUserSearch<TRes>
    implements CopyWith$Query$FindUserSearch<TRes> {
  _CopyWithImpl$Query$FindUserSearch(
    this._instance,
    this._then,
  );

  final Query$FindUserSearch _instance;

  final TRes Function(Query$FindUserSearch) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? findUserSearchById = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindUserSearch(
        findUserSearchById: findUserSearchById == _undefined ||
                findUserSearchById == null
            ? _instance.findUserSearchById
            : (findUserSearchById as Query$FindUserSearch$findUserSearchById),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$FindUserSearch$findUserSearchById<TRes>
      get findUserSearchById {
    final local$findUserSearchById = _instance.findUserSearchById;
    return CopyWith$Query$FindUserSearch$findUserSearchById(
        local$findUserSearchById, (e) => call(findUserSearchById: e));
  }
}

class _CopyWithStubImpl$Query$FindUserSearch<TRes>
    implements CopyWith$Query$FindUserSearch<TRes> {
  _CopyWithStubImpl$Query$FindUserSearch(this._res);

  TRes _res;

  call({
    Query$FindUserSearch$findUserSearchById? findUserSearchById,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$FindUserSearch$findUserSearchById<TRes>
      get findUserSearchById =>
          CopyWith$Query$FindUserSearch$findUserSearchById.stub(_res);
}

const documentNodeQueryFindUserSearch = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FindUserSearch'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'userSearchId')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'findUserSearchById'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'userSearchId'),
            value: VariableNode(name: NameNode(value: 'userSearchId')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'topFoundUsers'),
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
                    name: NameNode(value: 'textId'),
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
                name: NameNode(value: 'groupMemberships'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'groupIdent'),
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
                        name: NameNode(value: 'expertisesTextIds'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'industriesTextIds'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
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
                  InlineFragmentNode(
                    typeCondition: TypeConditionNode(
                        on: NamedTypeNode(
                      name: NameNode(value: 'MenteesGroupMembership'),
                      isNonNull: false,
                    )),
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'soughtExpertisesTextIds'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'industryTextId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
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
                    name: NameNode(value: 'name'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'companyStageTextId'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
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
                    name: NameNode(value: 'companyTypeTextId'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'companyType'),
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
            name: NameNode(value: 'runInfos'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'matchCount'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'topUserIds'),
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

class Query$FindUserSearch$findUserSearchById {
  Query$FindUserSearch$findUserSearchById({
    required this.topFoundUsers,
    this.runInfos,
    this.updatedAt,
    this.$__typename = 'UserSearch',
  });

  factory Query$FindUserSearch$findUserSearchById.fromJson(
      Map<String, dynamic> json) {
    final l$topFoundUsers = json['topFoundUsers'];
    final l$runInfos = json['runInfos'];
    final l$updatedAt = json['updatedAt'];
    final l$$__typename = json['__typename'];
    return Query$FindUserSearch$findUserSearchById(
      topFoundUsers: (l$topFoundUsers as List<dynamic>)
          .map((e) =>
              Query$FindUserSearch$findUserSearchById$topFoundUsers.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      runInfos: (l$runInfos as List<dynamic>?)
          ?.map((e) =>
              Query$FindUserSearch$findUserSearchById$runInfos.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      updatedAt:
          l$updatedAt == null ? null : DateTime.parse((l$updatedAt as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$FindUserSearch$findUserSearchById$topFoundUsers>
      topFoundUsers;

  final List<Query$FindUserSearch$findUserSearchById$runInfos>? runInfos;

  final DateTime? updatedAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$topFoundUsers = topFoundUsers;
    _resultData['topFoundUsers'] =
        l$topFoundUsers.map((e) => e.toJson()).toList();
    final l$runInfos = runInfos;
    _resultData['runInfos'] = l$runInfos?.map((e) => e.toJson()).toList();
    final l$updatedAt = updatedAt;
    _resultData['updatedAt'] = l$updatedAt?.toIso8601String();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$topFoundUsers = topFoundUsers;
    final l$runInfos = runInfos;
    final l$updatedAt = updatedAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$topFoundUsers.map((v) => v)),
      l$runInfos == null ? null : Object.hashAll(l$runInfos.map((v) => v)),
      l$updatedAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FindUserSearch$findUserSearchById) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$topFoundUsers = topFoundUsers;
    final lOther$topFoundUsers = other.topFoundUsers;
    if (l$topFoundUsers.length != lOther$topFoundUsers.length) {
      return false;
    }
    for (int i = 0; i < l$topFoundUsers.length; i++) {
      final l$topFoundUsers$entry = l$topFoundUsers[i];
      final lOther$topFoundUsers$entry = lOther$topFoundUsers[i];
      if (l$topFoundUsers$entry != lOther$topFoundUsers$entry) {
        return false;
      }
    }
    final l$runInfos = runInfos;
    final lOther$runInfos = other.runInfos;
    if (l$runInfos != null && lOther$runInfos != null) {
      if (l$runInfos.length != lOther$runInfos.length) {
        return false;
      }
      for (int i = 0; i < l$runInfos.length; i++) {
        final l$runInfos$entry = l$runInfos[i];
        final lOther$runInfos$entry = lOther$runInfos[i];
        if (l$runInfos$entry != lOther$runInfos$entry) {
          return false;
        }
      }
    } else if (l$runInfos != lOther$runInfos) {
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

extension UtilityExtension$Query$FindUserSearch$findUserSearchById
    on Query$FindUserSearch$findUserSearchById {
  CopyWith$Query$FindUserSearch$findUserSearchById<
          Query$FindUserSearch$findUserSearchById>
      get copyWith => CopyWith$Query$FindUserSearch$findUserSearchById(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindUserSearch$findUserSearchById<TRes> {
  factory CopyWith$Query$FindUserSearch$findUserSearchById(
    Query$FindUserSearch$findUserSearchById instance,
    TRes Function(Query$FindUserSearch$findUserSearchById) then,
  ) = _CopyWithImpl$Query$FindUserSearch$findUserSearchById;

  factory CopyWith$Query$FindUserSearch$findUserSearchById.stub(TRes res) =
      _CopyWithStubImpl$Query$FindUserSearch$findUserSearchById;

  TRes call({
    List<Query$FindUserSearch$findUserSearchById$topFoundUsers>? topFoundUsers,
    List<Query$FindUserSearch$findUserSearchById$runInfos>? runInfos,
    DateTime? updatedAt,
    String? $__typename,
  });
  TRes topFoundUsers(
      Iterable<Query$FindUserSearch$findUserSearchById$topFoundUsers> Function(
              Iterable<
                  CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers<
                      Query$FindUserSearch$findUserSearchById$topFoundUsers>>)
          _fn);
  TRes runInfos(
      Iterable<Query$FindUserSearch$findUserSearchById$runInfos>? Function(
              Iterable<
                  CopyWith$Query$FindUserSearch$findUserSearchById$runInfos<
                      Query$FindUserSearch$findUserSearchById$runInfos>>?)
          _fn);
}

class _CopyWithImpl$Query$FindUserSearch$findUserSearchById<TRes>
    implements CopyWith$Query$FindUserSearch$findUserSearchById<TRes> {
  _CopyWithImpl$Query$FindUserSearch$findUserSearchById(
    this._instance,
    this._then,
  );

  final Query$FindUserSearch$findUserSearchById _instance;

  final TRes Function(Query$FindUserSearch$findUserSearchById) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? topFoundUsers = _undefined,
    Object? runInfos = _undefined,
    Object? updatedAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindUserSearch$findUserSearchById(
        topFoundUsers: topFoundUsers == _undefined || topFoundUsers == null
            ? _instance.topFoundUsers
            : (topFoundUsers
                as List<Query$FindUserSearch$findUserSearchById$topFoundUsers>),
        runInfos: runInfos == _undefined
            ? _instance.runInfos
            : (runInfos
                as List<Query$FindUserSearch$findUserSearchById$runInfos>?),
        updatedAt: updatedAt == _undefined
            ? _instance.updatedAt
            : (updatedAt as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes topFoundUsers(
          Iterable<Query$FindUserSearch$findUserSearchById$topFoundUsers> Function(
                  Iterable<
                      CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers<
                          Query$FindUserSearch$findUserSearchById$topFoundUsers>>)
              _fn) =>
      call(
          topFoundUsers: _fn(_instance.topFoundUsers.map((e) =>
              CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers(
                e,
                (i) => i,
              ))).toList());
  TRes runInfos(
          Iterable<Query$FindUserSearch$findUserSearchById$runInfos>? Function(
                  Iterable<
                      CopyWith$Query$FindUserSearch$findUserSearchById$runInfos<
                          Query$FindUserSearch$findUserSearchById$runInfos>>?)
              _fn) =>
      call(
          runInfos: _fn(_instance.runInfos?.map(
              (e) => CopyWith$Query$FindUserSearch$findUserSearchById$runInfos(
                    e,
                    (i) => i,
                  )))?.toList());
}

class _CopyWithStubImpl$Query$FindUserSearch$findUserSearchById<TRes>
    implements CopyWith$Query$FindUserSearch$findUserSearchById<TRes> {
  _CopyWithStubImpl$Query$FindUserSearch$findUserSearchById(this._res);

  TRes _res;

  call({
    List<Query$FindUserSearch$findUserSearchById$topFoundUsers>? topFoundUsers,
    List<Query$FindUserSearch$findUserSearchById$runInfos>? runInfos,
    DateTime? updatedAt,
    String? $__typename,
  }) =>
      _res;
  topFoundUsers(_fn) => _res;
  runInfos(_fn) => _res;
}

class Query$FindUserSearch$findUserSearchById$topFoundUsers {
  Query$FindUserSearch$findUserSearchById$topFoundUsers({
    required this.id,
    this.email,
    this.firstName,
    this.lastName,
    this.fullName,
    this.avatarUrl,
    this.userHandle,
    this.countryOfResidence,
    required this.groupMemberships,
    required this.companies,
    this.$__typename = 'User',
  });

  factory Query$FindUserSearch$findUserSearchById$topFoundUsers.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$email = json['email'];
    final l$firstName = json['firstName'];
    final l$lastName = json['lastName'];
    final l$fullName = json['fullName'];
    final l$avatarUrl = json['avatarUrl'];
    final l$userHandle = json['userHandle'];
    final l$countryOfResidence = json['countryOfResidence'];
    final l$groupMemberships = json['groupMemberships'];
    final l$companies = json['companies'];
    final l$$__typename = json['__typename'];
    return Query$FindUserSearch$findUserSearchById$topFoundUsers(
      id: (l$id as String),
      email: (l$email as String?),
      firstName: (l$firstName as String?),
      lastName: (l$lastName as String?),
      fullName: (l$fullName as String?),
      avatarUrl: (l$avatarUrl as String?),
      userHandle: (l$userHandle as String?),
      countryOfResidence: l$countryOfResidence == null
          ? null
          : Query$FindUserSearch$findUserSearchById$topFoundUsers$countryOfResidence
              .fromJson((l$countryOfResidence as Map<String, dynamic>)),
      groupMemberships: (l$groupMemberships as List<dynamic>)
          .map((e) =>
              Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      companies: (l$companies as List<dynamic>)
          .map((e) =>
              Query$FindUserSearch$findUserSearchById$topFoundUsers$companies
                  .fromJson((e as Map<String, dynamic>)))
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

  final Query$FindUserSearch$findUserSearchById$topFoundUsers$countryOfResidence?
      countryOfResidence;

  final List<
          Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships>
      groupMemberships;

  final List<Query$FindUserSearch$findUserSearchById$topFoundUsers$companies>
      companies;

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
    final l$countryOfResidence = countryOfResidence;
    _resultData['countryOfResidence'] = l$countryOfResidence?.toJson();
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
    final l$countryOfResidence = countryOfResidence;
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
      l$countryOfResidence,
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
    if (!(other is Query$FindUserSearch$findUserSearchById$topFoundUsers) ||
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
    final l$countryOfResidence = countryOfResidence;
    final lOther$countryOfResidence = other.countryOfResidence;
    if (l$countryOfResidence != lOther$countryOfResidence) {
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

extension UtilityExtension$Query$FindUserSearch$findUserSearchById$topFoundUsers
    on Query$FindUserSearch$findUserSearchById$topFoundUsers {
  CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers<
          Query$FindUserSearch$findUserSearchById$topFoundUsers>
      get copyWith =>
          CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers<
    TRes> {
  factory CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers(
    Query$FindUserSearch$findUserSearchById$topFoundUsers instance,
    TRes Function(Query$FindUserSearch$findUserSearchById$topFoundUsers) then,
  ) = _CopyWithImpl$Query$FindUserSearch$findUserSearchById$topFoundUsers;

  factory CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindUserSearch$findUserSearchById$topFoundUsers;

  TRes call({
    String? id,
    String? email,
    String? firstName,
    String? lastName,
    String? fullName,
    String? avatarUrl,
    String? userHandle,
    Query$FindUserSearch$findUserSearchById$topFoundUsers$countryOfResidence?
        countryOfResidence,
    List<Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships>?
        groupMemberships,
    List<Query$FindUserSearch$findUserSearchById$topFoundUsers$companies>?
        companies,
    String? $__typename,
  });
  CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$countryOfResidence<
      TRes> get countryOfResidence;
  TRes groupMemberships(
      Iterable<Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships> Function(
              Iterable<
                  CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships<
                      Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships>>)
          _fn);
  TRes companies(
      Iterable<Query$FindUserSearch$findUserSearchById$topFoundUsers$companies> Function(
              Iterable<
                  CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$companies<
                      Query$FindUserSearch$findUserSearchById$topFoundUsers$companies>>)
          _fn);
}

class _CopyWithImpl$Query$FindUserSearch$findUserSearchById$topFoundUsers<TRes>
    implements
        CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers<TRes> {
  _CopyWithImpl$Query$FindUserSearch$findUserSearchById$topFoundUsers(
    this._instance,
    this._then,
  );

  final Query$FindUserSearch$findUserSearchById$topFoundUsers _instance;

  final TRes Function(Query$FindUserSearch$findUserSearchById$topFoundUsers)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? email = _undefined,
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? fullName = _undefined,
    Object? avatarUrl = _undefined,
    Object? userHandle = _undefined,
    Object? countryOfResidence = _undefined,
    Object? groupMemberships = _undefined,
    Object? companies = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindUserSearch$findUserSearchById$topFoundUsers(
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
        countryOfResidence: countryOfResidence == _undefined
            ? _instance.countryOfResidence
            : (countryOfResidence
                as Query$FindUserSearch$findUserSearchById$topFoundUsers$countryOfResidence?),
        groupMemberships: groupMemberships == _undefined ||
                groupMemberships == null
            ? _instance.groupMemberships
            : (groupMemberships as List<
                Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships>),
        companies: companies == _undefined || companies == null
            ? _instance.companies
            : (companies as List<
                Query$FindUserSearch$findUserSearchById$topFoundUsers$companies>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$countryOfResidence<
      TRes> get countryOfResidence {
    final local$countryOfResidence = _instance.countryOfResidence;
    return local$countryOfResidence == null
        ? CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$countryOfResidence
            .stub(_then(_instance))
        : CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$countryOfResidence(
            local$countryOfResidence, (e) => call(countryOfResidence: e));
  }

  TRes groupMemberships(
          Iterable<Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships> Function(
                  Iterable<
                      CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships<
                          Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships>>)
              _fn) =>
      call(
          groupMemberships: _fn(_instance.groupMemberships.map((e) =>
              CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships(
                e,
                (i) => i,
              ))).toList());
  TRes companies(
          Iterable<Query$FindUserSearch$findUserSearchById$topFoundUsers$companies> Function(
                  Iterable<
                      CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$companies<
                          Query$FindUserSearch$findUserSearchById$topFoundUsers$companies>>)
              _fn) =>
      call(
          companies: _fn(_instance.companies.map((e) =>
              CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$companies(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$FindUserSearch$findUserSearchById$topFoundUsers<
        TRes>
    implements
        CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers<TRes> {
  _CopyWithStubImpl$Query$FindUserSearch$findUserSearchById$topFoundUsers(
      this._res);

  TRes _res;

  call({
    String? id,
    String? email,
    String? firstName,
    String? lastName,
    String? fullName,
    String? avatarUrl,
    String? userHandle,
    Query$FindUserSearch$findUserSearchById$topFoundUsers$countryOfResidence?
        countryOfResidence,
    List<Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships>?
        groupMemberships,
    List<Query$FindUserSearch$findUserSearchById$topFoundUsers$companies>?
        companies,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$countryOfResidence<
          TRes>
      get countryOfResidence =>
          CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$countryOfResidence
              .stub(_res);
  groupMemberships(_fn) => _res;
  companies(_fn) => _res;
}

class Query$FindUserSearch$findUserSearchById$topFoundUsers$countryOfResidence {
  Query$FindUserSearch$findUserSearchById$topFoundUsers$countryOfResidence({
    this.translatedValue,
    required this.textId,
    this.$__typename = 'Country',
  });

  factory Query$FindUserSearch$findUserSearchById$topFoundUsers$countryOfResidence.fromJson(
      Map<String, dynamic> json) {
    final l$translatedValue = json['translatedValue'];
    final l$textId = json['textId'];
    final l$$__typename = json['__typename'];
    return Query$FindUserSearch$findUserSearchById$topFoundUsers$countryOfResidence(
      translatedValue: (l$translatedValue as String?),
      textId: (l$textId as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String? translatedValue;

  final String textId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$translatedValue = translatedValue;
    _resultData['translatedValue'] = l$translatedValue;
    final l$textId = textId;
    _resultData['textId'] = l$textId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$translatedValue = translatedValue;
    final l$textId = textId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$translatedValue,
      l$textId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$FindUserSearch$findUserSearchById$topFoundUsers$countryOfResidence) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$translatedValue = translatedValue;
    final lOther$translatedValue = other.translatedValue;
    if (l$translatedValue != lOther$translatedValue) {
      return false;
    }
    final l$textId = textId;
    final lOther$textId = other.textId;
    if (l$textId != lOther$textId) {
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

extension UtilityExtension$Query$FindUserSearch$findUserSearchById$topFoundUsers$countryOfResidence
    on Query$FindUserSearch$findUserSearchById$topFoundUsers$countryOfResidence {
  CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$countryOfResidence<
          Query$FindUserSearch$findUserSearchById$topFoundUsers$countryOfResidence>
      get copyWith =>
          CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$countryOfResidence(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$countryOfResidence<
    TRes> {
  factory CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$countryOfResidence(
    Query$FindUserSearch$findUserSearchById$topFoundUsers$countryOfResidence
        instance,
    TRes Function(
            Query$FindUserSearch$findUserSearchById$topFoundUsers$countryOfResidence)
        then,
  ) = _CopyWithImpl$Query$FindUserSearch$findUserSearchById$topFoundUsers$countryOfResidence;

  factory CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$countryOfResidence.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindUserSearch$findUserSearchById$topFoundUsers$countryOfResidence;

  TRes call({
    String? translatedValue,
    String? textId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindUserSearch$findUserSearchById$topFoundUsers$countryOfResidence<
        TRes>
    implements
        CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$countryOfResidence<
            TRes> {
  _CopyWithImpl$Query$FindUserSearch$findUserSearchById$topFoundUsers$countryOfResidence(
    this._instance,
    this._then,
  );

  final Query$FindUserSearch$findUserSearchById$topFoundUsers$countryOfResidence
      _instance;

  final TRes Function(
          Query$FindUserSearch$findUserSearchById$topFoundUsers$countryOfResidence)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? translatedValue = _undefined,
    Object? textId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$FindUserSearch$findUserSearchById$topFoundUsers$countryOfResidence(
        translatedValue: translatedValue == _undefined
            ? _instance.translatedValue
            : (translatedValue as String?),
        textId: textId == _undefined || textId == null
            ? _instance.textId
            : (textId as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FindUserSearch$findUserSearchById$topFoundUsers$countryOfResidence<
        TRes>
    implements
        CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$countryOfResidence<
            TRes> {
  _CopyWithStubImpl$Query$FindUserSearch$findUserSearchById$topFoundUsers$countryOfResidence(
      this._res);

  TRes _res;

  call({
    String? translatedValue,
    String? textId,
    String? $__typename,
  }) =>
      _res;
}

class Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships {
  Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships({
    required this.groupIdent,
    required this.$__typename,
  });

  factory Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships.fromJson(
      Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "MentorsGroupMembership":
        return Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership
            .fromJson(json);

      case "MenteesGroupMembership":
        return Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership
            .fromJson(json);

      case "GroupMembership":
        return Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$GroupMembership
            .fromJson(json);

      default:
        final l$groupIdent = json['groupIdent'];
        final l$$__typename = json['__typename'];
        return Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships(
          groupIdent: (l$groupIdent as String),
          $__typename: (l$$__typename as String),
        );
    }
  }

  final String groupIdent;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$groupIdent = groupIdent;
    _resultData['groupIdent'] = l$groupIdent;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$groupIdent = groupIdent;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$groupIdent,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$groupIdent = groupIdent;
    final lOther$groupIdent = other.groupIdent;
    if (l$groupIdent != lOther$groupIdent) {
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

extension UtilityExtension$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships
    on Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships {
  CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships<
          Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships>
      get copyWith =>
          CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships(
            this,
            (i) => i,
          );
  _T when<_T>({
    required _T Function(
            Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership)
        mentorsGroupMembership,
    required _T Function(
            Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership)
        menteesGroupMembership,
    required _T Function(
            Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$GroupMembership)
        groupMembership,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "MentorsGroupMembership":
        return mentorsGroupMembership(this
            as Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership);

      case "MenteesGroupMembership":
        return menteesGroupMembership(this
            as Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership);

      case "GroupMembership":
        return groupMembership(this
            as Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$GroupMembership);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(
            Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership)?
        mentorsGroupMembership,
    _T Function(
            Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership)?
        menteesGroupMembership,
    _T Function(
            Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$GroupMembership)?
        groupMembership,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "MentorsGroupMembership":
        if (mentorsGroupMembership != null) {
          return mentorsGroupMembership(this
              as Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership);
        } else {
          return orElse();
        }

      case "MenteesGroupMembership":
        if (menteesGroupMembership != null) {
          return menteesGroupMembership(this
              as Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership);
        } else {
          return orElse();
        }

      case "GroupMembership":
        if (groupMembership != null) {
          return groupMembership(this
              as Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$GroupMembership);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships<
    TRes> {
  factory CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships(
    Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships
        instance,
    TRes Function(
            Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships)
        then,
  ) = _CopyWithImpl$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships;

  factory CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships;

  TRes call({
    String? groupIdent,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships<
        TRes>
    implements
        CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships<
            TRes> {
  _CopyWithImpl$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships(
    this._instance,
    this._then,
  );

  final Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships
      _instance;

  final TRes Function(
          Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? groupIdent = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships(
        groupIdent: groupIdent == _undefined || groupIdent == null
            ? _instance.groupIdent
            : (groupIdent as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships<
        TRes>
    implements
        CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships<
            TRes> {
  _CopyWithStubImpl$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships(
      this._res);

  TRes _res;

  call({
    String? groupIdent,
    String? $__typename,
  }) =>
      _res;
}

class Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership
    implements
        Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships {
  Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership({
    this.expertisesTextIds,
    this.industriesTextIds,
    required this.expertises,
    required this.industries,
    this.endorsements,
    this.$__typename = 'MentorsGroupMembership',
    required this.groupIdent,
  });

  factory Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership.fromJson(
      Map<String, dynamic> json) {
    final l$expertisesTextIds = json['expertisesTextIds'];
    final l$industriesTextIds = json['industriesTextIds'];
    final l$expertises = json['expertises'];
    final l$industries = json['industries'];
    final l$endorsements = json['endorsements'];
    final l$$__typename = json['__typename'];
    final l$groupIdent = json['groupIdent'];
    return Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership(
      expertisesTextIds: (l$expertisesTextIds as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList(),
      industriesTextIds: (l$industriesTextIds as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList(),
      expertises: (l$expertises as List<dynamic>)
          .map((e) =>
              Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership$expertises
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      industries: (l$industries as List<dynamic>)
          .map((e) =>
              Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership$industries
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      endorsements: (l$endorsements as int?),
      $__typename: (l$$__typename as String),
      groupIdent: (l$groupIdent as String),
    );
  }

  final List<String>? expertisesTextIds;

  final List<String>? industriesTextIds;

  final List<
          Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership$expertises>
      expertises;

  final List<
          Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership$industries>
      industries;

  final int? endorsements;

  final String $__typename;

  final String groupIdent;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$expertisesTextIds = expertisesTextIds;
    _resultData['expertisesTextIds'] =
        l$expertisesTextIds?.map((e) => e).toList();
    final l$industriesTextIds = industriesTextIds;
    _resultData['industriesTextIds'] =
        l$industriesTextIds?.map((e) => e).toList();
    final l$expertises = expertises;
    _resultData['expertises'] = l$expertises.map((e) => e.toJson()).toList();
    final l$industries = industries;
    _resultData['industries'] = l$industries.map((e) => e.toJson()).toList();
    final l$endorsements = endorsements;
    _resultData['endorsements'] = l$endorsements;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$groupIdent = groupIdent;
    _resultData['groupIdent'] = l$groupIdent;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$expertisesTextIds = expertisesTextIds;
    final l$industriesTextIds = industriesTextIds;
    final l$expertises = expertises;
    final l$industries = industries;
    final l$endorsements = endorsements;
    final l$$__typename = $__typename;
    final l$groupIdent = groupIdent;
    return Object.hashAll([
      l$expertisesTextIds == null
          ? null
          : Object.hashAll(l$expertisesTextIds.map((v) => v)),
      l$industriesTextIds == null
          ? null
          : Object.hashAll(l$industriesTextIds.map((v) => v)),
      Object.hashAll(l$expertises.map((v) => v)),
      Object.hashAll(l$industries.map((v) => v)),
      l$endorsements,
      l$$__typename,
      l$groupIdent,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$expertisesTextIds = expertisesTextIds;
    final lOther$expertisesTextIds = other.expertisesTextIds;
    if (l$expertisesTextIds != null && lOther$expertisesTextIds != null) {
      if (l$expertisesTextIds.length != lOther$expertisesTextIds.length) {
        return false;
      }
      for (int i = 0; i < l$expertisesTextIds.length; i++) {
        final l$expertisesTextIds$entry = l$expertisesTextIds[i];
        final lOther$expertisesTextIds$entry = lOther$expertisesTextIds[i];
        if (l$expertisesTextIds$entry != lOther$expertisesTextIds$entry) {
          return false;
        }
      }
    } else if (l$expertisesTextIds != lOther$expertisesTextIds) {
      return false;
    }
    final l$industriesTextIds = industriesTextIds;
    final lOther$industriesTextIds = other.industriesTextIds;
    if (l$industriesTextIds != null && lOther$industriesTextIds != null) {
      if (l$industriesTextIds.length != lOther$industriesTextIds.length) {
        return false;
      }
      for (int i = 0; i < l$industriesTextIds.length; i++) {
        final l$industriesTextIds$entry = l$industriesTextIds[i];
        final lOther$industriesTextIds$entry = lOther$industriesTextIds[i];
        if (l$industriesTextIds$entry != lOther$industriesTextIds$entry) {
          return false;
        }
      }
    } else if (l$industriesTextIds != lOther$industriesTextIds) {
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
    final l$groupIdent = groupIdent;
    final lOther$groupIdent = other.groupIdent;
    if (l$groupIdent != lOther$groupIdent) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership
    on Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership {
  CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership<
          Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership>
      get copyWith =>
          CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership<
    TRes> {
  factory CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership(
    Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership
        instance,
    TRes Function(
            Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership)
        then,
  ) = _CopyWithImpl$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership;

  factory CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership;

  TRes call({
    List<String>? expertisesTextIds,
    List<String>? industriesTextIds,
    List<Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership$expertises>?
        expertises,
    List<Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership$industries>?
        industries,
    int? endorsements,
    String? $__typename,
    String? groupIdent,
  });
  TRes expertises(
      Iterable<Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership$expertises> Function(
              Iterable<
                  CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership$expertises<
                      Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership$expertises>>)
          _fn);
  TRes industries(
      Iterable<Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership$industries> Function(
              Iterable<
                  CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership$industries<
                      Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership$industries>>)
          _fn);
}

class _CopyWithImpl$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership<
        TRes>
    implements
        CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership<
            TRes> {
  _CopyWithImpl$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership(
    this._instance,
    this._then,
  );

  final Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership
      _instance;

  final TRes Function(
          Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? expertisesTextIds = _undefined,
    Object? industriesTextIds = _undefined,
    Object? expertises = _undefined,
    Object? industries = _undefined,
    Object? endorsements = _undefined,
    Object? $__typename = _undefined,
    Object? groupIdent = _undefined,
  }) =>
      _then(
          Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership(
        expertisesTextIds: expertisesTextIds == _undefined
            ? _instance.expertisesTextIds
            : (expertisesTextIds as List<String>?),
        industriesTextIds: industriesTextIds == _undefined
            ? _instance.industriesTextIds
            : (industriesTextIds as List<String>?),
        expertises: expertises == _undefined || expertises == null
            ? _instance.expertises
            : (expertises as List<
                Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership$expertises>),
        industries: industries == _undefined || industries == null
            ? _instance.industries
            : (industries as List<
                Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership$industries>),
        endorsements: endorsements == _undefined
            ? _instance.endorsements
            : (endorsements as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        groupIdent: groupIdent == _undefined || groupIdent == null
            ? _instance.groupIdent
            : (groupIdent as String),
      ));
  TRes expertises(
          Iterable<Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership$expertises> Function(
                  Iterable<
                      CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership$expertises<
                          Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership$expertises>>)
              _fn) =>
      call(
          expertises: _fn(_instance.expertises.map((e) =>
              CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership$expertises(
                e,
                (i) => i,
              ))).toList());
  TRes industries(
          Iterable<Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership$industries> Function(
                  Iterable<
                      CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership$industries<
                          Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership$industries>>)
              _fn) =>
      call(
          industries: _fn(_instance.industries.map((e) =>
              CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership$industries(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership<
        TRes>
    implements
        CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership<
            TRes> {
  _CopyWithStubImpl$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership(
      this._res);

  TRes _res;

  call({
    List<String>? expertisesTextIds,
    List<String>? industriesTextIds,
    List<Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership$expertises>?
        expertises,
    List<Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership$industries>?
        industries,
    int? endorsements,
    String? $__typename,
    String? groupIdent,
  }) =>
      _res;
  expertises(_fn) => _res;
  industries(_fn) => _res;
}

class Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership$expertises {
  Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership$expertises({
    this.translatedValue,
    this.$__typename = 'Expertise',
  });

  factory Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership$expertises.fromJson(
      Map<String, dynamic> json) {
    final l$translatedValue = json['translatedValue'];
    final l$$__typename = json['__typename'];
    return Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership$expertises(
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
            is Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership$expertises) ||
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

extension UtilityExtension$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership$expertises
    on Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership$expertises {
  CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership$expertises<
          Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership$expertises>
      get copyWith =>
          CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership$expertises(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership$expertises<
    TRes> {
  factory CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership$expertises(
    Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership$expertises
        instance,
    TRes Function(
            Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership$expertises)
        then,
  ) = _CopyWithImpl$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership$expertises;

  factory CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership$expertises.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership$expertises;

  TRes call({
    String? translatedValue,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership$expertises<
        TRes>
    implements
        CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership$expertises<
            TRes> {
  _CopyWithImpl$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership$expertises(
    this._instance,
    this._then,
  );

  final Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership$expertises
      _instance;

  final TRes Function(
          Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership$expertises)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? translatedValue = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership$expertises(
        translatedValue: translatedValue == _undefined
            ? _instance.translatedValue
            : (translatedValue as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership$expertises<
        TRes>
    implements
        CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership$expertises<
            TRes> {
  _CopyWithStubImpl$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership$expertises(
      this._res);

  TRes _res;

  call({
    String? translatedValue,
    String? $__typename,
  }) =>
      _res;
}

class Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership$industries {
  Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership$industries({
    this.translatedValue,
    this.$__typename = 'Industry',
  });

  factory Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership$industries.fromJson(
      Map<String, dynamic> json) {
    final l$translatedValue = json['translatedValue'];
    final l$$__typename = json['__typename'];
    return Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership$industries(
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
            is Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership$industries) ||
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

extension UtilityExtension$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership$industries
    on Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership$industries {
  CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership$industries<
          Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership$industries>
      get copyWith =>
          CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership$industries(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership$industries<
    TRes> {
  factory CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership$industries(
    Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership$industries
        instance,
    TRes Function(
            Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership$industries)
        then,
  ) = _CopyWithImpl$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership$industries;

  factory CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership$industries.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership$industries;

  TRes call({
    String? translatedValue,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership$industries<
        TRes>
    implements
        CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership$industries<
            TRes> {
  _CopyWithImpl$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership$industries(
    this._instance,
    this._then,
  );

  final Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership$industries
      _instance;

  final TRes Function(
          Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership$industries)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? translatedValue = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership$industries(
        translatedValue: translatedValue == _undefined
            ? _instance.translatedValue
            : (translatedValue as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership$industries<
        TRes>
    implements
        CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership$industries<
            TRes> {
  _CopyWithStubImpl$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MentorsGroupMembership$industries(
      this._res);

  TRes _res;

  call({
    String? translatedValue,
    String? $__typename,
  }) =>
      _res;
}

class Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership
    implements
        Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships {
  Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership({
    this.soughtExpertisesTextIds,
    this.industryTextId,
    required this.soughtExpertises,
    this.industry,
    this.$__typename = 'MenteesGroupMembership',
    required this.groupIdent,
  });

  factory Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership.fromJson(
      Map<String, dynamic> json) {
    final l$soughtExpertisesTextIds = json['soughtExpertisesTextIds'];
    final l$industryTextId = json['industryTextId'];
    final l$soughtExpertises = json['soughtExpertises'];
    final l$industry = json['industry'];
    final l$$__typename = json['__typename'];
    final l$groupIdent = json['groupIdent'];
    return Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership(
      soughtExpertisesTextIds: (l$soughtExpertisesTextIds as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList(),
      industryTextId: (l$industryTextId as String?),
      soughtExpertises: (l$soughtExpertises as List<dynamic>)
          .map((e) =>
              Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      industry: l$industry == null
          ? null
          : Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership$industry
              .fromJson((l$industry as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
      groupIdent: (l$groupIdent as String),
    );
  }

  final List<String>? soughtExpertisesTextIds;

  final String? industryTextId;

  final List<
          Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises>
      soughtExpertises;

  final Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership$industry?
      industry;

  final String $__typename;

  final String groupIdent;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$soughtExpertisesTextIds = soughtExpertisesTextIds;
    _resultData['soughtExpertisesTextIds'] =
        l$soughtExpertisesTextIds?.map((e) => e).toList();
    final l$industryTextId = industryTextId;
    _resultData['industryTextId'] = l$industryTextId;
    final l$soughtExpertises = soughtExpertises;
    _resultData['soughtExpertises'] =
        l$soughtExpertises.map((e) => e.toJson()).toList();
    final l$industry = industry;
    _resultData['industry'] = l$industry?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$groupIdent = groupIdent;
    _resultData['groupIdent'] = l$groupIdent;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$soughtExpertisesTextIds = soughtExpertisesTextIds;
    final l$industryTextId = industryTextId;
    final l$soughtExpertises = soughtExpertises;
    final l$industry = industry;
    final l$$__typename = $__typename;
    final l$groupIdent = groupIdent;
    return Object.hashAll([
      l$soughtExpertisesTextIds == null
          ? null
          : Object.hashAll(l$soughtExpertisesTextIds.map((v) => v)),
      l$industryTextId,
      Object.hashAll(l$soughtExpertises.map((v) => v)),
      l$industry,
      l$$__typename,
      l$groupIdent,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$soughtExpertisesTextIds = soughtExpertisesTextIds;
    final lOther$soughtExpertisesTextIds = other.soughtExpertisesTextIds;
    if (l$soughtExpertisesTextIds != null &&
        lOther$soughtExpertisesTextIds != null) {
      if (l$soughtExpertisesTextIds.length !=
          lOther$soughtExpertisesTextIds.length) {
        return false;
      }
      for (int i = 0; i < l$soughtExpertisesTextIds.length; i++) {
        final l$soughtExpertisesTextIds$entry = l$soughtExpertisesTextIds[i];
        final lOther$soughtExpertisesTextIds$entry =
            lOther$soughtExpertisesTextIds[i];
        if (l$soughtExpertisesTextIds$entry !=
            lOther$soughtExpertisesTextIds$entry) {
          return false;
        }
      }
    } else if (l$soughtExpertisesTextIds != lOther$soughtExpertisesTextIds) {
      return false;
    }
    final l$industryTextId = industryTextId;
    final lOther$industryTextId = other.industryTextId;
    if (l$industryTextId != lOther$industryTextId) {
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
    final l$groupIdent = groupIdent;
    final lOther$groupIdent = other.groupIdent;
    if (l$groupIdent != lOther$groupIdent) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership
    on Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership {
  CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership<
          Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership>
      get copyWith =>
          CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership<
    TRes> {
  factory CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership(
    Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership
        instance,
    TRes Function(
            Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership)
        then,
  ) = _CopyWithImpl$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership;

  factory CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership;

  TRes call({
    List<String>? soughtExpertisesTextIds,
    String? industryTextId,
    List<Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises>?
        soughtExpertises,
    Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership$industry?
        industry,
    String? $__typename,
    String? groupIdent,
  });
  TRes soughtExpertises(
      Iterable<Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises> Function(
              Iterable<
                  CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises<
                      Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises>>)
          _fn);
  CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership$industry<
      TRes> get industry;
}

class _CopyWithImpl$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership<
        TRes>
    implements
        CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership<
            TRes> {
  _CopyWithImpl$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership(
    this._instance,
    this._then,
  );

  final Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership
      _instance;

  final TRes Function(
          Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? soughtExpertisesTextIds = _undefined,
    Object? industryTextId = _undefined,
    Object? soughtExpertises = _undefined,
    Object? industry = _undefined,
    Object? $__typename = _undefined,
    Object? groupIdent = _undefined,
  }) =>
      _then(
          Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership(
        soughtExpertisesTextIds: soughtExpertisesTextIds == _undefined
            ? _instance.soughtExpertisesTextIds
            : (soughtExpertisesTextIds as List<String>?),
        industryTextId: industryTextId == _undefined
            ? _instance.industryTextId
            : (industryTextId as String?),
        soughtExpertises: soughtExpertises == _undefined ||
                soughtExpertises == null
            ? _instance.soughtExpertises
            : (soughtExpertises as List<
                Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises>),
        industry: industry == _undefined
            ? _instance.industry
            : (industry
                as Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership$industry?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        groupIdent: groupIdent == _undefined || groupIdent == null
            ? _instance.groupIdent
            : (groupIdent as String),
      ));
  TRes soughtExpertises(
          Iterable<Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises> Function(
                  Iterable<
                      CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises<
                          Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises>>)
              _fn) =>
      call(
          soughtExpertises: _fn(_instance.soughtExpertises.map((e) =>
              CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises(
                e,
                (i) => i,
              ))).toList());
  CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership$industry<
      TRes> get industry {
    final local$industry = _instance.industry;
    return local$industry == null
        ? CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership$industry
            .stub(_then(_instance))
        : CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership$industry(
            local$industry, (e) => call(industry: e));
  }
}

class _CopyWithStubImpl$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership<
        TRes>
    implements
        CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership<
            TRes> {
  _CopyWithStubImpl$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership(
      this._res);

  TRes _res;

  call({
    List<String>? soughtExpertisesTextIds,
    String? industryTextId,
    List<Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises>?
        soughtExpertises,
    Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership$industry?
        industry,
    String? $__typename,
    String? groupIdent,
  }) =>
      _res;
  soughtExpertises(_fn) => _res;
  CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership$industry<
          TRes>
      get industry =>
          CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership$industry
              .stub(_res);
}

class Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises {
  Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises({
    this.translatedValue,
    this.$__typename = 'Expertise',
  });

  factory Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises.fromJson(
      Map<String, dynamic> json) {
    final l$translatedValue = json['translatedValue'];
    final l$$__typename = json['__typename'];
    return Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises(
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
            is Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises) ||
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

extension UtilityExtension$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises
    on Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises {
  CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises<
          Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises>
      get copyWith =>
          CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises<
    TRes> {
  factory CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises(
    Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises
        instance,
    TRes Function(
            Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises)
        then,
  ) = _CopyWithImpl$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises;

  factory CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises;

  TRes call({
    String? translatedValue,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises<
        TRes>
    implements
        CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises<
            TRes> {
  _CopyWithImpl$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises(
    this._instance,
    this._then,
  );

  final Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises
      _instance;

  final TRes Function(
          Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? translatedValue = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises(
        translatedValue: translatedValue == _undefined
            ? _instance.translatedValue
            : (translatedValue as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises<
        TRes>
    implements
        CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises<
            TRes> {
  _CopyWithStubImpl$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises(
      this._res);

  TRes _res;

  call({
    String? translatedValue,
    String? $__typename,
  }) =>
      _res;
}

class Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership$industry {
  Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership$industry({
    this.translatedValue,
    this.$__typename = 'Industry',
  });

  factory Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership$industry.fromJson(
      Map<String, dynamic> json) {
    final l$translatedValue = json['translatedValue'];
    final l$$__typename = json['__typename'];
    return Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership$industry(
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
            is Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership$industry) ||
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

extension UtilityExtension$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership$industry
    on Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership$industry {
  CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership$industry<
          Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership$industry>
      get copyWith =>
          CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership$industry(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership$industry<
    TRes> {
  factory CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership$industry(
    Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership$industry
        instance,
    TRes Function(
            Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership$industry)
        then,
  ) = _CopyWithImpl$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership$industry;

  factory CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership$industry.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership$industry;

  TRes call({
    String? translatedValue,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership$industry<
        TRes>
    implements
        CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership$industry<
            TRes> {
  _CopyWithImpl$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership$industry(
    this._instance,
    this._then,
  );

  final Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership$industry
      _instance;

  final TRes Function(
          Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership$industry)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? translatedValue = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership$industry(
        translatedValue: translatedValue == _undefined
            ? _instance.translatedValue
            : (translatedValue as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership$industry<
        TRes>
    implements
        CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership$industry<
            TRes> {
  _CopyWithStubImpl$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$MenteesGroupMembership$industry(
      this._res);

  TRes _res;

  call({
    String? translatedValue,
    String? $__typename,
  }) =>
      _res;
}

class Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$GroupMembership
    implements
        Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships {
  Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$GroupMembership({
    required this.groupIdent,
    this.$__typename = 'GroupMembership',
  });

  factory Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$GroupMembership.fromJson(
      Map<String, dynamic> json) {
    final l$groupIdent = json['groupIdent'];
    final l$$__typename = json['__typename'];
    return Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$GroupMembership(
      groupIdent: (l$groupIdent as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String groupIdent;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$groupIdent = groupIdent;
    _resultData['groupIdent'] = l$groupIdent;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$groupIdent = groupIdent;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$groupIdent,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$GroupMembership) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$groupIdent = groupIdent;
    final lOther$groupIdent = other.groupIdent;
    if (l$groupIdent != lOther$groupIdent) {
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

extension UtilityExtension$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$GroupMembership
    on Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$GroupMembership {
  CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$GroupMembership<
          Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$GroupMembership>
      get copyWith =>
          CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$GroupMembership(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$GroupMembership<
    TRes> {
  factory CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$GroupMembership(
    Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$GroupMembership
        instance,
    TRes Function(
            Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$GroupMembership)
        then,
  ) = _CopyWithImpl$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$GroupMembership;

  factory CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$GroupMembership.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$GroupMembership;

  TRes call({
    String? groupIdent,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$GroupMembership<
        TRes>
    implements
        CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$GroupMembership<
            TRes> {
  _CopyWithImpl$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$GroupMembership(
    this._instance,
    this._then,
  );

  final Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$GroupMembership
      _instance;

  final TRes Function(
          Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$GroupMembership)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? groupIdent = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$GroupMembership(
        groupIdent: groupIdent == _undefined || groupIdent == null
            ? _instance.groupIdent
            : (groupIdent as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$GroupMembership<
        TRes>
    implements
        CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$GroupMembership<
            TRes> {
  _CopyWithStubImpl$Query$FindUserSearch$findUserSearchById$topFoundUsers$groupMemberships$$GroupMembership(
      this._res);

  TRes _res;

  call({
    String? groupIdent,
    String? $__typename,
  }) =>
      _res;
}

class Query$FindUserSearch$findUserSearchById$topFoundUsers$companies {
  Query$FindUserSearch$findUserSearchById$topFoundUsers$companies({
    required this.name,
    this.companyStageTextId,
    this.companyStage,
    this.companyTypeTextId,
    this.companyType,
    this.$__typename = 'Company',
  });

  factory Query$FindUserSearch$findUserSearchById$topFoundUsers$companies.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$companyStageTextId = json['companyStageTextId'];
    final l$companyStage = json['companyStage'];
    final l$companyTypeTextId = json['companyTypeTextId'];
    final l$companyType = json['companyType'];
    final l$$__typename = json['__typename'];
    return Query$FindUserSearch$findUserSearchById$topFoundUsers$companies(
      name: (l$name as String),
      companyStageTextId: (l$companyStageTextId as String?),
      companyStage: l$companyStage == null
          ? null
          : Query$FindUserSearch$findUserSearchById$topFoundUsers$companies$companyStage
              .fromJson((l$companyStage as Map<String, dynamic>)),
      companyTypeTextId: (l$companyTypeTextId as String?),
      companyType: l$companyType == null
          ? null
          : Query$FindUserSearch$findUserSearchById$topFoundUsers$companies$companyType
              .fromJson((l$companyType as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String? companyStageTextId;

  final Query$FindUserSearch$findUserSearchById$topFoundUsers$companies$companyStage?
      companyStage;

  final String? companyTypeTextId;

  final Query$FindUserSearch$findUserSearchById$topFoundUsers$companies$companyType?
      companyType;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$companyStageTextId = companyStageTextId;
    _resultData['companyStageTextId'] = l$companyStageTextId;
    final l$companyStage = companyStage;
    _resultData['companyStage'] = l$companyStage?.toJson();
    final l$companyTypeTextId = companyTypeTextId;
    _resultData['companyTypeTextId'] = l$companyTypeTextId;
    final l$companyType = companyType;
    _resultData['companyType'] = l$companyType?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$companyStageTextId = companyStageTextId;
    final l$companyStage = companyStage;
    final l$companyTypeTextId = companyTypeTextId;
    final l$companyType = companyType;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$companyStageTextId,
      l$companyStage,
      l$companyTypeTextId,
      l$companyType,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$FindUserSearch$findUserSearchById$topFoundUsers$companies) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$companyStageTextId = companyStageTextId;
    final lOther$companyStageTextId = other.companyStageTextId;
    if (l$companyStageTextId != lOther$companyStageTextId) {
      return false;
    }
    final l$companyStage = companyStage;
    final lOther$companyStage = other.companyStage;
    if (l$companyStage != lOther$companyStage) {
      return false;
    }
    final l$companyTypeTextId = companyTypeTextId;
    final lOther$companyTypeTextId = other.companyTypeTextId;
    if (l$companyTypeTextId != lOther$companyTypeTextId) {
      return false;
    }
    final l$companyType = companyType;
    final lOther$companyType = other.companyType;
    if (l$companyType != lOther$companyType) {
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

extension UtilityExtension$Query$FindUserSearch$findUserSearchById$topFoundUsers$companies
    on Query$FindUserSearch$findUserSearchById$topFoundUsers$companies {
  CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$companies<
          Query$FindUserSearch$findUserSearchById$topFoundUsers$companies>
      get copyWith =>
          CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$companies(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$companies<
    TRes> {
  factory CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$companies(
    Query$FindUserSearch$findUserSearchById$topFoundUsers$companies instance,
    TRes Function(
            Query$FindUserSearch$findUserSearchById$topFoundUsers$companies)
        then,
  ) = _CopyWithImpl$Query$FindUserSearch$findUserSearchById$topFoundUsers$companies;

  factory CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$companies.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindUserSearch$findUserSearchById$topFoundUsers$companies;

  TRes call({
    String? name,
    String? companyStageTextId,
    Query$FindUserSearch$findUserSearchById$topFoundUsers$companies$companyStage?
        companyStage,
    String? companyTypeTextId,
    Query$FindUserSearch$findUserSearchById$topFoundUsers$companies$companyType?
        companyType,
    String? $__typename,
  });
  CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$companies$companyStage<
      TRes> get companyStage;
  CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$companies$companyType<
      TRes> get companyType;
}

class _CopyWithImpl$Query$FindUserSearch$findUserSearchById$topFoundUsers$companies<
        TRes>
    implements
        CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$companies<
            TRes> {
  _CopyWithImpl$Query$FindUserSearch$findUserSearchById$topFoundUsers$companies(
    this._instance,
    this._then,
  );

  final Query$FindUserSearch$findUserSearchById$topFoundUsers$companies
      _instance;

  final TRes Function(
      Query$FindUserSearch$findUserSearchById$topFoundUsers$companies) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? companyStageTextId = _undefined,
    Object? companyStage = _undefined,
    Object? companyTypeTextId = _undefined,
    Object? companyType = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindUserSearch$findUserSearchById$topFoundUsers$companies(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        companyStageTextId: companyStageTextId == _undefined
            ? _instance.companyStageTextId
            : (companyStageTextId as String?),
        companyStage: companyStage == _undefined
            ? _instance.companyStage
            : (companyStage
                as Query$FindUserSearch$findUserSearchById$topFoundUsers$companies$companyStage?),
        companyTypeTextId: companyTypeTextId == _undefined
            ? _instance.companyTypeTextId
            : (companyTypeTextId as String?),
        companyType: companyType == _undefined
            ? _instance.companyType
            : (companyType
                as Query$FindUserSearch$findUserSearchById$topFoundUsers$companies$companyType?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$companies$companyStage<
      TRes> get companyStage {
    final local$companyStage = _instance.companyStage;
    return local$companyStage == null
        ? CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$companies$companyStage
            .stub(_then(_instance))
        : CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$companies$companyStage(
            local$companyStage, (e) => call(companyStage: e));
  }

  CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$companies$companyType<
      TRes> get companyType {
    final local$companyType = _instance.companyType;
    return local$companyType == null
        ? CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$companies$companyType
            .stub(_then(_instance))
        : CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$companies$companyType(
            local$companyType, (e) => call(companyType: e));
  }
}

class _CopyWithStubImpl$Query$FindUserSearch$findUserSearchById$topFoundUsers$companies<
        TRes>
    implements
        CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$companies<
            TRes> {
  _CopyWithStubImpl$Query$FindUserSearch$findUserSearchById$topFoundUsers$companies(
      this._res);

  TRes _res;

  call({
    String? name,
    String? companyStageTextId,
    Query$FindUserSearch$findUserSearchById$topFoundUsers$companies$companyStage?
        companyStage,
    String? companyTypeTextId,
    Query$FindUserSearch$findUserSearchById$topFoundUsers$companies$companyType?
        companyType,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$companies$companyStage<
          TRes>
      get companyStage =>
          CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$companies$companyStage
              .stub(_res);
  CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$companies$companyType<
          TRes>
      get companyType =>
          CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$companies$companyType
              .stub(_res);
}

class Query$FindUserSearch$findUserSearchById$topFoundUsers$companies$companyStage {
  Query$FindUserSearch$findUserSearchById$topFoundUsers$companies$companyStage({
    this.translatedValue,
    this.$__typename = 'CompanyStage',
  });

  factory Query$FindUserSearch$findUserSearchById$topFoundUsers$companies$companyStage.fromJson(
      Map<String, dynamic> json) {
    final l$translatedValue = json['translatedValue'];
    final l$$__typename = json['__typename'];
    return Query$FindUserSearch$findUserSearchById$topFoundUsers$companies$companyStage(
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
            is Query$FindUserSearch$findUserSearchById$topFoundUsers$companies$companyStage) ||
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

extension UtilityExtension$Query$FindUserSearch$findUserSearchById$topFoundUsers$companies$companyStage
    on Query$FindUserSearch$findUserSearchById$topFoundUsers$companies$companyStage {
  CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$companies$companyStage<
          Query$FindUserSearch$findUserSearchById$topFoundUsers$companies$companyStage>
      get copyWith =>
          CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$companies$companyStage(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$companies$companyStage<
    TRes> {
  factory CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$companies$companyStage(
    Query$FindUserSearch$findUserSearchById$topFoundUsers$companies$companyStage
        instance,
    TRes Function(
            Query$FindUserSearch$findUserSearchById$topFoundUsers$companies$companyStage)
        then,
  ) = _CopyWithImpl$Query$FindUserSearch$findUserSearchById$topFoundUsers$companies$companyStage;

  factory CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$companies$companyStage.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindUserSearch$findUserSearchById$topFoundUsers$companies$companyStage;

  TRes call({
    String? translatedValue,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindUserSearch$findUserSearchById$topFoundUsers$companies$companyStage<
        TRes>
    implements
        CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$companies$companyStage<
            TRes> {
  _CopyWithImpl$Query$FindUserSearch$findUserSearchById$topFoundUsers$companies$companyStage(
    this._instance,
    this._then,
  );

  final Query$FindUserSearch$findUserSearchById$topFoundUsers$companies$companyStage
      _instance;

  final TRes Function(
          Query$FindUserSearch$findUserSearchById$topFoundUsers$companies$companyStage)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? translatedValue = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$FindUserSearch$findUserSearchById$topFoundUsers$companies$companyStage(
        translatedValue: translatedValue == _undefined
            ? _instance.translatedValue
            : (translatedValue as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FindUserSearch$findUserSearchById$topFoundUsers$companies$companyStage<
        TRes>
    implements
        CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$companies$companyStage<
            TRes> {
  _CopyWithStubImpl$Query$FindUserSearch$findUserSearchById$topFoundUsers$companies$companyStage(
      this._res);

  TRes _res;

  call({
    String? translatedValue,
    String? $__typename,
  }) =>
      _res;
}

class Query$FindUserSearch$findUserSearchById$topFoundUsers$companies$companyType {
  Query$FindUserSearch$findUserSearchById$topFoundUsers$companies$companyType({
    this.translatedValue,
    this.$__typename = 'CompanyType',
  });

  factory Query$FindUserSearch$findUserSearchById$topFoundUsers$companies$companyType.fromJson(
      Map<String, dynamic> json) {
    final l$translatedValue = json['translatedValue'];
    final l$$__typename = json['__typename'];
    return Query$FindUserSearch$findUserSearchById$topFoundUsers$companies$companyType(
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
            is Query$FindUserSearch$findUserSearchById$topFoundUsers$companies$companyType) ||
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

extension UtilityExtension$Query$FindUserSearch$findUserSearchById$topFoundUsers$companies$companyType
    on Query$FindUserSearch$findUserSearchById$topFoundUsers$companies$companyType {
  CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$companies$companyType<
          Query$FindUserSearch$findUserSearchById$topFoundUsers$companies$companyType>
      get copyWith =>
          CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$companies$companyType(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$companies$companyType<
    TRes> {
  factory CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$companies$companyType(
    Query$FindUserSearch$findUserSearchById$topFoundUsers$companies$companyType
        instance,
    TRes Function(
            Query$FindUserSearch$findUserSearchById$topFoundUsers$companies$companyType)
        then,
  ) = _CopyWithImpl$Query$FindUserSearch$findUserSearchById$topFoundUsers$companies$companyType;

  factory CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$companies$companyType.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindUserSearch$findUserSearchById$topFoundUsers$companies$companyType;

  TRes call({
    String? translatedValue,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindUserSearch$findUserSearchById$topFoundUsers$companies$companyType<
        TRes>
    implements
        CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$companies$companyType<
            TRes> {
  _CopyWithImpl$Query$FindUserSearch$findUserSearchById$topFoundUsers$companies$companyType(
    this._instance,
    this._then,
  );

  final Query$FindUserSearch$findUserSearchById$topFoundUsers$companies$companyType
      _instance;

  final TRes Function(
          Query$FindUserSearch$findUserSearchById$topFoundUsers$companies$companyType)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? translatedValue = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$FindUserSearch$findUserSearchById$topFoundUsers$companies$companyType(
        translatedValue: translatedValue == _undefined
            ? _instance.translatedValue
            : (translatedValue as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FindUserSearch$findUserSearchById$topFoundUsers$companies$companyType<
        TRes>
    implements
        CopyWith$Query$FindUserSearch$findUserSearchById$topFoundUsers$companies$companyType<
            TRes> {
  _CopyWithStubImpl$Query$FindUserSearch$findUserSearchById$topFoundUsers$companies$companyType(
      this._res);

  TRes _res;

  call({
    String? translatedValue,
    String? $__typename,
  }) =>
      _res;
}

class Query$FindUserSearch$findUserSearchById$runInfos {
  Query$FindUserSearch$findUserSearchById$runInfos({
    required this.matchCount,
    this.topUserIds,
    this.$__typename = 'UserSearchRunInfo',
  });

  factory Query$FindUserSearch$findUserSearchById$runInfos.fromJson(
      Map<String, dynamic> json) {
    final l$matchCount = json['matchCount'];
    final l$topUserIds = json['topUserIds'];
    final l$$__typename = json['__typename'];
    return Query$FindUserSearch$findUserSearchById$runInfos(
      matchCount: (l$matchCount as int),
      topUserIds:
          (l$topUserIds as List<dynamic>?)?.map((e) => (e as String)).toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int matchCount;

  final List<String>? topUserIds;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$matchCount = matchCount;
    _resultData['matchCount'] = l$matchCount;
    final l$topUserIds = topUserIds;
    _resultData['topUserIds'] = l$topUserIds?.map((e) => e).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$matchCount = matchCount;
    final l$topUserIds = topUserIds;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$matchCount,
      l$topUserIds == null ? null : Object.hashAll(l$topUserIds.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FindUserSearch$findUserSearchById$runInfos) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$matchCount = matchCount;
    final lOther$matchCount = other.matchCount;
    if (l$matchCount != lOther$matchCount) {
      return false;
    }
    final l$topUserIds = topUserIds;
    final lOther$topUserIds = other.topUserIds;
    if (l$topUserIds != null && lOther$topUserIds != null) {
      if (l$topUserIds.length != lOther$topUserIds.length) {
        return false;
      }
      for (int i = 0; i < l$topUserIds.length; i++) {
        final l$topUserIds$entry = l$topUserIds[i];
        final lOther$topUserIds$entry = lOther$topUserIds[i];
        if (l$topUserIds$entry != lOther$topUserIds$entry) {
          return false;
        }
      }
    } else if (l$topUserIds != lOther$topUserIds) {
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

extension UtilityExtension$Query$FindUserSearch$findUserSearchById$runInfos
    on Query$FindUserSearch$findUserSearchById$runInfos {
  CopyWith$Query$FindUserSearch$findUserSearchById$runInfos<
          Query$FindUserSearch$findUserSearchById$runInfos>
      get copyWith => CopyWith$Query$FindUserSearch$findUserSearchById$runInfos(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindUserSearch$findUserSearchById$runInfos<TRes> {
  factory CopyWith$Query$FindUserSearch$findUserSearchById$runInfos(
    Query$FindUserSearch$findUserSearchById$runInfos instance,
    TRes Function(Query$FindUserSearch$findUserSearchById$runInfos) then,
  ) = _CopyWithImpl$Query$FindUserSearch$findUserSearchById$runInfos;

  factory CopyWith$Query$FindUserSearch$findUserSearchById$runInfos.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindUserSearch$findUserSearchById$runInfos;

  TRes call({
    int? matchCount,
    List<String>? topUserIds,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindUserSearch$findUserSearchById$runInfos<TRes>
    implements CopyWith$Query$FindUserSearch$findUserSearchById$runInfos<TRes> {
  _CopyWithImpl$Query$FindUserSearch$findUserSearchById$runInfos(
    this._instance,
    this._then,
  );

  final Query$FindUserSearch$findUserSearchById$runInfos _instance;

  final TRes Function(Query$FindUserSearch$findUserSearchById$runInfos) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? matchCount = _undefined,
    Object? topUserIds = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindUserSearch$findUserSearchById$runInfos(
        matchCount: matchCount == _undefined || matchCount == null
            ? _instance.matchCount
            : (matchCount as int),
        topUserIds: topUserIds == _undefined
            ? _instance.topUserIds
            : (topUserIds as List<String>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FindUserSearch$findUserSearchById$runInfos<TRes>
    implements CopyWith$Query$FindUserSearch$findUserSearchById$runInfos<TRes> {
  _CopyWithStubImpl$Query$FindUserSearch$findUserSearchById$runInfos(this._res);

  TRes _res;

  call({
    int? matchCount,
    List<String>? topUserIds,
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
                name: NameNode(value: 'textId'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
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
                        name: NameNode(value: 'textId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
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
                        name: NameNode(value: 'textId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
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
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'companyStage'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'textId'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
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
    required this.textId,
    this.translatedValue,
    this.$__typename = 'Country',
  });

  factory Query$FindMenteeUsers$findUsers$countryOfResidence.fromJson(
      Map<String, dynamic> json) {
    final l$textId = json['textId'];
    final l$translatedValue = json['translatedValue'];
    final l$$__typename = json['__typename'];
    return Query$FindMenteeUsers$findUsers$countryOfResidence(
      textId: (l$textId as String),
      translatedValue: (l$translatedValue as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String textId;

  final String? translatedValue;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$textId = textId;
    _resultData['textId'] = l$textId;
    final l$translatedValue = translatedValue;
    _resultData['translatedValue'] = l$translatedValue;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$textId = textId;
    final l$translatedValue = translatedValue;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$textId,
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
    final l$textId = textId;
    final lOther$textId = other.textId;
    if (l$textId != lOther$textId) {
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
    String? textId,
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
    Object? textId = _undefined,
    Object? translatedValue = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindMenteeUsers$findUsers$countryOfResidence(
        textId: textId == _undefined || textId == null
            ? _instance.textId
            : (textId as String),
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
    String? textId,
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
    required this.textId,
    this.translatedValue,
    this.$__typename = 'Expertise',
  });

  factory Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises.fromJson(
      Map<String, dynamic> json) {
    final l$textId = json['textId'];
    final l$translatedValue = json['translatedValue'];
    final l$$__typename = json['__typename'];
    return Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises(
      textId: (l$textId as String),
      translatedValue: (l$translatedValue as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String textId;

  final String? translatedValue;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$textId = textId;
    _resultData['textId'] = l$textId;
    final l$translatedValue = translatedValue;
    _resultData['translatedValue'] = l$translatedValue;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$textId = textId;
    final l$translatedValue = translatedValue;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$textId,
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
    final l$textId = textId;
    final lOther$textId = other.textId;
    if (l$textId != lOther$textId) {
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
    String? textId,
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
    Object? textId = _undefined,
    Object? translatedValue = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership$soughtExpertises(
        textId: textId == _undefined || textId == null
            ? _instance.textId
            : (textId as String),
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
    String? textId,
    String? translatedValue,
    String? $__typename,
  }) =>
      _res;
}

class Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership$industry {
  Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership$industry({
    required this.textId,
    this.translatedValue,
    this.$__typename = 'Industry',
  });

  factory Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership$industry.fromJson(
      Map<String, dynamic> json) {
    final l$textId = json['textId'];
    final l$translatedValue = json['translatedValue'];
    final l$$__typename = json['__typename'];
    return Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership$industry(
      textId: (l$textId as String),
      translatedValue: (l$translatedValue as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String textId;

  final String? translatedValue;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$textId = textId;
    _resultData['textId'] = l$textId;
    final l$translatedValue = translatedValue;
    _resultData['translatedValue'] = l$translatedValue;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$textId = textId;
    final l$translatedValue = translatedValue;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$textId,
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
    final l$textId = textId;
    final lOther$textId = other.textId;
    if (l$textId != lOther$textId) {
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
    String? textId,
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
    Object? textId = _undefined,
    Object? translatedValue = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$FindMenteeUsers$findUsers$groupMemberships$$MenteesGroupMembership$industry(
        textId: textId == _undefined || textId == null
            ? _instance.textId
            : (textId as String),
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
    String? textId,
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
    required this.name,
    this.companyStage,
    this.$__typename = 'Company',
  });

  factory Query$FindMenteeUsers$findUsers$companies.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$companyStage = json['companyStage'];
    final l$$__typename = json['__typename'];
    return Query$FindMenteeUsers$findUsers$companies(
      name: (l$name as String),
      companyStage: l$companyStage == null
          ? null
          : Query$FindMenteeUsers$findUsers$companies$companyStage.fromJson(
              (l$companyStage as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final Query$FindMenteeUsers$findUsers$companies$companyStage? companyStage;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$companyStage = companyStage;
    _resultData['companyStage'] = l$companyStage?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$companyStage = companyStage;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
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
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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
    String? name,
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
    Object? name = _undefined,
    Object? companyStage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindMenteeUsers$findUsers$companies(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
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
    String? name,
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
    required this.textId,
    this.translatedValue,
    this.$__typename = 'CompanyStage',
  });

  factory Query$FindMenteeUsers$findUsers$companies$companyStage.fromJson(
      Map<String, dynamic> json) {
    final l$textId = json['textId'];
    final l$translatedValue = json['translatedValue'];
    final l$$__typename = json['__typename'];
    return Query$FindMenteeUsers$findUsers$companies$companyStage(
      textId: (l$textId as String),
      translatedValue: (l$translatedValue as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String textId;

  final String? translatedValue;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$textId = textId;
    _resultData['textId'] = l$textId;
    final l$translatedValue = translatedValue;
    _resultData['translatedValue'] = l$translatedValue;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$textId = textId;
    final l$translatedValue = translatedValue;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$textId,
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
    final l$textId = textId;
    final lOther$textId = other.textId;
    if (l$textId != lOther$textId) {
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
    String? textId,
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
    Object? textId = _undefined,
    Object? translatedValue = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindMenteeUsers$findUsers$companies$companyStage(
        textId: textId == _undefined || textId == null
            ? _instance.textId
            : (textId as String),
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
    String? textId,
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
                name: NameNode(value: 'textId'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
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
                        name: NameNode(value: 'textId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
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
                        name: NameNode(value: 'textId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
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
            name: NameNode(value: 'companies'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'name'),
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
    required this.companies,
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
    final l$companies = json['companies'];
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
      companies: (l$companies as List<dynamic>)
          .map((e) => Query$FindMentorUsers$findUsers$companies.fromJson(
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

  final List<Query$FindMentorUsers$findUsers$companies> companies;

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
    List<Query$FindMentorUsers$findUsers$companies>? companies,
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
  TRes companies(
      Iterable<Query$FindMentorUsers$findUsers$companies> Function(
              Iterable<
                  CopyWith$Query$FindMentorUsers$findUsers$companies<
                      Query$FindMentorUsers$findUsers$companies>>)
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
    Object? companies = _undefined,
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
        companies: companies == _undefined || companies == null
            ? _instance.companies
            : (companies as List<Query$FindMentorUsers$findUsers$companies>),
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
  TRes companies(
          Iterable<Query$FindMentorUsers$findUsers$companies> Function(
                  Iterable<
                      CopyWith$Query$FindMentorUsers$findUsers$companies<
                          Query$FindMentorUsers$findUsers$companies>>)
              _fn) =>
      call(
          companies: _fn(_instance.companies
              .map((e) => CopyWith$Query$FindMentorUsers$findUsers$companies(
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
    List<Query$FindMentorUsers$findUsers$companies>? companies,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$FindMentorUsers$findUsers$countryOfResidence<TRes>
      get countryOfResidence =>
          CopyWith$Query$FindMentorUsers$findUsers$countryOfResidence.stub(
              _res);
  groupMemberships(_fn) => _res;
  companies(_fn) => _res;
}

class Query$FindMentorUsers$findUsers$countryOfResidence {
  Query$FindMentorUsers$findUsers$countryOfResidence({
    required this.textId,
    this.translatedValue,
    this.$__typename = 'Country',
  });

  factory Query$FindMentorUsers$findUsers$countryOfResidence.fromJson(
      Map<String, dynamic> json) {
    final l$textId = json['textId'];
    final l$translatedValue = json['translatedValue'];
    final l$$__typename = json['__typename'];
    return Query$FindMentorUsers$findUsers$countryOfResidence(
      textId: (l$textId as String),
      translatedValue: (l$translatedValue as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String textId;

  final String? translatedValue;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$textId = textId;
    _resultData['textId'] = l$textId;
    final l$translatedValue = translatedValue;
    _resultData['translatedValue'] = l$translatedValue;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$textId = textId;
    final l$translatedValue = translatedValue;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$textId,
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
    final l$textId = textId;
    final lOther$textId = other.textId;
    if (l$textId != lOther$textId) {
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
    String? textId,
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
    Object? textId = _undefined,
    Object? translatedValue = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindMentorUsers$findUsers$countryOfResidence(
        textId: textId == _undefined || textId == null
            ? _instance.textId
            : (textId as String),
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
    String? textId,
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
    required this.textId,
    this.translatedValue,
    this.$__typename = 'Expertise',
  });

  factory Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership$expertises.fromJson(
      Map<String, dynamic> json) {
    final l$textId = json['textId'];
    final l$translatedValue = json['translatedValue'];
    final l$$__typename = json['__typename'];
    return Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership$expertises(
      textId: (l$textId as String),
      translatedValue: (l$translatedValue as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String textId;

  final String? translatedValue;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$textId = textId;
    _resultData['textId'] = l$textId;
    final l$translatedValue = translatedValue;
    _resultData['translatedValue'] = l$translatedValue;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$textId = textId;
    final l$translatedValue = translatedValue;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$textId,
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
    final l$textId = textId;
    final lOther$textId = other.textId;
    if (l$textId != lOther$textId) {
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
    String? textId,
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
    Object? textId = _undefined,
    Object? translatedValue = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership$expertises(
        textId: textId == _undefined || textId == null
            ? _instance.textId
            : (textId as String),
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
    String? textId,
    String? translatedValue,
    String? $__typename,
  }) =>
      _res;
}

class Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership$industries {
  Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership$industries({
    required this.textId,
    this.translatedValue,
    this.$__typename = 'Industry',
  });

  factory Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership$industries.fromJson(
      Map<String, dynamic> json) {
    final l$textId = json['textId'];
    final l$translatedValue = json['translatedValue'];
    final l$$__typename = json['__typename'];
    return Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership$industries(
      textId: (l$textId as String),
      translatedValue: (l$translatedValue as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String textId;

  final String? translatedValue;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$textId = textId;
    _resultData['textId'] = l$textId;
    final l$translatedValue = translatedValue;
    _resultData['translatedValue'] = l$translatedValue;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$textId = textId;
    final l$translatedValue = translatedValue;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$textId,
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
    final l$textId = textId;
    final lOther$textId = other.textId;
    if (l$textId != lOther$textId) {
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
    String? textId,
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
    Object? textId = _undefined,
    Object? translatedValue = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$FindMentorUsers$findUsers$groupMemberships$$MentorsGroupMembership$industries(
        textId: textId == _undefined || textId == null
            ? _instance.textId
            : (textId as String),
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
    String? textId,
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

class Query$FindMentorUsers$findUsers$companies {
  Query$FindMentorUsers$findUsers$companies({
    required this.name,
    this.$__typename = 'Company',
  });

  factory Query$FindMentorUsers$findUsers$companies.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$FindMentorUsers$findUsers$companies(
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FindMentorUsers$findUsers$companies) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension$Query$FindMentorUsers$findUsers$companies
    on Query$FindMentorUsers$findUsers$companies {
  CopyWith$Query$FindMentorUsers$findUsers$companies<
          Query$FindMentorUsers$findUsers$companies>
      get copyWith => CopyWith$Query$FindMentorUsers$findUsers$companies(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindMentorUsers$findUsers$companies<TRes> {
  factory CopyWith$Query$FindMentorUsers$findUsers$companies(
    Query$FindMentorUsers$findUsers$companies instance,
    TRes Function(Query$FindMentorUsers$findUsers$companies) then,
  ) = _CopyWithImpl$Query$FindMentorUsers$findUsers$companies;

  factory CopyWith$Query$FindMentorUsers$findUsers$companies.stub(TRes res) =
      _CopyWithStubImpl$Query$FindMentorUsers$findUsers$companies;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindMentorUsers$findUsers$companies<TRes>
    implements CopyWith$Query$FindMentorUsers$findUsers$companies<TRes> {
  _CopyWithImpl$Query$FindMentorUsers$findUsers$companies(
    this._instance,
    this._then,
  );

  final Query$FindMentorUsers$findUsers$companies _instance;

  final TRes Function(Query$FindMentorUsers$findUsers$companies) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindMentorUsers$findUsers$companies(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FindMentorUsers$findUsers$companies<TRes>
    implements CopyWith$Query$FindMentorUsers$findUsers$companies<TRes> {
  _CopyWithStubImpl$Query$FindMentorUsers$findUsers$companies(this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$FindUserDetailedProfile {
  factory Variables$Query$FindUserDetailedProfile({required String userId}) =>
      Variables$Query$FindUserDetailedProfile._({
        r'userId': userId,
      });

  Variables$Query$FindUserDetailedProfile._(this._$data);

  factory Variables$Query$FindUserDetailedProfile.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$userId = data['userId'];
    result$data['userId'] = (l$userId as String);
    return Variables$Query$FindUserDetailedProfile._(result$data);
  }

  Map<String, dynamic> _$data;

  String get userId => (_$data['userId'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$userId = userId;
    result$data['userId'] = l$userId;
    return result$data;
  }

  CopyWith$Variables$Query$FindUserDetailedProfile<
          Variables$Query$FindUserDetailedProfile>
      get copyWith => CopyWith$Variables$Query$FindUserDetailedProfile(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$FindUserDetailedProfile) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$userId = userId;
    return Object.hashAll([l$userId]);
  }
}

abstract class CopyWith$Variables$Query$FindUserDetailedProfile<TRes> {
  factory CopyWith$Variables$Query$FindUserDetailedProfile(
    Variables$Query$FindUserDetailedProfile instance,
    TRes Function(Variables$Query$FindUserDetailedProfile) then,
  ) = _CopyWithImpl$Variables$Query$FindUserDetailedProfile;

  factory CopyWith$Variables$Query$FindUserDetailedProfile.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$FindUserDetailedProfile;

  TRes call({String? userId});
}

class _CopyWithImpl$Variables$Query$FindUserDetailedProfile<TRes>
    implements CopyWith$Variables$Query$FindUserDetailedProfile<TRes> {
  _CopyWithImpl$Variables$Query$FindUserDetailedProfile(
    this._instance,
    this._then,
  );

  final Variables$Query$FindUserDetailedProfile _instance;

  final TRes Function(Variables$Query$FindUserDetailedProfile) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? userId = _undefined}) =>
      _then(Variables$Query$FindUserDetailedProfile._({
        ..._instance._$data,
        if (userId != _undefined && userId != null)
          'userId': (userId as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$FindUserDetailedProfile<TRes>
    implements CopyWith$Variables$Query$FindUserDetailedProfile<TRes> {
  _CopyWithStubImpl$Variables$Query$FindUserDetailedProfile(this._res);

  TRes _res;

  call({String? userId}) => _res;
}

class Query$FindUserDetailedProfile {
  Query$FindUserDetailedProfile({
    required this.findUserById,
    this.$__typename = 'Query',
  });

  factory Query$FindUserDetailedProfile.fromJson(Map<String, dynamic> json) {
    final l$findUserById = json['findUserById'];
    final l$$__typename = json['__typename'];
    return Query$FindUserDetailedProfile(
      findUserById: Query$FindUserDetailedProfile$findUserById.fromJson(
          (l$findUserById as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$FindUserDetailedProfile$findUserById findUserById;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$findUserById = findUserById;
    _resultData['findUserById'] = l$findUserById.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$findUserById = findUserById;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$findUserById,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FindUserDetailedProfile) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$findUserById = findUserById;
    final lOther$findUserById = other.findUserById;
    if (l$findUserById != lOther$findUserById) {
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

extension UtilityExtension$Query$FindUserDetailedProfile
    on Query$FindUserDetailedProfile {
  CopyWith$Query$FindUserDetailedProfile<Query$FindUserDetailedProfile>
      get copyWith => CopyWith$Query$FindUserDetailedProfile(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindUserDetailedProfile<TRes> {
  factory CopyWith$Query$FindUserDetailedProfile(
    Query$FindUserDetailedProfile instance,
    TRes Function(Query$FindUserDetailedProfile) then,
  ) = _CopyWithImpl$Query$FindUserDetailedProfile;

  factory CopyWith$Query$FindUserDetailedProfile.stub(TRes res) =
      _CopyWithStubImpl$Query$FindUserDetailedProfile;

  TRes call({
    Query$FindUserDetailedProfile$findUserById? findUserById,
    String? $__typename,
  });
  CopyWith$Query$FindUserDetailedProfile$findUserById<TRes> get findUserById;
}

class _CopyWithImpl$Query$FindUserDetailedProfile<TRes>
    implements CopyWith$Query$FindUserDetailedProfile<TRes> {
  _CopyWithImpl$Query$FindUserDetailedProfile(
    this._instance,
    this._then,
  );

  final Query$FindUserDetailedProfile _instance;

  final TRes Function(Query$FindUserDetailedProfile) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? findUserById = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindUserDetailedProfile(
        findUserById: findUserById == _undefined || findUserById == null
            ? _instance.findUserById
            : (findUserById as Query$FindUserDetailedProfile$findUserById),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$FindUserDetailedProfile$findUserById<TRes> get findUserById {
    final local$findUserById = _instance.findUserById;
    return CopyWith$Query$FindUserDetailedProfile$findUserById(
        local$findUserById, (e) => call(findUserById: e));
  }
}

class _CopyWithStubImpl$Query$FindUserDetailedProfile<TRes>
    implements CopyWith$Query$FindUserDetailedProfile<TRes> {
  _CopyWithStubImpl$Query$FindUserDetailedProfile(this._res);

  TRes _res;

  call({
    Query$FindUserDetailedProfile$findUserById? findUserById,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$FindUserDetailedProfile$findUserById<TRes> get findUserById =>
      CopyWith$Query$FindUserDetailedProfile$findUserById.stub(_res);
}

const documentNodeQueryFindUserDetailedProfile = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FindUserDetailedProfile'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'userId')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'findUserById'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'userId')),
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
            name: NameNode(value: 'avatarUrl'),
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
            name: NameNode(value: 'regionOfResidence'),
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
            name: NameNode(value: 'companies'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'websites'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'value'),
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
                name: NameNode(value: 'description'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'isOperational'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'industries'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
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
                name: NameNode(value: 'companyType'),
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
            name: NameNode(value: 'educationLevel'),
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
            name: NameNode(value: 'offersHelp'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'seeksHelp'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'spokenLanguages'),
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
            name: NameNode(value: 'websites'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'value'),
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
            name: NameNode(value: 'groupMemberships'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'groupIdent'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              InlineFragmentNode(
                typeCondition: TypeConditionNode(
                    on: NamedTypeNode(
                  name: NameNode(value: 'MenteesGroupMembership'),
                  isNonNull: false,
                )),
                directives: [],
                selectionSet: SelectionSetNode(selections: [
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
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
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

class Query$FindUserDetailedProfile$findUserById {
  Query$FindUserDetailedProfile$findUserById({
    required this.id,
    this.avatarUrl,
    this.fullName,
    this.firstName,
    this.lastName,
    this.regionOfResidence,
    this.cityOfResidence,
    this.countryOfResidence,
    this.jobTitle,
    required this.companies,
    this.educationLevel,
    required this.offersHelp,
    required this.seeksHelp,
    required this.spokenLanguages,
    this.websites,
    required this.groupMemberships,
    this.$__typename = 'User',
  });

  factory Query$FindUserDetailedProfile$findUserById.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$avatarUrl = json['avatarUrl'];
    final l$fullName = json['fullName'];
    final l$firstName = json['firstName'];
    final l$lastName = json['lastName'];
    final l$regionOfResidence = json['regionOfResidence'];
    final l$cityOfResidence = json['cityOfResidence'];
    final l$countryOfResidence = json['countryOfResidence'];
    final l$jobTitle = json['jobTitle'];
    final l$companies = json['companies'];
    final l$educationLevel = json['educationLevel'];
    final l$offersHelp = json['offersHelp'];
    final l$seeksHelp = json['seeksHelp'];
    final l$spokenLanguages = json['spokenLanguages'];
    final l$websites = json['websites'];
    final l$groupMemberships = json['groupMemberships'];
    final l$$__typename = json['__typename'];
    return Query$FindUserDetailedProfile$findUserById(
      id: (l$id as String),
      avatarUrl: (l$avatarUrl as String?),
      fullName: (l$fullName as String?),
      firstName: (l$firstName as String?),
      lastName: (l$lastName as String?),
      regionOfResidence: (l$regionOfResidence as String?),
      cityOfResidence: (l$cityOfResidence as String?),
      countryOfResidence: l$countryOfResidence == null
          ? null
          : Query$FindUserDetailedProfile$findUserById$countryOfResidence
              .fromJson((l$countryOfResidence as Map<String, dynamic>)),
      jobTitle: (l$jobTitle as String?),
      companies: (l$companies as List<dynamic>)
          .map((e) =>
              Query$FindUserDetailedProfile$findUserById$companies.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      educationLevel: l$educationLevel == null
          ? null
          : Query$FindUserDetailedProfile$findUserById$educationLevel.fromJson(
              (l$educationLevel as Map<String, dynamic>)),
      offersHelp: (l$offersHelp as bool),
      seeksHelp: (l$seeksHelp as bool),
      spokenLanguages: (l$spokenLanguages as List<dynamic>)
          .map((e) => Query$FindUserDetailedProfile$findUserById$spokenLanguages
              .fromJson((e as Map<String, dynamic>)))
          .toList(),
      websites: (l$websites as List<dynamic>?)
          ?.map((e) =>
              Query$FindUserDetailedProfile$findUserById$websites.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      groupMemberships: (l$groupMemberships as List<dynamic>)
          .map((e) =>
              Query$FindUserDetailedProfile$findUserById$groupMemberships
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String? avatarUrl;

  final String? fullName;

  final String? firstName;

  final String? lastName;

  final String? regionOfResidence;

  final String? cityOfResidence;

  final Query$FindUserDetailedProfile$findUserById$countryOfResidence?
      countryOfResidence;

  final String? jobTitle;

  final List<Query$FindUserDetailedProfile$findUserById$companies> companies;

  final Query$FindUserDetailedProfile$findUserById$educationLevel?
      educationLevel;

  final bool offersHelp;

  final bool seeksHelp;

  final List<Query$FindUserDetailedProfile$findUserById$spokenLanguages>
      spokenLanguages;

  final List<Query$FindUserDetailedProfile$findUserById$websites>? websites;

  final List<Query$FindUserDetailedProfile$findUserById$groupMemberships>
      groupMemberships;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$avatarUrl = avatarUrl;
    _resultData['avatarUrl'] = l$avatarUrl;
    final l$fullName = fullName;
    _resultData['fullName'] = l$fullName;
    final l$firstName = firstName;
    _resultData['firstName'] = l$firstName;
    final l$lastName = lastName;
    _resultData['lastName'] = l$lastName;
    final l$regionOfResidence = regionOfResidence;
    _resultData['regionOfResidence'] = l$regionOfResidence;
    final l$cityOfResidence = cityOfResidence;
    _resultData['cityOfResidence'] = l$cityOfResidence;
    final l$countryOfResidence = countryOfResidence;
    _resultData['countryOfResidence'] = l$countryOfResidence?.toJson();
    final l$jobTitle = jobTitle;
    _resultData['jobTitle'] = l$jobTitle;
    final l$companies = companies;
    _resultData['companies'] = l$companies.map((e) => e.toJson()).toList();
    final l$educationLevel = educationLevel;
    _resultData['educationLevel'] = l$educationLevel?.toJson();
    final l$offersHelp = offersHelp;
    _resultData['offersHelp'] = l$offersHelp;
    final l$seeksHelp = seeksHelp;
    _resultData['seeksHelp'] = l$seeksHelp;
    final l$spokenLanguages = spokenLanguages;
    _resultData['spokenLanguages'] =
        l$spokenLanguages.map((e) => e.toJson()).toList();
    final l$websites = websites;
    _resultData['websites'] = l$websites?.map((e) => e.toJson()).toList();
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
    final l$avatarUrl = avatarUrl;
    final l$fullName = fullName;
    final l$firstName = firstName;
    final l$lastName = lastName;
    final l$regionOfResidence = regionOfResidence;
    final l$cityOfResidence = cityOfResidence;
    final l$countryOfResidence = countryOfResidence;
    final l$jobTitle = jobTitle;
    final l$companies = companies;
    final l$educationLevel = educationLevel;
    final l$offersHelp = offersHelp;
    final l$seeksHelp = seeksHelp;
    final l$spokenLanguages = spokenLanguages;
    final l$websites = websites;
    final l$groupMemberships = groupMemberships;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$avatarUrl,
      l$fullName,
      l$firstName,
      l$lastName,
      l$regionOfResidence,
      l$cityOfResidence,
      l$countryOfResidence,
      l$jobTitle,
      Object.hashAll(l$companies.map((v) => v)),
      l$educationLevel,
      l$offersHelp,
      l$seeksHelp,
      Object.hashAll(l$spokenLanguages.map((v) => v)),
      l$websites == null ? null : Object.hashAll(l$websites.map((v) => v)),
      Object.hashAll(l$groupMemberships.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FindUserDetailedProfile$findUserById) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$avatarUrl = avatarUrl;
    final lOther$avatarUrl = other.avatarUrl;
    if (l$avatarUrl != lOther$avatarUrl) {
      return false;
    }
    final l$fullName = fullName;
    final lOther$fullName = other.fullName;
    if (l$fullName != lOther$fullName) {
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
    final l$regionOfResidence = regionOfResidence;
    final lOther$regionOfResidence = other.regionOfResidence;
    if (l$regionOfResidence != lOther$regionOfResidence) {
      return false;
    }
    final l$cityOfResidence = cityOfResidence;
    final lOther$cityOfResidence = other.cityOfResidence;
    if (l$cityOfResidence != lOther$cityOfResidence) {
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
    final l$educationLevel = educationLevel;
    final lOther$educationLevel = other.educationLevel;
    if (l$educationLevel != lOther$educationLevel) {
      return false;
    }
    final l$offersHelp = offersHelp;
    final lOther$offersHelp = other.offersHelp;
    if (l$offersHelp != lOther$offersHelp) {
      return false;
    }
    final l$seeksHelp = seeksHelp;
    final lOther$seeksHelp = other.seeksHelp;
    if (l$seeksHelp != lOther$seeksHelp) {
      return false;
    }
    final l$spokenLanguages = spokenLanguages;
    final lOther$spokenLanguages = other.spokenLanguages;
    if (l$spokenLanguages.length != lOther$spokenLanguages.length) {
      return false;
    }
    for (int i = 0; i < l$spokenLanguages.length; i++) {
      final l$spokenLanguages$entry = l$spokenLanguages[i];
      final lOther$spokenLanguages$entry = lOther$spokenLanguages[i];
      if (l$spokenLanguages$entry != lOther$spokenLanguages$entry) {
        return false;
      }
    }
    final l$websites = websites;
    final lOther$websites = other.websites;
    if (l$websites != null && lOther$websites != null) {
      if (l$websites.length != lOther$websites.length) {
        return false;
      }
      for (int i = 0; i < l$websites.length; i++) {
        final l$websites$entry = l$websites[i];
        final lOther$websites$entry = lOther$websites[i];
        if (l$websites$entry != lOther$websites$entry) {
          return false;
        }
      }
    } else if (l$websites != lOther$websites) {
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

extension UtilityExtension$Query$FindUserDetailedProfile$findUserById
    on Query$FindUserDetailedProfile$findUserById {
  CopyWith$Query$FindUserDetailedProfile$findUserById<
          Query$FindUserDetailedProfile$findUserById>
      get copyWith => CopyWith$Query$FindUserDetailedProfile$findUserById(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindUserDetailedProfile$findUserById<TRes> {
  factory CopyWith$Query$FindUserDetailedProfile$findUserById(
    Query$FindUserDetailedProfile$findUserById instance,
    TRes Function(Query$FindUserDetailedProfile$findUserById) then,
  ) = _CopyWithImpl$Query$FindUserDetailedProfile$findUserById;

  factory CopyWith$Query$FindUserDetailedProfile$findUserById.stub(TRes res) =
      _CopyWithStubImpl$Query$FindUserDetailedProfile$findUserById;

  TRes call({
    String? id,
    String? avatarUrl,
    String? fullName,
    String? firstName,
    String? lastName,
    String? regionOfResidence,
    String? cityOfResidence,
    Query$FindUserDetailedProfile$findUserById$countryOfResidence?
        countryOfResidence,
    String? jobTitle,
    List<Query$FindUserDetailedProfile$findUserById$companies>? companies,
    Query$FindUserDetailedProfile$findUserById$educationLevel? educationLevel,
    bool? offersHelp,
    bool? seeksHelp,
    List<Query$FindUserDetailedProfile$findUserById$spokenLanguages>?
        spokenLanguages,
    List<Query$FindUserDetailedProfile$findUserById$websites>? websites,
    List<Query$FindUserDetailedProfile$findUserById$groupMemberships>?
        groupMemberships,
    String? $__typename,
  });
  CopyWith$Query$FindUserDetailedProfile$findUserById$countryOfResidence<TRes>
      get countryOfResidence;
  TRes companies(
      Iterable<Query$FindUserDetailedProfile$findUserById$companies> Function(
              Iterable<
                  CopyWith$Query$FindUserDetailedProfile$findUserById$companies<
                      Query$FindUserDetailedProfile$findUserById$companies>>)
          _fn);
  CopyWith$Query$FindUserDetailedProfile$findUserById$educationLevel<TRes>
      get educationLevel;
  TRes spokenLanguages(
      Iterable<Query$FindUserDetailedProfile$findUserById$spokenLanguages> Function(
              Iterable<
                  CopyWith$Query$FindUserDetailedProfile$findUserById$spokenLanguages<
                      Query$FindUserDetailedProfile$findUserById$spokenLanguages>>)
          _fn);
  TRes websites(
      Iterable<Query$FindUserDetailedProfile$findUserById$websites>? Function(
              Iterable<
                  CopyWith$Query$FindUserDetailedProfile$findUserById$websites<
                      Query$FindUserDetailedProfile$findUserById$websites>>?)
          _fn);
  TRes groupMemberships(
      Iterable<Query$FindUserDetailedProfile$findUserById$groupMemberships> Function(
              Iterable<
                  CopyWith$Query$FindUserDetailedProfile$findUserById$groupMemberships<
                      Query$FindUserDetailedProfile$findUserById$groupMemberships>>)
          _fn);
}

class _CopyWithImpl$Query$FindUserDetailedProfile$findUserById<TRes>
    implements CopyWith$Query$FindUserDetailedProfile$findUserById<TRes> {
  _CopyWithImpl$Query$FindUserDetailedProfile$findUserById(
    this._instance,
    this._then,
  );

  final Query$FindUserDetailedProfile$findUserById _instance;

  final TRes Function(Query$FindUserDetailedProfile$findUserById) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? avatarUrl = _undefined,
    Object? fullName = _undefined,
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? regionOfResidence = _undefined,
    Object? cityOfResidence = _undefined,
    Object? countryOfResidence = _undefined,
    Object? jobTitle = _undefined,
    Object? companies = _undefined,
    Object? educationLevel = _undefined,
    Object? offersHelp = _undefined,
    Object? seeksHelp = _undefined,
    Object? spokenLanguages = _undefined,
    Object? websites = _undefined,
    Object? groupMemberships = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindUserDetailedProfile$findUserById(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        avatarUrl: avatarUrl == _undefined
            ? _instance.avatarUrl
            : (avatarUrl as String?),
        fullName:
            fullName == _undefined ? _instance.fullName : (fullName as String?),
        firstName: firstName == _undefined
            ? _instance.firstName
            : (firstName as String?),
        lastName:
            lastName == _undefined ? _instance.lastName : (lastName as String?),
        regionOfResidence: regionOfResidence == _undefined
            ? _instance.regionOfResidence
            : (regionOfResidence as String?),
        cityOfResidence: cityOfResidence == _undefined
            ? _instance.cityOfResidence
            : (cityOfResidence as String?),
        countryOfResidence: countryOfResidence == _undefined
            ? _instance.countryOfResidence
            : (countryOfResidence
                as Query$FindUserDetailedProfile$findUserById$countryOfResidence?),
        jobTitle:
            jobTitle == _undefined ? _instance.jobTitle : (jobTitle as String?),
        companies: companies == _undefined || companies == null
            ? _instance.companies
            : (companies
                as List<Query$FindUserDetailedProfile$findUserById$companies>),
        educationLevel: educationLevel == _undefined
            ? _instance.educationLevel
            : (educationLevel
                as Query$FindUserDetailedProfile$findUserById$educationLevel?),
        offersHelp: offersHelp == _undefined || offersHelp == null
            ? _instance.offersHelp
            : (offersHelp as bool),
        seeksHelp: seeksHelp == _undefined || seeksHelp == null
            ? _instance.seeksHelp
            : (seeksHelp as bool),
        spokenLanguages: spokenLanguages == _undefined ||
                spokenLanguages == null
            ? _instance.spokenLanguages
            : (spokenLanguages as List<
                Query$FindUserDetailedProfile$findUserById$spokenLanguages>),
        websites: websites == _undefined
            ? _instance.websites
            : (websites
                as List<Query$FindUserDetailedProfile$findUserById$websites>?),
        groupMemberships: groupMemberships == _undefined ||
                groupMemberships == null
            ? _instance.groupMemberships
            : (groupMemberships as List<
                Query$FindUserDetailedProfile$findUserById$groupMemberships>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$FindUserDetailedProfile$findUserById$countryOfResidence<TRes>
      get countryOfResidence {
    final local$countryOfResidence = _instance.countryOfResidence;
    return local$countryOfResidence == null
        ? CopyWith$Query$FindUserDetailedProfile$findUserById$countryOfResidence
            .stub(_then(_instance))
        : CopyWith$Query$FindUserDetailedProfile$findUserById$countryOfResidence(
            local$countryOfResidence, (e) => call(countryOfResidence: e));
  }

  TRes companies(
          Iterable<Query$FindUserDetailedProfile$findUserById$companies> Function(
                  Iterable<
                      CopyWith$Query$FindUserDetailedProfile$findUserById$companies<
                          Query$FindUserDetailedProfile$findUserById$companies>>)
              _fn) =>
      call(
          companies: _fn(_instance.companies.map((e) =>
              CopyWith$Query$FindUserDetailedProfile$findUserById$companies(
                e,
                (i) => i,
              ))).toList());
  CopyWith$Query$FindUserDetailedProfile$findUserById$educationLevel<TRes>
      get educationLevel {
    final local$educationLevel = _instance.educationLevel;
    return local$educationLevel == null
        ? CopyWith$Query$FindUserDetailedProfile$findUserById$educationLevel
            .stub(_then(_instance))
        : CopyWith$Query$FindUserDetailedProfile$findUserById$educationLevel(
            local$educationLevel, (e) => call(educationLevel: e));
  }

  TRes spokenLanguages(
          Iterable<Query$FindUserDetailedProfile$findUserById$spokenLanguages> Function(
                  Iterable<
                      CopyWith$Query$FindUserDetailedProfile$findUserById$spokenLanguages<
                          Query$FindUserDetailedProfile$findUserById$spokenLanguages>>)
              _fn) =>
      call(
          spokenLanguages: _fn(_instance.spokenLanguages.map((e) =>
              CopyWith$Query$FindUserDetailedProfile$findUserById$spokenLanguages(
                e,
                (i) => i,
              ))).toList());
  TRes websites(
          Iterable<Query$FindUserDetailedProfile$findUserById$websites>? Function(
                  Iterable<
                      CopyWith$Query$FindUserDetailedProfile$findUserById$websites<
                          Query$FindUserDetailedProfile$findUserById$websites>>?)
              _fn) =>
      call(
          websites: _fn(_instance.websites?.map((e) =>
              CopyWith$Query$FindUserDetailedProfile$findUserById$websites(
                e,
                (i) => i,
              )))?.toList());
  TRes groupMemberships(
          Iterable<Query$FindUserDetailedProfile$findUserById$groupMemberships> Function(
                  Iterable<
                      CopyWith$Query$FindUserDetailedProfile$findUserById$groupMemberships<
                          Query$FindUserDetailedProfile$findUserById$groupMemberships>>)
              _fn) =>
      call(
          groupMemberships: _fn(_instance.groupMemberships.map((e) =>
              CopyWith$Query$FindUserDetailedProfile$findUserById$groupMemberships(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$FindUserDetailedProfile$findUserById<TRes>
    implements CopyWith$Query$FindUserDetailedProfile$findUserById<TRes> {
  _CopyWithStubImpl$Query$FindUserDetailedProfile$findUserById(this._res);

  TRes _res;

  call({
    String? id,
    String? avatarUrl,
    String? fullName,
    String? firstName,
    String? lastName,
    String? regionOfResidence,
    String? cityOfResidence,
    Query$FindUserDetailedProfile$findUserById$countryOfResidence?
        countryOfResidence,
    String? jobTitle,
    List<Query$FindUserDetailedProfile$findUserById$companies>? companies,
    Query$FindUserDetailedProfile$findUserById$educationLevel? educationLevel,
    bool? offersHelp,
    bool? seeksHelp,
    List<Query$FindUserDetailedProfile$findUserById$spokenLanguages>?
        spokenLanguages,
    List<Query$FindUserDetailedProfile$findUserById$websites>? websites,
    List<Query$FindUserDetailedProfile$findUserById$groupMemberships>?
        groupMemberships,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$FindUserDetailedProfile$findUserById$countryOfResidence<TRes>
      get countryOfResidence =>
          CopyWith$Query$FindUserDetailedProfile$findUserById$countryOfResidence
              .stub(_res);
  companies(_fn) => _res;
  CopyWith$Query$FindUserDetailedProfile$findUserById$educationLevel<TRes>
      get educationLevel =>
          CopyWith$Query$FindUserDetailedProfile$findUserById$educationLevel
              .stub(_res);
  spokenLanguages(_fn) => _res;
  websites(_fn) => _res;
  groupMemberships(_fn) => _res;
}

class Query$FindUserDetailedProfile$findUserById$countryOfResidence {
  Query$FindUserDetailedProfile$findUserById$countryOfResidence({
    this.translatedValue,
    this.$__typename = 'Country',
  });

  factory Query$FindUserDetailedProfile$findUserById$countryOfResidence.fromJson(
      Map<String, dynamic> json) {
    final l$translatedValue = json['translatedValue'];
    final l$$__typename = json['__typename'];
    return Query$FindUserDetailedProfile$findUserById$countryOfResidence(
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
            is Query$FindUserDetailedProfile$findUserById$countryOfResidence) ||
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

extension UtilityExtension$Query$FindUserDetailedProfile$findUserById$countryOfResidence
    on Query$FindUserDetailedProfile$findUserById$countryOfResidence {
  CopyWith$Query$FindUserDetailedProfile$findUserById$countryOfResidence<
          Query$FindUserDetailedProfile$findUserById$countryOfResidence>
      get copyWith =>
          CopyWith$Query$FindUserDetailedProfile$findUserById$countryOfResidence(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindUserDetailedProfile$findUserById$countryOfResidence<
    TRes> {
  factory CopyWith$Query$FindUserDetailedProfile$findUserById$countryOfResidence(
    Query$FindUserDetailedProfile$findUserById$countryOfResidence instance,
    TRes Function(Query$FindUserDetailedProfile$findUserById$countryOfResidence)
        then,
  ) = _CopyWithImpl$Query$FindUserDetailedProfile$findUserById$countryOfResidence;

  factory CopyWith$Query$FindUserDetailedProfile$findUserById$countryOfResidence.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindUserDetailedProfile$findUserById$countryOfResidence;

  TRes call({
    String? translatedValue,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindUserDetailedProfile$findUserById$countryOfResidence<
        TRes>
    implements
        CopyWith$Query$FindUserDetailedProfile$findUserById$countryOfResidence<
            TRes> {
  _CopyWithImpl$Query$FindUserDetailedProfile$findUserById$countryOfResidence(
    this._instance,
    this._then,
  );

  final Query$FindUserDetailedProfile$findUserById$countryOfResidence _instance;

  final TRes Function(
      Query$FindUserDetailedProfile$findUserById$countryOfResidence) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? translatedValue = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindUserDetailedProfile$findUserById$countryOfResidence(
        translatedValue: translatedValue == _undefined
            ? _instance.translatedValue
            : (translatedValue as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FindUserDetailedProfile$findUserById$countryOfResidence<
        TRes>
    implements
        CopyWith$Query$FindUserDetailedProfile$findUserById$countryOfResidence<
            TRes> {
  _CopyWithStubImpl$Query$FindUserDetailedProfile$findUserById$countryOfResidence(
      this._res);

  TRes _res;

  call({
    String? translatedValue,
    String? $__typename,
  }) =>
      _res;
}

class Query$FindUserDetailedProfile$findUserById$companies {
  Query$FindUserDetailedProfile$findUserById$companies({
    required this.name,
    this.websites,
    this.description,
    this.isOperational,
    this.industries,
    this.companyStage,
    this.companyType,
    this.$__typename = 'Company',
  });

  factory Query$FindUserDetailedProfile$findUserById$companies.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$websites = json['websites'];
    final l$description = json['description'];
    final l$isOperational = json['isOperational'];
    final l$industries = json['industries'];
    final l$companyStage = json['companyStage'];
    final l$companyType = json['companyType'];
    final l$$__typename = json['__typename'];
    return Query$FindUserDetailedProfile$findUserById$companies(
      name: (l$name as String),
      websites: (l$websites as List<dynamic>?)
          ?.map((e) =>
              Query$FindUserDetailedProfile$findUserById$companies$websites
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      description: (l$description as String?),
      isOperational: (l$isOperational as bool?),
      industries:
          (l$industries as List<dynamic>?)?.map((e) => (e as String)).toList(),
      companyStage: l$companyStage == null
          ? null
          : Query$FindUserDetailedProfile$findUserById$companies$companyStage
              .fromJson((l$companyStage as Map<String, dynamic>)),
      companyType: l$companyType == null
          ? null
          : Query$FindUserDetailedProfile$findUserById$companies$companyType
              .fromJson((l$companyType as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final List<Query$FindUserDetailedProfile$findUserById$companies$websites>?
      websites;

  final String? description;

  final bool? isOperational;

  final List<String>? industries;

  final Query$FindUserDetailedProfile$findUserById$companies$companyStage?
      companyStage;

  final Query$FindUserDetailedProfile$findUserById$companies$companyType?
      companyType;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$websites = websites;
    _resultData['websites'] = l$websites?.map((e) => e.toJson()).toList();
    final l$description = description;
    _resultData['description'] = l$description;
    final l$isOperational = isOperational;
    _resultData['isOperational'] = l$isOperational;
    final l$industries = industries;
    _resultData['industries'] = l$industries?.map((e) => e).toList();
    final l$companyStage = companyStage;
    _resultData['companyStage'] = l$companyStage?.toJson();
    final l$companyType = companyType;
    _resultData['companyType'] = l$companyType?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$websites = websites;
    final l$description = description;
    final l$isOperational = isOperational;
    final l$industries = industries;
    final l$companyStage = companyStage;
    final l$companyType = companyType;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$websites == null ? null : Object.hashAll(l$websites.map((v) => v)),
      l$description,
      l$isOperational,
      l$industries == null ? null : Object.hashAll(l$industries.map((v) => v)),
      l$companyStage,
      l$companyType,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FindUserDetailedProfile$findUserById$companies) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$websites = websites;
    final lOther$websites = other.websites;
    if (l$websites != null && lOther$websites != null) {
      if (l$websites.length != lOther$websites.length) {
        return false;
      }
      for (int i = 0; i < l$websites.length; i++) {
        final l$websites$entry = l$websites[i];
        final lOther$websites$entry = lOther$websites[i];
        if (l$websites$entry != lOther$websites$entry) {
          return false;
        }
      }
    } else if (l$websites != lOther$websites) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$isOperational = isOperational;
    final lOther$isOperational = other.isOperational;
    if (l$isOperational != lOther$isOperational) {
      return false;
    }
    final l$industries = industries;
    final lOther$industries = other.industries;
    if (l$industries != null && lOther$industries != null) {
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
    } else if (l$industries != lOther$industries) {
      return false;
    }
    final l$companyStage = companyStage;
    final lOther$companyStage = other.companyStage;
    if (l$companyStage != lOther$companyStage) {
      return false;
    }
    final l$companyType = companyType;
    final lOther$companyType = other.companyType;
    if (l$companyType != lOther$companyType) {
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

extension UtilityExtension$Query$FindUserDetailedProfile$findUserById$companies
    on Query$FindUserDetailedProfile$findUserById$companies {
  CopyWith$Query$FindUserDetailedProfile$findUserById$companies<
          Query$FindUserDetailedProfile$findUserById$companies>
      get copyWith =>
          CopyWith$Query$FindUserDetailedProfile$findUserById$companies(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindUserDetailedProfile$findUserById$companies<
    TRes> {
  factory CopyWith$Query$FindUserDetailedProfile$findUserById$companies(
    Query$FindUserDetailedProfile$findUserById$companies instance,
    TRes Function(Query$FindUserDetailedProfile$findUserById$companies) then,
  ) = _CopyWithImpl$Query$FindUserDetailedProfile$findUserById$companies;

  factory CopyWith$Query$FindUserDetailedProfile$findUserById$companies.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindUserDetailedProfile$findUserById$companies;

  TRes call({
    String? name,
    List<Query$FindUserDetailedProfile$findUserById$companies$websites>?
        websites,
    String? description,
    bool? isOperational,
    List<String>? industries,
    Query$FindUserDetailedProfile$findUserById$companies$companyStage?
        companyStage,
    Query$FindUserDetailedProfile$findUserById$companies$companyType?
        companyType,
    String? $__typename,
  });
  TRes websites(
      Iterable<Query$FindUserDetailedProfile$findUserById$companies$websites>? Function(
              Iterable<
                  CopyWith$Query$FindUserDetailedProfile$findUserById$companies$websites<
                      Query$FindUserDetailedProfile$findUserById$companies$websites>>?)
          _fn);
  CopyWith$Query$FindUserDetailedProfile$findUserById$companies$companyStage<
      TRes> get companyStage;
  CopyWith$Query$FindUserDetailedProfile$findUserById$companies$companyType<
      TRes> get companyType;
}

class _CopyWithImpl$Query$FindUserDetailedProfile$findUserById$companies<TRes>
    implements
        CopyWith$Query$FindUserDetailedProfile$findUserById$companies<TRes> {
  _CopyWithImpl$Query$FindUserDetailedProfile$findUserById$companies(
    this._instance,
    this._then,
  );

  final Query$FindUserDetailedProfile$findUserById$companies _instance;

  final TRes Function(Query$FindUserDetailedProfile$findUserById$companies)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? websites = _undefined,
    Object? description = _undefined,
    Object? isOperational = _undefined,
    Object? industries = _undefined,
    Object? companyStage = _undefined,
    Object? companyType = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindUserDetailedProfile$findUserById$companies(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        websites: websites == _undefined
            ? _instance.websites
            : (websites as List<
                Query$FindUserDetailedProfile$findUserById$companies$websites>?),
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        isOperational: isOperational == _undefined
            ? _instance.isOperational
            : (isOperational as bool?),
        industries: industries == _undefined
            ? _instance.industries
            : (industries as List<String>?),
        companyStage: companyStage == _undefined
            ? _instance.companyStage
            : (companyStage
                as Query$FindUserDetailedProfile$findUserById$companies$companyStage?),
        companyType: companyType == _undefined
            ? _instance.companyType
            : (companyType
                as Query$FindUserDetailedProfile$findUserById$companies$companyType?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes websites(
          Iterable<Query$FindUserDetailedProfile$findUserById$companies$websites>? Function(
                  Iterable<
                      CopyWith$Query$FindUserDetailedProfile$findUserById$companies$websites<
                          Query$FindUserDetailedProfile$findUserById$companies$websites>>?)
              _fn) =>
      call(
          websites: _fn(_instance.websites?.map((e) =>
              CopyWith$Query$FindUserDetailedProfile$findUserById$companies$websites(
                e,
                (i) => i,
              )))?.toList());
  CopyWith$Query$FindUserDetailedProfile$findUserById$companies$companyStage<
      TRes> get companyStage {
    final local$companyStage = _instance.companyStage;
    return local$companyStage == null
        ? CopyWith$Query$FindUserDetailedProfile$findUserById$companies$companyStage
            .stub(_then(_instance))
        : CopyWith$Query$FindUserDetailedProfile$findUserById$companies$companyStage(
            local$companyStage, (e) => call(companyStage: e));
  }

  CopyWith$Query$FindUserDetailedProfile$findUserById$companies$companyType<
      TRes> get companyType {
    final local$companyType = _instance.companyType;
    return local$companyType == null
        ? CopyWith$Query$FindUserDetailedProfile$findUserById$companies$companyType
            .stub(_then(_instance))
        : CopyWith$Query$FindUserDetailedProfile$findUserById$companies$companyType(
            local$companyType, (e) => call(companyType: e));
  }
}

class _CopyWithStubImpl$Query$FindUserDetailedProfile$findUserById$companies<
        TRes>
    implements
        CopyWith$Query$FindUserDetailedProfile$findUserById$companies<TRes> {
  _CopyWithStubImpl$Query$FindUserDetailedProfile$findUserById$companies(
      this._res);

  TRes _res;

  call({
    String? name,
    List<Query$FindUserDetailedProfile$findUserById$companies$websites>?
        websites,
    String? description,
    bool? isOperational,
    List<String>? industries,
    Query$FindUserDetailedProfile$findUserById$companies$companyStage?
        companyStage,
    Query$FindUserDetailedProfile$findUserById$companies$companyType?
        companyType,
    String? $__typename,
  }) =>
      _res;
  websites(_fn) => _res;
  CopyWith$Query$FindUserDetailedProfile$findUserById$companies$companyStage<
          TRes>
      get companyStage =>
          CopyWith$Query$FindUserDetailedProfile$findUserById$companies$companyStage
              .stub(_res);
  CopyWith$Query$FindUserDetailedProfile$findUserById$companies$companyType<
          TRes>
      get companyType =>
          CopyWith$Query$FindUserDetailedProfile$findUserById$companies$companyType
              .stub(_res);
}

class Query$FindUserDetailedProfile$findUserById$companies$websites {
  Query$FindUserDetailedProfile$findUserById$companies$websites({
    required this.value,
    this.$__typename = 'LabeledStringValue',
  });

  factory Query$FindUserDetailedProfile$findUserById$companies$websites.fromJson(
      Map<String, dynamic> json) {
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$FindUserDetailedProfile$findUserById$companies$websites(
      value: (l$value as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$value = value;
    _resultData['value'] = l$value;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$value,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$FindUserDetailedProfile$findUserById$companies$websites) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
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

extension UtilityExtension$Query$FindUserDetailedProfile$findUserById$companies$websites
    on Query$FindUserDetailedProfile$findUserById$companies$websites {
  CopyWith$Query$FindUserDetailedProfile$findUserById$companies$websites<
          Query$FindUserDetailedProfile$findUserById$companies$websites>
      get copyWith =>
          CopyWith$Query$FindUserDetailedProfile$findUserById$companies$websites(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindUserDetailedProfile$findUserById$companies$websites<
    TRes> {
  factory CopyWith$Query$FindUserDetailedProfile$findUserById$companies$websites(
    Query$FindUserDetailedProfile$findUserById$companies$websites instance,
    TRes Function(Query$FindUserDetailedProfile$findUserById$companies$websites)
        then,
  ) = _CopyWithImpl$Query$FindUserDetailedProfile$findUserById$companies$websites;

  factory CopyWith$Query$FindUserDetailedProfile$findUserById$companies$websites.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindUserDetailedProfile$findUserById$companies$websites;

  TRes call({
    String? value,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindUserDetailedProfile$findUserById$companies$websites<
        TRes>
    implements
        CopyWith$Query$FindUserDetailedProfile$findUserById$companies$websites<
            TRes> {
  _CopyWithImpl$Query$FindUserDetailedProfile$findUserById$companies$websites(
    this._instance,
    this._then,
  );

  final Query$FindUserDetailedProfile$findUserById$companies$websites _instance;

  final TRes Function(
      Query$FindUserDetailedProfile$findUserById$companies$websites) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindUserDetailedProfile$findUserById$companies$websites(
        value: value == _undefined || value == null
            ? _instance.value
            : (value as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FindUserDetailedProfile$findUserById$companies$websites<
        TRes>
    implements
        CopyWith$Query$FindUserDetailedProfile$findUserById$companies$websites<
            TRes> {
  _CopyWithStubImpl$Query$FindUserDetailedProfile$findUserById$companies$websites(
      this._res);

  TRes _res;

  call({
    String? value,
    String? $__typename,
  }) =>
      _res;
}

class Query$FindUserDetailedProfile$findUserById$companies$companyStage {
  Query$FindUserDetailedProfile$findUserById$companies$companyStage({
    this.translatedValue,
    this.$__typename = 'CompanyStage',
  });

  factory Query$FindUserDetailedProfile$findUserById$companies$companyStage.fromJson(
      Map<String, dynamic> json) {
    final l$translatedValue = json['translatedValue'];
    final l$$__typename = json['__typename'];
    return Query$FindUserDetailedProfile$findUserById$companies$companyStage(
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
            is Query$FindUserDetailedProfile$findUserById$companies$companyStage) ||
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

extension UtilityExtension$Query$FindUserDetailedProfile$findUserById$companies$companyStage
    on Query$FindUserDetailedProfile$findUserById$companies$companyStage {
  CopyWith$Query$FindUserDetailedProfile$findUserById$companies$companyStage<
          Query$FindUserDetailedProfile$findUserById$companies$companyStage>
      get copyWith =>
          CopyWith$Query$FindUserDetailedProfile$findUserById$companies$companyStage(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindUserDetailedProfile$findUserById$companies$companyStage<
    TRes> {
  factory CopyWith$Query$FindUserDetailedProfile$findUserById$companies$companyStage(
    Query$FindUserDetailedProfile$findUserById$companies$companyStage instance,
    TRes Function(
            Query$FindUserDetailedProfile$findUserById$companies$companyStage)
        then,
  ) = _CopyWithImpl$Query$FindUserDetailedProfile$findUserById$companies$companyStage;

  factory CopyWith$Query$FindUserDetailedProfile$findUserById$companies$companyStage.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindUserDetailedProfile$findUserById$companies$companyStage;

  TRes call({
    String? translatedValue,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindUserDetailedProfile$findUserById$companies$companyStage<
        TRes>
    implements
        CopyWith$Query$FindUserDetailedProfile$findUserById$companies$companyStage<
            TRes> {
  _CopyWithImpl$Query$FindUserDetailedProfile$findUserById$companies$companyStage(
    this._instance,
    this._then,
  );

  final Query$FindUserDetailedProfile$findUserById$companies$companyStage
      _instance;

  final TRes Function(
      Query$FindUserDetailedProfile$findUserById$companies$companyStage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? translatedValue = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindUserDetailedProfile$findUserById$companies$companyStage(
        translatedValue: translatedValue == _undefined
            ? _instance.translatedValue
            : (translatedValue as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FindUserDetailedProfile$findUserById$companies$companyStage<
        TRes>
    implements
        CopyWith$Query$FindUserDetailedProfile$findUserById$companies$companyStage<
            TRes> {
  _CopyWithStubImpl$Query$FindUserDetailedProfile$findUserById$companies$companyStage(
      this._res);

  TRes _res;

  call({
    String? translatedValue,
    String? $__typename,
  }) =>
      _res;
}

class Query$FindUserDetailedProfile$findUserById$companies$companyType {
  Query$FindUserDetailedProfile$findUserById$companies$companyType({
    this.translatedValue,
    this.$__typename = 'CompanyType',
  });

  factory Query$FindUserDetailedProfile$findUserById$companies$companyType.fromJson(
      Map<String, dynamic> json) {
    final l$translatedValue = json['translatedValue'];
    final l$$__typename = json['__typename'];
    return Query$FindUserDetailedProfile$findUserById$companies$companyType(
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
            is Query$FindUserDetailedProfile$findUserById$companies$companyType) ||
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

extension UtilityExtension$Query$FindUserDetailedProfile$findUserById$companies$companyType
    on Query$FindUserDetailedProfile$findUserById$companies$companyType {
  CopyWith$Query$FindUserDetailedProfile$findUserById$companies$companyType<
          Query$FindUserDetailedProfile$findUserById$companies$companyType>
      get copyWith =>
          CopyWith$Query$FindUserDetailedProfile$findUserById$companies$companyType(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindUserDetailedProfile$findUserById$companies$companyType<
    TRes> {
  factory CopyWith$Query$FindUserDetailedProfile$findUserById$companies$companyType(
    Query$FindUserDetailedProfile$findUserById$companies$companyType instance,
    TRes Function(
            Query$FindUserDetailedProfile$findUserById$companies$companyType)
        then,
  ) = _CopyWithImpl$Query$FindUserDetailedProfile$findUserById$companies$companyType;

  factory CopyWith$Query$FindUserDetailedProfile$findUserById$companies$companyType.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindUserDetailedProfile$findUserById$companies$companyType;

  TRes call({
    String? translatedValue,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindUserDetailedProfile$findUserById$companies$companyType<
        TRes>
    implements
        CopyWith$Query$FindUserDetailedProfile$findUserById$companies$companyType<
            TRes> {
  _CopyWithImpl$Query$FindUserDetailedProfile$findUserById$companies$companyType(
    this._instance,
    this._then,
  );

  final Query$FindUserDetailedProfile$findUserById$companies$companyType
      _instance;

  final TRes Function(
      Query$FindUserDetailedProfile$findUserById$companies$companyType) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? translatedValue = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindUserDetailedProfile$findUserById$companies$companyType(
        translatedValue: translatedValue == _undefined
            ? _instance.translatedValue
            : (translatedValue as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FindUserDetailedProfile$findUserById$companies$companyType<
        TRes>
    implements
        CopyWith$Query$FindUserDetailedProfile$findUserById$companies$companyType<
            TRes> {
  _CopyWithStubImpl$Query$FindUserDetailedProfile$findUserById$companies$companyType(
      this._res);

  TRes _res;

  call({
    String? translatedValue,
    String? $__typename,
  }) =>
      _res;
}

class Query$FindUserDetailedProfile$findUserById$educationLevel {
  Query$FindUserDetailedProfile$findUserById$educationLevel({
    this.translatedValue,
    this.$__typename = 'EducationLevel',
  });

  factory Query$FindUserDetailedProfile$findUserById$educationLevel.fromJson(
      Map<String, dynamic> json) {
    final l$translatedValue = json['translatedValue'];
    final l$$__typename = json['__typename'];
    return Query$FindUserDetailedProfile$findUserById$educationLevel(
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
    if (!(other is Query$FindUserDetailedProfile$findUserById$educationLevel) ||
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

extension UtilityExtension$Query$FindUserDetailedProfile$findUserById$educationLevel
    on Query$FindUserDetailedProfile$findUserById$educationLevel {
  CopyWith$Query$FindUserDetailedProfile$findUserById$educationLevel<
          Query$FindUserDetailedProfile$findUserById$educationLevel>
      get copyWith =>
          CopyWith$Query$FindUserDetailedProfile$findUserById$educationLevel(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindUserDetailedProfile$findUserById$educationLevel<
    TRes> {
  factory CopyWith$Query$FindUserDetailedProfile$findUserById$educationLevel(
    Query$FindUserDetailedProfile$findUserById$educationLevel instance,
    TRes Function(Query$FindUserDetailedProfile$findUserById$educationLevel)
        then,
  ) = _CopyWithImpl$Query$FindUserDetailedProfile$findUserById$educationLevel;

  factory CopyWith$Query$FindUserDetailedProfile$findUserById$educationLevel.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindUserDetailedProfile$findUserById$educationLevel;

  TRes call({
    String? translatedValue,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindUserDetailedProfile$findUserById$educationLevel<
        TRes>
    implements
        CopyWith$Query$FindUserDetailedProfile$findUserById$educationLevel<
            TRes> {
  _CopyWithImpl$Query$FindUserDetailedProfile$findUserById$educationLevel(
    this._instance,
    this._then,
  );

  final Query$FindUserDetailedProfile$findUserById$educationLevel _instance;

  final TRes Function(Query$FindUserDetailedProfile$findUserById$educationLevel)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? translatedValue = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindUserDetailedProfile$findUserById$educationLevel(
        translatedValue: translatedValue == _undefined
            ? _instance.translatedValue
            : (translatedValue as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FindUserDetailedProfile$findUserById$educationLevel<
        TRes>
    implements
        CopyWith$Query$FindUserDetailedProfile$findUserById$educationLevel<
            TRes> {
  _CopyWithStubImpl$Query$FindUserDetailedProfile$findUserById$educationLevel(
      this._res);

  TRes _res;

  call({
    String? translatedValue,
    String? $__typename,
  }) =>
      _res;
}

class Query$FindUserDetailedProfile$findUserById$spokenLanguages {
  Query$FindUserDetailedProfile$findUserById$spokenLanguages({
    this.translatedValue,
    this.$__typename = 'Language',
  });

  factory Query$FindUserDetailedProfile$findUserById$spokenLanguages.fromJson(
      Map<String, dynamic> json) {
    final l$translatedValue = json['translatedValue'];
    final l$$__typename = json['__typename'];
    return Query$FindUserDetailedProfile$findUserById$spokenLanguages(
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
            is Query$FindUserDetailedProfile$findUserById$spokenLanguages) ||
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

extension UtilityExtension$Query$FindUserDetailedProfile$findUserById$spokenLanguages
    on Query$FindUserDetailedProfile$findUserById$spokenLanguages {
  CopyWith$Query$FindUserDetailedProfile$findUserById$spokenLanguages<
          Query$FindUserDetailedProfile$findUserById$spokenLanguages>
      get copyWith =>
          CopyWith$Query$FindUserDetailedProfile$findUserById$spokenLanguages(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindUserDetailedProfile$findUserById$spokenLanguages<
    TRes> {
  factory CopyWith$Query$FindUserDetailedProfile$findUserById$spokenLanguages(
    Query$FindUserDetailedProfile$findUserById$spokenLanguages instance,
    TRes Function(Query$FindUserDetailedProfile$findUserById$spokenLanguages)
        then,
  ) = _CopyWithImpl$Query$FindUserDetailedProfile$findUserById$spokenLanguages;

  factory CopyWith$Query$FindUserDetailedProfile$findUserById$spokenLanguages.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindUserDetailedProfile$findUserById$spokenLanguages;

  TRes call({
    String? translatedValue,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindUserDetailedProfile$findUserById$spokenLanguages<
        TRes>
    implements
        CopyWith$Query$FindUserDetailedProfile$findUserById$spokenLanguages<
            TRes> {
  _CopyWithImpl$Query$FindUserDetailedProfile$findUserById$spokenLanguages(
    this._instance,
    this._then,
  );

  final Query$FindUserDetailedProfile$findUserById$spokenLanguages _instance;

  final TRes Function(
      Query$FindUserDetailedProfile$findUserById$spokenLanguages) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? translatedValue = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindUserDetailedProfile$findUserById$spokenLanguages(
        translatedValue: translatedValue == _undefined
            ? _instance.translatedValue
            : (translatedValue as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FindUserDetailedProfile$findUserById$spokenLanguages<
        TRes>
    implements
        CopyWith$Query$FindUserDetailedProfile$findUserById$spokenLanguages<
            TRes> {
  _CopyWithStubImpl$Query$FindUserDetailedProfile$findUserById$spokenLanguages(
      this._res);

  TRes _res;

  call({
    String? translatedValue,
    String? $__typename,
  }) =>
      _res;
}

class Query$FindUserDetailedProfile$findUserById$websites {
  Query$FindUserDetailedProfile$findUserById$websites({
    required this.value,
    this.$__typename = 'LabeledStringValue',
  });

  factory Query$FindUserDetailedProfile$findUserById$websites.fromJson(
      Map<String, dynamic> json) {
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$FindUserDetailedProfile$findUserById$websites(
      value: (l$value as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$value = value;
    _resultData['value'] = l$value;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$value,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FindUserDetailedProfile$findUserById$websites) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
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

extension UtilityExtension$Query$FindUserDetailedProfile$findUserById$websites
    on Query$FindUserDetailedProfile$findUserById$websites {
  CopyWith$Query$FindUserDetailedProfile$findUserById$websites<
          Query$FindUserDetailedProfile$findUserById$websites>
      get copyWith =>
          CopyWith$Query$FindUserDetailedProfile$findUserById$websites(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindUserDetailedProfile$findUserById$websites<
    TRes> {
  factory CopyWith$Query$FindUserDetailedProfile$findUserById$websites(
    Query$FindUserDetailedProfile$findUserById$websites instance,
    TRes Function(Query$FindUserDetailedProfile$findUserById$websites) then,
  ) = _CopyWithImpl$Query$FindUserDetailedProfile$findUserById$websites;

  factory CopyWith$Query$FindUserDetailedProfile$findUserById$websites.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindUserDetailedProfile$findUserById$websites;

  TRes call({
    String? value,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindUserDetailedProfile$findUserById$websites<TRes>
    implements
        CopyWith$Query$FindUserDetailedProfile$findUserById$websites<TRes> {
  _CopyWithImpl$Query$FindUserDetailedProfile$findUserById$websites(
    this._instance,
    this._then,
  );

  final Query$FindUserDetailedProfile$findUserById$websites _instance;

  final TRes Function(Query$FindUserDetailedProfile$findUserById$websites)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindUserDetailedProfile$findUserById$websites(
        value: value == _undefined || value == null
            ? _instance.value
            : (value as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FindUserDetailedProfile$findUserById$websites<
        TRes>
    implements
        CopyWith$Query$FindUserDetailedProfile$findUserById$websites<TRes> {
  _CopyWithStubImpl$Query$FindUserDetailedProfile$findUserById$websites(
      this._res);

  TRes _res;

  call({
    String? value,
    String? $__typename,
  }) =>
      _res;
}

class Query$FindUserDetailedProfile$findUserById$groupMemberships {
  Query$FindUserDetailedProfile$findUserById$groupMemberships({
    required this.groupIdent,
    required this.$__typename,
  });

  factory Query$FindUserDetailedProfile$findUserById$groupMemberships.fromJson(
      Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "MenteesGroupMembership":
        return Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership
            .fromJson(json);

      case "MentorsGroupMembership":
        return Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership
            .fromJson(json);

      case "GroupMembership":
        return Query$FindUserDetailedProfile$findUserById$groupMemberships$$GroupMembership
            .fromJson(json);

      default:
        final l$groupIdent = json['groupIdent'];
        final l$$__typename = json['__typename'];
        return Query$FindUserDetailedProfile$findUserById$groupMemberships(
          groupIdent: (l$groupIdent as String),
          $__typename: (l$$__typename as String),
        );
    }
  }

  final String groupIdent;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$groupIdent = groupIdent;
    _resultData['groupIdent'] = l$groupIdent;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$groupIdent = groupIdent;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$groupIdent,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$FindUserDetailedProfile$findUserById$groupMemberships) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$groupIdent = groupIdent;
    final lOther$groupIdent = other.groupIdent;
    if (l$groupIdent != lOther$groupIdent) {
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

extension UtilityExtension$Query$FindUserDetailedProfile$findUserById$groupMemberships
    on Query$FindUserDetailedProfile$findUserById$groupMemberships {
  CopyWith$Query$FindUserDetailedProfile$findUserById$groupMemberships<
          Query$FindUserDetailedProfile$findUserById$groupMemberships>
      get copyWith =>
          CopyWith$Query$FindUserDetailedProfile$findUserById$groupMemberships(
            this,
            (i) => i,
          );
  _T when<_T>({
    required _T Function(
            Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership)
        menteesGroupMembership,
    required _T Function(
            Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership)
        mentorsGroupMembership,
    required _T Function(
            Query$FindUserDetailedProfile$findUserById$groupMemberships$$GroupMembership)
        groupMembership,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "MenteesGroupMembership":
        return menteesGroupMembership(this
            as Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership);

      case "MentorsGroupMembership":
        return mentorsGroupMembership(this
            as Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership);

      case "GroupMembership":
        return groupMembership(this
            as Query$FindUserDetailedProfile$findUserById$groupMemberships$$GroupMembership);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(
            Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership)?
        menteesGroupMembership,
    _T Function(
            Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership)?
        mentorsGroupMembership,
    _T Function(
            Query$FindUserDetailedProfile$findUserById$groupMemberships$$GroupMembership)?
        groupMembership,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "MenteesGroupMembership":
        if (menteesGroupMembership != null) {
          return menteesGroupMembership(this
              as Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership);
        } else {
          return orElse();
        }

      case "MentorsGroupMembership":
        if (mentorsGroupMembership != null) {
          return mentorsGroupMembership(this
              as Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership);
        } else {
          return orElse();
        }

      case "GroupMembership":
        if (groupMembership != null) {
          return groupMembership(this
              as Query$FindUserDetailedProfile$findUserById$groupMemberships$$GroupMembership);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Query$FindUserDetailedProfile$findUserById$groupMemberships<
    TRes> {
  factory CopyWith$Query$FindUserDetailedProfile$findUserById$groupMemberships(
    Query$FindUserDetailedProfile$findUserById$groupMemberships instance,
    TRes Function(Query$FindUserDetailedProfile$findUserById$groupMemberships)
        then,
  ) = _CopyWithImpl$Query$FindUserDetailedProfile$findUserById$groupMemberships;

  factory CopyWith$Query$FindUserDetailedProfile$findUserById$groupMemberships.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindUserDetailedProfile$findUserById$groupMemberships;

  TRes call({
    String? groupIdent,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindUserDetailedProfile$findUserById$groupMemberships<
        TRes>
    implements
        CopyWith$Query$FindUserDetailedProfile$findUserById$groupMemberships<
            TRes> {
  _CopyWithImpl$Query$FindUserDetailedProfile$findUserById$groupMemberships(
    this._instance,
    this._then,
  );

  final Query$FindUserDetailedProfile$findUserById$groupMemberships _instance;

  final TRes Function(
      Query$FindUserDetailedProfile$findUserById$groupMemberships) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? groupIdent = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindUserDetailedProfile$findUserById$groupMemberships(
        groupIdent: groupIdent == _undefined || groupIdent == null
            ? _instance.groupIdent
            : (groupIdent as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FindUserDetailedProfile$findUserById$groupMemberships<
        TRes>
    implements
        CopyWith$Query$FindUserDetailedProfile$findUserById$groupMemberships<
            TRes> {
  _CopyWithStubImpl$Query$FindUserDetailedProfile$findUserById$groupMemberships(
      this._res);

  TRes _res;

  call({
    String? groupIdent,
    String? $__typename,
  }) =>
      _res;
}

class Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership
    implements Query$FindUserDetailedProfile$findUserById$groupMemberships {
  Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership({
    this.industry,
    required this.soughtExpertises,
    this.$__typename = 'MenteesGroupMembership',
    required this.groupIdent,
  });

  factory Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership.fromJson(
      Map<String, dynamic> json) {
    final l$industry = json['industry'];
    final l$soughtExpertises = json['soughtExpertises'];
    final l$$__typename = json['__typename'];
    final l$groupIdent = json['groupIdent'];
    return Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership(
      industry: l$industry == null
          ? null
          : Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$industry
              .fromJson((l$industry as Map<String, dynamic>)),
      soughtExpertises: (l$soughtExpertises as List<dynamic>)
          .map((e) =>
              Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$soughtExpertises
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
      groupIdent: (l$groupIdent as String),
    );
  }

  final Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$industry?
      industry;

  final List<
          Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$soughtExpertises>
      soughtExpertises;

  final String $__typename;

  final String groupIdent;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$industry = industry;
    _resultData['industry'] = l$industry?.toJson();
    final l$soughtExpertises = soughtExpertises;
    _resultData['soughtExpertises'] =
        l$soughtExpertises.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$groupIdent = groupIdent;
    _resultData['groupIdent'] = l$groupIdent;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$industry = industry;
    final l$soughtExpertises = soughtExpertises;
    final l$$__typename = $__typename;
    final l$groupIdent = groupIdent;
    return Object.hashAll([
      l$industry,
      Object.hashAll(l$soughtExpertises.map((v) => v)),
      l$$__typename,
      l$groupIdent,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$industry = industry;
    final lOther$industry = other.industry;
    if (l$industry != lOther$industry) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$groupIdent = groupIdent;
    final lOther$groupIdent = other.groupIdent;
    if (l$groupIdent != lOther$groupIdent) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership
    on Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership {
  CopyWith$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership<
          Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership>
      get copyWith =>
          CopyWith$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership<
    TRes> {
  factory CopyWith$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership(
    Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership
        instance,
    TRes Function(
            Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership)
        then,
  ) = _CopyWithImpl$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership;

  factory CopyWith$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership;

  TRes call({
    Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$industry?
        industry,
    List<Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$soughtExpertises>?
        soughtExpertises,
    String? $__typename,
    String? groupIdent,
  });
  CopyWith$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$industry<
      TRes> get industry;
  TRes soughtExpertises(
      Iterable<Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$soughtExpertises> Function(
              Iterable<
                  CopyWith$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$soughtExpertises<
                      Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$soughtExpertises>>)
          _fn);
}

class _CopyWithImpl$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership<
        TRes>
    implements
        CopyWith$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership<
            TRes> {
  _CopyWithImpl$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership(
    this._instance,
    this._then,
  );

  final Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership
      _instance;

  final TRes Function(
          Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? industry = _undefined,
    Object? soughtExpertises = _undefined,
    Object? $__typename = _undefined,
    Object? groupIdent = _undefined,
  }) =>
      _then(
          Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership(
        industry: industry == _undefined
            ? _instance.industry
            : (industry
                as Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$industry?),
        soughtExpertises: soughtExpertises == _undefined ||
                soughtExpertises == null
            ? _instance.soughtExpertises
            : (soughtExpertises as List<
                Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$soughtExpertises>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        groupIdent: groupIdent == _undefined || groupIdent == null
            ? _instance.groupIdent
            : (groupIdent as String),
      ));
  CopyWith$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$industry<
      TRes> get industry {
    final local$industry = _instance.industry;
    return local$industry == null
        ? CopyWith$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$industry
            .stub(_then(_instance))
        : CopyWith$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$industry(
            local$industry, (e) => call(industry: e));
  }

  TRes soughtExpertises(
          Iterable<Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$soughtExpertises> Function(
                  Iterable<
                      CopyWith$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$soughtExpertises<
                          Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$soughtExpertises>>)
              _fn) =>
      call(
          soughtExpertises: _fn(_instance.soughtExpertises.map((e) =>
              CopyWith$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$soughtExpertises(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership<
        TRes>
    implements
        CopyWith$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership<
            TRes> {
  _CopyWithStubImpl$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership(
      this._res);

  TRes _res;

  call({
    Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$industry?
        industry,
    List<Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$soughtExpertises>?
        soughtExpertises,
    String? $__typename,
    String? groupIdent,
  }) =>
      _res;
  CopyWith$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$industry<
          TRes>
      get industry =>
          CopyWith$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$industry
              .stub(_res);
  soughtExpertises(_fn) => _res;
}

class Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$industry {
  Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$industry({
    this.translatedValue,
    this.$__typename = 'Industry',
  });

  factory Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$industry.fromJson(
      Map<String, dynamic> json) {
    final l$translatedValue = json['translatedValue'];
    final l$$__typename = json['__typename'];
    return Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$industry(
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
            is Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$industry) ||
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

extension UtilityExtension$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$industry
    on Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$industry {
  CopyWith$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$industry<
          Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$industry>
      get copyWith =>
          CopyWith$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$industry(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$industry<
    TRes> {
  factory CopyWith$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$industry(
    Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$industry
        instance,
    TRes Function(
            Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$industry)
        then,
  ) = _CopyWithImpl$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$industry;

  factory CopyWith$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$industry.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$industry;

  TRes call({
    String? translatedValue,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$industry<
        TRes>
    implements
        CopyWith$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$industry<
            TRes> {
  _CopyWithImpl$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$industry(
    this._instance,
    this._then,
  );

  final Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$industry
      _instance;

  final TRes Function(
          Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$industry)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? translatedValue = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$industry(
        translatedValue: translatedValue == _undefined
            ? _instance.translatedValue
            : (translatedValue as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$industry<
        TRes>
    implements
        CopyWith$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$industry<
            TRes> {
  _CopyWithStubImpl$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$industry(
      this._res);

  TRes _res;

  call({
    String? translatedValue,
    String? $__typename,
  }) =>
      _res;
}

class Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$soughtExpertises {
  Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$soughtExpertises({
    this.translatedValue,
    this.$__typename = 'Expertise',
  });

  factory Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$soughtExpertises.fromJson(
      Map<String, dynamic> json) {
    final l$translatedValue = json['translatedValue'];
    final l$$__typename = json['__typename'];
    return Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$soughtExpertises(
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
            is Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$soughtExpertises) ||
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

extension UtilityExtension$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$soughtExpertises
    on Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$soughtExpertises {
  CopyWith$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$soughtExpertises<
          Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$soughtExpertises>
      get copyWith =>
          CopyWith$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$soughtExpertises(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$soughtExpertises<
    TRes> {
  factory CopyWith$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$soughtExpertises(
    Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$soughtExpertises
        instance,
    TRes Function(
            Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$soughtExpertises)
        then,
  ) = _CopyWithImpl$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$soughtExpertises;

  factory CopyWith$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$soughtExpertises.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$soughtExpertises;

  TRes call({
    String? translatedValue,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$soughtExpertises<
        TRes>
    implements
        CopyWith$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$soughtExpertises<
            TRes> {
  _CopyWithImpl$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$soughtExpertises(
    this._instance,
    this._then,
  );

  final Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$soughtExpertises
      _instance;

  final TRes Function(
          Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$soughtExpertises)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? translatedValue = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$soughtExpertises(
        translatedValue: translatedValue == _undefined
            ? _instance.translatedValue
            : (translatedValue as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$soughtExpertises<
        TRes>
    implements
        CopyWith$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$soughtExpertises<
            TRes> {
  _CopyWithStubImpl$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$soughtExpertises(
      this._res);

  TRes _res;

  call({
    String? translatedValue,
    String? $__typename,
  }) =>
      _res;
}

class Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership
    implements Query$FindUserDetailedProfile$findUserById$groupMemberships {
  Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership({
    required this.industries,
    required this.expertises,
    this.$__typename = 'MentorsGroupMembership',
    required this.groupIdent,
  });

  factory Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership.fromJson(
      Map<String, dynamic> json) {
    final l$industries = json['industries'];
    final l$expertises = json['expertises'];
    final l$$__typename = json['__typename'];
    final l$groupIdent = json['groupIdent'];
    return Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership(
      industries: (l$industries as List<dynamic>)
          .map((e) =>
              Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$industries
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      expertises: (l$expertises as List<dynamic>)
          .map((e) =>
              Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$expertises
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
      groupIdent: (l$groupIdent as String),
    );
  }

  final List<
          Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$industries>
      industries;

  final List<
          Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$expertises>
      expertises;

  final String $__typename;

  final String groupIdent;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$industries = industries;
    _resultData['industries'] = l$industries.map((e) => e.toJson()).toList();
    final l$expertises = expertises;
    _resultData['expertises'] = l$expertises.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$groupIdent = groupIdent;
    _resultData['groupIdent'] = l$groupIdent;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$industries = industries;
    final l$expertises = expertises;
    final l$$__typename = $__typename;
    final l$groupIdent = groupIdent;
    return Object.hashAll([
      Object.hashAll(l$industries.map((v) => v)),
      Object.hashAll(l$expertises.map((v) => v)),
      l$$__typename,
      l$groupIdent,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership) ||
        runtimeType != other.runtimeType) {
      return false;
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$groupIdent = groupIdent;
    final lOther$groupIdent = other.groupIdent;
    if (l$groupIdent != lOther$groupIdent) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership
    on Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership {
  CopyWith$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership<
          Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership>
      get copyWith =>
          CopyWith$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership<
    TRes> {
  factory CopyWith$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership(
    Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership
        instance,
    TRes Function(
            Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership)
        then,
  ) = _CopyWithImpl$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership;

  factory CopyWith$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership;

  TRes call({
    List<Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$industries>?
        industries,
    List<Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$expertises>?
        expertises,
    String? $__typename,
    String? groupIdent,
  });
  TRes industries(
      Iterable<Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$industries> Function(
              Iterable<
                  CopyWith$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$industries<
                      Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$industries>>)
          _fn);
  TRes expertises(
      Iterable<Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$expertises> Function(
              Iterable<
                  CopyWith$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$expertises<
                      Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$expertises>>)
          _fn);
}

class _CopyWithImpl$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership<
        TRes>
    implements
        CopyWith$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership<
            TRes> {
  _CopyWithImpl$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership(
    this._instance,
    this._then,
  );

  final Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership
      _instance;

  final TRes Function(
          Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? industries = _undefined,
    Object? expertises = _undefined,
    Object? $__typename = _undefined,
    Object? groupIdent = _undefined,
  }) =>
      _then(
          Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership(
        industries: industries == _undefined || industries == null
            ? _instance.industries
            : (industries as List<
                Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$industries>),
        expertises: expertises == _undefined || expertises == null
            ? _instance.expertises
            : (expertises as List<
                Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$expertises>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        groupIdent: groupIdent == _undefined || groupIdent == null
            ? _instance.groupIdent
            : (groupIdent as String),
      ));
  TRes industries(
          Iterable<Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$industries> Function(
                  Iterable<
                      CopyWith$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$industries<
                          Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$industries>>)
              _fn) =>
      call(
          industries: _fn(_instance.industries.map((e) =>
              CopyWith$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$industries(
                e,
                (i) => i,
              ))).toList());
  TRes expertises(
          Iterable<Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$expertises> Function(
                  Iterable<
                      CopyWith$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$expertises<
                          Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$expertises>>)
              _fn) =>
      call(
          expertises: _fn(_instance.expertises.map((e) =>
              CopyWith$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$expertises(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership<
        TRes>
    implements
        CopyWith$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership<
            TRes> {
  _CopyWithStubImpl$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership(
      this._res);

  TRes _res;

  call({
    List<Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$industries>?
        industries,
    List<Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$expertises>?
        expertises,
    String? $__typename,
    String? groupIdent,
  }) =>
      _res;
  industries(_fn) => _res;
  expertises(_fn) => _res;
}

class Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$industries {
  Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$industries({
    this.translatedValue,
    this.$__typename = 'Industry',
  });

  factory Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$industries.fromJson(
      Map<String, dynamic> json) {
    final l$translatedValue = json['translatedValue'];
    final l$$__typename = json['__typename'];
    return Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$industries(
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
            is Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$industries) ||
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

extension UtilityExtension$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$industries
    on Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$industries {
  CopyWith$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$industries<
          Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$industries>
      get copyWith =>
          CopyWith$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$industries(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$industries<
    TRes> {
  factory CopyWith$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$industries(
    Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$industries
        instance,
    TRes Function(
            Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$industries)
        then,
  ) = _CopyWithImpl$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$industries;

  factory CopyWith$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$industries.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$industries;

  TRes call({
    String? translatedValue,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$industries<
        TRes>
    implements
        CopyWith$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$industries<
            TRes> {
  _CopyWithImpl$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$industries(
    this._instance,
    this._then,
  );

  final Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$industries
      _instance;

  final TRes Function(
          Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$industries)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? translatedValue = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$industries(
        translatedValue: translatedValue == _undefined
            ? _instance.translatedValue
            : (translatedValue as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$industries<
        TRes>
    implements
        CopyWith$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$industries<
            TRes> {
  _CopyWithStubImpl$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$industries(
      this._res);

  TRes _res;

  call({
    String? translatedValue,
    String? $__typename,
  }) =>
      _res;
}

class Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$expertises {
  Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$expertises({
    this.translatedValue,
    this.$__typename = 'Expertise',
  });

  factory Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$expertises.fromJson(
      Map<String, dynamic> json) {
    final l$translatedValue = json['translatedValue'];
    final l$$__typename = json['__typename'];
    return Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$expertises(
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
            is Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$expertises) ||
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

extension UtilityExtension$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$expertises
    on Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$expertises {
  CopyWith$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$expertises<
          Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$expertises>
      get copyWith =>
          CopyWith$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$expertises(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$expertises<
    TRes> {
  factory CopyWith$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$expertises(
    Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$expertises
        instance,
    TRes Function(
            Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$expertises)
        then,
  ) = _CopyWithImpl$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$expertises;

  factory CopyWith$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$expertises.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$expertises;

  TRes call({
    String? translatedValue,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$expertises<
        TRes>
    implements
        CopyWith$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$expertises<
            TRes> {
  _CopyWithImpl$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$expertises(
    this._instance,
    this._then,
  );

  final Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$expertises
      _instance;

  final TRes Function(
          Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$expertises)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? translatedValue = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$expertises(
        translatedValue: translatedValue == _undefined
            ? _instance.translatedValue
            : (translatedValue as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$expertises<
        TRes>
    implements
        CopyWith$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$expertises<
            TRes> {
  _CopyWithStubImpl$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$expertises(
      this._res);

  TRes _res;

  call({
    String? translatedValue,
    String? $__typename,
  }) =>
      _res;
}

class Query$FindUserDetailedProfile$findUserById$groupMemberships$$GroupMembership
    implements Query$FindUserDetailedProfile$findUserById$groupMemberships {
  Query$FindUserDetailedProfile$findUserById$groupMemberships$$GroupMembership({
    required this.groupIdent,
    this.$__typename = 'GroupMembership',
  });

  factory Query$FindUserDetailedProfile$findUserById$groupMemberships$$GroupMembership.fromJson(
      Map<String, dynamic> json) {
    final l$groupIdent = json['groupIdent'];
    final l$$__typename = json['__typename'];
    return Query$FindUserDetailedProfile$findUserById$groupMemberships$$GroupMembership(
      groupIdent: (l$groupIdent as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String groupIdent;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$groupIdent = groupIdent;
    _resultData['groupIdent'] = l$groupIdent;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$groupIdent = groupIdent;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$groupIdent,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$FindUserDetailedProfile$findUserById$groupMemberships$$GroupMembership) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$groupIdent = groupIdent;
    final lOther$groupIdent = other.groupIdent;
    if (l$groupIdent != lOther$groupIdent) {
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

extension UtilityExtension$Query$FindUserDetailedProfile$findUserById$groupMemberships$$GroupMembership
    on Query$FindUserDetailedProfile$findUserById$groupMemberships$$GroupMembership {
  CopyWith$Query$FindUserDetailedProfile$findUserById$groupMemberships$$GroupMembership<
          Query$FindUserDetailedProfile$findUserById$groupMemberships$$GroupMembership>
      get copyWith =>
          CopyWith$Query$FindUserDetailedProfile$findUserById$groupMemberships$$GroupMembership(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindUserDetailedProfile$findUserById$groupMemberships$$GroupMembership<
    TRes> {
  factory CopyWith$Query$FindUserDetailedProfile$findUserById$groupMemberships$$GroupMembership(
    Query$FindUserDetailedProfile$findUserById$groupMemberships$$GroupMembership
        instance,
    TRes Function(
            Query$FindUserDetailedProfile$findUserById$groupMemberships$$GroupMembership)
        then,
  ) = _CopyWithImpl$Query$FindUserDetailedProfile$findUserById$groupMemberships$$GroupMembership;

  factory CopyWith$Query$FindUserDetailedProfile$findUserById$groupMemberships$$GroupMembership.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindUserDetailedProfile$findUserById$groupMemberships$$GroupMembership;

  TRes call({
    String? groupIdent,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindUserDetailedProfile$findUserById$groupMemberships$$GroupMembership<
        TRes>
    implements
        CopyWith$Query$FindUserDetailedProfile$findUserById$groupMemberships$$GroupMembership<
            TRes> {
  _CopyWithImpl$Query$FindUserDetailedProfile$findUserById$groupMemberships$$GroupMembership(
    this._instance,
    this._then,
  );

  final Query$FindUserDetailedProfile$findUserById$groupMemberships$$GroupMembership
      _instance;

  final TRes Function(
          Query$FindUserDetailedProfile$findUserById$groupMemberships$$GroupMembership)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? groupIdent = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$FindUserDetailedProfile$findUserById$groupMemberships$$GroupMembership(
        groupIdent: groupIdent == _undefined || groupIdent == null
            ? _instance.groupIdent
            : (groupIdent as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FindUserDetailedProfile$findUserById$groupMemberships$$GroupMembership<
        TRes>
    implements
        CopyWith$Query$FindUserDetailedProfile$findUserById$groupMemberships$$GroupMembership<
            TRes> {
  _CopyWithStubImpl$Query$FindUserDetailedProfile$findUserById$groupMemberships$$GroupMembership(
      this._res);

  TRes _res;

  call({
    String? groupIdent,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$FindUserQuickViewProfile {
  factory Variables$Query$FindUserQuickViewProfile({required String userId}) =>
      Variables$Query$FindUserQuickViewProfile._({
        r'userId': userId,
      });

  Variables$Query$FindUserQuickViewProfile._(this._$data);

  factory Variables$Query$FindUserQuickViewProfile.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$userId = data['userId'];
    result$data['userId'] = (l$userId as String);
    return Variables$Query$FindUserQuickViewProfile._(result$data);
  }

  Map<String, dynamic> _$data;

  String get userId => (_$data['userId'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$userId = userId;
    result$data['userId'] = l$userId;
    return result$data;
  }

  CopyWith$Variables$Query$FindUserQuickViewProfile<
          Variables$Query$FindUserQuickViewProfile>
      get copyWith => CopyWith$Variables$Query$FindUserQuickViewProfile(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$FindUserQuickViewProfile) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$userId = userId;
    return Object.hashAll([l$userId]);
  }
}

abstract class CopyWith$Variables$Query$FindUserQuickViewProfile<TRes> {
  factory CopyWith$Variables$Query$FindUserQuickViewProfile(
    Variables$Query$FindUserQuickViewProfile instance,
    TRes Function(Variables$Query$FindUserQuickViewProfile) then,
  ) = _CopyWithImpl$Variables$Query$FindUserQuickViewProfile;

  factory CopyWith$Variables$Query$FindUserQuickViewProfile.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$FindUserQuickViewProfile;

  TRes call({String? userId});
}

class _CopyWithImpl$Variables$Query$FindUserQuickViewProfile<TRes>
    implements CopyWith$Variables$Query$FindUserQuickViewProfile<TRes> {
  _CopyWithImpl$Variables$Query$FindUserQuickViewProfile(
    this._instance,
    this._then,
  );

  final Variables$Query$FindUserQuickViewProfile _instance;

  final TRes Function(Variables$Query$FindUserQuickViewProfile) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? userId = _undefined}) =>
      _then(Variables$Query$FindUserQuickViewProfile._({
        ..._instance._$data,
        if (userId != _undefined && userId != null)
          'userId': (userId as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$FindUserQuickViewProfile<TRes>
    implements CopyWith$Variables$Query$FindUserQuickViewProfile<TRes> {
  _CopyWithStubImpl$Variables$Query$FindUserQuickViewProfile(this._res);

  TRes _res;

  call({String? userId}) => _res;
}

class Query$FindUserQuickViewProfile {
  Query$FindUserQuickViewProfile({
    required this.findUserById,
    this.$__typename = 'Query',
  });

  factory Query$FindUserQuickViewProfile.fromJson(Map<String, dynamic> json) {
    final l$findUserById = json['findUserById'];
    final l$$__typename = json['__typename'];
    return Query$FindUserQuickViewProfile(
      findUserById: Query$FindUserQuickViewProfile$findUserById.fromJson(
          (l$findUserById as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$FindUserQuickViewProfile$findUserById findUserById;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$findUserById = findUserById;
    _resultData['findUserById'] = l$findUserById.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$findUserById = findUserById;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$findUserById,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FindUserQuickViewProfile) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$findUserById = findUserById;
    final lOther$findUserById = other.findUserById;
    if (l$findUserById != lOther$findUserById) {
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

extension UtilityExtension$Query$FindUserQuickViewProfile
    on Query$FindUserQuickViewProfile {
  CopyWith$Query$FindUserQuickViewProfile<Query$FindUserQuickViewProfile>
      get copyWith => CopyWith$Query$FindUserQuickViewProfile(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindUserQuickViewProfile<TRes> {
  factory CopyWith$Query$FindUserQuickViewProfile(
    Query$FindUserQuickViewProfile instance,
    TRes Function(Query$FindUserQuickViewProfile) then,
  ) = _CopyWithImpl$Query$FindUserQuickViewProfile;

  factory CopyWith$Query$FindUserQuickViewProfile.stub(TRes res) =
      _CopyWithStubImpl$Query$FindUserQuickViewProfile;

  TRes call({
    Query$FindUserQuickViewProfile$findUserById? findUserById,
    String? $__typename,
  });
  CopyWith$Query$FindUserQuickViewProfile$findUserById<TRes> get findUserById;
}

class _CopyWithImpl$Query$FindUserQuickViewProfile<TRes>
    implements CopyWith$Query$FindUserQuickViewProfile<TRes> {
  _CopyWithImpl$Query$FindUserQuickViewProfile(
    this._instance,
    this._then,
  );

  final Query$FindUserQuickViewProfile _instance;

  final TRes Function(Query$FindUserQuickViewProfile) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? findUserById = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindUserQuickViewProfile(
        findUserById: findUserById == _undefined || findUserById == null
            ? _instance.findUserById
            : (findUserById as Query$FindUserQuickViewProfile$findUserById),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$FindUserQuickViewProfile$findUserById<TRes> get findUserById {
    final local$findUserById = _instance.findUserById;
    return CopyWith$Query$FindUserQuickViewProfile$findUserById(
        local$findUserById, (e) => call(findUserById: e));
  }
}

class _CopyWithStubImpl$Query$FindUserQuickViewProfile<TRes>
    implements CopyWith$Query$FindUserQuickViewProfile<TRes> {
  _CopyWithStubImpl$Query$FindUserQuickViewProfile(this._res);

  TRes _res;

  call({
    Query$FindUserQuickViewProfile$findUserById? findUserById,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$FindUserQuickViewProfile$findUserById<TRes> get findUserById =>
      CopyWith$Query$FindUserQuickViewProfile$findUserById.stub(_res);
}

const documentNodeQueryFindUserQuickViewProfile = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FindUserQuickViewProfile'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'userId')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'findUserById'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'userId')),
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
            name: NameNode(value: 'avatarUrl'),
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
            name: NameNode(value: 'regionOfResidence'),
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
            name: NameNode(value: 'companies'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'name'),
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
            name: NameNode(value: 'offersHelp'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'seeksHelp'),
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
                name: NameNode(value: 'groupIdent'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
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
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
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

class Query$FindUserQuickViewProfile$findUserById {
  Query$FindUserQuickViewProfile$findUserById({
    required this.id,
    this.avatarUrl,
    this.fullName,
    this.regionOfResidence,
    this.cityOfResidence,
    this.countryOfResidence,
    this.jobTitle,
    required this.companies,
    required this.offersHelp,
    required this.seeksHelp,
    required this.groupMemberships,
    this.$__typename = 'User',
  });

  factory Query$FindUserQuickViewProfile$findUserById.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$avatarUrl = json['avatarUrl'];
    final l$fullName = json['fullName'];
    final l$regionOfResidence = json['regionOfResidence'];
    final l$cityOfResidence = json['cityOfResidence'];
    final l$countryOfResidence = json['countryOfResidence'];
    final l$jobTitle = json['jobTitle'];
    final l$companies = json['companies'];
    final l$offersHelp = json['offersHelp'];
    final l$seeksHelp = json['seeksHelp'];
    final l$groupMemberships = json['groupMemberships'];
    final l$$__typename = json['__typename'];
    return Query$FindUserQuickViewProfile$findUserById(
      id: (l$id as String),
      avatarUrl: (l$avatarUrl as String?),
      fullName: (l$fullName as String?),
      regionOfResidence: (l$regionOfResidence as String?),
      cityOfResidence: (l$cityOfResidence as String?),
      countryOfResidence: l$countryOfResidence == null
          ? null
          : Query$FindUserQuickViewProfile$findUserById$countryOfResidence
              .fromJson((l$countryOfResidence as Map<String, dynamic>)),
      jobTitle: (l$jobTitle as String?),
      companies: (l$companies as List<dynamic>)
          .map((e) =>
              Query$FindUserQuickViewProfile$findUserById$companies.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      offersHelp: (l$offersHelp as bool),
      seeksHelp: (l$seeksHelp as bool),
      groupMemberships: (l$groupMemberships as List<dynamic>)
          .map((e) =>
              Query$FindUserQuickViewProfile$findUserById$groupMemberships
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String? avatarUrl;

  final String? fullName;

  final String? regionOfResidence;

  final String? cityOfResidence;

  final Query$FindUserQuickViewProfile$findUserById$countryOfResidence?
      countryOfResidence;

  final String? jobTitle;

  final List<Query$FindUserQuickViewProfile$findUserById$companies> companies;

  final bool offersHelp;

  final bool seeksHelp;

  final List<Query$FindUserQuickViewProfile$findUserById$groupMemberships>
      groupMemberships;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$avatarUrl = avatarUrl;
    _resultData['avatarUrl'] = l$avatarUrl;
    final l$fullName = fullName;
    _resultData['fullName'] = l$fullName;
    final l$regionOfResidence = regionOfResidence;
    _resultData['regionOfResidence'] = l$regionOfResidence;
    final l$cityOfResidence = cityOfResidence;
    _resultData['cityOfResidence'] = l$cityOfResidence;
    final l$countryOfResidence = countryOfResidence;
    _resultData['countryOfResidence'] = l$countryOfResidence?.toJson();
    final l$jobTitle = jobTitle;
    _resultData['jobTitle'] = l$jobTitle;
    final l$companies = companies;
    _resultData['companies'] = l$companies.map((e) => e.toJson()).toList();
    final l$offersHelp = offersHelp;
    _resultData['offersHelp'] = l$offersHelp;
    final l$seeksHelp = seeksHelp;
    _resultData['seeksHelp'] = l$seeksHelp;
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
    final l$avatarUrl = avatarUrl;
    final l$fullName = fullName;
    final l$regionOfResidence = regionOfResidence;
    final l$cityOfResidence = cityOfResidence;
    final l$countryOfResidence = countryOfResidence;
    final l$jobTitle = jobTitle;
    final l$companies = companies;
    final l$offersHelp = offersHelp;
    final l$seeksHelp = seeksHelp;
    final l$groupMemberships = groupMemberships;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$avatarUrl,
      l$fullName,
      l$regionOfResidence,
      l$cityOfResidence,
      l$countryOfResidence,
      l$jobTitle,
      Object.hashAll(l$companies.map((v) => v)),
      l$offersHelp,
      l$seeksHelp,
      Object.hashAll(l$groupMemberships.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FindUserQuickViewProfile$findUserById) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$avatarUrl = avatarUrl;
    final lOther$avatarUrl = other.avatarUrl;
    if (l$avatarUrl != lOther$avatarUrl) {
      return false;
    }
    final l$fullName = fullName;
    final lOther$fullName = other.fullName;
    if (l$fullName != lOther$fullName) {
      return false;
    }
    final l$regionOfResidence = regionOfResidence;
    final lOther$regionOfResidence = other.regionOfResidence;
    if (l$regionOfResidence != lOther$regionOfResidence) {
      return false;
    }
    final l$cityOfResidence = cityOfResidence;
    final lOther$cityOfResidence = other.cityOfResidence;
    if (l$cityOfResidence != lOther$cityOfResidence) {
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
    final l$offersHelp = offersHelp;
    final lOther$offersHelp = other.offersHelp;
    if (l$offersHelp != lOther$offersHelp) {
      return false;
    }
    final l$seeksHelp = seeksHelp;
    final lOther$seeksHelp = other.seeksHelp;
    if (l$seeksHelp != lOther$seeksHelp) {
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

extension UtilityExtension$Query$FindUserQuickViewProfile$findUserById
    on Query$FindUserQuickViewProfile$findUserById {
  CopyWith$Query$FindUserQuickViewProfile$findUserById<
          Query$FindUserQuickViewProfile$findUserById>
      get copyWith => CopyWith$Query$FindUserQuickViewProfile$findUserById(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindUserQuickViewProfile$findUserById<TRes> {
  factory CopyWith$Query$FindUserQuickViewProfile$findUserById(
    Query$FindUserQuickViewProfile$findUserById instance,
    TRes Function(Query$FindUserQuickViewProfile$findUserById) then,
  ) = _CopyWithImpl$Query$FindUserQuickViewProfile$findUserById;

  factory CopyWith$Query$FindUserQuickViewProfile$findUserById.stub(TRes res) =
      _CopyWithStubImpl$Query$FindUserQuickViewProfile$findUserById;

  TRes call({
    String? id,
    String? avatarUrl,
    String? fullName,
    String? regionOfResidence,
    String? cityOfResidence,
    Query$FindUserQuickViewProfile$findUserById$countryOfResidence?
        countryOfResidence,
    String? jobTitle,
    List<Query$FindUserQuickViewProfile$findUserById$companies>? companies,
    bool? offersHelp,
    bool? seeksHelp,
    List<Query$FindUserQuickViewProfile$findUserById$groupMemberships>?
        groupMemberships,
    String? $__typename,
  });
  CopyWith$Query$FindUserQuickViewProfile$findUserById$countryOfResidence<TRes>
      get countryOfResidence;
  TRes companies(
      Iterable<Query$FindUserQuickViewProfile$findUserById$companies> Function(
              Iterable<
                  CopyWith$Query$FindUserQuickViewProfile$findUserById$companies<
                      Query$FindUserQuickViewProfile$findUserById$companies>>)
          _fn);
  TRes groupMemberships(
      Iterable<Query$FindUserQuickViewProfile$findUserById$groupMemberships> Function(
              Iterable<
                  CopyWith$Query$FindUserQuickViewProfile$findUserById$groupMemberships<
                      Query$FindUserQuickViewProfile$findUserById$groupMemberships>>)
          _fn);
}

class _CopyWithImpl$Query$FindUserQuickViewProfile$findUserById<TRes>
    implements CopyWith$Query$FindUserQuickViewProfile$findUserById<TRes> {
  _CopyWithImpl$Query$FindUserQuickViewProfile$findUserById(
    this._instance,
    this._then,
  );

  final Query$FindUserQuickViewProfile$findUserById _instance;

  final TRes Function(Query$FindUserQuickViewProfile$findUserById) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? avatarUrl = _undefined,
    Object? fullName = _undefined,
    Object? regionOfResidence = _undefined,
    Object? cityOfResidence = _undefined,
    Object? countryOfResidence = _undefined,
    Object? jobTitle = _undefined,
    Object? companies = _undefined,
    Object? offersHelp = _undefined,
    Object? seeksHelp = _undefined,
    Object? groupMemberships = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindUserQuickViewProfile$findUserById(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        avatarUrl: avatarUrl == _undefined
            ? _instance.avatarUrl
            : (avatarUrl as String?),
        fullName:
            fullName == _undefined ? _instance.fullName : (fullName as String?),
        regionOfResidence: regionOfResidence == _undefined
            ? _instance.regionOfResidence
            : (regionOfResidence as String?),
        cityOfResidence: cityOfResidence == _undefined
            ? _instance.cityOfResidence
            : (cityOfResidence as String?),
        countryOfResidence: countryOfResidence == _undefined
            ? _instance.countryOfResidence
            : (countryOfResidence
                as Query$FindUserQuickViewProfile$findUserById$countryOfResidence?),
        jobTitle:
            jobTitle == _undefined ? _instance.jobTitle : (jobTitle as String?),
        companies: companies == _undefined || companies == null
            ? _instance.companies
            : (companies
                as List<Query$FindUserQuickViewProfile$findUserById$companies>),
        offersHelp: offersHelp == _undefined || offersHelp == null
            ? _instance.offersHelp
            : (offersHelp as bool),
        seeksHelp: seeksHelp == _undefined || seeksHelp == null
            ? _instance.seeksHelp
            : (seeksHelp as bool),
        groupMemberships: groupMemberships == _undefined ||
                groupMemberships == null
            ? _instance.groupMemberships
            : (groupMemberships as List<
                Query$FindUserQuickViewProfile$findUserById$groupMemberships>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$FindUserQuickViewProfile$findUserById$countryOfResidence<TRes>
      get countryOfResidence {
    final local$countryOfResidence = _instance.countryOfResidence;
    return local$countryOfResidence == null
        ? CopyWith$Query$FindUserQuickViewProfile$findUserById$countryOfResidence
            .stub(_then(_instance))
        : CopyWith$Query$FindUserQuickViewProfile$findUserById$countryOfResidence(
            local$countryOfResidence, (e) => call(countryOfResidence: e));
  }

  TRes companies(
          Iterable<Query$FindUserQuickViewProfile$findUserById$companies> Function(
                  Iterable<
                      CopyWith$Query$FindUserQuickViewProfile$findUserById$companies<
                          Query$FindUserQuickViewProfile$findUserById$companies>>)
              _fn) =>
      call(
          companies: _fn(_instance.companies.map((e) =>
              CopyWith$Query$FindUserQuickViewProfile$findUserById$companies(
                e,
                (i) => i,
              ))).toList());
  TRes groupMemberships(
          Iterable<Query$FindUserQuickViewProfile$findUserById$groupMemberships> Function(
                  Iterable<
                      CopyWith$Query$FindUserQuickViewProfile$findUserById$groupMemberships<
                          Query$FindUserQuickViewProfile$findUserById$groupMemberships>>)
              _fn) =>
      call(
          groupMemberships: _fn(_instance.groupMemberships.map((e) =>
              CopyWith$Query$FindUserQuickViewProfile$findUserById$groupMemberships(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$FindUserQuickViewProfile$findUserById<TRes>
    implements CopyWith$Query$FindUserQuickViewProfile$findUserById<TRes> {
  _CopyWithStubImpl$Query$FindUserQuickViewProfile$findUserById(this._res);

  TRes _res;

  call({
    String? id,
    String? avatarUrl,
    String? fullName,
    String? regionOfResidence,
    String? cityOfResidence,
    Query$FindUserQuickViewProfile$findUserById$countryOfResidence?
        countryOfResidence,
    String? jobTitle,
    List<Query$FindUserQuickViewProfile$findUserById$companies>? companies,
    bool? offersHelp,
    bool? seeksHelp,
    List<Query$FindUserQuickViewProfile$findUserById$groupMemberships>?
        groupMemberships,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$FindUserQuickViewProfile$findUserById$countryOfResidence<TRes>
      get countryOfResidence =>
          CopyWith$Query$FindUserQuickViewProfile$findUserById$countryOfResidence
              .stub(_res);
  companies(_fn) => _res;
  groupMemberships(_fn) => _res;
}

class Query$FindUserQuickViewProfile$findUserById$countryOfResidence {
  Query$FindUserQuickViewProfile$findUserById$countryOfResidence({
    this.translatedValue,
    this.$__typename = 'Country',
  });

  factory Query$FindUserQuickViewProfile$findUserById$countryOfResidence.fromJson(
      Map<String, dynamic> json) {
    final l$translatedValue = json['translatedValue'];
    final l$$__typename = json['__typename'];
    return Query$FindUserQuickViewProfile$findUserById$countryOfResidence(
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
            is Query$FindUserQuickViewProfile$findUserById$countryOfResidence) ||
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

extension UtilityExtension$Query$FindUserQuickViewProfile$findUserById$countryOfResidence
    on Query$FindUserQuickViewProfile$findUserById$countryOfResidence {
  CopyWith$Query$FindUserQuickViewProfile$findUserById$countryOfResidence<
          Query$FindUserQuickViewProfile$findUserById$countryOfResidence>
      get copyWith =>
          CopyWith$Query$FindUserQuickViewProfile$findUserById$countryOfResidence(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindUserQuickViewProfile$findUserById$countryOfResidence<
    TRes> {
  factory CopyWith$Query$FindUserQuickViewProfile$findUserById$countryOfResidence(
    Query$FindUserQuickViewProfile$findUserById$countryOfResidence instance,
    TRes Function(
            Query$FindUserQuickViewProfile$findUserById$countryOfResidence)
        then,
  ) = _CopyWithImpl$Query$FindUserQuickViewProfile$findUserById$countryOfResidence;

  factory CopyWith$Query$FindUserQuickViewProfile$findUserById$countryOfResidence.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindUserQuickViewProfile$findUserById$countryOfResidence;

  TRes call({
    String? translatedValue,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindUserQuickViewProfile$findUserById$countryOfResidence<
        TRes>
    implements
        CopyWith$Query$FindUserQuickViewProfile$findUserById$countryOfResidence<
            TRes> {
  _CopyWithImpl$Query$FindUserQuickViewProfile$findUserById$countryOfResidence(
    this._instance,
    this._then,
  );

  final Query$FindUserQuickViewProfile$findUserById$countryOfResidence
      _instance;

  final TRes Function(
      Query$FindUserQuickViewProfile$findUserById$countryOfResidence) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? translatedValue = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindUserQuickViewProfile$findUserById$countryOfResidence(
        translatedValue: translatedValue == _undefined
            ? _instance.translatedValue
            : (translatedValue as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FindUserQuickViewProfile$findUserById$countryOfResidence<
        TRes>
    implements
        CopyWith$Query$FindUserQuickViewProfile$findUserById$countryOfResidence<
            TRes> {
  _CopyWithStubImpl$Query$FindUserQuickViewProfile$findUserById$countryOfResidence(
      this._res);

  TRes _res;

  call({
    String? translatedValue,
    String? $__typename,
  }) =>
      _res;
}

class Query$FindUserQuickViewProfile$findUserById$companies {
  Query$FindUserQuickViewProfile$findUserById$companies({
    required this.name,
    this.$__typename = 'Company',
  });

  factory Query$FindUserQuickViewProfile$findUserById$companies.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$FindUserQuickViewProfile$findUserById$companies(
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FindUserQuickViewProfile$findUserById$companies) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension$Query$FindUserQuickViewProfile$findUserById$companies
    on Query$FindUserQuickViewProfile$findUserById$companies {
  CopyWith$Query$FindUserQuickViewProfile$findUserById$companies<
          Query$FindUserQuickViewProfile$findUserById$companies>
      get copyWith =>
          CopyWith$Query$FindUserQuickViewProfile$findUserById$companies(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindUserQuickViewProfile$findUserById$companies<
    TRes> {
  factory CopyWith$Query$FindUserQuickViewProfile$findUserById$companies(
    Query$FindUserQuickViewProfile$findUserById$companies instance,
    TRes Function(Query$FindUserQuickViewProfile$findUserById$companies) then,
  ) = _CopyWithImpl$Query$FindUserQuickViewProfile$findUserById$companies;

  factory CopyWith$Query$FindUserQuickViewProfile$findUserById$companies.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindUserQuickViewProfile$findUserById$companies;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindUserQuickViewProfile$findUserById$companies<TRes>
    implements
        CopyWith$Query$FindUserQuickViewProfile$findUserById$companies<TRes> {
  _CopyWithImpl$Query$FindUserQuickViewProfile$findUserById$companies(
    this._instance,
    this._then,
  );

  final Query$FindUserQuickViewProfile$findUserById$companies _instance;

  final TRes Function(Query$FindUserQuickViewProfile$findUserById$companies)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindUserQuickViewProfile$findUserById$companies(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FindUserQuickViewProfile$findUserById$companies<
        TRes>
    implements
        CopyWith$Query$FindUserQuickViewProfile$findUserById$companies<TRes> {
  _CopyWithStubImpl$Query$FindUserQuickViewProfile$findUserById$companies(
      this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$FindUserQuickViewProfile$findUserById$groupMemberships {
  Query$FindUserQuickViewProfile$findUserById$groupMemberships({
    required this.groupIdent,
    required this.$__typename,
  });

  factory Query$FindUserQuickViewProfile$findUserById$groupMemberships.fromJson(
      Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "MenteesGroupMembership":
        return Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MenteesGroupMembership
            .fromJson(json);

      case "MentorsGroupMembership":
        return Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MentorsGroupMembership
            .fromJson(json);

      case "GroupMembership":
        return Query$FindUserQuickViewProfile$findUserById$groupMemberships$$GroupMembership
            .fromJson(json);

      default:
        final l$groupIdent = json['groupIdent'];
        final l$$__typename = json['__typename'];
        return Query$FindUserQuickViewProfile$findUserById$groupMemberships(
          groupIdent: (l$groupIdent as String),
          $__typename: (l$$__typename as String),
        );
    }
  }

  final String groupIdent;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$groupIdent = groupIdent;
    _resultData['groupIdent'] = l$groupIdent;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$groupIdent = groupIdent;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$groupIdent,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$FindUserQuickViewProfile$findUserById$groupMemberships) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$groupIdent = groupIdent;
    final lOther$groupIdent = other.groupIdent;
    if (l$groupIdent != lOther$groupIdent) {
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

extension UtilityExtension$Query$FindUserQuickViewProfile$findUserById$groupMemberships
    on Query$FindUserQuickViewProfile$findUserById$groupMemberships {
  CopyWith$Query$FindUserQuickViewProfile$findUserById$groupMemberships<
          Query$FindUserQuickViewProfile$findUserById$groupMemberships>
      get copyWith =>
          CopyWith$Query$FindUserQuickViewProfile$findUserById$groupMemberships(
            this,
            (i) => i,
          );
  _T when<_T>({
    required _T Function(
            Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MenteesGroupMembership)
        menteesGroupMembership,
    required _T Function(
            Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MentorsGroupMembership)
        mentorsGroupMembership,
    required _T Function(
            Query$FindUserQuickViewProfile$findUserById$groupMemberships$$GroupMembership)
        groupMembership,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "MenteesGroupMembership":
        return menteesGroupMembership(this
            as Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MenteesGroupMembership);

      case "MentorsGroupMembership":
        return mentorsGroupMembership(this
            as Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MentorsGroupMembership);

      case "GroupMembership":
        return groupMembership(this
            as Query$FindUserQuickViewProfile$findUserById$groupMemberships$$GroupMembership);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(
            Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MenteesGroupMembership)?
        menteesGroupMembership,
    _T Function(
            Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MentorsGroupMembership)?
        mentorsGroupMembership,
    _T Function(
            Query$FindUserQuickViewProfile$findUserById$groupMemberships$$GroupMembership)?
        groupMembership,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "MenteesGroupMembership":
        if (menteesGroupMembership != null) {
          return menteesGroupMembership(this
              as Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MenteesGroupMembership);
        } else {
          return orElse();
        }

      case "MentorsGroupMembership":
        if (mentorsGroupMembership != null) {
          return mentorsGroupMembership(this
              as Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MentorsGroupMembership);
        } else {
          return orElse();
        }

      case "GroupMembership":
        if (groupMembership != null) {
          return groupMembership(this
              as Query$FindUserQuickViewProfile$findUserById$groupMemberships$$GroupMembership);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Query$FindUserQuickViewProfile$findUserById$groupMemberships<
    TRes> {
  factory CopyWith$Query$FindUserQuickViewProfile$findUserById$groupMemberships(
    Query$FindUserQuickViewProfile$findUserById$groupMemberships instance,
    TRes Function(Query$FindUserQuickViewProfile$findUserById$groupMemberships)
        then,
  ) = _CopyWithImpl$Query$FindUserQuickViewProfile$findUserById$groupMemberships;

  factory CopyWith$Query$FindUserQuickViewProfile$findUserById$groupMemberships.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindUserQuickViewProfile$findUserById$groupMemberships;

  TRes call({
    String? groupIdent,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindUserQuickViewProfile$findUserById$groupMemberships<
        TRes>
    implements
        CopyWith$Query$FindUserQuickViewProfile$findUserById$groupMemberships<
            TRes> {
  _CopyWithImpl$Query$FindUserQuickViewProfile$findUserById$groupMemberships(
    this._instance,
    this._then,
  );

  final Query$FindUserQuickViewProfile$findUserById$groupMemberships _instance;

  final TRes Function(
      Query$FindUserQuickViewProfile$findUserById$groupMemberships) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? groupIdent = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindUserQuickViewProfile$findUserById$groupMemberships(
        groupIdent: groupIdent == _undefined || groupIdent == null
            ? _instance.groupIdent
            : (groupIdent as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FindUserQuickViewProfile$findUserById$groupMemberships<
        TRes>
    implements
        CopyWith$Query$FindUserQuickViewProfile$findUserById$groupMemberships<
            TRes> {
  _CopyWithStubImpl$Query$FindUserQuickViewProfile$findUserById$groupMemberships(
      this._res);

  TRes _res;

  call({
    String? groupIdent,
    String? $__typename,
  }) =>
      _res;
}

class Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MenteesGroupMembership
    implements Query$FindUserQuickViewProfile$findUserById$groupMemberships {
  Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MenteesGroupMembership({
    required this.soughtExpertises,
    this.$__typename = 'MenteesGroupMembership',
    required this.groupIdent,
  });

  factory Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MenteesGroupMembership.fromJson(
      Map<String, dynamic> json) {
    final l$soughtExpertises = json['soughtExpertises'];
    final l$$__typename = json['__typename'];
    final l$groupIdent = json['groupIdent'];
    return Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MenteesGroupMembership(
      soughtExpertises: (l$soughtExpertises as List<dynamic>)
          .map((e) =>
              Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MenteesGroupMembership$soughtExpertises
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
      groupIdent: (l$groupIdent as String),
    );
  }

  final List<
          Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MenteesGroupMembership$soughtExpertises>
      soughtExpertises;

  final String $__typename;

  final String groupIdent;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$soughtExpertises = soughtExpertises;
    _resultData['soughtExpertises'] =
        l$soughtExpertises.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$groupIdent = groupIdent;
    _resultData['groupIdent'] = l$groupIdent;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$soughtExpertises = soughtExpertises;
    final l$$__typename = $__typename;
    final l$groupIdent = groupIdent;
    return Object.hashAll([
      Object.hashAll(l$soughtExpertises.map((v) => v)),
      l$$__typename,
      l$groupIdent,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MenteesGroupMembership) ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$groupIdent = groupIdent;
    final lOther$groupIdent = other.groupIdent;
    if (l$groupIdent != lOther$groupIdent) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MenteesGroupMembership
    on Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MenteesGroupMembership {
  CopyWith$Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MenteesGroupMembership<
          Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MenteesGroupMembership>
      get copyWith =>
          CopyWith$Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MenteesGroupMembership(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MenteesGroupMembership<
    TRes> {
  factory CopyWith$Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MenteesGroupMembership(
    Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MenteesGroupMembership
        instance,
    TRes Function(
            Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MenteesGroupMembership)
        then,
  ) = _CopyWithImpl$Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MenteesGroupMembership;

  factory CopyWith$Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MenteesGroupMembership.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MenteesGroupMembership;

  TRes call({
    List<Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MenteesGroupMembership$soughtExpertises>?
        soughtExpertises,
    String? $__typename,
    String? groupIdent,
  });
  TRes soughtExpertises(
      Iterable<Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MenteesGroupMembership$soughtExpertises> Function(
              Iterable<
                  CopyWith$Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MenteesGroupMembership$soughtExpertises<
                      Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MenteesGroupMembership$soughtExpertises>>)
          _fn);
}

class _CopyWithImpl$Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MenteesGroupMembership<
        TRes>
    implements
        CopyWith$Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MenteesGroupMembership<
            TRes> {
  _CopyWithImpl$Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MenteesGroupMembership(
    this._instance,
    this._then,
  );

  final Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MenteesGroupMembership
      _instance;

  final TRes Function(
          Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MenteesGroupMembership)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? soughtExpertises = _undefined,
    Object? $__typename = _undefined,
    Object? groupIdent = _undefined,
  }) =>
      _then(
          Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MenteesGroupMembership(
        soughtExpertises: soughtExpertises == _undefined ||
                soughtExpertises == null
            ? _instance.soughtExpertises
            : (soughtExpertises as List<
                Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MenteesGroupMembership$soughtExpertises>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        groupIdent: groupIdent == _undefined || groupIdent == null
            ? _instance.groupIdent
            : (groupIdent as String),
      ));
  TRes soughtExpertises(
          Iterable<Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MenteesGroupMembership$soughtExpertises> Function(
                  Iterable<
                      CopyWith$Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MenteesGroupMembership$soughtExpertises<
                          Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MenteesGroupMembership$soughtExpertises>>)
              _fn) =>
      call(
          soughtExpertises: _fn(_instance.soughtExpertises.map((e) =>
              CopyWith$Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MenteesGroupMembership$soughtExpertises(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MenteesGroupMembership<
        TRes>
    implements
        CopyWith$Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MenteesGroupMembership<
            TRes> {
  _CopyWithStubImpl$Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MenteesGroupMembership(
      this._res);

  TRes _res;

  call({
    List<Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MenteesGroupMembership$soughtExpertises>?
        soughtExpertises,
    String? $__typename,
    String? groupIdent,
  }) =>
      _res;
  soughtExpertises(_fn) => _res;
}

class Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MenteesGroupMembership$soughtExpertises {
  Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MenteesGroupMembership$soughtExpertises({
    this.translatedValue,
    this.$__typename = 'Expertise',
  });

  factory Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MenteesGroupMembership$soughtExpertises.fromJson(
      Map<String, dynamic> json) {
    final l$translatedValue = json['translatedValue'];
    final l$$__typename = json['__typename'];
    return Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MenteesGroupMembership$soughtExpertises(
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
            is Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MenteesGroupMembership$soughtExpertises) ||
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

extension UtilityExtension$Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MenteesGroupMembership$soughtExpertises
    on Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MenteesGroupMembership$soughtExpertises {
  CopyWith$Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MenteesGroupMembership$soughtExpertises<
          Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MenteesGroupMembership$soughtExpertises>
      get copyWith =>
          CopyWith$Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MenteesGroupMembership$soughtExpertises(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MenteesGroupMembership$soughtExpertises<
    TRes> {
  factory CopyWith$Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MenteesGroupMembership$soughtExpertises(
    Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MenteesGroupMembership$soughtExpertises
        instance,
    TRes Function(
            Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MenteesGroupMembership$soughtExpertises)
        then,
  ) = _CopyWithImpl$Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MenteesGroupMembership$soughtExpertises;

  factory CopyWith$Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MenteesGroupMembership$soughtExpertises.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MenteesGroupMembership$soughtExpertises;

  TRes call({
    String? translatedValue,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MenteesGroupMembership$soughtExpertises<
        TRes>
    implements
        CopyWith$Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MenteesGroupMembership$soughtExpertises<
            TRes> {
  _CopyWithImpl$Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MenteesGroupMembership$soughtExpertises(
    this._instance,
    this._then,
  );

  final Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MenteesGroupMembership$soughtExpertises
      _instance;

  final TRes Function(
          Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MenteesGroupMembership$soughtExpertises)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? translatedValue = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MenteesGroupMembership$soughtExpertises(
        translatedValue: translatedValue == _undefined
            ? _instance.translatedValue
            : (translatedValue as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MenteesGroupMembership$soughtExpertises<
        TRes>
    implements
        CopyWith$Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MenteesGroupMembership$soughtExpertises<
            TRes> {
  _CopyWithStubImpl$Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MenteesGroupMembership$soughtExpertises(
      this._res);

  TRes _res;

  call({
    String? translatedValue,
    String? $__typename,
  }) =>
      _res;
}

class Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MentorsGroupMembership
    implements Query$FindUserQuickViewProfile$findUserById$groupMemberships {
  Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MentorsGroupMembership({
    required this.expertises,
    this.$__typename = 'MentorsGroupMembership',
    required this.groupIdent,
  });

  factory Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MentorsGroupMembership.fromJson(
      Map<String, dynamic> json) {
    final l$expertises = json['expertises'];
    final l$$__typename = json['__typename'];
    final l$groupIdent = json['groupIdent'];
    return Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MentorsGroupMembership(
      expertises: (l$expertises as List<dynamic>)
          .map((e) =>
              Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MentorsGroupMembership$expertises
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
      groupIdent: (l$groupIdent as String),
    );
  }

  final List<
          Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MentorsGroupMembership$expertises>
      expertises;

  final String $__typename;

  final String groupIdent;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$expertises = expertises;
    _resultData['expertises'] = l$expertises.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$groupIdent = groupIdent;
    _resultData['groupIdent'] = l$groupIdent;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$expertises = expertises;
    final l$$__typename = $__typename;
    final l$groupIdent = groupIdent;
    return Object.hashAll([
      Object.hashAll(l$expertises.map((v) => v)),
      l$$__typename,
      l$groupIdent,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MentorsGroupMembership) ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$groupIdent = groupIdent;
    final lOther$groupIdent = other.groupIdent;
    if (l$groupIdent != lOther$groupIdent) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MentorsGroupMembership
    on Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MentorsGroupMembership {
  CopyWith$Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MentorsGroupMembership<
          Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MentorsGroupMembership>
      get copyWith =>
          CopyWith$Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MentorsGroupMembership(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MentorsGroupMembership<
    TRes> {
  factory CopyWith$Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MentorsGroupMembership(
    Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MentorsGroupMembership
        instance,
    TRes Function(
            Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MentorsGroupMembership)
        then,
  ) = _CopyWithImpl$Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MentorsGroupMembership;

  factory CopyWith$Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MentorsGroupMembership.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MentorsGroupMembership;

  TRes call({
    List<Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MentorsGroupMembership$expertises>?
        expertises,
    String? $__typename,
    String? groupIdent,
  });
  TRes expertises(
      Iterable<Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MentorsGroupMembership$expertises> Function(
              Iterable<
                  CopyWith$Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MentorsGroupMembership$expertises<
                      Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MentorsGroupMembership$expertises>>)
          _fn);
}

class _CopyWithImpl$Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MentorsGroupMembership<
        TRes>
    implements
        CopyWith$Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MentorsGroupMembership<
            TRes> {
  _CopyWithImpl$Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MentorsGroupMembership(
    this._instance,
    this._then,
  );

  final Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MentorsGroupMembership
      _instance;

  final TRes Function(
          Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MentorsGroupMembership)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? expertises = _undefined,
    Object? $__typename = _undefined,
    Object? groupIdent = _undefined,
  }) =>
      _then(
          Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MentorsGroupMembership(
        expertises: expertises == _undefined || expertises == null
            ? _instance.expertises
            : (expertises as List<
                Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MentorsGroupMembership$expertises>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        groupIdent: groupIdent == _undefined || groupIdent == null
            ? _instance.groupIdent
            : (groupIdent as String),
      ));
  TRes expertises(
          Iterable<Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MentorsGroupMembership$expertises> Function(
                  Iterable<
                      CopyWith$Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MentorsGroupMembership$expertises<
                          Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MentorsGroupMembership$expertises>>)
              _fn) =>
      call(
          expertises: _fn(_instance.expertises.map((e) =>
              CopyWith$Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MentorsGroupMembership$expertises(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MentorsGroupMembership<
        TRes>
    implements
        CopyWith$Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MentorsGroupMembership<
            TRes> {
  _CopyWithStubImpl$Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MentorsGroupMembership(
      this._res);

  TRes _res;

  call({
    List<Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MentorsGroupMembership$expertises>?
        expertises,
    String? $__typename,
    String? groupIdent,
  }) =>
      _res;
  expertises(_fn) => _res;
}

class Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MentorsGroupMembership$expertises {
  Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MentorsGroupMembership$expertises({
    this.translatedValue,
    this.$__typename = 'Expertise',
  });

  factory Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MentorsGroupMembership$expertises.fromJson(
      Map<String, dynamic> json) {
    final l$translatedValue = json['translatedValue'];
    final l$$__typename = json['__typename'];
    return Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MentorsGroupMembership$expertises(
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
            is Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MentorsGroupMembership$expertises) ||
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

extension UtilityExtension$Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MentorsGroupMembership$expertises
    on Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MentorsGroupMembership$expertises {
  CopyWith$Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MentorsGroupMembership$expertises<
          Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MentorsGroupMembership$expertises>
      get copyWith =>
          CopyWith$Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MentorsGroupMembership$expertises(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MentorsGroupMembership$expertises<
    TRes> {
  factory CopyWith$Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MentorsGroupMembership$expertises(
    Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MentorsGroupMembership$expertises
        instance,
    TRes Function(
            Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MentorsGroupMembership$expertises)
        then,
  ) = _CopyWithImpl$Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MentorsGroupMembership$expertises;

  factory CopyWith$Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MentorsGroupMembership$expertises.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MentorsGroupMembership$expertises;

  TRes call({
    String? translatedValue,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MentorsGroupMembership$expertises<
        TRes>
    implements
        CopyWith$Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MentorsGroupMembership$expertises<
            TRes> {
  _CopyWithImpl$Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MentorsGroupMembership$expertises(
    this._instance,
    this._then,
  );

  final Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MentorsGroupMembership$expertises
      _instance;

  final TRes Function(
          Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MentorsGroupMembership$expertises)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? translatedValue = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MentorsGroupMembership$expertises(
        translatedValue: translatedValue == _undefined
            ? _instance.translatedValue
            : (translatedValue as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MentorsGroupMembership$expertises<
        TRes>
    implements
        CopyWith$Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MentorsGroupMembership$expertises<
            TRes> {
  _CopyWithStubImpl$Query$FindUserQuickViewProfile$findUserById$groupMemberships$$MentorsGroupMembership$expertises(
      this._res);

  TRes _res;

  call({
    String? translatedValue,
    String? $__typename,
  }) =>
      _res;
}

class Query$FindUserQuickViewProfile$findUserById$groupMemberships$$GroupMembership
    implements Query$FindUserQuickViewProfile$findUserById$groupMemberships {
  Query$FindUserQuickViewProfile$findUserById$groupMemberships$$GroupMembership({
    required this.groupIdent,
    this.$__typename = 'GroupMembership',
  });

  factory Query$FindUserQuickViewProfile$findUserById$groupMemberships$$GroupMembership.fromJson(
      Map<String, dynamic> json) {
    final l$groupIdent = json['groupIdent'];
    final l$$__typename = json['__typename'];
    return Query$FindUserQuickViewProfile$findUserById$groupMemberships$$GroupMembership(
      groupIdent: (l$groupIdent as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String groupIdent;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$groupIdent = groupIdent;
    _resultData['groupIdent'] = l$groupIdent;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$groupIdent = groupIdent;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$groupIdent,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$FindUserQuickViewProfile$findUserById$groupMemberships$$GroupMembership) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$groupIdent = groupIdent;
    final lOther$groupIdent = other.groupIdent;
    if (l$groupIdent != lOther$groupIdent) {
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

extension UtilityExtension$Query$FindUserQuickViewProfile$findUserById$groupMemberships$$GroupMembership
    on Query$FindUserQuickViewProfile$findUserById$groupMemberships$$GroupMembership {
  CopyWith$Query$FindUserQuickViewProfile$findUserById$groupMemberships$$GroupMembership<
          Query$FindUserQuickViewProfile$findUserById$groupMemberships$$GroupMembership>
      get copyWith =>
          CopyWith$Query$FindUserQuickViewProfile$findUserById$groupMemberships$$GroupMembership(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindUserQuickViewProfile$findUserById$groupMemberships$$GroupMembership<
    TRes> {
  factory CopyWith$Query$FindUserQuickViewProfile$findUserById$groupMemberships$$GroupMembership(
    Query$FindUserQuickViewProfile$findUserById$groupMemberships$$GroupMembership
        instance,
    TRes Function(
            Query$FindUserQuickViewProfile$findUserById$groupMemberships$$GroupMembership)
        then,
  ) = _CopyWithImpl$Query$FindUserQuickViewProfile$findUserById$groupMemberships$$GroupMembership;

  factory CopyWith$Query$FindUserQuickViewProfile$findUserById$groupMemberships$$GroupMembership.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindUserQuickViewProfile$findUserById$groupMemberships$$GroupMembership;

  TRes call({
    String? groupIdent,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindUserQuickViewProfile$findUserById$groupMemberships$$GroupMembership<
        TRes>
    implements
        CopyWith$Query$FindUserQuickViewProfile$findUserById$groupMemberships$$GroupMembership<
            TRes> {
  _CopyWithImpl$Query$FindUserQuickViewProfile$findUserById$groupMemberships$$GroupMembership(
    this._instance,
    this._then,
  );

  final Query$FindUserQuickViewProfile$findUserById$groupMemberships$$GroupMembership
      _instance;

  final TRes Function(
          Query$FindUserQuickViewProfile$findUserById$groupMemberships$$GroupMembership)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? groupIdent = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$FindUserQuickViewProfile$findUserById$groupMemberships$$GroupMembership(
        groupIdent: groupIdent == _undefined || groupIdent == null
            ? _instance.groupIdent
            : (groupIdent as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FindUserQuickViewProfile$findUserById$groupMemberships$$GroupMembership<
        TRes>
    implements
        CopyWith$Query$FindUserQuickViewProfile$findUserById$groupMemberships$$GroupMembership<
            TRes> {
  _CopyWithStubImpl$Query$FindUserQuickViewProfile$findUserById$groupMemberships$$GroupMembership(
      this._res);

  TRes _res;

  call({
    String? groupIdent,
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
