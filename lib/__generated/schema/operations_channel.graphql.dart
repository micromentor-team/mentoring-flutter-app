// GENERATED WITH GRAPHQL_CODEGEN
// DO NOT MODIFY
// ignore_for_file: type=lint

import 'package:gql/ast.dart';
import 'schema.graphql.dart';

class Variables$Query$FindChannelsForUser {
  factory Variables$Query$FindChannelsForUser({required String userId}) =>
      Variables$Query$FindChannelsForUser._({
        r'userId': userId,
      });

  Variables$Query$FindChannelsForUser._(this._$data);

  factory Variables$Query$FindChannelsForUser.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$userId = data['userId'];
    result$data['userId'] = (l$userId as String);
    return Variables$Query$FindChannelsForUser._(result$data);
  }

  Map<String, dynamic> _$data;

  String get userId => (_$data['userId'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$userId = userId;
    result$data['userId'] = l$userId;
    return result$data;
  }

  CopyWith$Variables$Query$FindChannelsForUser<
          Variables$Query$FindChannelsForUser>
      get copyWith => CopyWith$Variables$Query$FindChannelsForUser(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$FindChannelsForUser) ||
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

abstract class CopyWith$Variables$Query$FindChannelsForUser<TRes> {
  factory CopyWith$Variables$Query$FindChannelsForUser(
    Variables$Query$FindChannelsForUser instance,
    TRes Function(Variables$Query$FindChannelsForUser) then,
  ) = _CopyWithImpl$Variables$Query$FindChannelsForUser;

  factory CopyWith$Variables$Query$FindChannelsForUser.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$FindChannelsForUser;

  TRes call({String? userId});
}

class _CopyWithImpl$Variables$Query$FindChannelsForUser<TRes>
    implements CopyWith$Variables$Query$FindChannelsForUser<TRes> {
  _CopyWithImpl$Variables$Query$FindChannelsForUser(
    this._instance,
    this._then,
  );

  final Variables$Query$FindChannelsForUser _instance;

  final TRes Function(Variables$Query$FindChannelsForUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? userId = _undefined}) =>
      _then(Variables$Query$FindChannelsForUser._({
        ..._instance._$data,
        if (userId != _undefined && userId != null)
          'userId': (userId as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$FindChannelsForUser<TRes>
    implements CopyWith$Variables$Query$FindChannelsForUser<TRes> {
  _CopyWithStubImpl$Variables$Query$FindChannelsForUser(this._res);

  TRes _res;

  call({String? userId}) => _res;
}

class Query$FindChannelsForUser {
  Query$FindChannelsForUser({
    required this.findChannelsForUser,
    this.$__typename = 'Query',
  });

  factory Query$FindChannelsForUser.fromJson(Map<String, dynamic> json) {
    final l$findChannelsForUser = json['findChannelsForUser'];
    final l$$__typename = json['__typename'];
    return Query$FindChannelsForUser(
      findChannelsForUser: (l$findChannelsForUser as List<dynamic>)
          .map((e) => Query$FindChannelsForUser$findChannelsForUser.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$FindChannelsForUser$findChannelsForUser> findChannelsForUser;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$findChannelsForUser = findChannelsForUser;
    _resultData['findChannelsForUser'] =
        l$findChannelsForUser.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$findChannelsForUser = findChannelsForUser;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$findChannelsForUser.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FindChannelsForUser) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$findChannelsForUser = findChannelsForUser;
    final lOther$findChannelsForUser = other.findChannelsForUser;
    if (l$findChannelsForUser.length != lOther$findChannelsForUser.length) {
      return false;
    }
    for (int i = 0; i < l$findChannelsForUser.length; i++) {
      final l$findChannelsForUser$entry = l$findChannelsForUser[i];
      final lOther$findChannelsForUser$entry = lOther$findChannelsForUser[i];
      if (l$findChannelsForUser$entry != lOther$findChannelsForUser$entry) {
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

extension UtilityExtension$Query$FindChannelsForUser
    on Query$FindChannelsForUser {
  CopyWith$Query$FindChannelsForUser<Query$FindChannelsForUser> get copyWith =>
      CopyWith$Query$FindChannelsForUser(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FindChannelsForUser<TRes> {
  factory CopyWith$Query$FindChannelsForUser(
    Query$FindChannelsForUser instance,
    TRes Function(Query$FindChannelsForUser) then,
  ) = _CopyWithImpl$Query$FindChannelsForUser;

  factory CopyWith$Query$FindChannelsForUser.stub(TRes res) =
      _CopyWithStubImpl$Query$FindChannelsForUser;

  TRes call({
    List<Query$FindChannelsForUser$findChannelsForUser>? findChannelsForUser,
    String? $__typename,
  });
  TRes findChannelsForUser(
      Iterable<Query$FindChannelsForUser$findChannelsForUser> Function(
              Iterable<
                  CopyWith$Query$FindChannelsForUser$findChannelsForUser<
                      Query$FindChannelsForUser$findChannelsForUser>>)
          _fn);
}

class _CopyWithImpl$Query$FindChannelsForUser<TRes>
    implements CopyWith$Query$FindChannelsForUser<TRes> {
  _CopyWithImpl$Query$FindChannelsForUser(
    this._instance,
    this._then,
  );

  final Query$FindChannelsForUser _instance;

  final TRes Function(Query$FindChannelsForUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? findChannelsForUser = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindChannelsForUser(
        findChannelsForUser:
            findChannelsForUser == _undefined || findChannelsForUser == null
                ? _instance.findChannelsForUser
                : (findChannelsForUser
                    as List<Query$FindChannelsForUser$findChannelsForUser>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes findChannelsForUser(
          Iterable<Query$FindChannelsForUser$findChannelsForUser> Function(
                  Iterable<
                      CopyWith$Query$FindChannelsForUser$findChannelsForUser<
                          Query$FindChannelsForUser$findChannelsForUser>>)
              _fn) =>
      call(
          findChannelsForUser: _fn(_instance.findChannelsForUser.map(
              (e) => CopyWith$Query$FindChannelsForUser$findChannelsForUser(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$FindChannelsForUser<TRes>
    implements CopyWith$Query$FindChannelsForUser<TRes> {
  _CopyWithStubImpl$Query$FindChannelsForUser(this._res);

  TRes _res;

  call({
    List<Query$FindChannelsForUser$findChannelsForUser>? findChannelsForUser,
    String? $__typename,
  }) =>
      _res;
  findChannelsForUser(_fn) => _res;
}

const documentNodeQueryFindChannelsForUser = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FindChannelsForUser'),
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
        name: NameNode(value: 'findChannelsForUser'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'userId'),
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
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'userIds'),
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
            name: NameNode(value: 'createdAt'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'isArchivedForMe'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'participants'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'user'),
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

class Query$FindChannelsForUser$findChannelsForUser {
  Query$FindChannelsForUser$findChannelsForUser({
    required this.id,
    this.name,
    this.userIds,
    this.createdBy,
    required this.createdAt,
    required this.isArchivedForMe,
    required this.participants,
    this.$__typename = 'Channel',
  });

  factory Query$FindChannelsForUser$findChannelsForUser.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$userIds = json['userIds'];
    final l$createdBy = json['createdBy'];
    final l$createdAt = json['createdAt'];
    final l$isArchivedForMe = json['isArchivedForMe'];
    final l$participants = json['participants'];
    final l$$__typename = json['__typename'];
    return Query$FindChannelsForUser$findChannelsForUser(
      id: (l$id as String),
      name: (l$name as String?),
      userIds:
          (l$userIds as List<dynamic>?)?.map((e) => (e as String)).toList(),
      createdBy: (l$createdBy as String?),
      createdAt: DateTime.parse((l$createdAt as String)),
      isArchivedForMe: (l$isArchivedForMe as bool),
      participants: (l$participants as List<dynamic>)
          .map((e) => Query$FindChannelsForUser$findChannelsForUser$participants
              .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String? name;

  final List<String>? userIds;

  final String? createdBy;

  final DateTime createdAt;

  final bool isArchivedForMe;

  final List<Query$FindChannelsForUser$findChannelsForUser$participants>
      participants;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$userIds = userIds;
    _resultData['userIds'] = l$userIds?.map((e) => e).toList();
    final l$createdBy = createdBy;
    _resultData['createdBy'] = l$createdBy;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt.toIso8601String();
    final l$isArchivedForMe = isArchivedForMe;
    _resultData['isArchivedForMe'] = l$isArchivedForMe;
    final l$participants = participants;
    _resultData['participants'] =
        l$participants.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$userIds = userIds;
    final l$createdBy = createdBy;
    final l$createdAt = createdAt;
    final l$isArchivedForMe = isArchivedForMe;
    final l$participants = participants;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$userIds == null ? null : Object.hashAll(l$userIds.map((v) => v)),
      l$createdBy,
      l$createdAt,
      l$isArchivedForMe,
      Object.hashAll(l$participants.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FindChannelsForUser$findChannelsForUser) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$userIds = userIds;
    final lOther$userIds = other.userIds;
    if (l$userIds != null && lOther$userIds != null) {
      if (l$userIds.length != lOther$userIds.length) {
        return false;
      }
      for (int i = 0; i < l$userIds.length; i++) {
        final l$userIds$entry = l$userIds[i];
        final lOther$userIds$entry = lOther$userIds[i];
        if (l$userIds$entry != lOther$userIds$entry) {
          return false;
        }
      }
    } else if (l$userIds != lOther$userIds) {
      return false;
    }
    final l$createdBy = createdBy;
    final lOther$createdBy = other.createdBy;
    if (l$createdBy != lOther$createdBy) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$isArchivedForMe = isArchivedForMe;
    final lOther$isArchivedForMe = other.isArchivedForMe;
    if (l$isArchivedForMe != lOther$isArchivedForMe) {
      return false;
    }
    final l$participants = participants;
    final lOther$participants = other.participants;
    if (l$participants.length != lOther$participants.length) {
      return false;
    }
    for (int i = 0; i < l$participants.length; i++) {
      final l$participants$entry = l$participants[i];
      final lOther$participants$entry = lOther$participants[i];
      if (l$participants$entry != lOther$participants$entry) {
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

extension UtilityExtension$Query$FindChannelsForUser$findChannelsForUser
    on Query$FindChannelsForUser$findChannelsForUser {
  CopyWith$Query$FindChannelsForUser$findChannelsForUser<
          Query$FindChannelsForUser$findChannelsForUser>
      get copyWith => CopyWith$Query$FindChannelsForUser$findChannelsForUser(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindChannelsForUser$findChannelsForUser<TRes> {
  factory CopyWith$Query$FindChannelsForUser$findChannelsForUser(
    Query$FindChannelsForUser$findChannelsForUser instance,
    TRes Function(Query$FindChannelsForUser$findChannelsForUser) then,
  ) = _CopyWithImpl$Query$FindChannelsForUser$findChannelsForUser;

  factory CopyWith$Query$FindChannelsForUser$findChannelsForUser.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindChannelsForUser$findChannelsForUser;

  TRes call({
    String? id,
    String? name,
    List<String>? userIds,
    String? createdBy,
    DateTime? createdAt,
    bool? isArchivedForMe,
    List<Query$FindChannelsForUser$findChannelsForUser$participants>?
        participants,
    String? $__typename,
  });
  TRes participants(
      Iterable<Query$FindChannelsForUser$findChannelsForUser$participants> Function(
              Iterable<
                  CopyWith$Query$FindChannelsForUser$findChannelsForUser$participants<
                      Query$FindChannelsForUser$findChannelsForUser$participants>>)
          _fn);
}

class _CopyWithImpl$Query$FindChannelsForUser$findChannelsForUser<TRes>
    implements CopyWith$Query$FindChannelsForUser$findChannelsForUser<TRes> {
  _CopyWithImpl$Query$FindChannelsForUser$findChannelsForUser(
    this._instance,
    this._then,
  );

  final Query$FindChannelsForUser$findChannelsForUser _instance;

  final TRes Function(Query$FindChannelsForUser$findChannelsForUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? userIds = _undefined,
    Object? createdBy = _undefined,
    Object? createdAt = _undefined,
    Object? isArchivedForMe = _undefined,
    Object? participants = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindChannelsForUser$findChannelsForUser(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined ? _instance.name : (name as String?),
        userIds: userIds == _undefined
            ? _instance.userIds
            : (userIds as List<String>?),
        createdBy: createdBy == _undefined
            ? _instance.createdBy
            : (createdBy as String?),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as DateTime),
        isArchivedForMe:
            isArchivedForMe == _undefined || isArchivedForMe == null
                ? _instance.isArchivedForMe
                : (isArchivedForMe as bool),
        participants: participants == _undefined || participants == null
            ? _instance.participants
            : (participants as List<
                Query$FindChannelsForUser$findChannelsForUser$participants>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes participants(
          Iterable<Query$FindChannelsForUser$findChannelsForUser$participants> Function(
                  Iterable<
                      CopyWith$Query$FindChannelsForUser$findChannelsForUser$participants<
                          Query$FindChannelsForUser$findChannelsForUser$participants>>)
              _fn) =>
      call(
          participants: _fn(_instance.participants.map((e) =>
              CopyWith$Query$FindChannelsForUser$findChannelsForUser$participants(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$FindChannelsForUser$findChannelsForUser<TRes>
    implements CopyWith$Query$FindChannelsForUser$findChannelsForUser<TRes> {
  _CopyWithStubImpl$Query$FindChannelsForUser$findChannelsForUser(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    List<String>? userIds,
    String? createdBy,
    DateTime? createdAt,
    bool? isArchivedForMe,
    List<Query$FindChannelsForUser$findChannelsForUser$participants>?
        participants,
    String? $__typename,
  }) =>
      _res;
  participants(_fn) => _res;
}

class Query$FindChannelsForUser$findChannelsForUser$participants {
  Query$FindChannelsForUser$findChannelsForUser$participants({
    required this.user,
    this.$__typename = 'ChannelParticipant',
  });

  factory Query$FindChannelsForUser$findChannelsForUser$participants.fromJson(
      Map<String, dynamic> json) {
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Query$FindChannelsForUser$findChannelsForUser$participants(
      user: Query$FindChannelsForUser$findChannelsForUser$participants$user
          .fromJson((l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$FindChannelsForUser$findChannelsForUser$participants$user user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$user = user;
    _resultData['user'] = l$user.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$user,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$FindChannelsForUser$findChannelsForUser$participants) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
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

extension UtilityExtension$Query$FindChannelsForUser$findChannelsForUser$participants
    on Query$FindChannelsForUser$findChannelsForUser$participants {
  CopyWith$Query$FindChannelsForUser$findChannelsForUser$participants<
          Query$FindChannelsForUser$findChannelsForUser$participants>
      get copyWith =>
          CopyWith$Query$FindChannelsForUser$findChannelsForUser$participants(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindChannelsForUser$findChannelsForUser$participants<
    TRes> {
  factory CopyWith$Query$FindChannelsForUser$findChannelsForUser$participants(
    Query$FindChannelsForUser$findChannelsForUser$participants instance,
    TRes Function(Query$FindChannelsForUser$findChannelsForUser$participants)
        then,
  ) = _CopyWithImpl$Query$FindChannelsForUser$findChannelsForUser$participants;

  factory CopyWith$Query$FindChannelsForUser$findChannelsForUser$participants.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindChannelsForUser$findChannelsForUser$participants;

  TRes call({
    Query$FindChannelsForUser$findChannelsForUser$participants$user? user,
    String? $__typename,
  });
  CopyWith$Query$FindChannelsForUser$findChannelsForUser$participants$user<TRes>
      get user;
}

class _CopyWithImpl$Query$FindChannelsForUser$findChannelsForUser$participants<
        TRes>
    implements
        CopyWith$Query$FindChannelsForUser$findChannelsForUser$participants<
            TRes> {
  _CopyWithImpl$Query$FindChannelsForUser$findChannelsForUser$participants(
    this._instance,
    this._then,
  );

  final Query$FindChannelsForUser$findChannelsForUser$participants _instance;

  final TRes Function(
      Query$FindChannelsForUser$findChannelsForUser$participants) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindChannelsForUser$findChannelsForUser$participants(
        user: user == _undefined || user == null
            ? _instance.user
            : (user
                as Query$FindChannelsForUser$findChannelsForUser$participants$user),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$FindChannelsForUser$findChannelsForUser$participants$user<TRes>
      get user {
    final local$user = _instance.user;
    return CopyWith$Query$FindChannelsForUser$findChannelsForUser$participants$user(
        local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Query$FindChannelsForUser$findChannelsForUser$participants<
        TRes>
    implements
        CopyWith$Query$FindChannelsForUser$findChannelsForUser$participants<
            TRes> {
  _CopyWithStubImpl$Query$FindChannelsForUser$findChannelsForUser$participants(
      this._res);

  TRes _res;

  call({
    Query$FindChannelsForUser$findChannelsForUser$participants$user? user,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$FindChannelsForUser$findChannelsForUser$participants$user<TRes>
      get user =>
          CopyWith$Query$FindChannelsForUser$findChannelsForUser$participants$user
              .stub(_res);
}

class Query$FindChannelsForUser$findChannelsForUser$participants$user {
  Query$FindChannelsForUser$findChannelsForUser$participants$user({
    required this.id,
    this.fullName,
    this.avatarUrl,
    this.userHandle,
    this.$__typename = 'User',
  });

  factory Query$FindChannelsForUser$findChannelsForUser$participants$user.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$fullName = json['fullName'];
    final l$avatarUrl = json['avatarUrl'];
    final l$userHandle = json['userHandle'];
    final l$$__typename = json['__typename'];
    return Query$FindChannelsForUser$findChannelsForUser$participants$user(
      id: (l$id as String),
      fullName: (l$fullName as String?),
      avatarUrl: (l$avatarUrl as String?),
      userHandle: (l$userHandle as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String? fullName;

  final String? avatarUrl;

  final String? userHandle;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
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
    final l$fullName = fullName;
    final l$avatarUrl = avatarUrl;
    final l$userHandle = userHandle;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
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
    if (!(other
            is Query$FindChannelsForUser$findChannelsForUser$participants$user) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Query$FindChannelsForUser$findChannelsForUser$participants$user
    on Query$FindChannelsForUser$findChannelsForUser$participants$user {
  CopyWith$Query$FindChannelsForUser$findChannelsForUser$participants$user<
          Query$FindChannelsForUser$findChannelsForUser$participants$user>
      get copyWith =>
          CopyWith$Query$FindChannelsForUser$findChannelsForUser$participants$user(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindChannelsForUser$findChannelsForUser$participants$user<
    TRes> {
  factory CopyWith$Query$FindChannelsForUser$findChannelsForUser$participants$user(
    Query$FindChannelsForUser$findChannelsForUser$participants$user instance,
    TRes Function(
            Query$FindChannelsForUser$findChannelsForUser$participants$user)
        then,
  ) = _CopyWithImpl$Query$FindChannelsForUser$findChannelsForUser$participants$user;

  factory CopyWith$Query$FindChannelsForUser$findChannelsForUser$participants$user.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindChannelsForUser$findChannelsForUser$participants$user;

  TRes call({
    String? id,
    String? fullName,
    String? avatarUrl,
    String? userHandle,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindChannelsForUser$findChannelsForUser$participants$user<
        TRes>
    implements
        CopyWith$Query$FindChannelsForUser$findChannelsForUser$participants$user<
            TRes> {
  _CopyWithImpl$Query$FindChannelsForUser$findChannelsForUser$participants$user(
    this._instance,
    this._then,
  );

  final Query$FindChannelsForUser$findChannelsForUser$participants$user
      _instance;

  final TRes Function(
      Query$FindChannelsForUser$findChannelsForUser$participants$user) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? fullName = _undefined,
    Object? avatarUrl = _undefined,
    Object? userHandle = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindChannelsForUser$findChannelsForUser$participants$user(
        id: id == _undefined || id == null ? _instance.id : (id as String),
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

class _CopyWithStubImpl$Query$FindChannelsForUser$findChannelsForUser$participants$user<
        TRes>
    implements
        CopyWith$Query$FindChannelsForUser$findChannelsForUser$participants$user<
            TRes> {
  _CopyWithStubImpl$Query$FindChannelsForUser$findChannelsForUser$participants$user(
      this._res);

  TRes _res;

  call({
    String? id,
    String? fullName,
    String? avatarUrl,
    String? userHandle,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$FindChannelById {
  factory Variables$Query$FindChannelById({required String channelId}) =>
      Variables$Query$FindChannelById._({
        r'channelId': channelId,
      });

  Variables$Query$FindChannelById._(this._$data);

  factory Variables$Query$FindChannelById.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$channelId = data['channelId'];
    result$data['channelId'] = (l$channelId as String);
    return Variables$Query$FindChannelById._(result$data);
  }

  Map<String, dynamic> _$data;

  String get channelId => (_$data['channelId'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$channelId = channelId;
    result$data['channelId'] = l$channelId;
    return result$data;
  }

  CopyWith$Variables$Query$FindChannelById<Variables$Query$FindChannelById>
      get copyWith => CopyWith$Variables$Query$FindChannelById(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$FindChannelById) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$channelId = channelId;
    final lOther$channelId = other.channelId;
    if (l$channelId != lOther$channelId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$channelId = channelId;
    return Object.hashAll([l$channelId]);
  }
}

abstract class CopyWith$Variables$Query$FindChannelById<TRes> {
  factory CopyWith$Variables$Query$FindChannelById(
    Variables$Query$FindChannelById instance,
    TRes Function(Variables$Query$FindChannelById) then,
  ) = _CopyWithImpl$Variables$Query$FindChannelById;

  factory CopyWith$Variables$Query$FindChannelById.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$FindChannelById;

  TRes call({String? channelId});
}

class _CopyWithImpl$Variables$Query$FindChannelById<TRes>
    implements CopyWith$Variables$Query$FindChannelById<TRes> {
  _CopyWithImpl$Variables$Query$FindChannelById(
    this._instance,
    this._then,
  );

  final Variables$Query$FindChannelById _instance;

  final TRes Function(Variables$Query$FindChannelById) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? channelId = _undefined}) =>
      _then(Variables$Query$FindChannelById._({
        ..._instance._$data,
        if (channelId != _undefined && channelId != null)
          'channelId': (channelId as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$FindChannelById<TRes>
    implements CopyWith$Variables$Query$FindChannelById<TRes> {
  _CopyWithStubImpl$Variables$Query$FindChannelById(this._res);

  TRes _res;

  call({String? channelId}) => _res;
}

class Query$FindChannelById {
  Query$FindChannelById({
    required this.findChannelById,
    this.$__typename = 'Query',
  });

  factory Query$FindChannelById.fromJson(Map<String, dynamic> json) {
    final l$findChannelById = json['findChannelById'];
    final l$$__typename = json['__typename'];
    return Query$FindChannelById(
      findChannelById: Query$FindChannelById$findChannelById.fromJson(
          (l$findChannelById as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$FindChannelById$findChannelById findChannelById;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$findChannelById = findChannelById;
    _resultData['findChannelById'] = l$findChannelById.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$findChannelById = findChannelById;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$findChannelById,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FindChannelById) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$findChannelById = findChannelById;
    final lOther$findChannelById = other.findChannelById;
    if (l$findChannelById != lOther$findChannelById) {
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

extension UtilityExtension$Query$FindChannelById on Query$FindChannelById {
  CopyWith$Query$FindChannelById<Query$FindChannelById> get copyWith =>
      CopyWith$Query$FindChannelById(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FindChannelById<TRes> {
  factory CopyWith$Query$FindChannelById(
    Query$FindChannelById instance,
    TRes Function(Query$FindChannelById) then,
  ) = _CopyWithImpl$Query$FindChannelById;

  factory CopyWith$Query$FindChannelById.stub(TRes res) =
      _CopyWithStubImpl$Query$FindChannelById;

  TRes call({
    Query$FindChannelById$findChannelById? findChannelById,
    String? $__typename,
  });
  CopyWith$Query$FindChannelById$findChannelById<TRes> get findChannelById;
}

class _CopyWithImpl$Query$FindChannelById<TRes>
    implements CopyWith$Query$FindChannelById<TRes> {
  _CopyWithImpl$Query$FindChannelById(
    this._instance,
    this._then,
  );

  final Query$FindChannelById _instance;

  final TRes Function(Query$FindChannelById) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? findChannelById = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindChannelById(
        findChannelById:
            findChannelById == _undefined || findChannelById == null
                ? _instance.findChannelById
                : (findChannelById as Query$FindChannelById$findChannelById),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$FindChannelById$findChannelById<TRes> get findChannelById {
    final local$findChannelById = _instance.findChannelById;
    return CopyWith$Query$FindChannelById$findChannelById(
        local$findChannelById, (e) => call(findChannelById: e));
  }
}

class _CopyWithStubImpl$Query$FindChannelById<TRes>
    implements CopyWith$Query$FindChannelById<TRes> {
  _CopyWithStubImpl$Query$FindChannelById(this._res);

  TRes _res;

  call({
    Query$FindChannelById$findChannelById? findChannelById,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$FindChannelById$findChannelById<TRes> get findChannelById =>
      CopyWith$Query$FindChannelById$findChannelById.stub(_res);
}

const documentNodeQueryFindChannelById = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FindChannelById'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'channelId')),
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
        name: NameNode(value: 'findChannelById'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'channelId')),
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
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'userIds'),
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
            name: NameNode(value: 'createdAt'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'isArchivedForMe'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'participants'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'user'),
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

class Query$FindChannelById$findChannelById {
  Query$FindChannelById$findChannelById({
    required this.id,
    this.name,
    this.userIds,
    this.createdBy,
    required this.createdAt,
    required this.isArchivedForMe,
    required this.participants,
    this.$__typename = 'Channel',
  });

  factory Query$FindChannelById$findChannelById.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$userIds = json['userIds'];
    final l$createdBy = json['createdBy'];
    final l$createdAt = json['createdAt'];
    final l$isArchivedForMe = json['isArchivedForMe'];
    final l$participants = json['participants'];
    final l$$__typename = json['__typename'];
    return Query$FindChannelById$findChannelById(
      id: (l$id as String),
      name: (l$name as String?),
      userIds:
          (l$userIds as List<dynamic>?)?.map((e) => (e as String)).toList(),
      createdBy: (l$createdBy as String?),
      createdAt: DateTime.parse((l$createdAt as String)),
      isArchivedForMe: (l$isArchivedForMe as bool),
      participants: (l$participants as List<dynamic>)
          .map((e) =>
              Query$FindChannelById$findChannelById$participants.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String? name;

  final List<String>? userIds;

  final String? createdBy;

  final DateTime createdAt;

  final bool isArchivedForMe;

  final List<Query$FindChannelById$findChannelById$participants> participants;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$userIds = userIds;
    _resultData['userIds'] = l$userIds?.map((e) => e).toList();
    final l$createdBy = createdBy;
    _resultData['createdBy'] = l$createdBy;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt.toIso8601String();
    final l$isArchivedForMe = isArchivedForMe;
    _resultData['isArchivedForMe'] = l$isArchivedForMe;
    final l$participants = participants;
    _resultData['participants'] =
        l$participants.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$userIds = userIds;
    final l$createdBy = createdBy;
    final l$createdAt = createdAt;
    final l$isArchivedForMe = isArchivedForMe;
    final l$participants = participants;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$userIds == null ? null : Object.hashAll(l$userIds.map((v) => v)),
      l$createdBy,
      l$createdAt,
      l$isArchivedForMe,
      Object.hashAll(l$participants.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FindChannelById$findChannelById) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$userIds = userIds;
    final lOther$userIds = other.userIds;
    if (l$userIds != null && lOther$userIds != null) {
      if (l$userIds.length != lOther$userIds.length) {
        return false;
      }
      for (int i = 0; i < l$userIds.length; i++) {
        final l$userIds$entry = l$userIds[i];
        final lOther$userIds$entry = lOther$userIds[i];
        if (l$userIds$entry != lOther$userIds$entry) {
          return false;
        }
      }
    } else if (l$userIds != lOther$userIds) {
      return false;
    }
    final l$createdBy = createdBy;
    final lOther$createdBy = other.createdBy;
    if (l$createdBy != lOther$createdBy) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$isArchivedForMe = isArchivedForMe;
    final lOther$isArchivedForMe = other.isArchivedForMe;
    if (l$isArchivedForMe != lOther$isArchivedForMe) {
      return false;
    }
    final l$participants = participants;
    final lOther$participants = other.participants;
    if (l$participants.length != lOther$participants.length) {
      return false;
    }
    for (int i = 0; i < l$participants.length; i++) {
      final l$participants$entry = l$participants[i];
      final lOther$participants$entry = lOther$participants[i];
      if (l$participants$entry != lOther$participants$entry) {
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

extension UtilityExtension$Query$FindChannelById$findChannelById
    on Query$FindChannelById$findChannelById {
  CopyWith$Query$FindChannelById$findChannelById<
          Query$FindChannelById$findChannelById>
      get copyWith => CopyWith$Query$FindChannelById$findChannelById(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindChannelById$findChannelById<TRes> {
  factory CopyWith$Query$FindChannelById$findChannelById(
    Query$FindChannelById$findChannelById instance,
    TRes Function(Query$FindChannelById$findChannelById) then,
  ) = _CopyWithImpl$Query$FindChannelById$findChannelById;

  factory CopyWith$Query$FindChannelById$findChannelById.stub(TRes res) =
      _CopyWithStubImpl$Query$FindChannelById$findChannelById;

  TRes call({
    String? id,
    String? name,
    List<String>? userIds,
    String? createdBy,
    DateTime? createdAt,
    bool? isArchivedForMe,
    List<Query$FindChannelById$findChannelById$participants>? participants,
    String? $__typename,
  });
  TRes participants(
      Iterable<Query$FindChannelById$findChannelById$participants> Function(
              Iterable<
                  CopyWith$Query$FindChannelById$findChannelById$participants<
                      Query$FindChannelById$findChannelById$participants>>)
          _fn);
}

class _CopyWithImpl$Query$FindChannelById$findChannelById<TRes>
    implements CopyWith$Query$FindChannelById$findChannelById<TRes> {
  _CopyWithImpl$Query$FindChannelById$findChannelById(
    this._instance,
    this._then,
  );

  final Query$FindChannelById$findChannelById _instance;

  final TRes Function(Query$FindChannelById$findChannelById) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? userIds = _undefined,
    Object? createdBy = _undefined,
    Object? createdAt = _undefined,
    Object? isArchivedForMe = _undefined,
    Object? participants = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindChannelById$findChannelById(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined ? _instance.name : (name as String?),
        userIds: userIds == _undefined
            ? _instance.userIds
            : (userIds as List<String>?),
        createdBy: createdBy == _undefined
            ? _instance.createdBy
            : (createdBy as String?),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as DateTime),
        isArchivedForMe:
            isArchivedForMe == _undefined || isArchivedForMe == null
                ? _instance.isArchivedForMe
                : (isArchivedForMe as bool),
        participants: participants == _undefined || participants == null
            ? _instance.participants
            : (participants
                as List<Query$FindChannelById$findChannelById$participants>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes participants(
          Iterable<Query$FindChannelById$findChannelById$participants> Function(
                  Iterable<
                      CopyWith$Query$FindChannelById$findChannelById$participants<
                          Query$FindChannelById$findChannelById$participants>>)
              _fn) =>
      call(
          participants: _fn(_instance.participants.map((e) =>
              CopyWith$Query$FindChannelById$findChannelById$participants(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$FindChannelById$findChannelById<TRes>
    implements CopyWith$Query$FindChannelById$findChannelById<TRes> {
  _CopyWithStubImpl$Query$FindChannelById$findChannelById(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    List<String>? userIds,
    String? createdBy,
    DateTime? createdAt,
    bool? isArchivedForMe,
    List<Query$FindChannelById$findChannelById$participants>? participants,
    String? $__typename,
  }) =>
      _res;
  participants(_fn) => _res;
}

class Query$FindChannelById$findChannelById$participants {
  Query$FindChannelById$findChannelById$participants({
    required this.user,
    this.$__typename = 'ChannelParticipant',
  });

  factory Query$FindChannelById$findChannelById$participants.fromJson(
      Map<String, dynamic> json) {
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Query$FindChannelById$findChannelById$participants(
      user: Query$FindChannelById$findChannelById$participants$user.fromJson(
          (l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$FindChannelById$findChannelById$participants$user user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$user = user;
    _resultData['user'] = l$user.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$user,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FindChannelById$findChannelById$participants) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
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

extension UtilityExtension$Query$FindChannelById$findChannelById$participants
    on Query$FindChannelById$findChannelById$participants {
  CopyWith$Query$FindChannelById$findChannelById$participants<
          Query$FindChannelById$findChannelById$participants>
      get copyWith =>
          CopyWith$Query$FindChannelById$findChannelById$participants(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindChannelById$findChannelById$participants<
    TRes> {
  factory CopyWith$Query$FindChannelById$findChannelById$participants(
    Query$FindChannelById$findChannelById$participants instance,
    TRes Function(Query$FindChannelById$findChannelById$participants) then,
  ) = _CopyWithImpl$Query$FindChannelById$findChannelById$participants;

  factory CopyWith$Query$FindChannelById$findChannelById$participants.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindChannelById$findChannelById$participants;

  TRes call({
    Query$FindChannelById$findChannelById$participants$user? user,
    String? $__typename,
  });
  CopyWith$Query$FindChannelById$findChannelById$participants$user<TRes>
      get user;
}

class _CopyWithImpl$Query$FindChannelById$findChannelById$participants<TRes>
    implements
        CopyWith$Query$FindChannelById$findChannelById$participants<TRes> {
  _CopyWithImpl$Query$FindChannelById$findChannelById$participants(
    this._instance,
    this._then,
  );

  final Query$FindChannelById$findChannelById$participants _instance;

  final TRes Function(Query$FindChannelById$findChannelById$participants) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindChannelById$findChannelById$participants(
        user: user == _undefined || user == null
            ? _instance.user
            : (user as Query$FindChannelById$findChannelById$participants$user),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$FindChannelById$findChannelById$participants$user<TRes>
      get user {
    final local$user = _instance.user;
    return CopyWith$Query$FindChannelById$findChannelById$participants$user(
        local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Query$FindChannelById$findChannelById$participants<TRes>
    implements
        CopyWith$Query$FindChannelById$findChannelById$participants<TRes> {
  _CopyWithStubImpl$Query$FindChannelById$findChannelById$participants(
      this._res);

  TRes _res;

  call({
    Query$FindChannelById$findChannelById$participants$user? user,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$FindChannelById$findChannelById$participants$user<TRes>
      get user =>
          CopyWith$Query$FindChannelById$findChannelById$participants$user.stub(
              _res);
}

class Query$FindChannelById$findChannelById$participants$user {
  Query$FindChannelById$findChannelById$participants$user({
    required this.id,
    this.fullName,
    this.avatarUrl,
    this.userHandle,
    this.$__typename = 'User',
  });

  factory Query$FindChannelById$findChannelById$participants$user.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$fullName = json['fullName'];
    final l$avatarUrl = json['avatarUrl'];
    final l$userHandle = json['userHandle'];
    final l$$__typename = json['__typename'];
    return Query$FindChannelById$findChannelById$participants$user(
      id: (l$id as String),
      fullName: (l$fullName as String?),
      avatarUrl: (l$avatarUrl as String?),
      userHandle: (l$userHandle as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String? fullName;

  final String? avatarUrl;

  final String? userHandle;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
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
    final l$fullName = fullName;
    final l$avatarUrl = avatarUrl;
    final l$userHandle = userHandle;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
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
    if (!(other is Query$FindChannelById$findChannelById$participants$user) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Query$FindChannelById$findChannelById$participants$user
    on Query$FindChannelById$findChannelById$participants$user {
  CopyWith$Query$FindChannelById$findChannelById$participants$user<
          Query$FindChannelById$findChannelById$participants$user>
      get copyWith =>
          CopyWith$Query$FindChannelById$findChannelById$participants$user(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindChannelById$findChannelById$participants$user<
    TRes> {
  factory CopyWith$Query$FindChannelById$findChannelById$participants$user(
    Query$FindChannelById$findChannelById$participants$user instance,
    TRes Function(Query$FindChannelById$findChannelById$participants$user) then,
  ) = _CopyWithImpl$Query$FindChannelById$findChannelById$participants$user;

  factory CopyWith$Query$FindChannelById$findChannelById$participants$user.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindChannelById$findChannelById$participants$user;

  TRes call({
    String? id,
    String? fullName,
    String? avatarUrl,
    String? userHandle,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindChannelById$findChannelById$participants$user<
        TRes>
    implements
        CopyWith$Query$FindChannelById$findChannelById$participants$user<TRes> {
  _CopyWithImpl$Query$FindChannelById$findChannelById$participants$user(
    this._instance,
    this._then,
  );

  final Query$FindChannelById$findChannelById$participants$user _instance;

  final TRes Function(Query$FindChannelById$findChannelById$participants$user)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? fullName = _undefined,
    Object? avatarUrl = _undefined,
    Object? userHandle = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindChannelById$findChannelById$participants$user(
        id: id == _undefined || id == null ? _instance.id : (id as String),
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

class _CopyWithStubImpl$Query$FindChannelById$findChannelById$participants$user<
        TRes>
    implements
        CopyWith$Query$FindChannelById$findChannelById$participants$user<TRes> {
  _CopyWithStubImpl$Query$FindChannelById$findChannelById$participants$user(
      this._res);

  TRes _res;

  call({
    String? id,
    String? fullName,
    String? avatarUrl,
    String? userHandle,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetChannelsList {
  Query$GetChannelsList({
    required this.findChannels,
    this.$__typename = 'Query',
  });

  factory Query$GetChannelsList.fromJson(Map<String, dynamic> json) {
    final l$findChannels = json['findChannels'];
    final l$$__typename = json['__typename'];
    return Query$GetChannelsList(
      findChannels: (l$findChannels as List<dynamic>)
          .map((e) => Query$GetChannelsList$findChannels.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetChannelsList$findChannels> findChannels;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$findChannels = findChannels;
    _resultData['findChannels'] =
        l$findChannels.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$findChannels = findChannels;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$findChannels.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetChannelsList) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$findChannels = findChannels;
    final lOther$findChannels = other.findChannels;
    if (l$findChannels.length != lOther$findChannels.length) {
      return false;
    }
    for (int i = 0; i < l$findChannels.length; i++) {
      final l$findChannels$entry = l$findChannels[i];
      final lOther$findChannels$entry = lOther$findChannels[i];
      if (l$findChannels$entry != lOther$findChannels$entry) {
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

extension UtilityExtension$Query$GetChannelsList on Query$GetChannelsList {
  CopyWith$Query$GetChannelsList<Query$GetChannelsList> get copyWith =>
      CopyWith$Query$GetChannelsList(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetChannelsList<TRes> {
  factory CopyWith$Query$GetChannelsList(
    Query$GetChannelsList instance,
    TRes Function(Query$GetChannelsList) then,
  ) = _CopyWithImpl$Query$GetChannelsList;

  factory CopyWith$Query$GetChannelsList.stub(TRes res) =
      _CopyWithStubImpl$Query$GetChannelsList;

  TRes call({
    List<Query$GetChannelsList$findChannels>? findChannels,
    String? $__typename,
  });
  TRes findChannels(
      Iterable<Query$GetChannelsList$findChannels> Function(
              Iterable<
                  CopyWith$Query$GetChannelsList$findChannels<
                      Query$GetChannelsList$findChannels>>)
          _fn);
}

class _CopyWithImpl$Query$GetChannelsList<TRes>
    implements CopyWith$Query$GetChannelsList<TRes> {
  _CopyWithImpl$Query$GetChannelsList(
    this._instance,
    this._then,
  );

  final Query$GetChannelsList _instance;

  final TRes Function(Query$GetChannelsList) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? findChannels = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetChannelsList(
        findChannels: findChannels == _undefined || findChannels == null
            ? _instance.findChannels
            : (findChannels as List<Query$GetChannelsList$findChannels>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes findChannels(
          Iterable<Query$GetChannelsList$findChannels> Function(
                  Iterable<
                      CopyWith$Query$GetChannelsList$findChannels<
                          Query$GetChannelsList$findChannels>>)
              _fn) =>
      call(
          findChannels: _fn(_instance.findChannels
              .map((e) => CopyWith$Query$GetChannelsList$findChannels(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetChannelsList<TRes>
    implements CopyWith$Query$GetChannelsList<TRes> {
  _CopyWithStubImpl$Query$GetChannelsList(this._res);

  TRes _res;

  call({
    List<Query$GetChannelsList$findChannels>? findChannels,
    String? $__typename,
  }) =>
      _res;
  findChannels(_fn) => _res;
}

const documentNodeQueryGetChannelsList = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetChannelsList'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'findChannels'),
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
            name: NameNode(value: 'name'),
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
            name: NameNode(value: 'createdAt'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'description'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'updatedBy'),
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
            name: NameNode(value: 'participants'),
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

class Query$GetChannelsList$findChannels {
  Query$GetChannelsList$findChannels({
    required this.id,
    this.name,
    this.createdBy,
    required this.createdAt,
    this.description,
    this.updatedBy,
    this.updatedAt,
    required this.participants,
    this.$__typename = 'Channel',
  });

  factory Query$GetChannelsList$findChannels.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$createdBy = json['createdBy'];
    final l$createdAt = json['createdAt'];
    final l$description = json['description'];
    final l$updatedBy = json['updatedBy'];
    final l$updatedAt = json['updatedAt'];
    final l$participants = json['participants'];
    final l$$__typename = json['__typename'];
    return Query$GetChannelsList$findChannels(
      id: (l$id as String),
      name: (l$name as String?),
      createdBy: (l$createdBy as String?),
      createdAt: DateTime.parse((l$createdAt as String)),
      description: (l$description as String?),
      updatedBy: (l$updatedBy as String?),
      updatedAt:
          l$updatedAt == null ? null : DateTime.parse((l$updatedAt as String)),
      participants: (l$participants as List<dynamic>)
          .map((e) => Query$GetChannelsList$findChannels$participants.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String? name;

  final String? createdBy;

  final DateTime createdAt;

  final String? description;

  final String? updatedBy;

  final DateTime? updatedAt;

  final List<Query$GetChannelsList$findChannels$participants> participants;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$createdBy = createdBy;
    _resultData['createdBy'] = l$createdBy;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt.toIso8601String();
    final l$description = description;
    _resultData['description'] = l$description;
    final l$updatedBy = updatedBy;
    _resultData['updatedBy'] = l$updatedBy;
    final l$updatedAt = updatedAt;
    _resultData['updatedAt'] = l$updatedAt?.toIso8601String();
    final l$participants = participants;
    _resultData['participants'] =
        l$participants.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$createdBy = createdBy;
    final l$createdAt = createdAt;
    final l$description = description;
    final l$updatedBy = updatedBy;
    final l$updatedAt = updatedAt;
    final l$participants = participants;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$createdBy,
      l$createdAt,
      l$description,
      l$updatedBy,
      l$updatedAt,
      Object.hashAll(l$participants.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetChannelsList$findChannels) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$createdBy = createdBy;
    final lOther$createdBy = other.createdBy;
    if (l$createdBy != lOther$createdBy) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$updatedBy = updatedBy;
    final lOther$updatedBy = other.updatedBy;
    if (l$updatedBy != lOther$updatedBy) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    final l$participants = participants;
    final lOther$participants = other.participants;
    if (l$participants.length != lOther$participants.length) {
      return false;
    }
    for (int i = 0; i < l$participants.length; i++) {
      final l$participants$entry = l$participants[i];
      final lOther$participants$entry = lOther$participants[i];
      if (l$participants$entry != lOther$participants$entry) {
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

extension UtilityExtension$Query$GetChannelsList$findChannels
    on Query$GetChannelsList$findChannels {
  CopyWith$Query$GetChannelsList$findChannels<
          Query$GetChannelsList$findChannels>
      get copyWith => CopyWith$Query$GetChannelsList$findChannels(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetChannelsList$findChannels<TRes> {
  factory CopyWith$Query$GetChannelsList$findChannels(
    Query$GetChannelsList$findChannels instance,
    TRes Function(Query$GetChannelsList$findChannels) then,
  ) = _CopyWithImpl$Query$GetChannelsList$findChannels;

  factory CopyWith$Query$GetChannelsList$findChannels.stub(TRes res) =
      _CopyWithStubImpl$Query$GetChannelsList$findChannels;

  TRes call({
    String? id,
    String? name,
    String? createdBy,
    DateTime? createdAt,
    String? description,
    String? updatedBy,
    DateTime? updatedAt,
    List<Query$GetChannelsList$findChannels$participants>? participants,
    String? $__typename,
  });
  TRes participants(
      Iterable<Query$GetChannelsList$findChannels$participants> Function(
              Iterable<
                  CopyWith$Query$GetChannelsList$findChannels$participants<
                      Query$GetChannelsList$findChannels$participants>>)
          _fn);
}

class _CopyWithImpl$Query$GetChannelsList$findChannels<TRes>
    implements CopyWith$Query$GetChannelsList$findChannels<TRes> {
  _CopyWithImpl$Query$GetChannelsList$findChannels(
    this._instance,
    this._then,
  );

  final Query$GetChannelsList$findChannels _instance;

  final TRes Function(Query$GetChannelsList$findChannels) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? createdBy = _undefined,
    Object? createdAt = _undefined,
    Object? description = _undefined,
    Object? updatedBy = _undefined,
    Object? updatedAt = _undefined,
    Object? participants = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetChannelsList$findChannels(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined ? _instance.name : (name as String?),
        createdBy: createdBy == _undefined
            ? _instance.createdBy
            : (createdBy as String?),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as DateTime),
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        updatedBy: updatedBy == _undefined
            ? _instance.updatedBy
            : (updatedBy as String?),
        updatedAt: updatedAt == _undefined
            ? _instance.updatedAt
            : (updatedAt as DateTime?),
        participants: participants == _undefined || participants == null
            ? _instance.participants
            : (participants
                as List<Query$GetChannelsList$findChannels$participants>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes participants(
          Iterable<Query$GetChannelsList$findChannels$participants> Function(
                  Iterable<
                      CopyWith$Query$GetChannelsList$findChannels$participants<
                          Query$GetChannelsList$findChannels$participants>>)
              _fn) =>
      call(
          participants: _fn(_instance.participants.map(
              (e) => CopyWith$Query$GetChannelsList$findChannels$participants(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetChannelsList$findChannels<TRes>
    implements CopyWith$Query$GetChannelsList$findChannels<TRes> {
  _CopyWithStubImpl$Query$GetChannelsList$findChannels(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? createdBy,
    DateTime? createdAt,
    String? description,
    String? updatedBy,
    DateTime? updatedAt,
    List<Query$GetChannelsList$findChannels$participants>? participants,
    String? $__typename,
  }) =>
      _res;
  participants(_fn) => _res;
}

class Query$GetChannelsList$findChannels$participants {
  Query$GetChannelsList$findChannels$participants({
    required this.id,
    this.$__typename = 'ChannelParticipant',
  });

  factory Query$GetChannelsList$findChannels$participants.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$GetChannelsList$findChannels$participants(
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetChannelsList$findChannels$participants) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Query$GetChannelsList$findChannels$participants
    on Query$GetChannelsList$findChannels$participants {
  CopyWith$Query$GetChannelsList$findChannels$participants<
          Query$GetChannelsList$findChannels$participants>
      get copyWith => CopyWith$Query$GetChannelsList$findChannels$participants(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetChannelsList$findChannels$participants<TRes> {
  factory CopyWith$Query$GetChannelsList$findChannels$participants(
    Query$GetChannelsList$findChannels$participants instance,
    TRes Function(Query$GetChannelsList$findChannels$participants) then,
  ) = _CopyWithImpl$Query$GetChannelsList$findChannels$participants;

  factory CopyWith$Query$GetChannelsList$findChannels$participants.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetChannelsList$findChannels$participants;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetChannelsList$findChannels$participants<TRes>
    implements CopyWith$Query$GetChannelsList$findChannels$participants<TRes> {
  _CopyWithImpl$Query$GetChannelsList$findChannels$participants(
    this._instance,
    this._then,
  );

  final Query$GetChannelsList$findChannels$participants _instance;

  final TRes Function(Query$GetChannelsList$findChannels$participants) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetChannelsList$findChannels$participants(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetChannelsList$findChannels$participants<TRes>
    implements CopyWith$Query$GetChannelsList$findChannels$participants<TRes> {
  _CopyWithStubImpl$Query$GetChannelsList$findChannels$participants(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$CreateChannel {
  factory Variables$Mutation$CreateChannel(
          {required Input$ChannelInput input}) =>
      Variables$Mutation$CreateChannel._({
        r'input': input,
      });

  Variables$Mutation$CreateChannel._(this._$data);

  factory Variables$Mutation$CreateChannel.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$ChannelInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Mutation$CreateChannel._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$ChannelInput get input => (_$data['input'] as Input$ChannelInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$CreateChannel<Variables$Mutation$CreateChannel>
      get copyWith => CopyWith$Variables$Mutation$CreateChannel(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$CreateChannel) ||
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

abstract class CopyWith$Variables$Mutation$CreateChannel<TRes> {
  factory CopyWith$Variables$Mutation$CreateChannel(
    Variables$Mutation$CreateChannel instance,
    TRes Function(Variables$Mutation$CreateChannel) then,
  ) = _CopyWithImpl$Variables$Mutation$CreateChannel;

  factory CopyWith$Variables$Mutation$CreateChannel.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CreateChannel;

  TRes call({Input$ChannelInput? input});
}

class _CopyWithImpl$Variables$Mutation$CreateChannel<TRes>
    implements CopyWith$Variables$Mutation$CreateChannel<TRes> {
  _CopyWithImpl$Variables$Mutation$CreateChannel(
    this._instance,
    this._then,
  );

  final Variables$Mutation$CreateChannel _instance;

  final TRes Function(Variables$Mutation$CreateChannel) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$CreateChannel._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$ChannelInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$CreateChannel<TRes>
    implements CopyWith$Variables$Mutation$CreateChannel<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreateChannel(this._res);

  TRes _res;

  call({Input$ChannelInput? input}) => _res;
}

class Mutation$CreateChannel {
  Mutation$CreateChannel({
    required this.createChannel,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CreateChannel.fromJson(Map<String, dynamic> json) {
    final l$createChannel = json['createChannel'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateChannel(
      createChannel: Mutation$CreateChannel$createChannel.fromJson(
          (l$createChannel as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CreateChannel$createChannel createChannel;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createChannel = createChannel;
    _resultData['createChannel'] = l$createChannel.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createChannel = createChannel;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$createChannel,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CreateChannel) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$createChannel = createChannel;
    final lOther$createChannel = other.createChannel;
    if (l$createChannel != lOther$createChannel) {
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

extension UtilityExtension$Mutation$CreateChannel on Mutation$CreateChannel {
  CopyWith$Mutation$CreateChannel<Mutation$CreateChannel> get copyWith =>
      CopyWith$Mutation$CreateChannel(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CreateChannel<TRes> {
  factory CopyWith$Mutation$CreateChannel(
    Mutation$CreateChannel instance,
    TRes Function(Mutation$CreateChannel) then,
  ) = _CopyWithImpl$Mutation$CreateChannel;

  factory CopyWith$Mutation$CreateChannel.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateChannel;

  TRes call({
    Mutation$CreateChannel$createChannel? createChannel,
    String? $__typename,
  });
  CopyWith$Mutation$CreateChannel$createChannel<TRes> get createChannel;
}

class _CopyWithImpl$Mutation$CreateChannel<TRes>
    implements CopyWith$Mutation$CreateChannel<TRes> {
  _CopyWithImpl$Mutation$CreateChannel(
    this._instance,
    this._then,
  );

  final Mutation$CreateChannel _instance;

  final TRes Function(Mutation$CreateChannel) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createChannel = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateChannel(
        createChannel: createChannel == _undefined || createChannel == null
            ? _instance.createChannel
            : (createChannel as Mutation$CreateChannel$createChannel),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$CreateChannel$createChannel<TRes> get createChannel {
    final local$createChannel = _instance.createChannel;
    return CopyWith$Mutation$CreateChannel$createChannel(
        local$createChannel, (e) => call(createChannel: e));
  }
}

class _CopyWithStubImpl$Mutation$CreateChannel<TRes>
    implements CopyWith$Mutation$CreateChannel<TRes> {
  _CopyWithStubImpl$Mutation$CreateChannel(this._res);

  TRes _res;

  call({
    Mutation$CreateChannel$createChannel? createChannel,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$CreateChannel$createChannel<TRes> get createChannel =>
      CopyWith$Mutation$CreateChannel$createChannel.stub(_res);
}

const documentNodeMutationCreateChannel = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'CreateChannel'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'ChannelInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'createChannel'),
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
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'userIds'),
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
            name: NameNode(value: 'createdAt'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'participants'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'user'),
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

class Mutation$CreateChannel$createChannel {
  Mutation$CreateChannel$createChannel({
    required this.id,
    this.name,
    this.userIds,
    this.createdBy,
    required this.createdAt,
    required this.participants,
    this.$__typename = 'Channel',
  });

  factory Mutation$CreateChannel$createChannel.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$userIds = json['userIds'];
    final l$createdBy = json['createdBy'];
    final l$createdAt = json['createdAt'];
    final l$participants = json['participants'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateChannel$createChannel(
      id: (l$id as String),
      name: (l$name as String?),
      userIds:
          (l$userIds as List<dynamic>?)?.map((e) => (e as String)).toList(),
      createdBy: (l$createdBy as String?),
      createdAt: DateTime.parse((l$createdAt as String)),
      participants: (l$participants as List<dynamic>)
          .map((e) =>
              Mutation$CreateChannel$createChannel$participants.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String? name;

  final List<String>? userIds;

  final String? createdBy;

  final DateTime createdAt;

  final List<Mutation$CreateChannel$createChannel$participants> participants;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$userIds = userIds;
    _resultData['userIds'] = l$userIds?.map((e) => e).toList();
    final l$createdBy = createdBy;
    _resultData['createdBy'] = l$createdBy;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt.toIso8601String();
    final l$participants = participants;
    _resultData['participants'] =
        l$participants.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$userIds = userIds;
    final l$createdBy = createdBy;
    final l$createdAt = createdAt;
    final l$participants = participants;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$userIds == null ? null : Object.hashAll(l$userIds.map((v) => v)),
      l$createdBy,
      l$createdAt,
      Object.hashAll(l$participants.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CreateChannel$createChannel) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$userIds = userIds;
    final lOther$userIds = other.userIds;
    if (l$userIds != null && lOther$userIds != null) {
      if (l$userIds.length != lOther$userIds.length) {
        return false;
      }
      for (int i = 0; i < l$userIds.length; i++) {
        final l$userIds$entry = l$userIds[i];
        final lOther$userIds$entry = lOther$userIds[i];
        if (l$userIds$entry != lOther$userIds$entry) {
          return false;
        }
      }
    } else if (l$userIds != lOther$userIds) {
      return false;
    }
    final l$createdBy = createdBy;
    final lOther$createdBy = other.createdBy;
    if (l$createdBy != lOther$createdBy) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$participants = participants;
    final lOther$participants = other.participants;
    if (l$participants.length != lOther$participants.length) {
      return false;
    }
    for (int i = 0; i < l$participants.length; i++) {
      final l$participants$entry = l$participants[i];
      final lOther$participants$entry = lOther$participants[i];
      if (l$participants$entry != lOther$participants$entry) {
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

extension UtilityExtension$Mutation$CreateChannel$createChannel
    on Mutation$CreateChannel$createChannel {
  CopyWith$Mutation$CreateChannel$createChannel<
          Mutation$CreateChannel$createChannel>
      get copyWith => CopyWith$Mutation$CreateChannel$createChannel(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateChannel$createChannel<TRes> {
  factory CopyWith$Mutation$CreateChannel$createChannel(
    Mutation$CreateChannel$createChannel instance,
    TRes Function(Mutation$CreateChannel$createChannel) then,
  ) = _CopyWithImpl$Mutation$CreateChannel$createChannel;

  factory CopyWith$Mutation$CreateChannel$createChannel.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateChannel$createChannel;

  TRes call({
    String? id,
    String? name,
    List<String>? userIds,
    String? createdBy,
    DateTime? createdAt,
    List<Mutation$CreateChannel$createChannel$participants>? participants,
    String? $__typename,
  });
  TRes participants(
      Iterable<Mutation$CreateChannel$createChannel$participants> Function(
              Iterable<
                  CopyWith$Mutation$CreateChannel$createChannel$participants<
                      Mutation$CreateChannel$createChannel$participants>>)
          _fn);
}

class _CopyWithImpl$Mutation$CreateChannel$createChannel<TRes>
    implements CopyWith$Mutation$CreateChannel$createChannel<TRes> {
  _CopyWithImpl$Mutation$CreateChannel$createChannel(
    this._instance,
    this._then,
  );

  final Mutation$CreateChannel$createChannel _instance;

  final TRes Function(Mutation$CreateChannel$createChannel) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? userIds = _undefined,
    Object? createdBy = _undefined,
    Object? createdAt = _undefined,
    Object? participants = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateChannel$createChannel(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined ? _instance.name : (name as String?),
        userIds: userIds == _undefined
            ? _instance.userIds
            : (userIds as List<String>?),
        createdBy: createdBy == _undefined
            ? _instance.createdBy
            : (createdBy as String?),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as DateTime),
        participants: participants == _undefined || participants == null
            ? _instance.participants
            : (participants
                as List<Mutation$CreateChannel$createChannel$participants>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes participants(
          Iterable<Mutation$CreateChannel$createChannel$participants> Function(
                  Iterable<
                      CopyWith$Mutation$CreateChannel$createChannel$participants<
                          Mutation$CreateChannel$createChannel$participants>>)
              _fn) =>
      call(
          participants: _fn(_instance.participants.map(
              (e) => CopyWith$Mutation$CreateChannel$createChannel$participants(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Mutation$CreateChannel$createChannel<TRes>
    implements CopyWith$Mutation$CreateChannel$createChannel<TRes> {
  _CopyWithStubImpl$Mutation$CreateChannel$createChannel(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    List<String>? userIds,
    String? createdBy,
    DateTime? createdAt,
    List<Mutation$CreateChannel$createChannel$participants>? participants,
    String? $__typename,
  }) =>
      _res;
  participants(_fn) => _res;
}

class Mutation$CreateChannel$createChannel$participants {
  Mutation$CreateChannel$createChannel$participants({
    required this.user,
    this.$__typename = 'ChannelParticipant',
  });

  factory Mutation$CreateChannel$createChannel$participants.fromJson(
      Map<String, dynamic> json) {
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateChannel$createChannel$participants(
      user: Mutation$CreateChannel$createChannel$participants$user.fromJson(
          (l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CreateChannel$createChannel$participants$user user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$user = user;
    _resultData['user'] = l$user.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$user,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CreateChannel$createChannel$participants) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
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

extension UtilityExtension$Mutation$CreateChannel$createChannel$participants
    on Mutation$CreateChannel$createChannel$participants {
  CopyWith$Mutation$CreateChannel$createChannel$participants<
          Mutation$CreateChannel$createChannel$participants>
      get copyWith =>
          CopyWith$Mutation$CreateChannel$createChannel$participants(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateChannel$createChannel$participants<
    TRes> {
  factory CopyWith$Mutation$CreateChannel$createChannel$participants(
    Mutation$CreateChannel$createChannel$participants instance,
    TRes Function(Mutation$CreateChannel$createChannel$participants) then,
  ) = _CopyWithImpl$Mutation$CreateChannel$createChannel$participants;

  factory CopyWith$Mutation$CreateChannel$createChannel$participants.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$CreateChannel$createChannel$participants;

  TRes call({
    Mutation$CreateChannel$createChannel$participants$user? user,
    String? $__typename,
  });
  CopyWith$Mutation$CreateChannel$createChannel$participants$user<TRes>
      get user;
}

class _CopyWithImpl$Mutation$CreateChannel$createChannel$participants<TRes>
    implements
        CopyWith$Mutation$CreateChannel$createChannel$participants<TRes> {
  _CopyWithImpl$Mutation$CreateChannel$createChannel$participants(
    this._instance,
    this._then,
  );

  final Mutation$CreateChannel$createChannel$participants _instance;

  final TRes Function(Mutation$CreateChannel$createChannel$participants) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateChannel$createChannel$participants(
        user: user == _undefined || user == null
            ? _instance.user
            : (user as Mutation$CreateChannel$createChannel$participants$user),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$CreateChannel$createChannel$participants$user<TRes>
      get user {
    final local$user = _instance.user;
    return CopyWith$Mutation$CreateChannel$createChannel$participants$user(
        local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Mutation$CreateChannel$createChannel$participants<TRes>
    implements
        CopyWith$Mutation$CreateChannel$createChannel$participants<TRes> {
  _CopyWithStubImpl$Mutation$CreateChannel$createChannel$participants(
      this._res);

  TRes _res;

  call({
    Mutation$CreateChannel$createChannel$participants$user? user,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$CreateChannel$createChannel$participants$user<TRes>
      get user =>
          CopyWith$Mutation$CreateChannel$createChannel$participants$user.stub(
              _res);
}

class Mutation$CreateChannel$createChannel$participants$user {
  Mutation$CreateChannel$createChannel$participants$user({
    required this.id,
    this.fullName,
    this.avatarUrl,
    this.userHandle,
    this.$__typename = 'User',
  });

  factory Mutation$CreateChannel$createChannel$participants$user.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$fullName = json['fullName'];
    final l$avatarUrl = json['avatarUrl'];
    final l$userHandle = json['userHandle'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateChannel$createChannel$participants$user(
      id: (l$id as String),
      fullName: (l$fullName as String?),
      avatarUrl: (l$avatarUrl as String?),
      userHandle: (l$userHandle as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String? fullName;

  final String? avatarUrl;

  final String? userHandle;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
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
    final l$fullName = fullName;
    final l$avatarUrl = avatarUrl;
    final l$userHandle = userHandle;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
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
    if (!(other is Mutation$CreateChannel$createChannel$participants$user) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Mutation$CreateChannel$createChannel$participants$user
    on Mutation$CreateChannel$createChannel$participants$user {
  CopyWith$Mutation$CreateChannel$createChannel$participants$user<
          Mutation$CreateChannel$createChannel$participants$user>
      get copyWith =>
          CopyWith$Mutation$CreateChannel$createChannel$participants$user(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateChannel$createChannel$participants$user<
    TRes> {
  factory CopyWith$Mutation$CreateChannel$createChannel$participants$user(
    Mutation$CreateChannel$createChannel$participants$user instance,
    TRes Function(Mutation$CreateChannel$createChannel$participants$user) then,
  ) = _CopyWithImpl$Mutation$CreateChannel$createChannel$participants$user;

  factory CopyWith$Mutation$CreateChannel$createChannel$participants$user.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$CreateChannel$createChannel$participants$user;

  TRes call({
    String? id,
    String? fullName,
    String? avatarUrl,
    String? userHandle,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$CreateChannel$createChannel$participants$user<TRes>
    implements
        CopyWith$Mutation$CreateChannel$createChannel$participants$user<TRes> {
  _CopyWithImpl$Mutation$CreateChannel$createChannel$participants$user(
    this._instance,
    this._then,
  );

  final Mutation$CreateChannel$createChannel$participants$user _instance;

  final TRes Function(Mutation$CreateChannel$createChannel$participants$user)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? fullName = _undefined,
    Object? avatarUrl = _undefined,
    Object? userHandle = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateChannel$createChannel$participants$user(
        id: id == _undefined || id == null ? _instance.id : (id as String),
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

class _CopyWithStubImpl$Mutation$CreateChannel$createChannel$participants$user<
        TRes>
    implements
        CopyWith$Mutation$CreateChannel$createChannel$participants$user<TRes> {
  _CopyWithStubImpl$Mutation$CreateChannel$createChannel$participants$user(
      this._res);

  TRes _res;

  call({
    String? id,
    String? fullName,
    String? avatarUrl,
    String? userHandle,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$DeleteChannel {
  factory Variables$Mutation$DeleteChannel({
    required bool deletePhysically,
    required String channelId,
  }) =>
      Variables$Mutation$DeleteChannel._({
        r'deletePhysically': deletePhysically,
        r'channelId': channelId,
      });

  Variables$Mutation$DeleteChannel._(this._$data);

  factory Variables$Mutation$DeleteChannel.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$deletePhysically = data['deletePhysically'];
    result$data['deletePhysically'] = (l$deletePhysically as bool);
    final l$channelId = data['channelId'];
    result$data['channelId'] = (l$channelId as String);
    return Variables$Mutation$DeleteChannel._(result$data);
  }

  Map<String, dynamic> _$data;

  bool get deletePhysically => (_$data['deletePhysically'] as bool);
  String get channelId => (_$data['channelId'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$deletePhysically = deletePhysically;
    result$data['deletePhysically'] = l$deletePhysically;
    final l$channelId = channelId;
    result$data['channelId'] = l$channelId;
    return result$data;
  }

  CopyWith$Variables$Mutation$DeleteChannel<Variables$Mutation$DeleteChannel>
      get copyWith => CopyWith$Variables$Mutation$DeleteChannel(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$DeleteChannel) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deletePhysically = deletePhysically;
    final lOther$deletePhysically = other.deletePhysically;
    if (l$deletePhysically != lOther$deletePhysically) {
      return false;
    }
    final l$channelId = channelId;
    final lOther$channelId = other.channelId;
    if (l$channelId != lOther$channelId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$deletePhysically = deletePhysically;
    final l$channelId = channelId;
    return Object.hashAll([
      l$deletePhysically,
      l$channelId,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$DeleteChannel<TRes> {
  factory CopyWith$Variables$Mutation$DeleteChannel(
    Variables$Mutation$DeleteChannel instance,
    TRes Function(Variables$Mutation$DeleteChannel) then,
  ) = _CopyWithImpl$Variables$Mutation$DeleteChannel;

  factory CopyWith$Variables$Mutation$DeleteChannel.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$DeleteChannel;

  TRes call({
    bool? deletePhysically,
    String? channelId,
  });
}

class _CopyWithImpl$Variables$Mutation$DeleteChannel<TRes>
    implements CopyWith$Variables$Mutation$DeleteChannel<TRes> {
  _CopyWithImpl$Variables$Mutation$DeleteChannel(
    this._instance,
    this._then,
  );

  final Variables$Mutation$DeleteChannel _instance;

  final TRes Function(Variables$Mutation$DeleteChannel) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deletePhysically = _undefined,
    Object? channelId = _undefined,
  }) =>
      _then(Variables$Mutation$DeleteChannel._({
        ..._instance._$data,
        if (deletePhysically != _undefined && deletePhysically != null)
          'deletePhysically': (deletePhysically as bool),
        if (channelId != _undefined && channelId != null)
          'channelId': (channelId as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$DeleteChannel<TRes>
    implements CopyWith$Variables$Mutation$DeleteChannel<TRes> {
  _CopyWithStubImpl$Variables$Mutation$DeleteChannel(this._res);

  TRes _res;

  call({
    bool? deletePhysically,
    String? channelId,
  }) =>
      _res;
}

class Mutation$DeleteChannel {
  Mutation$DeleteChannel({
    required this.deleteChannel,
    this.$__typename = 'Mutation',
  });

  factory Mutation$DeleteChannel.fromJson(Map<String, dynamic> json) {
    final l$deleteChannel = json['deleteChannel'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteChannel(
      deleteChannel: (l$deleteChannel as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String deleteChannel;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteChannel = deleteChannel;
    _resultData['deleteChannel'] = l$deleteChannel;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteChannel = deleteChannel;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$deleteChannel,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$DeleteChannel) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteChannel = deleteChannel;
    final lOther$deleteChannel = other.deleteChannel;
    if (l$deleteChannel != lOther$deleteChannel) {
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

extension UtilityExtension$Mutation$DeleteChannel on Mutation$DeleteChannel {
  CopyWith$Mutation$DeleteChannel<Mutation$DeleteChannel> get copyWith =>
      CopyWith$Mutation$DeleteChannel(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$DeleteChannel<TRes> {
  factory CopyWith$Mutation$DeleteChannel(
    Mutation$DeleteChannel instance,
    TRes Function(Mutation$DeleteChannel) then,
  ) = _CopyWithImpl$Mutation$DeleteChannel;

  factory CopyWith$Mutation$DeleteChannel.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteChannel;

  TRes call({
    String? deleteChannel,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$DeleteChannel<TRes>
    implements CopyWith$Mutation$DeleteChannel<TRes> {
  _CopyWithImpl$Mutation$DeleteChannel(
    this._instance,
    this._then,
  );

  final Mutation$DeleteChannel _instance;

  final TRes Function(Mutation$DeleteChannel) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleteChannel = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteChannel(
        deleteChannel: deleteChannel == _undefined || deleteChannel == null
            ? _instance.deleteChannel
            : (deleteChannel as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$DeleteChannel<TRes>
    implements CopyWith$Mutation$DeleteChannel<TRes> {
  _CopyWithStubImpl$Mutation$DeleteChannel(this._res);

  TRes _res;

  call({
    String? deleteChannel,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeMutationDeleteChannel = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'DeleteChannel'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'deletePhysically')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'channelId')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'deleteChannel'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'deletePhysically'),
            value: VariableNode(name: NameNode(value: 'deletePhysically')),
          ),
          ArgumentNode(
            name: NameNode(value: 'channelId'),
            value: VariableNode(name: NameNode(value: 'channelId')),
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

class Variables$Mutation$ArchiveChannelForMe {
  factory Variables$Mutation$ArchiveChannelForMe({required String channelId}) =>
      Variables$Mutation$ArchiveChannelForMe._({
        r'channelId': channelId,
      });

  Variables$Mutation$ArchiveChannelForMe._(this._$data);

  factory Variables$Mutation$ArchiveChannelForMe.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$channelId = data['channelId'];
    result$data['channelId'] = (l$channelId as String);
    return Variables$Mutation$ArchiveChannelForMe._(result$data);
  }

  Map<String, dynamic> _$data;

  String get channelId => (_$data['channelId'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$channelId = channelId;
    result$data['channelId'] = l$channelId;
    return result$data;
  }

  CopyWith$Variables$Mutation$ArchiveChannelForMe<
          Variables$Mutation$ArchiveChannelForMe>
      get copyWith => CopyWith$Variables$Mutation$ArchiveChannelForMe(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$ArchiveChannelForMe) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$channelId = channelId;
    final lOther$channelId = other.channelId;
    if (l$channelId != lOther$channelId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$channelId = channelId;
    return Object.hashAll([l$channelId]);
  }
}

abstract class CopyWith$Variables$Mutation$ArchiveChannelForMe<TRes> {
  factory CopyWith$Variables$Mutation$ArchiveChannelForMe(
    Variables$Mutation$ArchiveChannelForMe instance,
    TRes Function(Variables$Mutation$ArchiveChannelForMe) then,
  ) = _CopyWithImpl$Variables$Mutation$ArchiveChannelForMe;

  factory CopyWith$Variables$Mutation$ArchiveChannelForMe.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$ArchiveChannelForMe;

  TRes call({String? channelId});
}

class _CopyWithImpl$Variables$Mutation$ArchiveChannelForMe<TRes>
    implements CopyWith$Variables$Mutation$ArchiveChannelForMe<TRes> {
  _CopyWithImpl$Variables$Mutation$ArchiveChannelForMe(
    this._instance,
    this._then,
  );

  final Variables$Mutation$ArchiveChannelForMe _instance;

  final TRes Function(Variables$Mutation$ArchiveChannelForMe) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? channelId = _undefined}) =>
      _then(Variables$Mutation$ArchiveChannelForMe._({
        ..._instance._$data,
        if (channelId != _undefined && channelId != null)
          'channelId': (channelId as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$ArchiveChannelForMe<TRes>
    implements CopyWith$Variables$Mutation$ArchiveChannelForMe<TRes> {
  _CopyWithStubImpl$Variables$Mutation$ArchiveChannelForMe(this._res);

  TRes _res;

  call({String? channelId}) => _res;
}

class Mutation$ArchiveChannelForMe {
  Mutation$ArchiveChannelForMe({
    required this.archiveChannelForMe,
    this.$__typename = 'Mutation',
  });

  factory Mutation$ArchiveChannelForMe.fromJson(Map<String, dynamic> json) {
    final l$archiveChannelForMe = json['archiveChannelForMe'];
    final l$$__typename = json['__typename'];
    return Mutation$ArchiveChannelForMe(
      archiveChannelForMe: (l$archiveChannelForMe as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String archiveChannelForMe;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$archiveChannelForMe = archiveChannelForMe;
    _resultData['archiveChannelForMe'] = l$archiveChannelForMe;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$archiveChannelForMe = archiveChannelForMe;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$archiveChannelForMe,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$ArchiveChannelForMe) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$archiveChannelForMe = archiveChannelForMe;
    final lOther$archiveChannelForMe = other.archiveChannelForMe;
    if (l$archiveChannelForMe != lOther$archiveChannelForMe) {
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

extension UtilityExtension$Mutation$ArchiveChannelForMe
    on Mutation$ArchiveChannelForMe {
  CopyWith$Mutation$ArchiveChannelForMe<Mutation$ArchiveChannelForMe>
      get copyWith => CopyWith$Mutation$ArchiveChannelForMe(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$ArchiveChannelForMe<TRes> {
  factory CopyWith$Mutation$ArchiveChannelForMe(
    Mutation$ArchiveChannelForMe instance,
    TRes Function(Mutation$ArchiveChannelForMe) then,
  ) = _CopyWithImpl$Mutation$ArchiveChannelForMe;

  factory CopyWith$Mutation$ArchiveChannelForMe.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ArchiveChannelForMe;

  TRes call({
    String? archiveChannelForMe,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$ArchiveChannelForMe<TRes>
    implements CopyWith$Mutation$ArchiveChannelForMe<TRes> {
  _CopyWithImpl$Mutation$ArchiveChannelForMe(
    this._instance,
    this._then,
  );

  final Mutation$ArchiveChannelForMe _instance;

  final TRes Function(Mutation$ArchiveChannelForMe) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? archiveChannelForMe = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ArchiveChannelForMe(
        archiveChannelForMe:
            archiveChannelForMe == _undefined || archiveChannelForMe == null
                ? _instance.archiveChannelForMe
                : (archiveChannelForMe as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$ArchiveChannelForMe<TRes>
    implements CopyWith$Mutation$ArchiveChannelForMe<TRes> {
  _CopyWithStubImpl$Mutation$ArchiveChannelForMe(this._res);

  TRes _res;

  call({
    String? archiveChannelForMe,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeMutationArchiveChannelForMe = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'ArchiveChannelForMe'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'channelId')),
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
        name: NameNode(value: 'archiveChannelForMe'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'channelId'),
            value: VariableNode(name: NameNode(value: 'channelId')),
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

class Variables$Mutation$UnarchiveChannelForMe {
  factory Variables$Mutation$UnarchiveChannelForMe(
          {required String channelId}) =>
      Variables$Mutation$UnarchiveChannelForMe._({
        r'channelId': channelId,
      });

  Variables$Mutation$UnarchiveChannelForMe._(this._$data);

  factory Variables$Mutation$UnarchiveChannelForMe.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$channelId = data['channelId'];
    result$data['channelId'] = (l$channelId as String);
    return Variables$Mutation$UnarchiveChannelForMe._(result$data);
  }

  Map<String, dynamic> _$data;

  String get channelId => (_$data['channelId'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$channelId = channelId;
    result$data['channelId'] = l$channelId;
    return result$data;
  }

  CopyWith$Variables$Mutation$UnarchiveChannelForMe<
          Variables$Mutation$UnarchiveChannelForMe>
      get copyWith => CopyWith$Variables$Mutation$UnarchiveChannelForMe(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$UnarchiveChannelForMe) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$channelId = channelId;
    final lOther$channelId = other.channelId;
    if (l$channelId != lOther$channelId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$channelId = channelId;
    return Object.hashAll([l$channelId]);
  }
}

abstract class CopyWith$Variables$Mutation$UnarchiveChannelForMe<TRes> {
  factory CopyWith$Variables$Mutation$UnarchiveChannelForMe(
    Variables$Mutation$UnarchiveChannelForMe instance,
    TRes Function(Variables$Mutation$UnarchiveChannelForMe) then,
  ) = _CopyWithImpl$Variables$Mutation$UnarchiveChannelForMe;

  factory CopyWith$Variables$Mutation$UnarchiveChannelForMe.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UnarchiveChannelForMe;

  TRes call({String? channelId});
}

class _CopyWithImpl$Variables$Mutation$UnarchiveChannelForMe<TRes>
    implements CopyWith$Variables$Mutation$UnarchiveChannelForMe<TRes> {
  _CopyWithImpl$Variables$Mutation$UnarchiveChannelForMe(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UnarchiveChannelForMe _instance;

  final TRes Function(Variables$Mutation$UnarchiveChannelForMe) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? channelId = _undefined}) =>
      _then(Variables$Mutation$UnarchiveChannelForMe._({
        ..._instance._$data,
        if (channelId != _undefined && channelId != null)
          'channelId': (channelId as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UnarchiveChannelForMe<TRes>
    implements CopyWith$Variables$Mutation$UnarchiveChannelForMe<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UnarchiveChannelForMe(this._res);

  TRes _res;

  call({String? channelId}) => _res;
}

class Mutation$UnarchiveChannelForMe {
  Mutation$UnarchiveChannelForMe({
    required this.unarchiveChannelForMe,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UnarchiveChannelForMe.fromJson(Map<String, dynamic> json) {
    final l$unarchiveChannelForMe = json['unarchiveChannelForMe'];
    final l$$__typename = json['__typename'];
    return Mutation$UnarchiveChannelForMe(
      unarchiveChannelForMe: (l$unarchiveChannelForMe as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String unarchiveChannelForMe;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$unarchiveChannelForMe = unarchiveChannelForMe;
    _resultData['unarchiveChannelForMe'] = l$unarchiveChannelForMe;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$unarchiveChannelForMe = unarchiveChannelForMe;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$unarchiveChannelForMe,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UnarchiveChannelForMe) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$unarchiveChannelForMe = unarchiveChannelForMe;
    final lOther$unarchiveChannelForMe = other.unarchiveChannelForMe;
    if (l$unarchiveChannelForMe != lOther$unarchiveChannelForMe) {
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

extension UtilityExtension$Mutation$UnarchiveChannelForMe
    on Mutation$UnarchiveChannelForMe {
  CopyWith$Mutation$UnarchiveChannelForMe<Mutation$UnarchiveChannelForMe>
      get copyWith => CopyWith$Mutation$UnarchiveChannelForMe(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UnarchiveChannelForMe<TRes> {
  factory CopyWith$Mutation$UnarchiveChannelForMe(
    Mutation$UnarchiveChannelForMe instance,
    TRes Function(Mutation$UnarchiveChannelForMe) then,
  ) = _CopyWithImpl$Mutation$UnarchiveChannelForMe;

  factory CopyWith$Mutation$UnarchiveChannelForMe.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UnarchiveChannelForMe;

  TRes call({
    String? unarchiveChannelForMe,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UnarchiveChannelForMe<TRes>
    implements CopyWith$Mutation$UnarchiveChannelForMe<TRes> {
  _CopyWithImpl$Mutation$UnarchiveChannelForMe(
    this._instance,
    this._then,
  );

  final Mutation$UnarchiveChannelForMe _instance;

  final TRes Function(Mutation$UnarchiveChannelForMe) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? unarchiveChannelForMe = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UnarchiveChannelForMe(
        unarchiveChannelForMe:
            unarchiveChannelForMe == _undefined || unarchiveChannelForMe == null
                ? _instance.unarchiveChannelForMe
                : (unarchiveChannelForMe as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$UnarchiveChannelForMe<TRes>
    implements CopyWith$Mutation$UnarchiveChannelForMe<TRes> {
  _CopyWithStubImpl$Mutation$UnarchiveChannelForMe(this._res);

  TRes _res;

  call({
    String? unarchiveChannelForMe,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeMutationUnarchiveChannelForMe = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UnarchiveChannelForMe'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'channelId')),
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
        name: NameNode(value: 'unarchiveChannelForMe'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'channelId'),
            value: VariableNode(name: NameNode(value: 'channelId')),
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

class Variables$Subscription$ChannelChanged {
  factory Variables$Subscription$ChannelChanged({required String channelId}) =>
      Variables$Subscription$ChannelChanged._({
        r'channelId': channelId,
      });

  Variables$Subscription$ChannelChanged._(this._$data);

  factory Variables$Subscription$ChannelChanged.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$channelId = data['channelId'];
    result$data['channelId'] = (l$channelId as String);
    return Variables$Subscription$ChannelChanged._(result$data);
  }

  Map<String, dynamic> _$data;

  String get channelId => (_$data['channelId'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$channelId = channelId;
    result$data['channelId'] = l$channelId;
    return result$data;
  }

  CopyWith$Variables$Subscription$ChannelChanged<
          Variables$Subscription$ChannelChanged>
      get copyWith => CopyWith$Variables$Subscription$ChannelChanged(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Subscription$ChannelChanged) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$channelId = channelId;
    final lOther$channelId = other.channelId;
    if (l$channelId != lOther$channelId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$channelId = channelId;
    return Object.hashAll([l$channelId]);
  }
}

abstract class CopyWith$Variables$Subscription$ChannelChanged<TRes> {
  factory CopyWith$Variables$Subscription$ChannelChanged(
    Variables$Subscription$ChannelChanged instance,
    TRes Function(Variables$Subscription$ChannelChanged) then,
  ) = _CopyWithImpl$Variables$Subscription$ChannelChanged;

  factory CopyWith$Variables$Subscription$ChannelChanged.stub(TRes res) =
      _CopyWithStubImpl$Variables$Subscription$ChannelChanged;

  TRes call({String? channelId});
}

class _CopyWithImpl$Variables$Subscription$ChannelChanged<TRes>
    implements CopyWith$Variables$Subscription$ChannelChanged<TRes> {
  _CopyWithImpl$Variables$Subscription$ChannelChanged(
    this._instance,
    this._then,
  );

  final Variables$Subscription$ChannelChanged _instance;

  final TRes Function(Variables$Subscription$ChannelChanged) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? channelId = _undefined}) =>
      _then(Variables$Subscription$ChannelChanged._({
        ..._instance._$data,
        if (channelId != _undefined && channelId != null)
          'channelId': (channelId as String),
      }));
}

class _CopyWithStubImpl$Variables$Subscription$ChannelChanged<TRes>
    implements CopyWith$Variables$Subscription$ChannelChanged<TRes> {
  _CopyWithStubImpl$Variables$Subscription$ChannelChanged(this._res);

  TRes _res;

  call({String? channelId}) => _res;
}

class Subscription$ChannelChanged {
  Subscription$ChannelChanged({required this.channelChanged});

  factory Subscription$ChannelChanged.fromJson(Map<String, dynamic> json) {
    final l$channelChanged = json['channelChanged'];
    return Subscription$ChannelChanged(
        channelChanged: Subscription$ChannelChanged$channelChanged.fromJson(
            (l$channelChanged as Map<String, dynamic>)));
  }

  final Subscription$ChannelChanged$channelChanged channelChanged;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$channelChanged = channelChanged;
    _resultData['channelChanged'] = l$channelChanged.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$channelChanged = channelChanged;
    return Object.hashAll([l$channelChanged]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$ChannelChanged) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$channelChanged = channelChanged;
    final lOther$channelChanged = other.channelChanged;
    if (l$channelChanged != lOther$channelChanged) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Subscription$ChannelChanged
    on Subscription$ChannelChanged {
  CopyWith$Subscription$ChannelChanged<Subscription$ChannelChanged>
      get copyWith => CopyWith$Subscription$ChannelChanged(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$ChannelChanged<TRes> {
  factory CopyWith$Subscription$ChannelChanged(
    Subscription$ChannelChanged instance,
    TRes Function(Subscription$ChannelChanged) then,
  ) = _CopyWithImpl$Subscription$ChannelChanged;

  factory CopyWith$Subscription$ChannelChanged.stub(TRes res) =
      _CopyWithStubImpl$Subscription$ChannelChanged;

  TRes call({Subscription$ChannelChanged$channelChanged? channelChanged});
  CopyWith$Subscription$ChannelChanged$channelChanged<TRes> get channelChanged;
}

class _CopyWithImpl$Subscription$ChannelChanged<TRes>
    implements CopyWith$Subscription$ChannelChanged<TRes> {
  _CopyWithImpl$Subscription$ChannelChanged(
    this._instance,
    this._then,
  );

  final Subscription$ChannelChanged _instance;

  final TRes Function(Subscription$ChannelChanged) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? channelChanged = _undefined}) =>
      _then(Subscription$ChannelChanged(
          channelChanged: channelChanged == _undefined || channelChanged == null
              ? _instance.channelChanged
              : (channelChanged
                  as Subscription$ChannelChanged$channelChanged)));
  CopyWith$Subscription$ChannelChanged$channelChanged<TRes> get channelChanged {
    final local$channelChanged = _instance.channelChanged;
    return CopyWith$Subscription$ChannelChanged$channelChanged(
        local$channelChanged, (e) => call(channelChanged: e));
  }
}

class _CopyWithStubImpl$Subscription$ChannelChanged<TRes>
    implements CopyWith$Subscription$ChannelChanged<TRes> {
  _CopyWithStubImpl$Subscription$ChannelChanged(this._res);

  TRes _res;

  call({Subscription$ChannelChanged$channelChanged? channelChanged}) => _res;
  CopyWith$Subscription$ChannelChanged$channelChanged<TRes>
      get channelChanged =>
          CopyWith$Subscription$ChannelChanged$channelChanged.stub(_res);
}

const documentNodeSubscriptionChannelChanged = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'ChannelChanged'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'channelId')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'channelChanged'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'channelId'),
            value: VariableNode(name: NameNode(value: 'channelId')),
          )
        ],
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
            name: NameNode(value: 'invitationId'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'messageId'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'participantId'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'eventType'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'requestId'),
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
      )
    ]),
  ),
]);

class Subscription$ChannelChanged$channelChanged {
  Subscription$ChannelChanged$channelChanged({
    required this.channelId,
    this.invitationId,
    this.messageId,
    this.participantId,
    required this.eventType,
    this.requestId,
    this.$__typename = 'BgChannelChangedEvent',
  });

  factory Subscription$ChannelChanged$channelChanged.fromJson(
      Map<String, dynamic> json) {
    final l$channelId = json['channelId'];
    final l$invitationId = json['invitationId'];
    final l$messageId = json['messageId'];
    final l$participantId = json['participantId'];
    final l$eventType = json['eventType'];
    final l$requestId = json['requestId'];
    final l$$__typename = json['__typename'];
    return Subscription$ChannelChanged$channelChanged(
      channelId: (l$channelId as String),
      invitationId: (l$invitationId as String?),
      messageId: (l$messageId as String?),
      participantId: (l$participantId as String?),
      eventType: fromJson$Enum$ChannelChangedEventType((l$eventType as String)),
      requestId: (l$requestId as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String channelId;

  final String? invitationId;

  final String? messageId;

  final String? participantId;

  final Enum$ChannelChangedEventType eventType;

  final String? requestId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$channelId = channelId;
    _resultData['channelId'] = l$channelId;
    final l$invitationId = invitationId;
    _resultData['invitationId'] = l$invitationId;
    final l$messageId = messageId;
    _resultData['messageId'] = l$messageId;
    final l$participantId = participantId;
    _resultData['participantId'] = l$participantId;
    final l$eventType = eventType;
    _resultData['eventType'] = toJson$Enum$ChannelChangedEventType(l$eventType);
    final l$requestId = requestId;
    _resultData['requestId'] = l$requestId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$channelId = channelId;
    final l$invitationId = invitationId;
    final l$messageId = messageId;
    final l$participantId = participantId;
    final l$eventType = eventType;
    final l$requestId = requestId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$channelId,
      l$invitationId,
      l$messageId,
      l$participantId,
      l$eventType,
      l$requestId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$ChannelChanged$channelChanged) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$channelId = channelId;
    final lOther$channelId = other.channelId;
    if (l$channelId != lOther$channelId) {
      return false;
    }
    final l$invitationId = invitationId;
    final lOther$invitationId = other.invitationId;
    if (l$invitationId != lOther$invitationId) {
      return false;
    }
    final l$messageId = messageId;
    final lOther$messageId = other.messageId;
    if (l$messageId != lOther$messageId) {
      return false;
    }
    final l$participantId = participantId;
    final lOther$participantId = other.participantId;
    if (l$participantId != lOther$participantId) {
      return false;
    }
    final l$eventType = eventType;
    final lOther$eventType = other.eventType;
    if (l$eventType != lOther$eventType) {
      return false;
    }
    final l$requestId = requestId;
    final lOther$requestId = other.requestId;
    if (l$requestId != lOther$requestId) {
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

extension UtilityExtension$Subscription$ChannelChanged$channelChanged
    on Subscription$ChannelChanged$channelChanged {
  CopyWith$Subscription$ChannelChanged$channelChanged<
          Subscription$ChannelChanged$channelChanged>
      get copyWith => CopyWith$Subscription$ChannelChanged$channelChanged(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$ChannelChanged$channelChanged<TRes> {
  factory CopyWith$Subscription$ChannelChanged$channelChanged(
    Subscription$ChannelChanged$channelChanged instance,
    TRes Function(Subscription$ChannelChanged$channelChanged) then,
  ) = _CopyWithImpl$Subscription$ChannelChanged$channelChanged;

  factory CopyWith$Subscription$ChannelChanged$channelChanged.stub(TRes res) =
      _CopyWithStubImpl$Subscription$ChannelChanged$channelChanged;

  TRes call({
    String? channelId,
    String? invitationId,
    String? messageId,
    String? participantId,
    Enum$ChannelChangedEventType? eventType,
    String? requestId,
    String? $__typename,
  });
}

class _CopyWithImpl$Subscription$ChannelChanged$channelChanged<TRes>
    implements CopyWith$Subscription$ChannelChanged$channelChanged<TRes> {
  _CopyWithImpl$Subscription$ChannelChanged$channelChanged(
    this._instance,
    this._then,
  );

  final Subscription$ChannelChanged$channelChanged _instance;

  final TRes Function(Subscription$ChannelChanged$channelChanged) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? channelId = _undefined,
    Object? invitationId = _undefined,
    Object? messageId = _undefined,
    Object? participantId = _undefined,
    Object? eventType = _undefined,
    Object? requestId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$ChannelChanged$channelChanged(
        channelId: channelId == _undefined || channelId == null
            ? _instance.channelId
            : (channelId as String),
        invitationId: invitationId == _undefined
            ? _instance.invitationId
            : (invitationId as String?),
        messageId: messageId == _undefined
            ? _instance.messageId
            : (messageId as String?),
        participantId: participantId == _undefined
            ? _instance.participantId
            : (participantId as String?),
        eventType: eventType == _undefined || eventType == null
            ? _instance.eventType
            : (eventType as Enum$ChannelChangedEventType),
        requestId: requestId == _undefined
            ? _instance.requestId
            : (requestId as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Subscription$ChannelChanged$channelChanged<TRes>
    implements CopyWith$Subscription$ChannelChanged$channelChanged<TRes> {
  _CopyWithStubImpl$Subscription$ChannelChanged$channelChanged(this._res);

  TRes _res;

  call({
    String? channelId,
    String? invitationId,
    String? messageId,
    String? participantId,
    Enum$ChannelChangedEventType? eventType,
    String? requestId,
    String? $__typename,
  }) =>
      _res;
}
