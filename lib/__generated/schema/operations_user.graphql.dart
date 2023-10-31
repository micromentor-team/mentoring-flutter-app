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
            name: NameNode(value: 'groupMemberships'),
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
                name: NameNode(value: 'groupIdent'),
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
    this.seeksHelp,
    this.offersHelp,
    required this.groupMemberships,
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
    final l$seeksHelp = json['seeksHelp'];
    final l$offersHelp = json['offersHelp'];
    final l$groupMemberships = json['groupMemberships'];
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
      seeksHelp: (l$seeksHelp as bool?),
      offersHelp: (l$offersHelp as bool?),
      groupMemberships: (l$groupMemberships as List<dynamic>)
          .map((e) =>
              Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
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

  final bool? seeksHelp;

  final bool? offersHelp;

  final List<Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships>
      groupMemberships;

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
    final l$seeksHelp = seeksHelp;
    _resultData['seeksHelp'] = l$seeksHelp;
    final l$offersHelp = offersHelp;
    _resultData['offersHelp'] = l$offersHelp;
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
    final l$fullName = fullName;
    final l$avatarUrl = avatarUrl;
    final l$userHandle = userHandle;
    final l$profileCompletionPercentage = profileCompletionPercentage;
    final l$updatedAt = updatedAt;
    final l$createdAt = createdAt;
    final l$seeksHelp = seeksHelp;
    final l$offersHelp = offersHelp;
    final l$groupMemberships = groupMemberships;
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
      l$seeksHelp,
      l$offersHelp,
      Object.hashAll(l$groupMemberships.map((v) => v)),
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
    bool? seeksHelp,
    bool? offersHelp,
    List<Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships>?
        groupMemberships,
    String? $__typename,
  });
  TRes groupMemberships(
      Iterable<Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships> Function(
              Iterable<
                  CopyWith$Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships<
                      Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships>>)
          _fn);
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
    Object? seeksHelp = _undefined,
    Object? offersHelp = _undefined,
    Object? groupMemberships = _undefined,
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
        seeksHelp: seeksHelp == _undefined
            ? _instance.seeksHelp
            : (seeksHelp as bool?),
        offersHelp: offersHelp == _undefined
            ? _instance.offersHelp
            : (offersHelp as bool?),
        groupMemberships: groupMemberships == _undefined ||
                groupMemberships == null
            ? _instance.groupMemberships
            : (groupMemberships as List<
                Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes groupMemberships(
          Iterable<Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships> Function(
                  Iterable<
                      CopyWith$Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships<
                          Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships>>)
              _fn) =>
      call(
          groupMemberships: _fn(_instance.groupMemberships.map((e) =>
              CopyWith$Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships(
                e,
                (i) => i,
              ))).toList());
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
    bool? seeksHelp,
    bool? offersHelp,
    List<Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships>?
        groupMemberships,
    String? $__typename,
  }) =>
      _res;

  groupMemberships(_fn) => _res;
}

class Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships {
  Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships({
    required this.id,
    required this.groupIdent,
    required this.$__typename,
  });

  factory Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships.fromJson(
      Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "GroupMembership":
        return Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships$$GroupMembership
            .fromJson(json);

      case "MenteesGroupMembership":
        return Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships$$MenteesGroupMembership
            .fromJson(json);

      case "MentorsGroupMembership":
        return Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships$$MentorsGroupMembership
            .fromJson(json);

      default:
        final l$id = json['id'];
        final l$groupIdent = json['groupIdent'];
        final l$$__typename = json['__typename'];
        return Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships(
          id: (l$id as String),
          groupIdent: (l$groupIdent as String),
          $__typename: (l$$__typename as String),
        );
    }
  }

  final String id;

  final String groupIdent;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$groupIdent = groupIdent;
    _resultData['groupIdent'] = l$groupIdent;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$groupIdent = groupIdent;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
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
            is Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships
    on Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships {
  CopyWith$Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships<
          Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships>
      get copyWith =>
          CopyWith$Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships(
            this,
            (i) => i,
          );
  _T when<_T>({
    required _T Function(
            Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships$$GroupMembership)
        groupMembership,
    required _T Function(
            Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships$$MenteesGroupMembership)
        menteesGroupMembership,
    required _T Function(
            Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships$$MentorsGroupMembership)
        mentorsGroupMembership,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "GroupMembership":
        return groupMembership(this
            as Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships$$GroupMembership);

      case "MenteesGroupMembership":
        return menteesGroupMembership(this
            as Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships$$MenteesGroupMembership);

      case "MentorsGroupMembership":
        return mentorsGroupMembership(this
            as Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships$$MentorsGroupMembership);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(
            Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships$$GroupMembership)?
        groupMembership,
    _T Function(
            Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships$$MenteesGroupMembership)?
        menteesGroupMembership,
    _T Function(
            Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships$$MentorsGroupMembership)?
        mentorsGroupMembership,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "GroupMembership":
        if (groupMembership != null) {
          return groupMembership(this
              as Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships$$GroupMembership);
        } else {
          return orElse();
        }

      case "MenteesGroupMembership":
        if (menteesGroupMembership != null) {
          return menteesGroupMembership(this
              as Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships$$MenteesGroupMembership);
        } else {
          return orElse();
        }

      case "MentorsGroupMembership":
        if (mentorsGroupMembership != null) {
          return mentorsGroupMembership(this
              as Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships$$MentorsGroupMembership);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships<
    TRes> {
  factory CopyWith$Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships(
    Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships instance,
    TRes Function(
            Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships)
        then,
  ) = _CopyWithImpl$Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships;

  factory CopyWith$Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships;

  TRes call({
    String? id,
    String? groupIdent,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships<
        TRes>
    implements
        CopyWith$Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships<
            TRes> {
  _CopyWithImpl$Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships(
    this._instance,
    this._then,
  );

  final Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships
      _instance;

  final TRes Function(
      Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? groupIdent = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        groupIdent: groupIdent == _undefined || groupIdent == null
            ? _instance.groupIdent
            : (groupIdent as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships<
        TRes>
    implements
        CopyWith$Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships<
            TRes> {
  _CopyWithStubImpl$Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships(
      this._res);

  TRes _res;

  call({
    String? id,
    String? groupIdent,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships$$GroupMembership
    implements
        Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships {
  Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships$$GroupMembership({
    required this.id,
    required this.groupIdent,
    this.$__typename = 'GroupMembership',
  });

  factory Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships$$GroupMembership.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$groupIdent = json['groupIdent'];
    final l$$__typename = json['__typename'];
    return Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships$$GroupMembership(
      id: (l$id as String),
      groupIdent: (l$groupIdent as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String groupIdent;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$groupIdent = groupIdent;
    _resultData['groupIdent'] = l$groupIdent;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$groupIdent = groupIdent;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
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
            is Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships$$GroupMembership) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships$$GroupMembership
    on Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships$$GroupMembership {
  CopyWith$Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships$$GroupMembership<
          Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships$$GroupMembership>
      get copyWith =>
          CopyWith$Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships$$GroupMembership(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships$$GroupMembership<
    TRes> {
  factory CopyWith$Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships$$GroupMembership(
    Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships$$GroupMembership
        instance,
    TRes Function(
            Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships$$GroupMembership)
        then,
  ) = _CopyWithImpl$Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships$$GroupMembership;

  factory CopyWith$Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships$$GroupMembership.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships$$GroupMembership;

  TRes call({
    String? id,
    String? groupIdent,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships$$GroupMembership<
        TRes>
    implements
        CopyWith$Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships$$GroupMembership<
            TRes> {
  _CopyWithImpl$Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships$$GroupMembership(
    this._instance,
    this._then,
  );

  final Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships$$GroupMembership
      _instance;

  final TRes Function(
          Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships$$GroupMembership)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? groupIdent = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships$$GroupMembership(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        groupIdent: groupIdent == _undefined || groupIdent == null
            ? _instance.groupIdent
            : (groupIdent as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships$$GroupMembership<
        TRes>
    implements
        CopyWith$Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships$$GroupMembership<
            TRes> {
  _CopyWithStubImpl$Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships$$GroupMembership(
      this._res);

  TRes _res;

  call({
    String? id,
    String? groupIdent,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships$$MenteesGroupMembership
    implements
        Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships {
  Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships$$MenteesGroupMembership({
    required this.id,
    required this.groupIdent,
    this.$__typename = 'MenteesGroupMembership',
  });

  factory Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships$$MenteesGroupMembership.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$groupIdent = json['groupIdent'];
    final l$$__typename = json['__typename'];
    return Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships$$MenteesGroupMembership(
      id: (l$id as String),
      groupIdent: (l$groupIdent as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String groupIdent;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$groupIdent = groupIdent;
    _resultData['groupIdent'] = l$groupIdent;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$groupIdent = groupIdent;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
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
            is Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships$$MenteesGroupMembership) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships$$MenteesGroupMembership
    on Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships$$MenteesGroupMembership {
  CopyWith$Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships$$MenteesGroupMembership<
          Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships$$MenteesGroupMembership>
      get copyWith =>
          CopyWith$Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships$$MenteesGroupMembership(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships$$MenteesGroupMembership<
    TRes> {
  factory CopyWith$Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships$$MenteesGroupMembership(
    Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships$$MenteesGroupMembership
        instance,
    TRes Function(
            Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships$$MenteesGroupMembership)
        then,
  ) = _CopyWithImpl$Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships$$MenteesGroupMembership;

  factory CopyWith$Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships$$MenteesGroupMembership.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships$$MenteesGroupMembership;

  TRes call({
    String? id,
    String? groupIdent,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships$$MenteesGroupMembership<
        TRes>
    implements
        CopyWith$Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships$$MenteesGroupMembership<
            TRes> {
  _CopyWithImpl$Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships$$MenteesGroupMembership(
    this._instance,
    this._then,
  );

  final Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships$$MenteesGroupMembership
      _instance;

  final TRes Function(
          Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships$$MenteesGroupMembership)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? groupIdent = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships$$MenteesGroupMembership(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        groupIdent: groupIdent == _undefined || groupIdent == null
            ? _instance.groupIdent
            : (groupIdent as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships$$MenteesGroupMembership<
        TRes>
    implements
        CopyWith$Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships$$MenteesGroupMembership<
            TRes> {
  _CopyWithStubImpl$Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships$$MenteesGroupMembership(
      this._res);

  TRes _res;

  call({
    String? id,
    String? groupIdent,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships$$MentorsGroupMembership
    implements
        Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships {
  Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships$$MentorsGroupMembership({
    required this.id,
    required this.groupIdent,
    this.$__typename = 'MentorsGroupMembership',
  });

  factory Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships$$MentorsGroupMembership.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$groupIdent = json['groupIdent'];
    final l$$__typename = json['__typename'];
    return Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships$$MentorsGroupMembership(
      id: (l$id as String),
      groupIdent: (l$groupIdent as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String groupIdent;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$groupIdent = groupIdent;
    _resultData['groupIdent'] = l$groupIdent;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$groupIdent = groupIdent;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
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
            is Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships$$MentorsGroupMembership) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships$$MentorsGroupMembership
    on Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships$$MentorsGroupMembership {
  CopyWith$Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships$$MentorsGroupMembership<
          Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships$$MentorsGroupMembership>
      get copyWith =>
          CopyWith$Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships$$MentorsGroupMembership(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships$$MentorsGroupMembership<
    TRes> {
  factory CopyWith$Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships$$MentorsGroupMembership(
    Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships$$MentorsGroupMembership
        instance,
    TRes Function(
            Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships$$MentorsGroupMembership)
        then,
  ) = _CopyWithImpl$Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships$$MentorsGroupMembership;

  factory CopyWith$Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships$$MentorsGroupMembership.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships$$MentorsGroupMembership;

  TRes call({
    String? id,
    String? groupIdent,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships$$MentorsGroupMembership<
        TRes>
    implements
        CopyWith$Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships$$MentorsGroupMembership<
            TRes> {
  _CopyWithImpl$Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships$$MentorsGroupMembership(
    this._instance,
    this._then,
  );

  final Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships$$MentorsGroupMembership
      _instance;

  final TRes Function(
          Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships$$MentorsGroupMembership)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? groupIdent = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships$$MentorsGroupMembership(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        groupIdent: groupIdent == _undefined || groupIdent == null
            ? _instance.groupIdent
            : (groupIdent as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships$$MentorsGroupMembership<
        TRes>
    implements
        CopyWith$Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships$$MentorsGroupMembership<
            TRes> {
  _CopyWithStubImpl$Query$GetAuthenticatedUser$getAuthenticatedUser$groupMemberships$$MentorsGroupMembership(
      this._res);

  TRes _res;

  call({
    String? id,
    String? groupIdent,
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
            name: NameNode(value: 'runInfos'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'finishedAt'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'matchCount'),
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

class Query$FindUserSearch$findUserSearchById {
  Query$FindUserSearch$findUserSearchById({
    this.runInfos,
    this.$__typename = 'UserSearch',
  });

  factory Query$FindUserSearch$findUserSearchById.fromJson(
      Map<String, dynamic> json) {
    final l$runInfos = json['runInfos'];
    final l$$__typename = json['__typename'];
    return Query$FindUserSearch$findUserSearchById(
      runInfos: (l$runInfos as List<dynamic>?)
          ?.map((e) =>
              Query$FindUserSearch$findUserSearchById$runInfos.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$FindUserSearch$findUserSearchById$runInfos>? runInfos;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$runInfos = runInfos;
    _resultData['runInfos'] = l$runInfos?.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$runInfos = runInfos;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$runInfos == null ? null : Object.hashAll(l$runInfos.map((v) => v)),
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
    List<Query$FindUserSearch$findUserSearchById$runInfos>? runInfos,
    String? $__typename,
  });
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
    Object? runInfos = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindUserSearch$findUserSearchById(
        runInfos: runInfos == _undefined
            ? _instance.runInfos
            : (runInfos
                as List<Query$FindUserSearch$findUserSearchById$runInfos>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

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
    List<Query$FindUserSearch$findUserSearchById$runInfos>? runInfos,
    String? $__typename,
  }) =>
      _res;

  runInfos(_fn) => _res;
}

class Query$FindUserSearch$findUserSearchById$runInfos {
  Query$FindUserSearch$findUserSearchById$runInfos({
    this.finishedAt,
    required this.matchCount,
    this.$__typename = 'UserSearchRunInfo',
  });

  factory Query$FindUserSearch$findUserSearchById$runInfos.fromJson(
      Map<String, dynamic> json) {
    final l$finishedAt = json['finishedAt'];
    final l$matchCount = json['matchCount'];
    final l$$__typename = json['__typename'];
    return Query$FindUserSearch$findUserSearchById$runInfos(
      finishedAt: l$finishedAt == null
          ? null
          : DateTime.parse((l$finishedAt as String)),
      matchCount: (l$matchCount as int),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime? finishedAt;

  final int matchCount;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$finishedAt = finishedAt;
    _resultData['finishedAt'] = l$finishedAt?.toIso8601String();
    final l$matchCount = matchCount;
    _resultData['matchCount'] = l$matchCount;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$finishedAt = finishedAt;
    final l$matchCount = matchCount;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$finishedAt,
      l$matchCount,
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
    final l$finishedAt = finishedAt;
    final lOther$finishedAt = other.finishedAt;
    if (l$finishedAt != lOther$finishedAt) {
      return false;
    }
    final l$matchCount = matchCount;
    final lOther$matchCount = other.matchCount;
    if (l$matchCount != lOther$matchCount) {
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
    DateTime? finishedAt,
    int? matchCount,
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
    Object? finishedAt = _undefined,
    Object? matchCount = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindUserSearch$findUserSearchById$runInfos(
        finishedAt: finishedAt == _undefined
            ? _instance.finishedAt
            : (finishedAt as DateTime?),
        matchCount: matchCount == _undefined || matchCount == null
            ? _instance.matchCount
            : (matchCount as int),
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
    DateTime? finishedAt,
    int? matchCount,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$FindUserSearchResults {
  factory Variables$Query$FindUserSearchResults({
    required String userSearchId,
    Input$FindObjectsOptions? options,
  }) =>
      Variables$Query$FindUserSearchResults._({
        r'userSearchId': userSearchId,
        if (options != null) r'options': options,
      });

  Variables$Query$FindUserSearchResults._(this._$data);

  factory Variables$Query$FindUserSearchResults.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$userSearchId = data['userSearchId'];
    result$data['userSearchId'] = (l$userSearchId as String);
    if (data.containsKey('options')) {
      final l$options = data['options'];
      result$data['options'] = l$options == null
          ? null
          : Input$FindObjectsOptions.fromJson(
              (l$options as Map<String, dynamic>));
    }
    return Variables$Query$FindUserSearchResults._(result$data);
  }

  Map<String, dynamic> _$data;

  String get userSearchId => (_$data['userSearchId'] as String);

  Input$FindObjectsOptions? get options =>
      (_$data['options'] as Input$FindObjectsOptions?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$userSearchId = userSearchId;
    result$data['userSearchId'] = l$userSearchId;
    if (_$data.containsKey('options')) {
      final l$options = options;
      result$data['options'] = l$options?.toJson();
    }
    return result$data;
  }

  CopyWith$Variables$Query$FindUserSearchResults<
          Variables$Query$FindUserSearchResults>
      get copyWith => CopyWith$Variables$Query$FindUserSearchResults(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$FindUserSearchResults) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$userSearchId = userSearchId;
    final lOther$userSearchId = other.userSearchId;
    if (l$userSearchId != lOther$userSearchId) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$userSearchId = userSearchId;
    final l$options = options;
    return Object.hashAll([
      l$userSearchId,
      _$data.containsKey('options') ? l$options : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$FindUserSearchResults<TRes> {
  factory CopyWith$Variables$Query$FindUserSearchResults(
    Variables$Query$FindUserSearchResults instance,
    TRes Function(Variables$Query$FindUserSearchResults) then,
  ) = _CopyWithImpl$Variables$Query$FindUserSearchResults;

  factory CopyWith$Variables$Query$FindUserSearchResults.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$FindUserSearchResults;

  TRes call({
    String? userSearchId,
    Input$FindObjectsOptions? options,
  });
}

class _CopyWithImpl$Variables$Query$FindUserSearchResults<TRes>
    implements CopyWith$Variables$Query$FindUserSearchResults<TRes> {
  _CopyWithImpl$Variables$Query$FindUserSearchResults(
    this._instance,
    this._then,
  );

  final Variables$Query$FindUserSearchResults _instance;

  final TRes Function(Variables$Query$FindUserSearchResults) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userSearchId = _undefined,
    Object? options = _undefined,
  }) =>
      _then(Variables$Query$FindUserSearchResults._({
        ..._instance._$data,
        if (userSearchId != _undefined && userSearchId != null)
          'userSearchId': (userSearchId as String),
        if (options != _undefined)
          'options': (options as Input$FindObjectsOptions?),
      }));
}

class _CopyWithStubImpl$Variables$Query$FindUserSearchResults<TRes>
    implements CopyWith$Variables$Query$FindUserSearchResults<TRes> {
  _CopyWithStubImpl$Variables$Query$FindUserSearchResults(this._res);

  TRes _res;

  call({
    String? userSearchId,
    Input$FindObjectsOptions? options,
  }) =>
      _res;
}

class Query$FindUserSearchResults {
  Query$FindUserSearchResults({
    required this.findUserSearchResults,
    this.$__typename = 'Query',
  });

  factory Query$FindUserSearchResults.fromJson(Map<String, dynamic> json) {
    final l$findUserSearchResults = json['findUserSearchResults'];
    final l$$__typename = json['__typename'];
    return Query$FindUserSearchResults(
      findUserSearchResults: (l$findUserSearchResults as List<dynamic>)
          .map((e) =>
              Query$FindUserSearchResults$findUserSearchResults.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$FindUserSearchResults$findUserSearchResults>
      findUserSearchResults;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$findUserSearchResults = findUserSearchResults;
    _resultData['findUserSearchResults'] =
        l$findUserSearchResults.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$findUserSearchResults = findUserSearchResults;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$findUserSearchResults.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FindUserSearchResults) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$findUserSearchResults = findUserSearchResults;
    final lOther$findUserSearchResults = other.findUserSearchResults;
    if (l$findUserSearchResults.length != lOther$findUserSearchResults.length) {
      return false;
    }
    for (int i = 0; i < l$findUserSearchResults.length; i++) {
      final l$findUserSearchResults$entry = l$findUserSearchResults[i];
      final lOther$findUserSearchResults$entry =
          lOther$findUserSearchResults[i];
      if (l$findUserSearchResults$entry != lOther$findUserSearchResults$entry) {
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

extension UtilityExtension$Query$FindUserSearchResults
    on Query$FindUserSearchResults {
  CopyWith$Query$FindUserSearchResults<Query$FindUserSearchResults>
      get copyWith => CopyWith$Query$FindUserSearchResults(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindUserSearchResults<TRes> {
  factory CopyWith$Query$FindUserSearchResults(
    Query$FindUserSearchResults instance,
    TRes Function(Query$FindUserSearchResults) then,
  ) = _CopyWithImpl$Query$FindUserSearchResults;

  factory CopyWith$Query$FindUserSearchResults.stub(TRes res) =
      _CopyWithStubImpl$Query$FindUserSearchResults;

  TRes call({
    List<Query$FindUserSearchResults$findUserSearchResults>?
        findUserSearchResults,
    String? $__typename,
  });
  TRes findUserSearchResults(
      Iterable<Query$FindUserSearchResults$findUserSearchResults> Function(
              Iterable<
                  CopyWith$Query$FindUserSearchResults$findUserSearchResults<
                      Query$FindUserSearchResults$findUserSearchResults>>)
          _fn);
}

class _CopyWithImpl$Query$FindUserSearchResults<TRes>
    implements CopyWith$Query$FindUserSearchResults<TRes> {
  _CopyWithImpl$Query$FindUserSearchResults(
    this._instance,
    this._then,
  );

  final Query$FindUserSearchResults _instance;

  final TRes Function(Query$FindUserSearchResults) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? findUserSearchResults = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindUserSearchResults(
        findUserSearchResults:
            findUserSearchResults == _undefined || findUserSearchResults == null
                ? _instance.findUserSearchResults
                : (findUserSearchResults
                    as List<Query$FindUserSearchResults$findUserSearchResults>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes findUserSearchResults(
          Iterable<Query$FindUserSearchResults$findUserSearchResults> Function(
                  Iterable<
                      CopyWith$Query$FindUserSearchResults$findUserSearchResults<
                          Query$FindUserSearchResults$findUserSearchResults>>)
              _fn) =>
      call(
          findUserSearchResults: _fn(_instance.findUserSearchResults.map(
              (e) => CopyWith$Query$FindUserSearchResults$findUserSearchResults(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$FindUserSearchResults<TRes>
    implements CopyWith$Query$FindUserSearchResults<TRes> {
  _CopyWithStubImpl$Query$FindUserSearchResults(this._res);

  TRes _res;

  call({
    List<Query$FindUserSearchResults$findUserSearchResults>?
        findUserSearchResults,
    String? $__typename,
  }) =>
      _res;

  findUserSearchResults(_fn) => _res;
}

const documentNodeQueryFindUserSearchResults = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FindUserSearchResults'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'userSearchId')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'options')),
        type: NamedTypeNode(
          name: NameNode(value: 'FindObjectsOptions'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'findUserSearchResults'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'userSearchId'),
            value: VariableNode(name: NameNode(value: 'userSearchId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'options'),
            value: VariableNode(name: NameNode(value: 'options')),
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
            name: NameNode(value: 'jobTitle'),
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

class Query$FindUserSearchResults$findUserSearchResults {
  Query$FindUserSearchResults$findUserSearchResults({
    required this.id,
    this.email,
    this.firstName,
    this.lastName,
    this.fullName,
    this.avatarUrl,
    this.userHandle,
    this.offersHelp,
    this.seeksHelp,
    this.jobTitle,
    this.cityOfResidence,
    this.regionOfResidence,
    this.countryOfResidence,
    required this.groupMemberships,
    required this.companies,
    this.$__typename = 'UserWithScore',
  });

  factory Query$FindUserSearchResults$findUserSearchResults.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$email = json['email'];
    final l$firstName = json['firstName'];
    final l$lastName = json['lastName'];
    final l$fullName = json['fullName'];
    final l$avatarUrl = json['avatarUrl'];
    final l$userHandle = json['userHandle'];
    final l$offersHelp = json['offersHelp'];
    final l$seeksHelp = json['seeksHelp'];
    final l$jobTitle = json['jobTitle'];
    final l$cityOfResidence = json['cityOfResidence'];
    final l$regionOfResidence = json['regionOfResidence'];
    final l$countryOfResidence = json['countryOfResidence'];
    final l$groupMemberships = json['groupMemberships'];
    final l$companies = json['companies'];
    final l$$__typename = json['__typename'];
    return Query$FindUserSearchResults$findUserSearchResults(
      id: (l$id as String),
      email: (l$email as String?),
      firstName: (l$firstName as String?),
      lastName: (l$lastName as String?),
      fullName: (l$fullName as String?),
      avatarUrl: (l$avatarUrl as String?),
      userHandle: (l$userHandle as String?),
      offersHelp: (l$offersHelp as bool?),
      seeksHelp: (l$seeksHelp as bool?),
      jobTitle: (l$jobTitle as String?),
      cityOfResidence: (l$cityOfResidence as String?),
      regionOfResidence: (l$regionOfResidence as String?),
      countryOfResidence: l$countryOfResidence == null
          ? null
          : Query$FindUserSearchResults$findUserSearchResults$countryOfResidence
              .fromJson((l$countryOfResidence as Map<String, dynamic>)),
      groupMemberships: (l$groupMemberships as List<dynamic>)
          .map((e) =>
              Query$FindUserSearchResults$findUserSearchResults$groupMemberships
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      companies: (l$companies as List<dynamic>)
          .map((e) =>
              Query$FindUserSearchResults$findUserSearchResults$companies
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

  final bool? offersHelp;

  final bool? seeksHelp;

  final String? jobTitle;

  final String? cityOfResidence;

  final String? regionOfResidence;

  final Query$FindUserSearchResults$findUserSearchResults$countryOfResidence?
      countryOfResidence;

  final List<Query$FindUserSearchResults$findUserSearchResults$groupMemberships>
      groupMemberships;

  final List<Query$FindUserSearchResults$findUserSearchResults$companies>
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
    final l$offersHelp = offersHelp;
    _resultData['offersHelp'] = l$offersHelp;
    final l$seeksHelp = seeksHelp;
    _resultData['seeksHelp'] = l$seeksHelp;
    final l$jobTitle = jobTitle;
    _resultData['jobTitle'] = l$jobTitle;
    final l$cityOfResidence = cityOfResidence;
    _resultData['cityOfResidence'] = l$cityOfResidence;
    final l$regionOfResidence = regionOfResidence;
    _resultData['regionOfResidence'] = l$regionOfResidence;
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
    final l$offersHelp = offersHelp;
    final l$seeksHelp = seeksHelp;
    final l$jobTitle = jobTitle;
    final l$cityOfResidence = cityOfResidence;
    final l$regionOfResidence = regionOfResidence;
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
      l$offersHelp,
      l$seeksHelp,
      l$jobTitle,
      l$cityOfResidence,
      l$regionOfResidence,
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
    if (!(other is Query$FindUserSearchResults$findUserSearchResults) ||
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
    final l$jobTitle = jobTitle;
    final lOther$jobTitle = other.jobTitle;
    if (l$jobTitle != lOther$jobTitle) {
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

extension UtilityExtension$Query$FindUserSearchResults$findUserSearchResults
    on Query$FindUserSearchResults$findUserSearchResults {
  CopyWith$Query$FindUserSearchResults$findUserSearchResults<
          Query$FindUserSearchResults$findUserSearchResults>
      get copyWith =>
          CopyWith$Query$FindUserSearchResults$findUserSearchResults(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindUserSearchResults$findUserSearchResults<
    TRes> {
  factory CopyWith$Query$FindUserSearchResults$findUserSearchResults(
    Query$FindUserSearchResults$findUserSearchResults instance,
    TRes Function(Query$FindUserSearchResults$findUserSearchResults) then,
  ) = _CopyWithImpl$Query$FindUserSearchResults$findUserSearchResults;

  factory CopyWith$Query$FindUserSearchResults$findUserSearchResults.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindUserSearchResults$findUserSearchResults;

  TRes call({
    String? id,
    String? email,
    String? firstName,
    String? lastName,
    String? fullName,
    String? avatarUrl,
    String? userHandle,
    bool? offersHelp,
    bool? seeksHelp,
    String? jobTitle,
    String? cityOfResidence,
    String? regionOfResidence,
    Query$FindUserSearchResults$findUserSearchResults$countryOfResidence?
        countryOfResidence,
    List<Query$FindUserSearchResults$findUserSearchResults$groupMemberships>?
        groupMemberships,
    List<Query$FindUserSearchResults$findUserSearchResults$companies>?
        companies,
    String? $__typename,
  });
  CopyWith$Query$FindUserSearchResults$findUserSearchResults$countryOfResidence<
      TRes> get countryOfResidence;
  TRes groupMemberships(
      Iterable<Query$FindUserSearchResults$findUserSearchResults$groupMemberships> Function(
              Iterable<
                  CopyWith$Query$FindUserSearchResults$findUserSearchResults$groupMemberships<
                      Query$FindUserSearchResults$findUserSearchResults$groupMemberships>>)
          _fn);
  TRes companies(
      Iterable<Query$FindUserSearchResults$findUserSearchResults$companies> Function(
              Iterable<
                  CopyWith$Query$FindUserSearchResults$findUserSearchResults$companies<
                      Query$FindUserSearchResults$findUserSearchResults$companies>>)
          _fn);
}

class _CopyWithImpl$Query$FindUserSearchResults$findUserSearchResults<TRes>
    implements
        CopyWith$Query$FindUserSearchResults$findUserSearchResults<TRes> {
  _CopyWithImpl$Query$FindUserSearchResults$findUserSearchResults(
    this._instance,
    this._then,
  );

  final Query$FindUserSearchResults$findUserSearchResults _instance;

  final TRes Function(Query$FindUserSearchResults$findUserSearchResults) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? email = _undefined,
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? fullName = _undefined,
    Object? avatarUrl = _undefined,
    Object? userHandle = _undefined,
    Object? offersHelp = _undefined,
    Object? seeksHelp = _undefined,
    Object? jobTitle = _undefined,
    Object? cityOfResidence = _undefined,
    Object? regionOfResidence = _undefined,
    Object? countryOfResidence = _undefined,
    Object? groupMemberships = _undefined,
    Object? companies = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindUserSearchResults$findUserSearchResults(
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
        offersHelp: offersHelp == _undefined
            ? _instance.offersHelp
            : (offersHelp as bool?),
        seeksHelp: seeksHelp == _undefined
            ? _instance.seeksHelp
            : (seeksHelp as bool?),
        jobTitle:
            jobTitle == _undefined ? _instance.jobTitle : (jobTitle as String?),
        cityOfResidence: cityOfResidence == _undefined
            ? _instance.cityOfResidence
            : (cityOfResidence as String?),
        regionOfResidence: regionOfResidence == _undefined
            ? _instance.regionOfResidence
            : (regionOfResidence as String?),
        countryOfResidence: countryOfResidence == _undefined
            ? _instance.countryOfResidence
            : (countryOfResidence
                as Query$FindUserSearchResults$findUserSearchResults$countryOfResidence?),
        groupMemberships: groupMemberships == _undefined ||
                groupMemberships == null
            ? _instance.groupMemberships
            : (groupMemberships as List<
                Query$FindUserSearchResults$findUserSearchResults$groupMemberships>),
        companies: companies == _undefined || companies == null
            ? _instance.companies
            : (companies as List<
                Query$FindUserSearchResults$findUserSearchResults$companies>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$FindUserSearchResults$findUserSearchResults$countryOfResidence<
      TRes> get countryOfResidence {
    final local$countryOfResidence = _instance.countryOfResidence;
    return local$countryOfResidence == null
        ? CopyWith$Query$FindUserSearchResults$findUserSearchResults$countryOfResidence
            .stub(_then(_instance))
        : CopyWith$Query$FindUserSearchResults$findUserSearchResults$countryOfResidence(
            local$countryOfResidence, (e) => call(countryOfResidence: e));
  }

  TRes groupMemberships(
          Iterable<Query$FindUserSearchResults$findUserSearchResults$groupMemberships> Function(
                  Iterable<
                      CopyWith$Query$FindUserSearchResults$findUserSearchResults$groupMemberships<
                          Query$FindUserSearchResults$findUserSearchResults$groupMemberships>>)
              _fn) =>
      call(
          groupMemberships: _fn(_instance.groupMemberships.map((e) =>
              CopyWith$Query$FindUserSearchResults$findUserSearchResults$groupMemberships(
                e,
                (i) => i,
              ))).toList());

  TRes companies(
          Iterable<Query$FindUserSearchResults$findUserSearchResults$companies> Function(
                  Iterable<
                      CopyWith$Query$FindUserSearchResults$findUserSearchResults$companies<
                          Query$FindUserSearchResults$findUserSearchResults$companies>>)
              _fn) =>
      call(
          companies: _fn(_instance.companies.map((e) =>
              CopyWith$Query$FindUserSearchResults$findUserSearchResults$companies(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$FindUserSearchResults$findUserSearchResults<TRes>
    implements
        CopyWith$Query$FindUserSearchResults$findUserSearchResults<TRes> {
  _CopyWithStubImpl$Query$FindUserSearchResults$findUserSearchResults(
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
    bool? offersHelp,
    bool? seeksHelp,
    String? jobTitle,
    String? cityOfResidence,
    String? regionOfResidence,
    Query$FindUserSearchResults$findUserSearchResults$countryOfResidence?
        countryOfResidence,
    List<Query$FindUserSearchResults$findUserSearchResults$groupMemberships>?
        groupMemberships,
    List<Query$FindUserSearchResults$findUserSearchResults$companies>?
        companies,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$FindUserSearchResults$findUserSearchResults$countryOfResidence<
          TRes>
      get countryOfResidence =>
          CopyWith$Query$FindUserSearchResults$findUserSearchResults$countryOfResidence
              .stub(_res);

  groupMemberships(_fn) => _res;

  companies(_fn) => _res;
}

class Query$FindUserSearchResults$findUserSearchResults$countryOfResidence {
  Query$FindUserSearchResults$findUserSearchResults$countryOfResidence({
    this.translatedValue,
    this.$__typename = 'Country',
  });

  factory Query$FindUserSearchResults$findUserSearchResults$countryOfResidence.fromJson(
      Map<String, dynamic> json) {
    final l$translatedValue = json['translatedValue'];
    final l$$__typename = json['__typename'];
    return Query$FindUserSearchResults$findUserSearchResults$countryOfResidence(
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
            is Query$FindUserSearchResults$findUserSearchResults$countryOfResidence) ||
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

extension UtilityExtension$Query$FindUserSearchResults$findUserSearchResults$countryOfResidence
    on Query$FindUserSearchResults$findUserSearchResults$countryOfResidence {
  CopyWith$Query$FindUserSearchResults$findUserSearchResults$countryOfResidence<
          Query$FindUserSearchResults$findUserSearchResults$countryOfResidence>
      get copyWith =>
          CopyWith$Query$FindUserSearchResults$findUserSearchResults$countryOfResidence(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindUserSearchResults$findUserSearchResults$countryOfResidence<
    TRes> {
  factory CopyWith$Query$FindUserSearchResults$findUserSearchResults$countryOfResidence(
    Query$FindUserSearchResults$findUserSearchResults$countryOfResidence
        instance,
    TRes Function(
            Query$FindUserSearchResults$findUserSearchResults$countryOfResidence)
        then,
  ) = _CopyWithImpl$Query$FindUserSearchResults$findUserSearchResults$countryOfResidence;

  factory CopyWith$Query$FindUserSearchResults$findUserSearchResults$countryOfResidence.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindUserSearchResults$findUserSearchResults$countryOfResidence;

  TRes call({
    String? translatedValue,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindUserSearchResults$findUserSearchResults$countryOfResidence<
        TRes>
    implements
        CopyWith$Query$FindUserSearchResults$findUserSearchResults$countryOfResidence<
            TRes> {
  _CopyWithImpl$Query$FindUserSearchResults$findUserSearchResults$countryOfResidence(
    this._instance,
    this._then,
  );

  final Query$FindUserSearchResults$findUserSearchResults$countryOfResidence
      _instance;

  final TRes Function(
          Query$FindUserSearchResults$findUserSearchResults$countryOfResidence)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? translatedValue = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$FindUserSearchResults$findUserSearchResults$countryOfResidence(
        translatedValue: translatedValue == _undefined
            ? _instance.translatedValue
            : (translatedValue as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FindUserSearchResults$findUserSearchResults$countryOfResidence<
        TRes>
    implements
        CopyWith$Query$FindUserSearchResults$findUserSearchResults$countryOfResidence<
            TRes> {
  _CopyWithStubImpl$Query$FindUserSearchResults$findUserSearchResults$countryOfResidence(
      this._res);

  TRes _res;

  call({
    String? translatedValue,
    String? $__typename,
  }) =>
      _res;
}

class Query$FindUserSearchResults$findUserSearchResults$groupMemberships {
  Query$FindUserSearchResults$findUserSearchResults$groupMemberships({
    required this.groupIdent,
    required this.$__typename,
  });

  factory Query$FindUserSearchResults$findUserSearchResults$groupMemberships.fromJson(
      Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "MentorsGroupMembership":
        return Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MentorsGroupMembership
            .fromJson(json);

      case "MenteesGroupMembership":
        return Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MenteesGroupMembership
            .fromJson(json);

      case "GroupMembership":
        return Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$GroupMembership
            .fromJson(json);

      default:
        final l$groupIdent = json['groupIdent'];
        final l$$__typename = json['__typename'];
        return Query$FindUserSearchResults$findUserSearchResults$groupMemberships(
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
            is Query$FindUserSearchResults$findUserSearchResults$groupMemberships) ||
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

extension UtilityExtension$Query$FindUserSearchResults$findUserSearchResults$groupMemberships
    on Query$FindUserSearchResults$findUserSearchResults$groupMemberships {
  CopyWith$Query$FindUserSearchResults$findUserSearchResults$groupMemberships<
          Query$FindUserSearchResults$findUserSearchResults$groupMemberships>
      get copyWith =>
          CopyWith$Query$FindUserSearchResults$findUserSearchResults$groupMemberships(
            this,
            (i) => i,
          );
  _T when<_T>({
    required _T Function(
            Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MentorsGroupMembership)
        mentorsGroupMembership,
    required _T Function(
            Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MenteesGroupMembership)
        menteesGroupMembership,
    required _T Function(
            Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$GroupMembership)
        groupMembership,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "MentorsGroupMembership":
        return mentorsGroupMembership(this
            as Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MentorsGroupMembership);

      case "MenteesGroupMembership":
        return menteesGroupMembership(this
            as Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MenteesGroupMembership);

      case "GroupMembership":
        return groupMembership(this
            as Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$GroupMembership);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(
            Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MentorsGroupMembership)?
        mentorsGroupMembership,
    _T Function(
            Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MenteesGroupMembership)?
        menteesGroupMembership,
    _T Function(
            Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$GroupMembership)?
        groupMembership,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "MentorsGroupMembership":
        if (mentorsGroupMembership != null) {
          return mentorsGroupMembership(this
              as Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MentorsGroupMembership);
        } else {
          return orElse();
        }

      case "MenteesGroupMembership":
        if (menteesGroupMembership != null) {
          return menteesGroupMembership(this
              as Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MenteesGroupMembership);
        } else {
          return orElse();
        }

      case "GroupMembership":
        if (groupMembership != null) {
          return groupMembership(this
              as Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$GroupMembership);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Query$FindUserSearchResults$findUserSearchResults$groupMemberships<
    TRes> {
  factory CopyWith$Query$FindUserSearchResults$findUserSearchResults$groupMemberships(
    Query$FindUserSearchResults$findUserSearchResults$groupMemberships instance,
    TRes Function(
            Query$FindUserSearchResults$findUserSearchResults$groupMemberships)
        then,
  ) = _CopyWithImpl$Query$FindUserSearchResults$findUserSearchResults$groupMemberships;

  factory CopyWith$Query$FindUserSearchResults$findUserSearchResults$groupMemberships.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindUserSearchResults$findUserSearchResults$groupMemberships;

  TRes call({
    String? groupIdent,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindUserSearchResults$findUserSearchResults$groupMemberships<
        TRes>
    implements
        CopyWith$Query$FindUserSearchResults$findUserSearchResults$groupMemberships<
            TRes> {
  _CopyWithImpl$Query$FindUserSearchResults$findUserSearchResults$groupMemberships(
    this._instance,
    this._then,
  );

  final Query$FindUserSearchResults$findUserSearchResults$groupMemberships
      _instance;

  final TRes Function(
      Query$FindUserSearchResults$findUserSearchResults$groupMemberships) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? groupIdent = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindUserSearchResults$findUserSearchResults$groupMemberships(
        groupIdent: groupIdent == _undefined || groupIdent == null
            ? _instance.groupIdent
            : (groupIdent as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FindUserSearchResults$findUserSearchResults$groupMemberships<
        TRes>
    implements
        CopyWith$Query$FindUserSearchResults$findUserSearchResults$groupMemberships<
            TRes> {
  _CopyWithStubImpl$Query$FindUserSearchResults$findUserSearchResults$groupMemberships(
      this._res);

  TRes _res;

  call({
    String? groupIdent,
    String? $__typename,
  }) =>
      _res;
}

class Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MentorsGroupMembership
    implements
        Query$FindUserSearchResults$findUserSearchResults$groupMemberships {
  Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MentorsGroupMembership({
    required this.expertises,
    this.endorsements,
    this.$__typename = 'MentorsGroupMembership',
    required this.groupIdent,
  });

  factory Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MentorsGroupMembership.fromJson(
      Map<String, dynamic> json) {
    final l$expertises = json['expertises'];
    final l$endorsements = json['endorsements'];
    final l$$__typename = json['__typename'];
    final l$groupIdent = json['groupIdent'];
    return Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MentorsGroupMembership(
      expertises: (l$expertises as List<dynamic>)
          .map((e) =>
              Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MentorsGroupMembership$expertises
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      endorsements: (l$endorsements as int?),
      $__typename: (l$$__typename as String),
      groupIdent: (l$groupIdent as String),
    );
  }

  final List<
          Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MentorsGroupMembership$expertises>
      expertises;

  final int? endorsements;

  final String $__typename;

  final String groupIdent;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$expertises = expertises;
    _resultData['expertises'] = l$expertises.map((e) => e.toJson()).toList();
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
    final l$expertises = expertises;
    final l$endorsements = endorsements;
    final l$$__typename = $__typename;
    final l$groupIdent = groupIdent;
    return Object.hashAll([
      Object.hashAll(l$expertises.map((v) => v)),
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
            is Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MentorsGroupMembership) ||
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

extension UtilityExtension$Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MentorsGroupMembership
    on Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MentorsGroupMembership {
  CopyWith$Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MentorsGroupMembership<
          Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MentorsGroupMembership>
      get copyWith =>
          CopyWith$Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MentorsGroupMembership(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MentorsGroupMembership<
    TRes> {
  factory CopyWith$Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MentorsGroupMembership(
    Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MentorsGroupMembership
        instance,
    TRes Function(
            Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MentorsGroupMembership)
        then,
  ) = _CopyWithImpl$Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MentorsGroupMembership;

  factory CopyWith$Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MentorsGroupMembership.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MentorsGroupMembership;

  TRes call({
    List<Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MentorsGroupMembership$expertises>?
        expertises,
    int? endorsements,
    String? $__typename,
    String? groupIdent,
  });
  TRes expertises(
      Iterable<Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MentorsGroupMembership$expertises> Function(
              Iterable<
                  CopyWith$Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MentorsGroupMembership$expertises<
                      Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MentorsGroupMembership$expertises>>)
          _fn);
}

class _CopyWithImpl$Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MentorsGroupMembership<
        TRes>
    implements
        CopyWith$Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MentorsGroupMembership<
            TRes> {
  _CopyWithImpl$Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MentorsGroupMembership(
    this._instance,
    this._then,
  );

  final Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MentorsGroupMembership
      _instance;

  final TRes Function(
          Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MentorsGroupMembership)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? expertises = _undefined,
    Object? endorsements = _undefined,
    Object? $__typename = _undefined,
    Object? groupIdent = _undefined,
  }) =>
      _then(
          Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MentorsGroupMembership(
        expertises: expertises == _undefined || expertises == null
            ? _instance.expertises
            : (expertises as List<
                Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MentorsGroupMembership$expertises>),
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
          Iterable<Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MentorsGroupMembership$expertises> Function(
                  Iterable<
                      CopyWith$Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MentorsGroupMembership$expertises<
                          Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MentorsGroupMembership$expertises>>)
              _fn) =>
      call(
          expertises: _fn(_instance.expertises.map((e) =>
              CopyWith$Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MentorsGroupMembership$expertises(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MentorsGroupMembership<
        TRes>
    implements
        CopyWith$Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MentorsGroupMembership<
            TRes> {
  _CopyWithStubImpl$Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MentorsGroupMembership(
      this._res);

  TRes _res;

  call({
    List<Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MentorsGroupMembership$expertises>?
        expertises,
    int? endorsements,
    String? $__typename,
    String? groupIdent,
  }) =>
      _res;

  expertises(_fn) => _res;
}

class Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MentorsGroupMembership$expertises {
  Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MentorsGroupMembership$expertises({
    this.translatedValue,
    this.$__typename = 'Expertise',
  });

  factory Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MentorsGroupMembership$expertises.fromJson(
      Map<String, dynamic> json) {
    final l$translatedValue = json['translatedValue'];
    final l$$__typename = json['__typename'];
    return Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MentorsGroupMembership$expertises(
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
            is Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MentorsGroupMembership$expertises) ||
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

extension UtilityExtension$Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MentorsGroupMembership$expertises
    on Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MentorsGroupMembership$expertises {
  CopyWith$Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MentorsGroupMembership$expertises<
          Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MentorsGroupMembership$expertises>
      get copyWith =>
          CopyWith$Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MentorsGroupMembership$expertises(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MentorsGroupMembership$expertises<
    TRes> {
  factory CopyWith$Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MentorsGroupMembership$expertises(
    Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MentorsGroupMembership$expertises
        instance,
    TRes Function(
            Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MentorsGroupMembership$expertises)
        then,
  ) = _CopyWithImpl$Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MentorsGroupMembership$expertises;

  factory CopyWith$Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MentorsGroupMembership$expertises.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MentorsGroupMembership$expertises;

  TRes call({
    String? translatedValue,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MentorsGroupMembership$expertises<
        TRes>
    implements
        CopyWith$Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MentorsGroupMembership$expertises<
            TRes> {
  _CopyWithImpl$Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MentorsGroupMembership$expertises(
    this._instance,
    this._then,
  );

  final Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MentorsGroupMembership$expertises
      _instance;

  final TRes Function(
          Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MentorsGroupMembership$expertises)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? translatedValue = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MentorsGroupMembership$expertises(
        translatedValue: translatedValue == _undefined
            ? _instance.translatedValue
            : (translatedValue as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MentorsGroupMembership$expertises<
        TRes>
    implements
        CopyWith$Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MentorsGroupMembership$expertises<
            TRes> {
  _CopyWithStubImpl$Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MentorsGroupMembership$expertises(
      this._res);

  TRes _res;

  call({
    String? translatedValue,
    String? $__typename,
  }) =>
      _res;
}

class Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MenteesGroupMembership
    implements
        Query$FindUserSearchResults$findUserSearchResults$groupMemberships {
  Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MenteesGroupMembership({
    required this.soughtExpertises,
    this.$__typename = 'MenteesGroupMembership',
    required this.groupIdent,
  });

  factory Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MenteesGroupMembership.fromJson(
      Map<String, dynamic> json) {
    final l$soughtExpertises = json['soughtExpertises'];
    final l$$__typename = json['__typename'];
    final l$groupIdent = json['groupIdent'];
    return Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MenteesGroupMembership(
      soughtExpertises: (l$soughtExpertises as List<dynamic>)
          .map((e) =>
              Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MenteesGroupMembership$soughtExpertises
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
      groupIdent: (l$groupIdent as String),
    );
  }

  final List<
          Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MenteesGroupMembership$soughtExpertises>
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
            is Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MenteesGroupMembership) ||
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

extension UtilityExtension$Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MenteesGroupMembership
    on Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MenteesGroupMembership {
  CopyWith$Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MenteesGroupMembership<
          Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MenteesGroupMembership>
      get copyWith =>
          CopyWith$Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MenteesGroupMembership(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MenteesGroupMembership<
    TRes> {
  factory CopyWith$Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MenteesGroupMembership(
    Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MenteesGroupMembership
        instance,
    TRes Function(
            Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MenteesGroupMembership)
        then,
  ) = _CopyWithImpl$Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MenteesGroupMembership;

  factory CopyWith$Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MenteesGroupMembership.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MenteesGroupMembership;

  TRes call({
    List<Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MenteesGroupMembership$soughtExpertises>?
        soughtExpertises,
    String? $__typename,
    String? groupIdent,
  });
  TRes soughtExpertises(
      Iterable<Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MenteesGroupMembership$soughtExpertises> Function(
              Iterable<
                  CopyWith$Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MenteesGroupMembership$soughtExpertises<
                      Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MenteesGroupMembership$soughtExpertises>>)
          _fn);
}

class _CopyWithImpl$Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MenteesGroupMembership<
        TRes>
    implements
        CopyWith$Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MenteesGroupMembership<
            TRes> {
  _CopyWithImpl$Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MenteesGroupMembership(
    this._instance,
    this._then,
  );

  final Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MenteesGroupMembership
      _instance;

  final TRes Function(
          Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MenteesGroupMembership)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? soughtExpertises = _undefined,
    Object? $__typename = _undefined,
    Object? groupIdent = _undefined,
  }) =>
      _then(
          Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MenteesGroupMembership(
        soughtExpertises: soughtExpertises == _undefined ||
                soughtExpertises == null
            ? _instance.soughtExpertises
            : (soughtExpertises as List<
                Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MenteesGroupMembership$soughtExpertises>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        groupIdent: groupIdent == _undefined || groupIdent == null
            ? _instance.groupIdent
            : (groupIdent as String),
      ));

  TRes soughtExpertises(
          Iterable<Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MenteesGroupMembership$soughtExpertises> Function(
                  Iterable<
                      CopyWith$Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MenteesGroupMembership$soughtExpertises<
                          Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MenteesGroupMembership$soughtExpertises>>)
              _fn) =>
      call(
          soughtExpertises: _fn(_instance.soughtExpertises.map((e) =>
              CopyWith$Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MenteesGroupMembership$soughtExpertises(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MenteesGroupMembership<
        TRes>
    implements
        CopyWith$Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MenteesGroupMembership<
            TRes> {
  _CopyWithStubImpl$Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MenteesGroupMembership(
      this._res);

  TRes _res;

  call({
    List<Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MenteesGroupMembership$soughtExpertises>?
        soughtExpertises,
    String? $__typename,
    String? groupIdent,
  }) =>
      _res;

  soughtExpertises(_fn) => _res;
}

class Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MenteesGroupMembership$soughtExpertises {
  Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MenteesGroupMembership$soughtExpertises({
    this.translatedValue,
    this.$__typename = 'Expertise',
  });

  factory Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MenteesGroupMembership$soughtExpertises.fromJson(
      Map<String, dynamic> json) {
    final l$translatedValue = json['translatedValue'];
    final l$$__typename = json['__typename'];
    return Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MenteesGroupMembership$soughtExpertises(
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
            is Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MenteesGroupMembership$soughtExpertises) ||
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

extension UtilityExtension$Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MenteesGroupMembership$soughtExpertises
    on Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MenteesGroupMembership$soughtExpertises {
  CopyWith$Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MenteesGroupMembership$soughtExpertises<
          Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MenteesGroupMembership$soughtExpertises>
      get copyWith =>
          CopyWith$Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MenteesGroupMembership$soughtExpertises(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MenteesGroupMembership$soughtExpertises<
    TRes> {
  factory CopyWith$Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MenteesGroupMembership$soughtExpertises(
    Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MenteesGroupMembership$soughtExpertises
        instance,
    TRes Function(
            Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MenteesGroupMembership$soughtExpertises)
        then,
  ) = _CopyWithImpl$Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MenteesGroupMembership$soughtExpertises;

  factory CopyWith$Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MenteesGroupMembership$soughtExpertises.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MenteesGroupMembership$soughtExpertises;

  TRes call({
    String? translatedValue,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MenteesGroupMembership$soughtExpertises<
        TRes>
    implements
        CopyWith$Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MenteesGroupMembership$soughtExpertises<
            TRes> {
  _CopyWithImpl$Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MenteesGroupMembership$soughtExpertises(
    this._instance,
    this._then,
  );

  final Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MenteesGroupMembership$soughtExpertises
      _instance;

  final TRes Function(
          Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MenteesGroupMembership$soughtExpertises)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? translatedValue = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MenteesGroupMembership$soughtExpertises(
        translatedValue: translatedValue == _undefined
            ? _instance.translatedValue
            : (translatedValue as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MenteesGroupMembership$soughtExpertises<
        TRes>
    implements
        CopyWith$Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MenteesGroupMembership$soughtExpertises<
            TRes> {
  _CopyWithStubImpl$Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$MenteesGroupMembership$soughtExpertises(
      this._res);

  TRes _res;

  call({
    String? translatedValue,
    String? $__typename,
  }) =>
      _res;
}

class Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$GroupMembership
    implements
        Query$FindUserSearchResults$findUserSearchResults$groupMemberships {
  Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$GroupMembership({
    required this.groupIdent,
    this.$__typename = 'GroupMembership',
  });

  factory Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$GroupMembership.fromJson(
      Map<String, dynamic> json) {
    final l$groupIdent = json['groupIdent'];
    final l$$__typename = json['__typename'];
    return Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$GroupMembership(
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
            is Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$GroupMembership) ||
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

extension UtilityExtension$Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$GroupMembership
    on Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$GroupMembership {
  CopyWith$Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$GroupMembership<
          Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$GroupMembership>
      get copyWith =>
          CopyWith$Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$GroupMembership(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$GroupMembership<
    TRes> {
  factory CopyWith$Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$GroupMembership(
    Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$GroupMembership
        instance,
    TRes Function(
            Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$GroupMembership)
        then,
  ) = _CopyWithImpl$Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$GroupMembership;

  factory CopyWith$Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$GroupMembership.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$GroupMembership;

  TRes call({
    String? groupIdent,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$GroupMembership<
        TRes>
    implements
        CopyWith$Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$GroupMembership<
            TRes> {
  _CopyWithImpl$Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$GroupMembership(
    this._instance,
    this._then,
  );

  final Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$GroupMembership
      _instance;

  final TRes Function(
          Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$GroupMembership)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? groupIdent = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$GroupMembership(
        groupIdent: groupIdent == _undefined || groupIdent == null
            ? _instance.groupIdent
            : (groupIdent as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$GroupMembership<
        TRes>
    implements
        CopyWith$Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$GroupMembership<
            TRes> {
  _CopyWithStubImpl$Query$FindUserSearchResults$findUserSearchResults$groupMemberships$$GroupMembership(
      this._res);

  TRes _res;

  call({
    String? groupIdent,
    String? $__typename,
  }) =>
      _res;
}

class Query$FindUserSearchResults$findUserSearchResults$companies {
  Query$FindUserSearchResults$findUserSearchResults$companies({
    required this.name,
    this.$__typename = 'Company',
  });

  factory Query$FindUserSearchResults$findUserSearchResults$companies.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$FindUserSearchResults$findUserSearchResults$companies(
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
    if (!(other
            is Query$FindUserSearchResults$findUserSearchResults$companies) ||
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

extension UtilityExtension$Query$FindUserSearchResults$findUserSearchResults$companies
    on Query$FindUserSearchResults$findUserSearchResults$companies {
  CopyWith$Query$FindUserSearchResults$findUserSearchResults$companies<
          Query$FindUserSearchResults$findUserSearchResults$companies>
      get copyWith =>
          CopyWith$Query$FindUserSearchResults$findUserSearchResults$companies(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindUserSearchResults$findUserSearchResults$companies<
    TRes> {
  factory CopyWith$Query$FindUserSearchResults$findUserSearchResults$companies(
    Query$FindUserSearchResults$findUserSearchResults$companies instance,
    TRes Function(Query$FindUserSearchResults$findUserSearchResults$companies)
        then,
  ) = _CopyWithImpl$Query$FindUserSearchResults$findUserSearchResults$companies;

  factory CopyWith$Query$FindUserSearchResults$findUserSearchResults$companies.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindUserSearchResults$findUserSearchResults$companies;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindUserSearchResults$findUserSearchResults$companies<
        TRes>
    implements
        CopyWith$Query$FindUserSearchResults$findUserSearchResults$companies<
            TRes> {
  _CopyWithImpl$Query$FindUserSearchResults$findUserSearchResults$companies(
    this._instance,
    this._then,
  );

  final Query$FindUserSearchResults$findUserSearchResults$companies _instance;

  final TRes Function(
      Query$FindUserSearchResults$findUserSearchResults$companies) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindUserSearchResults$findUserSearchResults$companies(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FindUserSearchResults$findUserSearchResults$companies<
        TRes>
    implements
        CopyWith$Query$FindUserSearchResults$findUserSearchResults$companies<
            TRes> {
  _CopyWithStubImpl$Query$FindUserSearchResults$findUserSearchResults$companies(
      this._res);

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
            name: NameNode(value: 'email'),
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
                name: NameNode(value: 'label'),
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
            name: NameNode(value: 'preferredLanguage'),
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
            name: NameNode(value: 'spokenLanguages'),
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
            name: NameNode(value: 'avatarUrl'),
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
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
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
                    name: NameNode(value: 'expectationsForMentees'),
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
                    name: NameNode(value: 'reasonsForStartingBusiness'),
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
                name: NameNode(value: 'description'),
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
                    name: NameNode(value: 'label'),
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
            name: NameNode(value: 'pronounsDisplay'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'pronouns'),
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
            name: NameNode(value: 'businessExperiences'),
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
                name: NameNode(value: 'businessName'),
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
                name: NameNode(value: 'startDate'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'endDate'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'city'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'state'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'country'),
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
            name: NameNode(value: 'academicExperiences'),
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
                name: NameNode(value: 'institutionName'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'degreeType'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'fieldOfStudy'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'startDate'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'endDate'),
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
            name: NameNode(value: 'countryOfResidenceTextId'),
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
            name: NameNode(value: 'cityOfOrigin'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'regionOfOrigin'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'countryOfOriginTextId'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'countryOfOrigin'),
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
]);

class Query$FindUserDetailedProfile$findUserById {
  Query$FindUserDetailedProfile$findUserById({
    required this.id,
    this.firstName,
    this.lastName,
    this.fullName,
    this.email,
    this.userHandle,
    this.offersHelp,
    this.seeksHelp,
    this.websites,
    required this.preferredLanguage,
    required this.spokenLanguages,
    this.avatarUrl,
    required this.groupMemberships,
    this.jobTitle,
    required this.companies,
    required this.pronounsDisplay,
    required this.pronouns,
    this.businessExperiences,
    this.academicExperiences,
    this.cityOfResidence,
    this.regionOfResidence,
    this.countryOfResidenceTextId,
    this.countryOfResidence,
    this.cityOfOrigin,
    this.regionOfOrigin,
    this.countryOfOriginTextId,
    this.countryOfOrigin,
    this.$__typename = 'User',
  });

  factory Query$FindUserDetailedProfile$findUserById.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$firstName = json['firstName'];
    final l$lastName = json['lastName'];
    final l$fullName = json['fullName'];
    final l$email = json['email'];
    final l$userHandle = json['userHandle'];
    final l$offersHelp = json['offersHelp'];
    final l$seeksHelp = json['seeksHelp'];
    final l$websites = json['websites'];
    final l$preferredLanguage = json['preferredLanguage'];
    final l$spokenLanguages = json['spokenLanguages'];
    final l$avatarUrl = json['avatarUrl'];
    final l$groupMemberships = json['groupMemberships'];
    final l$jobTitle = json['jobTitle'];
    final l$companies = json['companies'];
    final l$pronounsDisplay = json['pronounsDisplay'];
    final l$pronouns = json['pronouns'];
    final l$businessExperiences = json['businessExperiences'];
    final l$academicExperiences = json['academicExperiences'];
    final l$cityOfResidence = json['cityOfResidence'];
    final l$regionOfResidence = json['regionOfResidence'];
    final l$countryOfResidenceTextId = json['countryOfResidenceTextId'];
    final l$countryOfResidence = json['countryOfResidence'];
    final l$cityOfOrigin = json['cityOfOrigin'];
    final l$regionOfOrigin = json['regionOfOrigin'];
    final l$countryOfOriginTextId = json['countryOfOriginTextId'];
    final l$countryOfOrigin = json['countryOfOrigin'];
    final l$$__typename = json['__typename'];
    return Query$FindUserDetailedProfile$findUserById(
      id: (l$id as String),
      firstName: (l$firstName as String?),
      lastName: (l$lastName as String?),
      fullName: (l$fullName as String?),
      email: (l$email as String?),
      userHandle: (l$userHandle as String?),
      offersHelp: (l$offersHelp as bool?),
      seeksHelp: (l$seeksHelp as bool?),
      websites: (l$websites as List<dynamic>?)
          ?.map((e) =>
              Query$FindUserDetailedProfile$findUserById$websites.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      preferredLanguage:
          Query$FindUserDetailedProfile$findUserById$preferredLanguage.fromJson(
              (l$preferredLanguage as Map<String, dynamic>)),
      spokenLanguages: (l$spokenLanguages as List<dynamic>)
          .map((e) => Query$FindUserDetailedProfile$findUserById$spokenLanguages
              .fromJson((e as Map<String, dynamic>)))
          .toList(),
      avatarUrl: (l$avatarUrl as String?),
      groupMemberships: (l$groupMemberships as List<dynamic>)
          .map((e) =>
              Query$FindUserDetailedProfile$findUserById$groupMemberships
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      jobTitle: (l$jobTitle as String?),
      companies: (l$companies as List<dynamic>)
          .map((e) =>
              Query$FindUserDetailedProfile$findUserById$companies.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      pronounsDisplay: (l$pronounsDisplay as String),
      pronouns: (l$pronouns as List<dynamic>)
          .map((e) =>
              Query$FindUserDetailedProfile$findUserById$pronouns.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      businessExperiences: (l$businessExperiences as List<dynamic>?)
          ?.map((e) =>
              Query$FindUserDetailedProfile$findUserById$businessExperiences
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      academicExperiences: (l$academicExperiences as List<dynamic>?)
          ?.map((e) =>
              Query$FindUserDetailedProfile$findUserById$academicExperiences
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      cityOfResidence: (l$cityOfResidence as String?),
      regionOfResidence: (l$regionOfResidence as String?),
      countryOfResidenceTextId: (l$countryOfResidenceTextId as String?),
      countryOfResidence: l$countryOfResidence == null
          ? null
          : Query$FindUserDetailedProfile$findUserById$countryOfResidence
              .fromJson((l$countryOfResidence as Map<String, dynamic>)),
      cityOfOrigin: (l$cityOfOrigin as String?),
      regionOfOrigin: (l$regionOfOrigin as String?),
      countryOfOriginTextId: (l$countryOfOriginTextId as String?),
      countryOfOrigin: l$countryOfOrigin == null
          ? null
          : Query$FindUserDetailedProfile$findUserById$countryOfOrigin.fromJson(
              (l$countryOfOrigin as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String? firstName;

  final String? lastName;

  final String? fullName;

  final String? email;

  final String? userHandle;

  final bool? offersHelp;

  final bool? seeksHelp;

  final List<Query$FindUserDetailedProfile$findUserById$websites>? websites;

  final Query$FindUserDetailedProfile$findUserById$preferredLanguage
      preferredLanguage;

  final List<Query$FindUserDetailedProfile$findUserById$spokenLanguages>
      spokenLanguages;

  final String? avatarUrl;

  final List<Query$FindUserDetailedProfile$findUserById$groupMemberships>
      groupMemberships;

  final String? jobTitle;

  final List<Query$FindUserDetailedProfile$findUserById$companies> companies;

  final String pronounsDisplay;

  final List<Query$FindUserDetailedProfile$findUserById$pronouns> pronouns;

  final List<Query$FindUserDetailedProfile$findUserById$businessExperiences>?
      businessExperiences;

  final List<Query$FindUserDetailedProfile$findUserById$academicExperiences>?
      academicExperiences;

  final String? cityOfResidence;

  final String? regionOfResidence;

  final String? countryOfResidenceTextId;

  final Query$FindUserDetailedProfile$findUserById$countryOfResidence?
      countryOfResidence;

  final String? cityOfOrigin;

  final String? regionOfOrigin;

  final String? countryOfOriginTextId;

  final Query$FindUserDetailedProfile$findUserById$countryOfOrigin?
      countryOfOrigin;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$firstName = firstName;
    _resultData['firstName'] = l$firstName;
    final l$lastName = lastName;
    _resultData['lastName'] = l$lastName;
    final l$fullName = fullName;
    _resultData['fullName'] = l$fullName;
    final l$email = email;
    _resultData['email'] = l$email;
    final l$userHandle = userHandle;
    _resultData['userHandle'] = l$userHandle;
    final l$offersHelp = offersHelp;
    _resultData['offersHelp'] = l$offersHelp;
    final l$seeksHelp = seeksHelp;
    _resultData['seeksHelp'] = l$seeksHelp;
    final l$websites = websites;
    _resultData['websites'] = l$websites?.map((e) => e.toJson()).toList();
    final l$preferredLanguage = preferredLanguage;
    _resultData['preferredLanguage'] = l$preferredLanguage.toJson();
    final l$spokenLanguages = spokenLanguages;
    _resultData['spokenLanguages'] =
        l$spokenLanguages.map((e) => e.toJson()).toList();
    final l$avatarUrl = avatarUrl;
    _resultData['avatarUrl'] = l$avatarUrl;
    final l$groupMemberships = groupMemberships;
    _resultData['groupMemberships'] =
        l$groupMemberships.map((e) => e.toJson()).toList();
    final l$jobTitle = jobTitle;
    _resultData['jobTitle'] = l$jobTitle;
    final l$companies = companies;
    _resultData['companies'] = l$companies.map((e) => e.toJson()).toList();
    final l$pronounsDisplay = pronounsDisplay;
    _resultData['pronounsDisplay'] = l$pronounsDisplay;
    final l$pronouns = pronouns;
    _resultData['pronouns'] = l$pronouns.map((e) => e.toJson()).toList();
    final l$businessExperiences = businessExperiences;
    _resultData['businessExperiences'] =
        l$businessExperiences?.map((e) => e.toJson()).toList();
    final l$academicExperiences = academicExperiences;
    _resultData['academicExperiences'] =
        l$academicExperiences?.map((e) => e.toJson()).toList();
    final l$cityOfResidence = cityOfResidence;
    _resultData['cityOfResidence'] = l$cityOfResidence;
    final l$regionOfResidence = regionOfResidence;
    _resultData['regionOfResidence'] = l$regionOfResidence;
    final l$countryOfResidenceTextId = countryOfResidenceTextId;
    _resultData['countryOfResidenceTextId'] = l$countryOfResidenceTextId;
    final l$countryOfResidence = countryOfResidence;
    _resultData['countryOfResidence'] = l$countryOfResidence?.toJson();
    final l$cityOfOrigin = cityOfOrigin;
    _resultData['cityOfOrigin'] = l$cityOfOrigin;
    final l$regionOfOrigin = regionOfOrigin;
    _resultData['regionOfOrigin'] = l$regionOfOrigin;
    final l$countryOfOriginTextId = countryOfOriginTextId;
    _resultData['countryOfOriginTextId'] = l$countryOfOriginTextId;
    final l$countryOfOrigin = countryOfOrigin;
    _resultData['countryOfOrigin'] = l$countryOfOrigin?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$firstName = firstName;
    final l$lastName = lastName;
    final l$fullName = fullName;
    final l$email = email;
    final l$userHandle = userHandle;
    final l$offersHelp = offersHelp;
    final l$seeksHelp = seeksHelp;
    final l$websites = websites;
    final l$preferredLanguage = preferredLanguage;
    final l$spokenLanguages = spokenLanguages;
    final l$avatarUrl = avatarUrl;
    final l$groupMemberships = groupMemberships;
    final l$jobTitle = jobTitle;
    final l$companies = companies;
    final l$pronounsDisplay = pronounsDisplay;
    final l$pronouns = pronouns;
    final l$businessExperiences = businessExperiences;
    final l$academicExperiences = academicExperiences;
    final l$cityOfResidence = cityOfResidence;
    final l$regionOfResidence = regionOfResidence;
    final l$countryOfResidenceTextId = countryOfResidenceTextId;
    final l$countryOfResidence = countryOfResidence;
    final l$cityOfOrigin = cityOfOrigin;
    final l$regionOfOrigin = regionOfOrigin;
    final l$countryOfOriginTextId = countryOfOriginTextId;
    final l$countryOfOrigin = countryOfOrigin;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$firstName,
      l$lastName,
      l$fullName,
      l$email,
      l$userHandle,
      l$offersHelp,
      l$seeksHelp,
      l$websites == null ? null : Object.hashAll(l$websites.map((v) => v)),
      l$preferredLanguage,
      Object.hashAll(l$spokenLanguages.map((v) => v)),
      l$avatarUrl,
      Object.hashAll(l$groupMemberships.map((v) => v)),
      l$jobTitle,
      Object.hashAll(l$companies.map((v) => v)),
      l$pronounsDisplay,
      Object.hashAll(l$pronouns.map((v) => v)),
      l$businessExperiences == null
          ? null
          : Object.hashAll(l$businessExperiences.map((v) => v)),
      l$academicExperiences == null
          ? null
          : Object.hashAll(l$academicExperiences.map((v) => v)),
      l$cityOfResidence,
      l$regionOfResidence,
      l$countryOfResidenceTextId,
      l$countryOfResidence,
      l$cityOfOrigin,
      l$regionOfOrigin,
      l$countryOfOriginTextId,
      l$countryOfOrigin,
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
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    final l$userHandle = userHandle;
    final lOther$userHandle = other.userHandle;
    if (l$userHandle != lOther$userHandle) {
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
    final l$preferredLanguage = preferredLanguage;
    final lOther$preferredLanguage = other.preferredLanguage;
    if (l$preferredLanguage != lOther$preferredLanguage) {
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
    final l$avatarUrl = avatarUrl;
    final lOther$avatarUrl = other.avatarUrl;
    if (l$avatarUrl != lOther$avatarUrl) {
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
    final l$pronounsDisplay = pronounsDisplay;
    final lOther$pronounsDisplay = other.pronounsDisplay;
    if (l$pronounsDisplay != lOther$pronounsDisplay) {
      return false;
    }
    final l$pronouns = pronouns;
    final lOther$pronouns = other.pronouns;
    if (l$pronouns.length != lOther$pronouns.length) {
      return false;
    }
    for (int i = 0; i < l$pronouns.length; i++) {
      final l$pronouns$entry = l$pronouns[i];
      final lOther$pronouns$entry = lOther$pronouns[i];
      if (l$pronouns$entry != lOther$pronouns$entry) {
        return false;
      }
    }
    final l$businessExperiences = businessExperiences;
    final lOther$businessExperiences = other.businessExperiences;
    if (l$businessExperiences != null && lOther$businessExperiences != null) {
      if (l$businessExperiences.length != lOther$businessExperiences.length) {
        return false;
      }
      for (int i = 0; i < l$businessExperiences.length; i++) {
        final l$businessExperiences$entry = l$businessExperiences[i];
        final lOther$businessExperiences$entry = lOther$businessExperiences[i];
        if (l$businessExperiences$entry != lOther$businessExperiences$entry) {
          return false;
        }
      }
    } else if (l$businessExperiences != lOther$businessExperiences) {
      return false;
    }
    final l$academicExperiences = academicExperiences;
    final lOther$academicExperiences = other.academicExperiences;
    if (l$academicExperiences != null && lOther$academicExperiences != null) {
      if (l$academicExperiences.length != lOther$academicExperiences.length) {
        return false;
      }
      for (int i = 0; i < l$academicExperiences.length; i++) {
        final l$academicExperiences$entry = l$academicExperiences[i];
        final lOther$academicExperiences$entry = lOther$academicExperiences[i];
        if (l$academicExperiences$entry != lOther$academicExperiences$entry) {
          return false;
        }
      }
    } else if (l$academicExperiences != lOther$academicExperiences) {
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
    final l$countryOfResidenceTextId = countryOfResidenceTextId;
    final lOther$countryOfResidenceTextId = other.countryOfResidenceTextId;
    if (l$countryOfResidenceTextId != lOther$countryOfResidenceTextId) {
      return false;
    }
    final l$countryOfResidence = countryOfResidence;
    final lOther$countryOfResidence = other.countryOfResidence;
    if (l$countryOfResidence != lOther$countryOfResidence) {
      return false;
    }
    final l$cityOfOrigin = cityOfOrigin;
    final lOther$cityOfOrigin = other.cityOfOrigin;
    if (l$cityOfOrigin != lOther$cityOfOrigin) {
      return false;
    }
    final l$regionOfOrigin = regionOfOrigin;
    final lOther$regionOfOrigin = other.regionOfOrigin;
    if (l$regionOfOrigin != lOther$regionOfOrigin) {
      return false;
    }
    final l$countryOfOriginTextId = countryOfOriginTextId;
    final lOther$countryOfOriginTextId = other.countryOfOriginTextId;
    if (l$countryOfOriginTextId != lOther$countryOfOriginTextId) {
      return false;
    }
    final l$countryOfOrigin = countryOfOrigin;
    final lOther$countryOfOrigin = other.countryOfOrigin;
    if (l$countryOfOrigin != lOther$countryOfOrigin) {
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
    String? firstName,
    String? lastName,
    String? fullName,
    String? email,
    String? userHandle,
    bool? offersHelp,
    bool? seeksHelp,
    List<Query$FindUserDetailedProfile$findUserById$websites>? websites,
    Query$FindUserDetailedProfile$findUserById$preferredLanguage?
        preferredLanguage,
    List<Query$FindUserDetailedProfile$findUserById$spokenLanguages>?
        spokenLanguages,
    String? avatarUrl,
    List<Query$FindUserDetailedProfile$findUserById$groupMemberships>?
        groupMemberships,
    String? jobTitle,
    List<Query$FindUserDetailedProfile$findUserById$companies>? companies,
    String? pronounsDisplay,
    List<Query$FindUserDetailedProfile$findUserById$pronouns>? pronouns,
    List<Query$FindUserDetailedProfile$findUserById$businessExperiences>?
        businessExperiences,
    List<Query$FindUserDetailedProfile$findUserById$academicExperiences>?
        academicExperiences,
    String? cityOfResidence,
    String? regionOfResidence,
    String? countryOfResidenceTextId,
    Query$FindUserDetailedProfile$findUserById$countryOfResidence?
        countryOfResidence,
    String? cityOfOrigin,
    String? regionOfOrigin,
    String? countryOfOriginTextId,
    Query$FindUserDetailedProfile$findUserById$countryOfOrigin? countryOfOrigin,
    String? $__typename,
  });
  TRes websites(
      Iterable<Query$FindUserDetailedProfile$findUserById$websites>? Function(
              Iterable<
                  CopyWith$Query$FindUserDetailedProfile$findUserById$websites<
                      Query$FindUserDetailedProfile$findUserById$websites>>?)
          _fn);
  CopyWith$Query$FindUserDetailedProfile$findUserById$preferredLanguage<TRes>
      get preferredLanguage;
  TRes spokenLanguages(
      Iterable<Query$FindUserDetailedProfile$findUserById$spokenLanguages> Function(
              Iterable<
                  CopyWith$Query$FindUserDetailedProfile$findUserById$spokenLanguages<
                      Query$FindUserDetailedProfile$findUserById$spokenLanguages>>)
          _fn);
  TRes groupMemberships(
      Iterable<Query$FindUserDetailedProfile$findUserById$groupMemberships> Function(
              Iterable<
                  CopyWith$Query$FindUserDetailedProfile$findUserById$groupMemberships<
                      Query$FindUserDetailedProfile$findUserById$groupMemberships>>)
          _fn);
  TRes companies(
      Iterable<Query$FindUserDetailedProfile$findUserById$companies> Function(
              Iterable<
                  CopyWith$Query$FindUserDetailedProfile$findUserById$companies<
                      Query$FindUserDetailedProfile$findUserById$companies>>)
          _fn);
  TRes pronouns(
      Iterable<Query$FindUserDetailedProfile$findUserById$pronouns> Function(
              Iterable<
                  CopyWith$Query$FindUserDetailedProfile$findUserById$pronouns<
                      Query$FindUserDetailedProfile$findUserById$pronouns>>)
          _fn);
  TRes businessExperiences(
      Iterable<Query$FindUserDetailedProfile$findUserById$businessExperiences>? Function(
              Iterable<
                  CopyWith$Query$FindUserDetailedProfile$findUserById$businessExperiences<
                      Query$FindUserDetailedProfile$findUserById$businessExperiences>>?)
          _fn);
  TRes academicExperiences(
      Iterable<Query$FindUserDetailedProfile$findUserById$academicExperiences>? Function(
              Iterable<
                  CopyWith$Query$FindUserDetailedProfile$findUserById$academicExperiences<
                      Query$FindUserDetailedProfile$findUserById$academicExperiences>>?)
          _fn);
  CopyWith$Query$FindUserDetailedProfile$findUserById$countryOfResidence<TRes>
      get countryOfResidence;
  CopyWith$Query$FindUserDetailedProfile$findUserById$countryOfOrigin<TRes>
      get countryOfOrigin;
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
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? fullName = _undefined,
    Object? email = _undefined,
    Object? userHandle = _undefined,
    Object? offersHelp = _undefined,
    Object? seeksHelp = _undefined,
    Object? websites = _undefined,
    Object? preferredLanguage = _undefined,
    Object? spokenLanguages = _undefined,
    Object? avatarUrl = _undefined,
    Object? groupMemberships = _undefined,
    Object? jobTitle = _undefined,
    Object? companies = _undefined,
    Object? pronounsDisplay = _undefined,
    Object? pronouns = _undefined,
    Object? businessExperiences = _undefined,
    Object? academicExperiences = _undefined,
    Object? cityOfResidence = _undefined,
    Object? regionOfResidence = _undefined,
    Object? countryOfResidenceTextId = _undefined,
    Object? countryOfResidence = _undefined,
    Object? cityOfOrigin = _undefined,
    Object? regionOfOrigin = _undefined,
    Object? countryOfOriginTextId = _undefined,
    Object? countryOfOrigin = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindUserDetailedProfile$findUserById(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        firstName: firstName == _undefined
            ? _instance.firstName
            : (firstName as String?),
        lastName:
            lastName == _undefined ? _instance.lastName : (lastName as String?),
        fullName:
            fullName == _undefined ? _instance.fullName : (fullName as String?),
        email: email == _undefined ? _instance.email : (email as String?),
        userHandle: userHandle == _undefined
            ? _instance.userHandle
            : (userHandle as String?),
        offersHelp: offersHelp == _undefined
            ? _instance.offersHelp
            : (offersHelp as bool?),
        seeksHelp: seeksHelp == _undefined
            ? _instance.seeksHelp
            : (seeksHelp as bool?),
        websites: websites == _undefined
            ? _instance.websites
            : (websites
                as List<Query$FindUserDetailedProfile$findUserById$websites>?),
        preferredLanguage: preferredLanguage == _undefined ||
                preferredLanguage == null
            ? _instance.preferredLanguage
            : (preferredLanguage
                as Query$FindUserDetailedProfile$findUserById$preferredLanguage),
        spokenLanguages: spokenLanguages == _undefined ||
                spokenLanguages == null
            ? _instance.spokenLanguages
            : (spokenLanguages as List<
                Query$FindUserDetailedProfile$findUserById$spokenLanguages>),
        avatarUrl: avatarUrl == _undefined
            ? _instance.avatarUrl
            : (avatarUrl as String?),
        groupMemberships: groupMemberships == _undefined ||
                groupMemberships == null
            ? _instance.groupMemberships
            : (groupMemberships as List<
                Query$FindUserDetailedProfile$findUserById$groupMemberships>),
        jobTitle:
            jobTitle == _undefined ? _instance.jobTitle : (jobTitle as String?),
        companies: companies == _undefined || companies == null
            ? _instance.companies
            : (companies
                as List<Query$FindUserDetailedProfile$findUserById$companies>),
        pronounsDisplay:
            pronounsDisplay == _undefined || pronounsDisplay == null
                ? _instance.pronounsDisplay
                : (pronounsDisplay as String),
        pronouns: pronouns == _undefined || pronouns == null
            ? _instance.pronouns
            : (pronouns
                as List<Query$FindUserDetailedProfile$findUserById$pronouns>),
        businessExperiences: businessExperiences == _undefined
            ? _instance.businessExperiences
            : (businessExperiences as List<
                Query$FindUserDetailedProfile$findUserById$businessExperiences>?),
        academicExperiences: academicExperiences == _undefined
            ? _instance.academicExperiences
            : (academicExperiences as List<
                Query$FindUserDetailedProfile$findUserById$academicExperiences>?),
        cityOfResidence: cityOfResidence == _undefined
            ? _instance.cityOfResidence
            : (cityOfResidence as String?),
        regionOfResidence: regionOfResidence == _undefined
            ? _instance.regionOfResidence
            : (regionOfResidence as String?),
        countryOfResidenceTextId: countryOfResidenceTextId == _undefined
            ? _instance.countryOfResidenceTextId
            : (countryOfResidenceTextId as String?),
        countryOfResidence: countryOfResidence == _undefined
            ? _instance.countryOfResidence
            : (countryOfResidence
                as Query$FindUserDetailedProfile$findUserById$countryOfResidence?),
        cityOfOrigin: cityOfOrigin == _undefined
            ? _instance.cityOfOrigin
            : (cityOfOrigin as String?),
        regionOfOrigin: regionOfOrigin == _undefined
            ? _instance.regionOfOrigin
            : (regionOfOrigin as String?),
        countryOfOriginTextId: countryOfOriginTextId == _undefined
            ? _instance.countryOfOriginTextId
            : (countryOfOriginTextId as String?),
        countryOfOrigin: countryOfOrigin == _undefined
            ? _instance.countryOfOrigin
            : (countryOfOrigin
                as Query$FindUserDetailedProfile$findUserById$countryOfOrigin?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

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

  CopyWith$Query$FindUserDetailedProfile$findUserById$preferredLanguage<TRes>
      get preferredLanguage {
    final local$preferredLanguage = _instance.preferredLanguage;
    return CopyWith$Query$FindUserDetailedProfile$findUserById$preferredLanguage(
        local$preferredLanguage, (e) => call(preferredLanguage: e));
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

  TRes pronouns(
          Iterable<Query$FindUserDetailedProfile$findUserById$pronouns> Function(
                  Iterable<
                      CopyWith$Query$FindUserDetailedProfile$findUserById$pronouns<
                          Query$FindUserDetailedProfile$findUserById$pronouns>>)
              _fn) =>
      call(
          pronouns: _fn(_instance.pronouns.map((e) =>
              CopyWith$Query$FindUserDetailedProfile$findUserById$pronouns(
                e,
                (i) => i,
              ))).toList());

  TRes businessExperiences(
          Iterable<Query$FindUserDetailedProfile$findUserById$businessExperiences>? Function(
                  Iterable<
                      CopyWith$Query$FindUserDetailedProfile$findUserById$businessExperiences<
                          Query$FindUserDetailedProfile$findUserById$businessExperiences>>?)
              _fn) =>
      call(
          businessExperiences: _fn(_instance.businessExperiences?.map((e) =>
              CopyWith$Query$FindUserDetailedProfile$findUserById$businessExperiences(
                e,
                (i) => i,
              )))?.toList());

  TRes academicExperiences(
          Iterable<Query$FindUserDetailedProfile$findUserById$academicExperiences>? Function(
                  Iterable<
                      CopyWith$Query$FindUserDetailedProfile$findUserById$academicExperiences<
                          Query$FindUserDetailedProfile$findUserById$academicExperiences>>?)
              _fn) =>
      call(
          academicExperiences: _fn(_instance.academicExperiences?.map((e) =>
              CopyWith$Query$FindUserDetailedProfile$findUserById$academicExperiences(
                e,
                (i) => i,
              )))?.toList());

  CopyWith$Query$FindUserDetailedProfile$findUserById$countryOfResidence<TRes>
      get countryOfResidence {
    final local$countryOfResidence = _instance.countryOfResidence;
    return local$countryOfResidence == null
        ? CopyWith$Query$FindUserDetailedProfile$findUserById$countryOfResidence
            .stub(_then(_instance))
        : CopyWith$Query$FindUserDetailedProfile$findUserById$countryOfResidence(
            local$countryOfResidence, (e) => call(countryOfResidence: e));
  }

  CopyWith$Query$FindUserDetailedProfile$findUserById$countryOfOrigin<TRes>
      get countryOfOrigin {
    final local$countryOfOrigin = _instance.countryOfOrigin;
    return local$countryOfOrigin == null
        ? CopyWith$Query$FindUserDetailedProfile$findUserById$countryOfOrigin
            .stub(_then(_instance))
        : CopyWith$Query$FindUserDetailedProfile$findUserById$countryOfOrigin(
            local$countryOfOrigin, (e) => call(countryOfOrigin: e));
  }
}

class _CopyWithStubImpl$Query$FindUserDetailedProfile$findUserById<TRes>
    implements CopyWith$Query$FindUserDetailedProfile$findUserById<TRes> {
  _CopyWithStubImpl$Query$FindUserDetailedProfile$findUserById(this._res);

  TRes _res;

  call({
    String? id,
    String? firstName,
    String? lastName,
    String? fullName,
    String? email,
    String? userHandle,
    bool? offersHelp,
    bool? seeksHelp,
    List<Query$FindUserDetailedProfile$findUserById$websites>? websites,
    Query$FindUserDetailedProfile$findUserById$preferredLanguage?
        preferredLanguage,
    List<Query$FindUserDetailedProfile$findUserById$spokenLanguages>?
        spokenLanguages,
    String? avatarUrl,
    List<Query$FindUserDetailedProfile$findUserById$groupMemberships>?
        groupMemberships,
    String? jobTitle,
    List<Query$FindUserDetailedProfile$findUserById$companies>? companies,
    String? pronounsDisplay,
    List<Query$FindUserDetailedProfile$findUserById$pronouns>? pronouns,
    List<Query$FindUserDetailedProfile$findUserById$businessExperiences>?
        businessExperiences,
    List<Query$FindUserDetailedProfile$findUserById$academicExperiences>?
        academicExperiences,
    String? cityOfResidence,
    String? regionOfResidence,
    String? countryOfResidenceTextId,
    Query$FindUserDetailedProfile$findUserById$countryOfResidence?
        countryOfResidence,
    String? cityOfOrigin,
    String? regionOfOrigin,
    String? countryOfOriginTextId,
    Query$FindUserDetailedProfile$findUserById$countryOfOrigin? countryOfOrigin,
    String? $__typename,
  }) =>
      _res;

  websites(_fn) => _res;

  CopyWith$Query$FindUserDetailedProfile$findUserById$preferredLanguage<TRes>
      get preferredLanguage =>
          CopyWith$Query$FindUserDetailedProfile$findUserById$preferredLanguage
              .stub(_res);

  spokenLanguages(_fn) => _res;

  groupMemberships(_fn) => _res;

  companies(_fn) => _res;

  pronouns(_fn) => _res;

  businessExperiences(_fn) => _res;

  academicExperiences(_fn) => _res;

  CopyWith$Query$FindUserDetailedProfile$findUserById$countryOfResidence<TRes>
      get countryOfResidence =>
          CopyWith$Query$FindUserDetailedProfile$findUserById$countryOfResidence
              .stub(_res);

  CopyWith$Query$FindUserDetailedProfile$findUserById$countryOfOrigin<TRes>
      get countryOfOrigin =>
          CopyWith$Query$FindUserDetailedProfile$findUserById$countryOfOrigin
              .stub(_res);
}

class Query$FindUserDetailedProfile$findUserById$websites {
  Query$FindUserDetailedProfile$findUserById$websites({
    required this.value,
    this.label,
    this.$__typename = 'LabeledStringValue',
  });

  factory Query$FindUserDetailedProfile$findUserById$websites.fromJson(
      Map<String, dynamic> json) {
    final l$value = json['value'];
    final l$label = json['label'];
    final l$$__typename = json['__typename'];
    return Query$FindUserDetailedProfile$findUserById$websites(
      value: (l$value as String),
      label: (l$label as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String value;

  final String? label;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$value = value;
    _resultData['value'] = l$value;
    final l$label = label;
    _resultData['label'] = l$label;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$value = value;
    final l$label = label;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$value,
      l$label,
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
    final l$label = label;
    final lOther$label = other.label;
    if (l$label != lOther$label) {
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
    String? label,
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
    Object? label = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindUserDetailedProfile$findUserById$websites(
        value: value == _undefined || value == null
            ? _instance.value
            : (value as String),
        label: label == _undefined ? _instance.label : (label as String?),
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
    String? label,
    String? $__typename,
  }) =>
      _res;
}

class Query$FindUserDetailedProfile$findUserById$preferredLanguage {
  Query$FindUserDetailedProfile$findUserById$preferredLanguage({
    required this.textId,
    this.translatedValue,
    this.$__typename = 'Language',
  });

  factory Query$FindUserDetailedProfile$findUserById$preferredLanguage.fromJson(
      Map<String, dynamic> json) {
    final l$textId = json['textId'];
    final l$translatedValue = json['translatedValue'];
    final l$$__typename = json['__typename'];
    return Query$FindUserDetailedProfile$findUserById$preferredLanguage(
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
            is Query$FindUserDetailedProfile$findUserById$preferredLanguage) ||
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

extension UtilityExtension$Query$FindUserDetailedProfile$findUserById$preferredLanguage
    on Query$FindUserDetailedProfile$findUserById$preferredLanguage {
  CopyWith$Query$FindUserDetailedProfile$findUserById$preferredLanguage<
          Query$FindUserDetailedProfile$findUserById$preferredLanguage>
      get copyWith =>
          CopyWith$Query$FindUserDetailedProfile$findUserById$preferredLanguage(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindUserDetailedProfile$findUserById$preferredLanguage<
    TRes> {
  factory CopyWith$Query$FindUserDetailedProfile$findUserById$preferredLanguage(
    Query$FindUserDetailedProfile$findUserById$preferredLanguage instance,
    TRes Function(Query$FindUserDetailedProfile$findUserById$preferredLanguage)
        then,
  ) = _CopyWithImpl$Query$FindUserDetailedProfile$findUserById$preferredLanguage;

  factory CopyWith$Query$FindUserDetailedProfile$findUserById$preferredLanguage.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindUserDetailedProfile$findUserById$preferredLanguage;

  TRes call({
    String? textId,
    String? translatedValue,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindUserDetailedProfile$findUserById$preferredLanguage<
        TRes>
    implements
        CopyWith$Query$FindUserDetailedProfile$findUserById$preferredLanguage<
            TRes> {
  _CopyWithImpl$Query$FindUserDetailedProfile$findUserById$preferredLanguage(
    this._instance,
    this._then,
  );

  final Query$FindUserDetailedProfile$findUserById$preferredLanguage _instance;

  final TRes Function(
      Query$FindUserDetailedProfile$findUserById$preferredLanguage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? textId = _undefined,
    Object? translatedValue = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindUserDetailedProfile$findUserById$preferredLanguage(
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

class _CopyWithStubImpl$Query$FindUserDetailedProfile$findUserById$preferredLanguage<
        TRes>
    implements
        CopyWith$Query$FindUserDetailedProfile$findUserById$preferredLanguage<
            TRes> {
  _CopyWithStubImpl$Query$FindUserDetailedProfile$findUserById$preferredLanguage(
      this._res);

  TRes _res;

  call({
    String? textId,
    String? translatedValue,
    String? $__typename,
  }) =>
      _res;
}

class Query$FindUserDetailedProfile$findUserById$spokenLanguages {
  Query$FindUserDetailedProfile$findUserById$spokenLanguages({
    required this.textId,
    this.translatedValue,
    this.$__typename = 'Language',
  });

  factory Query$FindUserDetailedProfile$findUserById$spokenLanguages.fromJson(
      Map<String, dynamic> json) {
    final l$textId = json['textId'];
    final l$translatedValue = json['translatedValue'];
    final l$$__typename = json['__typename'];
    return Query$FindUserDetailedProfile$findUserById$spokenLanguages(
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
            is Query$FindUserDetailedProfile$findUserById$spokenLanguages) ||
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
    String? textId,
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
    Object? textId = _undefined,
    Object? translatedValue = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindUserDetailedProfile$findUserById$spokenLanguages(
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

class _CopyWithStubImpl$Query$FindUserDetailedProfile$findUserById$spokenLanguages<
        TRes>
    implements
        CopyWith$Query$FindUserDetailedProfile$findUserById$spokenLanguages<
            TRes> {
  _CopyWithStubImpl$Query$FindUserDetailedProfile$findUserById$spokenLanguages(
      this._res);

  TRes _res;

  call({
    String? textId,
    String? translatedValue,
    String? $__typename,
  }) =>
      _res;
}

class Query$FindUserDetailedProfile$findUserById$groupMemberships {
  Query$FindUserDetailedProfile$findUserById$groupMemberships({
    required this.id,
    required this.groupIdent,
    required this.$__typename,
  });

  factory Query$FindUserDetailedProfile$findUserById$groupMemberships.fromJson(
      Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "MentorsGroupMembership":
        return Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership
            .fromJson(json);

      case "MenteesGroupMembership":
        return Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership
            .fromJson(json);

      case "GroupMembership":
        return Query$FindUserDetailedProfile$findUserById$groupMemberships$$GroupMembership
            .fromJson(json);

      default:
        final l$id = json['id'];
        final l$groupIdent = json['groupIdent'];
        final l$$__typename = json['__typename'];
        return Query$FindUserDetailedProfile$findUserById$groupMemberships(
          id: (l$id as String),
          groupIdent: (l$groupIdent as String),
          $__typename: (l$$__typename as String),
        );
    }
  }

  final String id;

  final String groupIdent;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$groupIdent = groupIdent;
    _resultData['groupIdent'] = l$groupIdent;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$groupIdent = groupIdent;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
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
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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
            Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership)
        mentorsGroupMembership,
    required _T Function(
            Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership)
        menteesGroupMembership,
    required _T Function(
            Query$FindUserDetailedProfile$findUserById$groupMemberships$$GroupMembership)
        groupMembership,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "MentorsGroupMembership":
        return mentorsGroupMembership(this
            as Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership);

      case "MenteesGroupMembership":
        return menteesGroupMembership(this
            as Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership);

      case "GroupMembership":
        return groupMembership(this
            as Query$FindUserDetailedProfile$findUserById$groupMemberships$$GroupMembership);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(
            Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership)?
        mentorsGroupMembership,
    _T Function(
            Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership)?
        menteesGroupMembership,
    _T Function(
            Query$FindUserDetailedProfile$findUserById$groupMemberships$$GroupMembership)?
        groupMembership,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "MentorsGroupMembership":
        if (mentorsGroupMembership != null) {
          return mentorsGroupMembership(this
              as Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership);
        } else {
          return orElse();
        }

      case "MenteesGroupMembership":
        if (menteesGroupMembership != null) {
          return menteesGroupMembership(this
              as Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership);
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
    String? id,
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
    Object? id = _undefined,
    Object? groupIdent = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindUserDetailedProfile$findUserById$groupMemberships(
        id: id == _undefined || id == null ? _instance.id : (id as String),
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
    String? id,
    String? groupIdent,
    String? $__typename,
  }) =>
      _res;
}

class Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership
    implements Query$FindUserDetailedProfile$findUserById$groupMemberships {
  Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership({
    required this.expertises,
    required this.industries,
    this.endorsements,
    this.expectationsForMentees,
    this.$__typename = 'MentorsGroupMembership',
    required this.id,
    required this.groupIdent,
  });

  factory Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership.fromJson(
      Map<String, dynamic> json) {
    final l$expertises = json['expertises'];
    final l$industries = json['industries'];
    final l$endorsements = json['endorsements'];
    final l$expectationsForMentees = json['expectationsForMentees'];
    final l$$__typename = json['__typename'];
    final l$id = json['id'];
    final l$groupIdent = json['groupIdent'];
    return Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership(
      expertises: (l$expertises as List<dynamic>)
          .map((e) =>
              Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$expertises
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      industries: (l$industries as List<dynamic>)
          .map((e) =>
              Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$industries
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      endorsements: (l$endorsements as int?),
      expectationsForMentees: (l$expectationsForMentees as String?),
      $__typename: (l$$__typename as String),
      id: (l$id as String),
      groupIdent: (l$groupIdent as String),
    );
  }

  final List<
          Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$expertises>
      expertises;

  final List<
          Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$industries>
      industries;

  final int? endorsements;

  final String? expectationsForMentees;

  final String $__typename;

  final String id;

  final String groupIdent;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$expertises = expertises;
    _resultData['expertises'] = l$expertises.map((e) => e.toJson()).toList();
    final l$industries = industries;
    _resultData['industries'] = l$industries.map((e) => e.toJson()).toList();
    final l$endorsements = endorsements;
    _resultData['endorsements'] = l$endorsements;
    final l$expectationsForMentees = expectationsForMentees;
    _resultData['expectationsForMentees'] = l$expectationsForMentees;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$groupIdent = groupIdent;
    _resultData['groupIdent'] = l$groupIdent;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$expertises = expertises;
    final l$industries = industries;
    final l$endorsements = endorsements;
    final l$expectationsForMentees = expectationsForMentees;
    final l$$__typename = $__typename;
    final l$id = id;
    final l$groupIdent = groupIdent;
    return Object.hashAll([
      Object.hashAll(l$expertises.map((v) => v)),
      Object.hashAll(l$industries.map((v) => v)),
      l$endorsements,
      l$expectationsForMentees,
      l$$__typename,
      l$id,
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
    final l$expectationsForMentees = expectationsForMentees;
    final lOther$expectationsForMentees = other.expectationsForMentees;
    if (l$expectationsForMentees != lOther$expectationsForMentees) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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
    List<Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$expertises>?
        expertises,
    List<Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$industries>?
        industries,
    int? endorsements,
    String? expectationsForMentees,
    String? $__typename,
    String? id,
    String? groupIdent,
  });
  TRes expertises(
      Iterable<Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$expertises> Function(
              Iterable<
                  CopyWith$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$expertises<
                      Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$expertises>>)
          _fn);
  TRes industries(
      Iterable<Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$industries> Function(
              Iterable<
                  CopyWith$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$industries<
                      Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$industries>>)
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
    Object? expertises = _undefined,
    Object? industries = _undefined,
    Object? endorsements = _undefined,
    Object? expectationsForMentees = _undefined,
    Object? $__typename = _undefined,
    Object? id = _undefined,
    Object? groupIdent = _undefined,
  }) =>
      _then(
          Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership(
        expertises: expertises == _undefined || expertises == null
            ? _instance.expertises
            : (expertises as List<
                Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$expertises>),
        industries: industries == _undefined || industries == null
            ? _instance.industries
            : (industries as List<
                Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$industries>),
        endorsements: endorsements == _undefined
            ? _instance.endorsements
            : (endorsements as int?),
        expectationsForMentees: expectationsForMentees == _undefined
            ? _instance.expectationsForMentees
            : (expectationsForMentees as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        id: id == _undefined || id == null ? _instance.id : (id as String),
        groupIdent: groupIdent == _undefined || groupIdent == null
            ? _instance.groupIdent
            : (groupIdent as String),
      ));

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
    List<Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$expertises>?
        expertises,
    List<Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$industries>?
        industries,
    int? endorsements,
    String? expectationsForMentees,
    String? $__typename,
    String? id,
    String? groupIdent,
  }) =>
      _res;

  expertises(_fn) => _res;

  industries(_fn) => _res;
}

class Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$expertises {
  Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$expertises({
    required this.textId,
    this.translatedValue,
    this.$__typename = 'Expertise',
  });

  factory Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$expertises.fromJson(
      Map<String, dynamic> json) {
    final l$textId = json['textId'];
    final l$translatedValue = json['translatedValue'];
    final l$$__typename = json['__typename'];
    return Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$expertises(
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
            is Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$expertises) ||
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
    String? textId,
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
    Object? textId = _undefined,
    Object? translatedValue = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$expertises(
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

class _CopyWithStubImpl$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$expertises<
        TRes>
    implements
        CopyWith$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$expertises<
            TRes> {
  _CopyWithStubImpl$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$expertises(
      this._res);

  TRes _res;

  call({
    String? textId,
    String? translatedValue,
    String? $__typename,
  }) =>
      _res;
}

class Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$industries {
  Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$industries({
    required this.textId,
    this.translatedValue,
    this.$__typename = 'Industry',
  });

  factory Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$industries.fromJson(
      Map<String, dynamic> json) {
    final l$textId = json['textId'];
    final l$translatedValue = json['translatedValue'];
    final l$$__typename = json['__typename'];
    return Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$industries(
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
            is Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$industries) ||
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
    String? textId,
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
    Object? textId = _undefined,
    Object? translatedValue = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$industries(
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

class _CopyWithStubImpl$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$industries<
        TRes>
    implements
        CopyWith$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$industries<
            TRes> {
  _CopyWithStubImpl$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MentorsGroupMembership$industries(
      this._res);

  TRes _res;

  call({
    String? textId,
    String? translatedValue,
    String? $__typename,
  }) =>
      _res;
}

class Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership
    implements Query$FindUserDetailedProfile$findUserById$groupMemberships {
  Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership({
    required this.soughtExpertises,
    this.industry,
    this.reasonsForStartingBusiness,
    this.$__typename = 'MenteesGroupMembership',
    required this.id,
    required this.groupIdent,
  });

  factory Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership.fromJson(
      Map<String, dynamic> json) {
    final l$soughtExpertises = json['soughtExpertises'];
    final l$industry = json['industry'];
    final l$reasonsForStartingBusiness = json['reasonsForStartingBusiness'];
    final l$$__typename = json['__typename'];
    final l$id = json['id'];
    final l$groupIdent = json['groupIdent'];
    return Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership(
      soughtExpertises: (l$soughtExpertises as List<dynamic>)
          .map((e) =>
              Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$soughtExpertises
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      industry: l$industry == null
          ? null
          : Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$industry
              .fromJson((l$industry as Map<String, dynamic>)),
      reasonsForStartingBusiness: (l$reasonsForStartingBusiness as String?),
      $__typename: (l$$__typename as String),
      id: (l$id as String),
      groupIdent: (l$groupIdent as String),
    );
  }

  final List<
          Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$soughtExpertises>
      soughtExpertises;

  final Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$industry?
      industry;

  final String? reasonsForStartingBusiness;

  final String $__typename;

  final String id;

  final String groupIdent;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$soughtExpertises = soughtExpertises;
    _resultData['soughtExpertises'] =
        l$soughtExpertises.map((e) => e.toJson()).toList();
    final l$industry = industry;
    _resultData['industry'] = l$industry?.toJson();
    final l$reasonsForStartingBusiness = reasonsForStartingBusiness;
    _resultData['reasonsForStartingBusiness'] = l$reasonsForStartingBusiness;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$groupIdent = groupIdent;
    _resultData['groupIdent'] = l$groupIdent;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$soughtExpertises = soughtExpertises;
    final l$industry = industry;
    final l$reasonsForStartingBusiness = reasonsForStartingBusiness;
    final l$$__typename = $__typename;
    final l$id = id;
    final l$groupIdent = groupIdent;
    return Object.hashAll([
      Object.hashAll(l$soughtExpertises.map((v) => v)),
      l$industry,
      l$reasonsForStartingBusiness,
      l$$__typename,
      l$id,
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
    final l$reasonsForStartingBusiness = reasonsForStartingBusiness;
    final lOther$reasonsForStartingBusiness = other.reasonsForStartingBusiness;
    if (l$reasonsForStartingBusiness != lOther$reasonsForStartingBusiness) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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
    List<Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$soughtExpertises>?
        soughtExpertises,
    Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$industry?
        industry,
    String? reasonsForStartingBusiness,
    String? $__typename,
    String? id,
    String? groupIdent,
  });
  TRes soughtExpertises(
      Iterable<Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$soughtExpertises> Function(
              Iterable<
                  CopyWith$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$soughtExpertises<
                      Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$soughtExpertises>>)
          _fn);
  CopyWith$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$industry<
      TRes> get industry;
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
    Object? soughtExpertises = _undefined,
    Object? industry = _undefined,
    Object? reasonsForStartingBusiness = _undefined,
    Object? $__typename = _undefined,
    Object? id = _undefined,
    Object? groupIdent = _undefined,
  }) =>
      _then(
          Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership(
        soughtExpertises: soughtExpertises == _undefined ||
                soughtExpertises == null
            ? _instance.soughtExpertises
            : (soughtExpertises as List<
                Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$soughtExpertises>),
        industry: industry == _undefined
            ? _instance.industry
            : (industry
                as Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$industry?),
        reasonsForStartingBusiness: reasonsForStartingBusiness == _undefined
            ? _instance.reasonsForStartingBusiness
            : (reasonsForStartingBusiness as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        id: id == _undefined || id == null ? _instance.id : (id as String),
        groupIdent: groupIdent == _undefined || groupIdent == null
            ? _instance.groupIdent
            : (groupIdent as String),
      ));

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

  CopyWith$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$industry<
      TRes> get industry {
    final local$industry = _instance.industry;
    return local$industry == null
        ? CopyWith$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$industry
            .stub(_then(_instance))
        : CopyWith$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$industry(
            local$industry, (e) => call(industry: e));
  }
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
    List<Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$soughtExpertises>?
        soughtExpertises,
    Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$industry?
        industry,
    String? reasonsForStartingBusiness,
    String? $__typename,
    String? id,
    String? groupIdent,
  }) =>
      _res;

  soughtExpertises(_fn) => _res;

  CopyWith$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$industry<
          TRes>
      get industry =>
          CopyWith$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$industry
              .stub(_res);
}

class Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$soughtExpertises {
  Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$soughtExpertises({
    required this.textId,
    this.translatedValue,
    this.$__typename = 'Expertise',
  });

  factory Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$soughtExpertises.fromJson(
      Map<String, dynamic> json) {
    final l$textId = json['textId'];
    final l$translatedValue = json['translatedValue'];
    final l$$__typename = json['__typename'];
    return Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$soughtExpertises(
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
            is Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$soughtExpertises) ||
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
    String? textId,
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
    Object? textId = _undefined,
    Object? translatedValue = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$soughtExpertises(
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

class _CopyWithStubImpl$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$soughtExpertises<
        TRes>
    implements
        CopyWith$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$soughtExpertises<
            TRes> {
  _CopyWithStubImpl$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$soughtExpertises(
      this._res);

  TRes _res;

  call({
    String? textId,
    String? translatedValue,
    String? $__typename,
  }) =>
      _res;
}

class Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$industry {
  Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$industry({
    required this.textId,
    this.translatedValue,
    this.$__typename = 'Industry',
  });

  factory Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$industry.fromJson(
      Map<String, dynamic> json) {
    final l$textId = json['textId'];
    final l$translatedValue = json['translatedValue'];
    final l$$__typename = json['__typename'];
    return Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$industry(
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
            is Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$industry) ||
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
    String? textId,
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
    Object? textId = _undefined,
    Object? translatedValue = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$industry(
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

class _CopyWithStubImpl$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$industry<
        TRes>
    implements
        CopyWith$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$industry<
            TRes> {
  _CopyWithStubImpl$Query$FindUserDetailedProfile$findUserById$groupMemberships$$MenteesGroupMembership$industry(
      this._res);

  TRes _res;

  call({
    String? textId,
    String? translatedValue,
    String? $__typename,
  }) =>
      _res;
}

class Query$FindUserDetailedProfile$findUserById$groupMemberships$$GroupMembership
    implements Query$FindUserDetailedProfile$findUserById$groupMemberships {
  Query$FindUserDetailedProfile$findUserById$groupMemberships$$GroupMembership({
    required this.id,
    required this.groupIdent,
    this.$__typename = 'GroupMembership',
  });

  factory Query$FindUserDetailedProfile$findUserById$groupMemberships$$GroupMembership.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$groupIdent = json['groupIdent'];
    final l$$__typename = json['__typename'];
    return Query$FindUserDetailedProfile$findUserById$groupMemberships$$GroupMembership(
      id: (l$id as String),
      groupIdent: (l$groupIdent as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String groupIdent;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$groupIdent = groupIdent;
    _resultData['groupIdent'] = l$groupIdent;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$groupIdent = groupIdent;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
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
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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
    String? id,
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
    Object? id = _undefined,
    Object? groupIdent = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$FindUserDetailedProfile$findUserById$groupMemberships$$GroupMembership(
        id: id == _undefined || id == null ? _instance.id : (id as String),
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
    String? id,
    String? groupIdent,
    String? $__typename,
  }) =>
      _res;
}

class Query$FindUserDetailedProfile$findUserById$companies {
  Query$FindUserDetailedProfile$findUserById$companies({
    required this.id,
    required this.name,
    this.description,
    this.websites,
    this.companyStage,
    this.$__typename = 'Company',
  });

  factory Query$FindUserDetailedProfile$findUserById$companies.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$description = json['description'];
    final l$websites = json['websites'];
    final l$companyStage = json['companyStage'];
    final l$$__typename = json['__typename'];
    return Query$FindUserDetailedProfile$findUserById$companies(
      id: (l$id as String),
      name: (l$name as String),
      description: (l$description as String?),
      websites: (l$websites as List<dynamic>?)
          ?.map((e) =>
              Query$FindUserDetailedProfile$findUserById$companies$websites
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      companyStage: l$companyStage == null
          ? null
          : Query$FindUserDetailedProfile$findUserById$companies$companyStage
              .fromJson((l$companyStage as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String? description;

  final List<Query$FindUserDetailedProfile$findUserById$companies$websites>?
      websites;

  final Query$FindUserDetailedProfile$findUserById$companies$companyStage?
      companyStage;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$websites = websites;
    _resultData['websites'] = l$websites?.map((e) => e.toJson()).toList();
    final l$companyStage = companyStage;
    _resultData['companyStage'] = l$companyStage?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$description = description;
    final l$websites = websites;
    final l$companyStage = companyStage;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$description,
      l$websites == null ? null : Object.hashAll(l$websites.map((v) => v)),
      l$companyStage,
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
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
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
    String? id,
    String? name,
    String? description,
    List<Query$FindUserDetailedProfile$findUserById$companies$websites>?
        websites,
    Query$FindUserDetailedProfile$findUserById$companies$companyStage?
        companyStage,
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
    Object? id = _undefined,
    Object? name = _undefined,
    Object? description = _undefined,
    Object? websites = _undefined,
    Object? companyStage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindUserDetailedProfile$findUserById$companies(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        websites: websites == _undefined
            ? _instance.websites
            : (websites as List<
                Query$FindUserDetailedProfile$findUserById$companies$websites>?),
        companyStage: companyStage == _undefined
            ? _instance.companyStage
            : (companyStage
                as Query$FindUserDetailedProfile$findUserById$companies$companyStage?),
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
}

class _CopyWithStubImpl$Query$FindUserDetailedProfile$findUserById$companies<
        TRes>
    implements
        CopyWith$Query$FindUserDetailedProfile$findUserById$companies<TRes> {
  _CopyWithStubImpl$Query$FindUserDetailedProfile$findUserById$companies(
      this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? description,
    List<Query$FindUserDetailedProfile$findUserById$companies$websites>?
        websites,
    Query$FindUserDetailedProfile$findUserById$companies$companyStage?
        companyStage,
    String? $__typename,
  }) =>
      _res;

  websites(_fn) => _res;

  CopyWith$Query$FindUserDetailedProfile$findUserById$companies$companyStage<
          TRes>
      get companyStage =>
          CopyWith$Query$FindUserDetailedProfile$findUserById$companies$companyStage
              .stub(_res);
}

class Query$FindUserDetailedProfile$findUserById$companies$websites {
  Query$FindUserDetailedProfile$findUserById$companies$websites({
    required this.value,
    this.label,
    this.$__typename = 'LabeledStringValue',
  });

  factory Query$FindUserDetailedProfile$findUserById$companies$websites.fromJson(
      Map<String, dynamic> json) {
    final l$value = json['value'];
    final l$label = json['label'];
    final l$$__typename = json['__typename'];
    return Query$FindUserDetailedProfile$findUserById$companies$websites(
      value: (l$value as String),
      label: (l$label as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String value;

  final String? label;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$value = value;
    _resultData['value'] = l$value;
    final l$label = label;
    _resultData['label'] = l$label;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$value = value;
    final l$label = label;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$value,
      l$label,
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
    final l$label = label;
    final lOther$label = other.label;
    if (l$label != lOther$label) {
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
    String? label,
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
    Object? label = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindUserDetailedProfile$findUserById$companies$websites(
        value: value == _undefined || value == null
            ? _instance.value
            : (value as String),
        label: label == _undefined ? _instance.label : (label as String?),
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
    String? label,
    String? $__typename,
  }) =>
      _res;
}

class Query$FindUserDetailedProfile$findUserById$companies$companyStage {
  Query$FindUserDetailedProfile$findUserById$companies$companyStage({
    required this.textId,
    this.translatedValue,
    this.$__typename = 'CompanyStage',
  });

  factory Query$FindUserDetailedProfile$findUserById$companies$companyStage.fromJson(
      Map<String, dynamic> json) {
    final l$textId = json['textId'];
    final l$translatedValue = json['translatedValue'];
    final l$$__typename = json['__typename'];
    return Query$FindUserDetailedProfile$findUserById$companies$companyStage(
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
            is Query$FindUserDetailedProfile$findUserById$companies$companyStage) ||
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
    String? textId,
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
    Object? textId = _undefined,
    Object? translatedValue = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindUserDetailedProfile$findUserById$companies$companyStage(
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

class _CopyWithStubImpl$Query$FindUserDetailedProfile$findUserById$companies$companyStage<
        TRes>
    implements
        CopyWith$Query$FindUserDetailedProfile$findUserById$companies$companyStage<
            TRes> {
  _CopyWithStubImpl$Query$FindUserDetailedProfile$findUserById$companies$companyStage(
      this._res);

  TRes _res;

  call({
    String? textId,
    String? translatedValue,
    String? $__typename,
  }) =>
      _res;
}

class Query$FindUserDetailedProfile$findUserById$pronouns {
  Query$FindUserDetailedProfile$findUserById$pronouns({
    required this.textId,
    this.translatedValue,
    this.$__typename = 'Pronoun',
  });

  factory Query$FindUserDetailedProfile$findUserById$pronouns.fromJson(
      Map<String, dynamic> json) {
    final l$textId = json['textId'];
    final l$translatedValue = json['translatedValue'];
    final l$$__typename = json['__typename'];
    return Query$FindUserDetailedProfile$findUserById$pronouns(
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
    if (!(other is Query$FindUserDetailedProfile$findUserById$pronouns) ||
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

extension UtilityExtension$Query$FindUserDetailedProfile$findUserById$pronouns
    on Query$FindUserDetailedProfile$findUserById$pronouns {
  CopyWith$Query$FindUserDetailedProfile$findUserById$pronouns<
          Query$FindUserDetailedProfile$findUserById$pronouns>
      get copyWith =>
          CopyWith$Query$FindUserDetailedProfile$findUserById$pronouns(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindUserDetailedProfile$findUserById$pronouns<
    TRes> {
  factory CopyWith$Query$FindUserDetailedProfile$findUserById$pronouns(
    Query$FindUserDetailedProfile$findUserById$pronouns instance,
    TRes Function(Query$FindUserDetailedProfile$findUserById$pronouns) then,
  ) = _CopyWithImpl$Query$FindUserDetailedProfile$findUserById$pronouns;

  factory CopyWith$Query$FindUserDetailedProfile$findUserById$pronouns.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindUserDetailedProfile$findUserById$pronouns;

  TRes call({
    String? textId,
    String? translatedValue,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindUserDetailedProfile$findUserById$pronouns<TRes>
    implements
        CopyWith$Query$FindUserDetailedProfile$findUserById$pronouns<TRes> {
  _CopyWithImpl$Query$FindUserDetailedProfile$findUserById$pronouns(
    this._instance,
    this._then,
  );

  final Query$FindUserDetailedProfile$findUserById$pronouns _instance;

  final TRes Function(Query$FindUserDetailedProfile$findUserById$pronouns)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? textId = _undefined,
    Object? translatedValue = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindUserDetailedProfile$findUserById$pronouns(
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

class _CopyWithStubImpl$Query$FindUserDetailedProfile$findUserById$pronouns<
        TRes>
    implements
        CopyWith$Query$FindUserDetailedProfile$findUserById$pronouns<TRes> {
  _CopyWithStubImpl$Query$FindUserDetailedProfile$findUserById$pronouns(
      this._res);

  TRes _res;

  call({
    String? textId,
    String? translatedValue,
    String? $__typename,
  }) =>
      _res;
}

class Query$FindUserDetailedProfile$findUserById$businessExperiences {
  Query$FindUserDetailedProfile$findUserById$businessExperiences({
    required this.id,
    required this.businessName,
    required this.jobTitle,
    required this.startDate,
    this.endDate,
    this.city,
    this.state,
    this.country,
    this.$__typename = 'BusinessExperience',
  });

  factory Query$FindUserDetailedProfile$findUserById$businessExperiences.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$businessName = json['businessName'];
    final l$jobTitle = json['jobTitle'];
    final l$startDate = json['startDate'];
    final l$endDate = json['endDate'];
    final l$city = json['city'];
    final l$state = json['state'];
    final l$country = json['country'];
    final l$$__typename = json['__typename'];
    return Query$FindUserDetailedProfile$findUserById$businessExperiences(
      id: (l$id as String),
      businessName: (l$businessName as String),
      jobTitle: (l$jobTitle as String),
      startDate: DateTime.parse((l$startDate as String)),
      endDate: l$endDate == null ? null : DateTime.parse((l$endDate as String)),
      city: (l$city as String?),
      state: (l$state as String?),
      country: (l$country as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String businessName;

  final String jobTitle;

  final DateTime startDate;

  final DateTime? endDate;

  final String? city;

  final String? state;

  final String? country;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$businessName = businessName;
    _resultData['businessName'] = l$businessName;
    final l$jobTitle = jobTitle;
    _resultData['jobTitle'] = l$jobTitle;
    final l$startDate = startDate;
    _resultData['startDate'] = l$startDate.toIso8601String();
    final l$endDate = endDate;
    _resultData['endDate'] = l$endDate?.toIso8601String();
    final l$city = city;
    _resultData['city'] = l$city;
    final l$state = state;
    _resultData['state'] = l$state;
    final l$country = country;
    _resultData['country'] = l$country;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$businessName = businessName;
    final l$jobTitle = jobTitle;
    final l$startDate = startDate;
    final l$endDate = endDate;
    final l$city = city;
    final l$state = state;
    final l$country = country;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$businessName,
      l$jobTitle,
      l$startDate,
      l$endDate,
      l$city,
      l$state,
      l$country,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$FindUserDetailedProfile$findUserById$businessExperiences) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$businessName = businessName;
    final lOther$businessName = other.businessName;
    if (l$businessName != lOther$businessName) {
      return false;
    }
    final l$jobTitle = jobTitle;
    final lOther$jobTitle = other.jobTitle;
    if (l$jobTitle != lOther$jobTitle) {
      return false;
    }
    final l$startDate = startDate;
    final lOther$startDate = other.startDate;
    if (l$startDate != lOther$startDate) {
      return false;
    }
    final l$endDate = endDate;
    final lOther$endDate = other.endDate;
    if (l$endDate != lOther$endDate) {
      return false;
    }
    final l$city = city;
    final lOther$city = other.city;
    if (l$city != lOther$city) {
      return false;
    }
    final l$state = state;
    final lOther$state = other.state;
    if (l$state != lOther$state) {
      return false;
    }
    final l$country = country;
    final lOther$country = other.country;
    if (l$country != lOther$country) {
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

extension UtilityExtension$Query$FindUserDetailedProfile$findUserById$businessExperiences
    on Query$FindUserDetailedProfile$findUserById$businessExperiences {
  CopyWith$Query$FindUserDetailedProfile$findUserById$businessExperiences<
          Query$FindUserDetailedProfile$findUserById$businessExperiences>
      get copyWith =>
          CopyWith$Query$FindUserDetailedProfile$findUserById$businessExperiences(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindUserDetailedProfile$findUserById$businessExperiences<
    TRes> {
  factory CopyWith$Query$FindUserDetailedProfile$findUserById$businessExperiences(
    Query$FindUserDetailedProfile$findUserById$businessExperiences instance,
    TRes Function(
            Query$FindUserDetailedProfile$findUserById$businessExperiences)
        then,
  ) = _CopyWithImpl$Query$FindUserDetailedProfile$findUserById$businessExperiences;

  factory CopyWith$Query$FindUserDetailedProfile$findUserById$businessExperiences.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindUserDetailedProfile$findUserById$businessExperiences;

  TRes call({
    String? id,
    String? businessName,
    String? jobTitle,
    DateTime? startDate,
    DateTime? endDate,
    String? city,
    String? state,
    String? country,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindUserDetailedProfile$findUserById$businessExperiences<
        TRes>
    implements
        CopyWith$Query$FindUserDetailedProfile$findUserById$businessExperiences<
            TRes> {
  _CopyWithImpl$Query$FindUserDetailedProfile$findUserById$businessExperiences(
    this._instance,
    this._then,
  );

  final Query$FindUserDetailedProfile$findUserById$businessExperiences
      _instance;

  final TRes Function(
      Query$FindUserDetailedProfile$findUserById$businessExperiences) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? businessName = _undefined,
    Object? jobTitle = _undefined,
    Object? startDate = _undefined,
    Object? endDate = _undefined,
    Object? city = _undefined,
    Object? state = _undefined,
    Object? country = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindUserDetailedProfile$findUserById$businessExperiences(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        businessName: businessName == _undefined || businessName == null
            ? _instance.businessName
            : (businessName as String),
        jobTitle: jobTitle == _undefined || jobTitle == null
            ? _instance.jobTitle
            : (jobTitle as String),
        startDate: startDate == _undefined || startDate == null
            ? _instance.startDate
            : (startDate as DateTime),
        endDate:
            endDate == _undefined ? _instance.endDate : (endDate as DateTime?),
        city: city == _undefined ? _instance.city : (city as String?),
        state: state == _undefined ? _instance.state : (state as String?),
        country:
            country == _undefined ? _instance.country : (country as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FindUserDetailedProfile$findUserById$businessExperiences<
        TRes>
    implements
        CopyWith$Query$FindUserDetailedProfile$findUserById$businessExperiences<
            TRes> {
  _CopyWithStubImpl$Query$FindUserDetailedProfile$findUserById$businessExperiences(
      this._res);

  TRes _res;

  call({
    String? id,
    String? businessName,
    String? jobTitle,
    DateTime? startDate,
    DateTime? endDate,
    String? city,
    String? state,
    String? country,
    String? $__typename,
  }) =>
      _res;
}

class Query$FindUserDetailedProfile$findUserById$academicExperiences {
  Query$FindUserDetailedProfile$findUserById$academicExperiences({
    required this.id,
    required this.institutionName,
    this.degreeType,
    this.fieldOfStudy,
    required this.startDate,
    this.endDate,
    this.$__typename = 'AcademicExperience',
  });

  factory Query$FindUserDetailedProfile$findUserById$academicExperiences.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$institutionName = json['institutionName'];
    final l$degreeType = json['degreeType'];
    final l$fieldOfStudy = json['fieldOfStudy'];
    final l$startDate = json['startDate'];
    final l$endDate = json['endDate'];
    final l$$__typename = json['__typename'];
    return Query$FindUserDetailedProfile$findUserById$academicExperiences(
      id: (l$id as String),
      institutionName: (l$institutionName as String),
      degreeType: (l$degreeType as String?),
      fieldOfStudy: (l$fieldOfStudy as String?),
      startDate: DateTime.parse((l$startDate as String)),
      endDate: l$endDate == null ? null : DateTime.parse((l$endDate as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String institutionName;

  final String? degreeType;

  final String? fieldOfStudy;

  final DateTime startDate;

  final DateTime? endDate;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$institutionName = institutionName;
    _resultData['institutionName'] = l$institutionName;
    final l$degreeType = degreeType;
    _resultData['degreeType'] = l$degreeType;
    final l$fieldOfStudy = fieldOfStudy;
    _resultData['fieldOfStudy'] = l$fieldOfStudy;
    final l$startDate = startDate;
    _resultData['startDate'] = l$startDate.toIso8601String();
    final l$endDate = endDate;
    _resultData['endDate'] = l$endDate?.toIso8601String();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$institutionName = institutionName;
    final l$degreeType = degreeType;
    final l$fieldOfStudy = fieldOfStudy;
    final l$startDate = startDate;
    final l$endDate = endDate;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$institutionName,
      l$degreeType,
      l$fieldOfStudy,
      l$startDate,
      l$endDate,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$FindUserDetailedProfile$findUserById$academicExperiences) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$institutionName = institutionName;
    final lOther$institutionName = other.institutionName;
    if (l$institutionName != lOther$institutionName) {
      return false;
    }
    final l$degreeType = degreeType;
    final lOther$degreeType = other.degreeType;
    if (l$degreeType != lOther$degreeType) {
      return false;
    }
    final l$fieldOfStudy = fieldOfStudy;
    final lOther$fieldOfStudy = other.fieldOfStudy;
    if (l$fieldOfStudy != lOther$fieldOfStudy) {
      return false;
    }
    final l$startDate = startDate;
    final lOther$startDate = other.startDate;
    if (l$startDate != lOther$startDate) {
      return false;
    }
    final l$endDate = endDate;
    final lOther$endDate = other.endDate;
    if (l$endDate != lOther$endDate) {
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

extension UtilityExtension$Query$FindUserDetailedProfile$findUserById$academicExperiences
    on Query$FindUserDetailedProfile$findUserById$academicExperiences {
  CopyWith$Query$FindUserDetailedProfile$findUserById$academicExperiences<
          Query$FindUserDetailedProfile$findUserById$academicExperiences>
      get copyWith =>
          CopyWith$Query$FindUserDetailedProfile$findUserById$academicExperiences(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindUserDetailedProfile$findUserById$academicExperiences<
    TRes> {
  factory CopyWith$Query$FindUserDetailedProfile$findUserById$academicExperiences(
    Query$FindUserDetailedProfile$findUserById$academicExperiences instance,
    TRes Function(
            Query$FindUserDetailedProfile$findUserById$academicExperiences)
        then,
  ) = _CopyWithImpl$Query$FindUserDetailedProfile$findUserById$academicExperiences;

  factory CopyWith$Query$FindUserDetailedProfile$findUserById$academicExperiences.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindUserDetailedProfile$findUserById$academicExperiences;

  TRes call({
    String? id,
    String? institutionName,
    String? degreeType,
    String? fieldOfStudy,
    DateTime? startDate,
    DateTime? endDate,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindUserDetailedProfile$findUserById$academicExperiences<
        TRes>
    implements
        CopyWith$Query$FindUserDetailedProfile$findUserById$academicExperiences<
            TRes> {
  _CopyWithImpl$Query$FindUserDetailedProfile$findUserById$academicExperiences(
    this._instance,
    this._then,
  );

  final Query$FindUserDetailedProfile$findUserById$academicExperiences
      _instance;

  final TRes Function(
      Query$FindUserDetailedProfile$findUserById$academicExperiences) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? institutionName = _undefined,
    Object? degreeType = _undefined,
    Object? fieldOfStudy = _undefined,
    Object? startDate = _undefined,
    Object? endDate = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindUserDetailedProfile$findUserById$academicExperiences(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        institutionName:
            institutionName == _undefined || institutionName == null
                ? _instance.institutionName
                : (institutionName as String),
        degreeType: degreeType == _undefined
            ? _instance.degreeType
            : (degreeType as String?),
        fieldOfStudy: fieldOfStudy == _undefined
            ? _instance.fieldOfStudy
            : (fieldOfStudy as String?),
        startDate: startDate == _undefined || startDate == null
            ? _instance.startDate
            : (startDate as DateTime),
        endDate:
            endDate == _undefined ? _instance.endDate : (endDate as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FindUserDetailedProfile$findUserById$academicExperiences<
        TRes>
    implements
        CopyWith$Query$FindUserDetailedProfile$findUserById$academicExperiences<
            TRes> {
  _CopyWithStubImpl$Query$FindUserDetailedProfile$findUserById$academicExperiences(
      this._res);

  TRes _res;

  call({
    String? id,
    String? institutionName,
    String? degreeType,
    String? fieldOfStudy,
    DateTime? startDate,
    DateTime? endDate,
    String? $__typename,
  }) =>
      _res;
}

class Query$FindUserDetailedProfile$findUserById$countryOfResidence {
  Query$FindUserDetailedProfile$findUserById$countryOfResidence({
    required this.textId,
    this.translatedValue,
    this.$__typename = 'Country',
  });

  factory Query$FindUserDetailedProfile$findUserById$countryOfResidence.fromJson(
      Map<String, dynamic> json) {
    final l$textId = json['textId'];
    final l$translatedValue = json['translatedValue'];
    final l$$__typename = json['__typename'];
    return Query$FindUserDetailedProfile$findUserById$countryOfResidence(
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
            is Query$FindUserDetailedProfile$findUserById$countryOfResidence) ||
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
    String? textId,
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
    Object? textId = _undefined,
    Object? translatedValue = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindUserDetailedProfile$findUserById$countryOfResidence(
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

class _CopyWithStubImpl$Query$FindUserDetailedProfile$findUserById$countryOfResidence<
        TRes>
    implements
        CopyWith$Query$FindUserDetailedProfile$findUserById$countryOfResidence<
            TRes> {
  _CopyWithStubImpl$Query$FindUserDetailedProfile$findUserById$countryOfResidence(
      this._res);

  TRes _res;

  call({
    String? textId,
    String? translatedValue,
    String? $__typename,
  }) =>
      _res;
}

class Query$FindUserDetailedProfile$findUserById$countryOfOrigin {
  Query$FindUserDetailedProfile$findUserById$countryOfOrigin({
    required this.textId,
    this.translatedValue,
    this.$__typename = 'Country',
  });

  factory Query$FindUserDetailedProfile$findUserById$countryOfOrigin.fromJson(
      Map<String, dynamic> json) {
    final l$textId = json['textId'];
    final l$translatedValue = json['translatedValue'];
    final l$$__typename = json['__typename'];
    return Query$FindUserDetailedProfile$findUserById$countryOfOrigin(
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
            is Query$FindUserDetailedProfile$findUserById$countryOfOrigin) ||
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

extension UtilityExtension$Query$FindUserDetailedProfile$findUserById$countryOfOrigin
    on Query$FindUserDetailedProfile$findUserById$countryOfOrigin {
  CopyWith$Query$FindUserDetailedProfile$findUserById$countryOfOrigin<
          Query$FindUserDetailedProfile$findUserById$countryOfOrigin>
      get copyWith =>
          CopyWith$Query$FindUserDetailedProfile$findUserById$countryOfOrigin(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindUserDetailedProfile$findUserById$countryOfOrigin<
    TRes> {
  factory CopyWith$Query$FindUserDetailedProfile$findUserById$countryOfOrigin(
    Query$FindUserDetailedProfile$findUserById$countryOfOrigin instance,
    TRes Function(Query$FindUserDetailedProfile$findUserById$countryOfOrigin)
        then,
  ) = _CopyWithImpl$Query$FindUserDetailedProfile$findUserById$countryOfOrigin;

  factory CopyWith$Query$FindUserDetailedProfile$findUserById$countryOfOrigin.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindUserDetailedProfile$findUserById$countryOfOrigin;

  TRes call({
    String? textId,
    String? translatedValue,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindUserDetailedProfile$findUserById$countryOfOrigin<
        TRes>
    implements
        CopyWith$Query$FindUserDetailedProfile$findUserById$countryOfOrigin<
            TRes> {
  _CopyWithImpl$Query$FindUserDetailedProfile$findUserById$countryOfOrigin(
    this._instance,
    this._then,
  );

  final Query$FindUserDetailedProfile$findUserById$countryOfOrigin _instance;

  final TRes Function(
      Query$FindUserDetailedProfile$findUserById$countryOfOrigin) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? textId = _undefined,
    Object? translatedValue = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindUserDetailedProfile$findUserById$countryOfOrigin(
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

class _CopyWithStubImpl$Query$FindUserDetailedProfile$findUserById$countryOfOrigin<
        TRes>
    implements
        CopyWith$Query$FindUserDetailedProfile$findUserById$countryOfOrigin<
            TRes> {
  _CopyWithStubImpl$Query$FindUserDetailedProfile$findUserById$countryOfOrigin(
      this._res);

  TRes _res;

  call({
    String? textId,
    String? translatedValue,
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
    this.offersHelp,
    this.seeksHelp,
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
      offersHelp: (l$offersHelp as bool?),
      seeksHelp: (l$seeksHelp as bool?),
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

  final bool? offersHelp;

  final bool? seeksHelp;

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
        offersHelp: offersHelp == _undefined
            ? _instance.offersHelp
            : (offersHelp as bool?),
        seeksHelp: seeksHelp == _undefined
            ? _instance.seeksHelp
            : (seeksHelp as bool?),
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
]);

class Mutation$CreateUserSearch$createUserSearch {
  Mutation$CreateUserSearch$createUserSearch({
    required this.id,
    this.$__typename = 'UserSearch',
  });

  factory Mutation$CreateUserSearch$createUserSearch.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateUserSearch$createUserSearch(
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
    if (!(other is Mutation$CreateUserSearch$createUserSearch) ||
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
    String? id,
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
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateUserSearch$createUserSearch(
        id: id == _undefined || id == null ? _instance.id : (id as String),
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
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$EndMySession {
  factory Variables$Mutation$EndMySession({required String deviceUuid}) =>
      Variables$Mutation$EndMySession._({
        r'deviceUuid': deviceUuid,
      });

  Variables$Mutation$EndMySession._(this._$data);

  factory Variables$Mutation$EndMySession.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$deviceUuid = data['deviceUuid'];
    result$data['deviceUuid'] = (l$deviceUuid as String);
    return Variables$Mutation$EndMySession._(result$data);
  }

  Map<String, dynamic> _$data;

  String get deviceUuid => (_$data['deviceUuid'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$deviceUuid = deviceUuid;
    result$data['deviceUuid'] = l$deviceUuid;
    return result$data;
  }

  CopyWith$Variables$Mutation$EndMySession<Variables$Mutation$EndMySession>
      get copyWith => CopyWith$Variables$Mutation$EndMySession(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$EndMySession) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deviceUuid = deviceUuid;
    final lOther$deviceUuid = other.deviceUuid;
    if (l$deviceUuid != lOther$deviceUuid) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$deviceUuid = deviceUuid;
    return Object.hashAll([l$deviceUuid]);
  }
}

abstract class CopyWith$Variables$Mutation$EndMySession<TRes> {
  factory CopyWith$Variables$Mutation$EndMySession(
    Variables$Mutation$EndMySession instance,
    TRes Function(Variables$Mutation$EndMySession) then,
  ) = _CopyWithImpl$Variables$Mutation$EndMySession;

  factory CopyWith$Variables$Mutation$EndMySession.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$EndMySession;

  TRes call({String? deviceUuid});
}

class _CopyWithImpl$Variables$Mutation$EndMySession<TRes>
    implements CopyWith$Variables$Mutation$EndMySession<TRes> {
  _CopyWithImpl$Variables$Mutation$EndMySession(
    this._instance,
    this._then,
  );

  final Variables$Mutation$EndMySession _instance;

  final TRes Function(Variables$Mutation$EndMySession) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? deviceUuid = _undefined}) =>
      _then(Variables$Mutation$EndMySession._({
        ..._instance._$data,
        if (deviceUuid != _undefined && deviceUuid != null)
          'deviceUuid': (deviceUuid as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$EndMySession<TRes>
    implements CopyWith$Variables$Mutation$EndMySession<TRes> {
  _CopyWithStubImpl$Variables$Mutation$EndMySession(this._res);

  TRes _res;

  call({String? deviceUuid}) => _res;
}

class Mutation$EndMySession {
  Mutation$EndMySession({
    required this.endMySession,
    this.$__typename = 'Mutation',
  });

  factory Mutation$EndMySession.fromJson(Map<String, dynamic> json) {
    final l$endMySession = json['endMySession'];
    final l$$__typename = json['__typename'];
    return Mutation$EndMySession(
      endMySession: (l$endMySession as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String endMySession;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$endMySession = endMySession;
    _resultData['endMySession'] = l$endMySession;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$endMySession = endMySession;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$endMySession,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$EndMySession) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$endMySession = endMySession;
    final lOther$endMySession = other.endMySession;
    if (l$endMySession != lOther$endMySession) {
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

extension UtilityExtension$Mutation$EndMySession on Mutation$EndMySession {
  CopyWith$Mutation$EndMySession<Mutation$EndMySession> get copyWith =>
      CopyWith$Mutation$EndMySession(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$EndMySession<TRes> {
  factory CopyWith$Mutation$EndMySession(
    Mutation$EndMySession instance,
    TRes Function(Mutation$EndMySession) then,
  ) = _CopyWithImpl$Mutation$EndMySession;

  factory CopyWith$Mutation$EndMySession.stub(TRes res) =
      _CopyWithStubImpl$Mutation$EndMySession;

  TRes call({
    String? endMySession,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$EndMySession<TRes>
    implements CopyWith$Mutation$EndMySession<TRes> {
  _CopyWithImpl$Mutation$EndMySession(
    this._instance,
    this._then,
  );

  final Mutation$EndMySession _instance;

  final TRes Function(Mutation$EndMySession) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? endMySession = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$EndMySession(
        endMySession: endMySession == _undefined || endMySession == null
            ? _instance.endMySession
            : (endMySession as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$EndMySession<TRes>
    implements CopyWith$Mutation$EndMySession<TRes> {
  _CopyWithStubImpl$Mutation$EndMySession(this._res);

  TRes _res;

  call({
    String? endMySession,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeMutationEndMySession = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'EndMySession'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'deviceUuid')),
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
        name: NameNode(value: 'endMySession'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'deviceUuid'),
            value: VariableNode(name: NameNode(value: 'deviceUuid')),
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

class Variables$Mutation$StartMySession {
  factory Variables$Mutation$StartMySession({
    required String deviceUuid,
    String? pushNotificationToken,
  }) =>
      Variables$Mutation$StartMySession._({
        r'deviceUuid': deviceUuid,
        if (pushNotificationToken != null)
          r'pushNotificationToken': pushNotificationToken,
      });

  Variables$Mutation$StartMySession._(this._$data);

  factory Variables$Mutation$StartMySession.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$deviceUuid = data['deviceUuid'];
    result$data['deviceUuid'] = (l$deviceUuid as String);
    if (data.containsKey('pushNotificationToken')) {
      final l$pushNotificationToken = data['pushNotificationToken'];
      result$data['pushNotificationToken'] =
          (l$pushNotificationToken as String?);
    }
    return Variables$Mutation$StartMySession._(result$data);
  }

  Map<String, dynamic> _$data;

  String get deviceUuid => (_$data['deviceUuid'] as String);

  String? get pushNotificationToken =>
      (_$data['pushNotificationToken'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$deviceUuid = deviceUuid;
    result$data['deviceUuid'] = l$deviceUuid;
    if (_$data.containsKey('pushNotificationToken')) {
      final l$pushNotificationToken = pushNotificationToken;
      result$data['pushNotificationToken'] = l$pushNotificationToken;
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$StartMySession<Variables$Mutation$StartMySession>
      get copyWith => CopyWith$Variables$Mutation$StartMySession(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$StartMySession) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deviceUuid = deviceUuid;
    final lOther$deviceUuid = other.deviceUuid;
    if (l$deviceUuid != lOther$deviceUuid) {
      return false;
    }
    final l$pushNotificationToken = pushNotificationToken;
    final lOther$pushNotificationToken = other.pushNotificationToken;
    if (_$data.containsKey('pushNotificationToken') !=
        other._$data.containsKey('pushNotificationToken')) {
      return false;
    }
    if (l$pushNotificationToken != lOther$pushNotificationToken) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$deviceUuid = deviceUuid;
    final l$pushNotificationToken = pushNotificationToken;
    return Object.hashAll([
      l$deviceUuid,
      _$data.containsKey('pushNotificationToken')
          ? l$pushNotificationToken
          : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$StartMySession<TRes> {
  factory CopyWith$Variables$Mutation$StartMySession(
    Variables$Mutation$StartMySession instance,
    TRes Function(Variables$Mutation$StartMySession) then,
  ) = _CopyWithImpl$Variables$Mutation$StartMySession;

  factory CopyWith$Variables$Mutation$StartMySession.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$StartMySession;

  TRes call({
    String? deviceUuid,
    String? pushNotificationToken,
  });
}

class _CopyWithImpl$Variables$Mutation$StartMySession<TRes>
    implements CopyWith$Variables$Mutation$StartMySession<TRes> {
  _CopyWithImpl$Variables$Mutation$StartMySession(
    this._instance,
    this._then,
  );

  final Variables$Mutation$StartMySession _instance;

  final TRes Function(Variables$Mutation$StartMySession) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deviceUuid = _undefined,
    Object? pushNotificationToken = _undefined,
  }) =>
      _then(Variables$Mutation$StartMySession._({
        ..._instance._$data,
        if (deviceUuid != _undefined && deviceUuid != null)
          'deviceUuid': (deviceUuid as String),
        if (pushNotificationToken != _undefined)
          'pushNotificationToken': (pushNotificationToken as String?),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$StartMySession<TRes>
    implements CopyWith$Variables$Mutation$StartMySession<TRes> {
  _CopyWithStubImpl$Variables$Mutation$StartMySession(this._res);

  TRes _res;

  call({
    String? deviceUuid,
    String? pushNotificationToken,
  }) =>
      _res;
}

class Mutation$StartMySession {
  Mutation$StartMySession({
    required this.startMySession,
    this.$__typename = 'Mutation',
  });

  factory Mutation$StartMySession.fromJson(Map<String, dynamic> json) {
    final l$startMySession = json['startMySession'];
    final l$$__typename = json['__typename'];
    return Mutation$StartMySession(
      startMySession: (l$startMySession as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String startMySession;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$startMySession = startMySession;
    _resultData['startMySession'] = l$startMySession;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$startMySession = startMySession;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$startMySession,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$StartMySession) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$startMySession = startMySession;
    final lOther$startMySession = other.startMySession;
    if (l$startMySession != lOther$startMySession) {
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

extension UtilityExtension$Mutation$StartMySession on Mutation$StartMySession {
  CopyWith$Mutation$StartMySession<Mutation$StartMySession> get copyWith =>
      CopyWith$Mutation$StartMySession(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StartMySession<TRes> {
  factory CopyWith$Mutation$StartMySession(
    Mutation$StartMySession instance,
    TRes Function(Mutation$StartMySession) then,
  ) = _CopyWithImpl$Mutation$StartMySession;

  factory CopyWith$Mutation$StartMySession.stub(TRes res) =
      _CopyWithStubImpl$Mutation$StartMySession;

  TRes call({
    String? startMySession,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$StartMySession<TRes>
    implements CopyWith$Mutation$StartMySession<TRes> {
  _CopyWithImpl$Mutation$StartMySession(
    this._instance,
    this._then,
  );

  final Mutation$StartMySession _instance;

  final TRes Function(Mutation$StartMySession) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? startMySession = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$StartMySession(
        startMySession: startMySession == _undefined || startMySession == null
            ? _instance.startMySession
            : (startMySession as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$StartMySession<TRes>
    implements CopyWith$Mutation$StartMySession<TRes> {
  _CopyWithStubImpl$Mutation$StartMySession(this._res);

  TRes _res;

  call({
    String? startMySession,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeMutationStartMySession = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'StartMySession'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'deviceUuid')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'pushNotificationToken')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'startMySession'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'deviceUuid'),
            value: VariableNode(name: NameNode(value: 'deviceUuid')),
          ),
          ArgumentNode(
            name: NameNode(value: 'pushNotificationToken'),
            value: VariableNode(name: NameNode(value: 'pushNotificationToken')),
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

class Variables$Mutation$UpdateAcademicExperience {
  factory Variables$Mutation$UpdateAcademicExperience(
          {required Input$AcademicExperienceInput input}) =>
      Variables$Mutation$UpdateAcademicExperience._({
        r'input': input,
      });

  Variables$Mutation$UpdateAcademicExperience._(this._$data);

  factory Variables$Mutation$UpdateAcademicExperience.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$AcademicExperienceInput.fromJson(
        (l$input as Map<String, dynamic>));
    return Variables$Mutation$UpdateAcademicExperience._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$AcademicExperienceInput get input =>
      (_$data['input'] as Input$AcademicExperienceInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateAcademicExperience<
          Variables$Mutation$UpdateAcademicExperience>
      get copyWith => CopyWith$Variables$Mutation$UpdateAcademicExperience(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$UpdateAcademicExperience) ||
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

abstract class CopyWith$Variables$Mutation$UpdateAcademicExperience<TRes> {
  factory CopyWith$Variables$Mutation$UpdateAcademicExperience(
    Variables$Mutation$UpdateAcademicExperience instance,
    TRes Function(Variables$Mutation$UpdateAcademicExperience) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateAcademicExperience;

  factory CopyWith$Variables$Mutation$UpdateAcademicExperience.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateAcademicExperience;

  TRes call({Input$AcademicExperienceInput? input});
}

class _CopyWithImpl$Variables$Mutation$UpdateAcademicExperience<TRes>
    implements CopyWith$Variables$Mutation$UpdateAcademicExperience<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateAcademicExperience(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateAcademicExperience _instance;

  final TRes Function(Variables$Mutation$UpdateAcademicExperience) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$UpdateAcademicExperience._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$AcademicExperienceInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateAcademicExperience<TRes>
    implements CopyWith$Variables$Mutation$UpdateAcademicExperience<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateAcademicExperience(this._res);

  TRes _res;

  call({Input$AcademicExperienceInput? input}) => _res;
}

class Mutation$UpdateAcademicExperience {
  Mutation$UpdateAcademicExperience({
    required this.updateAcademicExperience,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateAcademicExperience.fromJson(
      Map<String, dynamic> json) {
    final l$updateAcademicExperience = json['updateAcademicExperience'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateAcademicExperience(
      updateAcademicExperience:
          Mutation$UpdateAcademicExperience$updateAcademicExperience.fromJson(
              (l$updateAcademicExperience as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdateAcademicExperience$updateAcademicExperience
      updateAcademicExperience;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateAcademicExperience = updateAcademicExperience;
    _resultData['updateAcademicExperience'] =
        l$updateAcademicExperience.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateAcademicExperience = updateAcademicExperience;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateAcademicExperience,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateAcademicExperience) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateAcademicExperience = updateAcademicExperience;
    final lOther$updateAcademicExperience = other.updateAcademicExperience;
    if (l$updateAcademicExperience != lOther$updateAcademicExperience) {
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

extension UtilityExtension$Mutation$UpdateAcademicExperience
    on Mutation$UpdateAcademicExperience {
  CopyWith$Mutation$UpdateAcademicExperience<Mutation$UpdateAcademicExperience>
      get copyWith => CopyWith$Mutation$UpdateAcademicExperience(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateAcademicExperience<TRes> {
  factory CopyWith$Mutation$UpdateAcademicExperience(
    Mutation$UpdateAcademicExperience instance,
    TRes Function(Mutation$UpdateAcademicExperience) then,
  ) = _CopyWithImpl$Mutation$UpdateAcademicExperience;

  factory CopyWith$Mutation$UpdateAcademicExperience.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateAcademicExperience;

  TRes call({
    Mutation$UpdateAcademicExperience$updateAcademicExperience?
        updateAcademicExperience,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateAcademicExperience$updateAcademicExperience<TRes>
      get updateAcademicExperience;
}

class _CopyWithImpl$Mutation$UpdateAcademicExperience<TRes>
    implements CopyWith$Mutation$UpdateAcademicExperience<TRes> {
  _CopyWithImpl$Mutation$UpdateAcademicExperience(
    this._instance,
    this._then,
  );

  final Mutation$UpdateAcademicExperience _instance;

  final TRes Function(Mutation$UpdateAcademicExperience) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateAcademicExperience = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateAcademicExperience(
        updateAcademicExperience: updateAcademicExperience == _undefined ||
                updateAcademicExperience == null
            ? _instance.updateAcademicExperience
            : (updateAcademicExperience
                as Mutation$UpdateAcademicExperience$updateAcademicExperience),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$UpdateAcademicExperience$updateAcademicExperience<TRes>
      get updateAcademicExperience {
    final local$updateAcademicExperience = _instance.updateAcademicExperience;
    return CopyWith$Mutation$UpdateAcademicExperience$updateAcademicExperience(
        local$updateAcademicExperience,
        (e) => call(updateAcademicExperience: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateAcademicExperience<TRes>
    implements CopyWith$Mutation$UpdateAcademicExperience<TRes> {
  _CopyWithStubImpl$Mutation$UpdateAcademicExperience(this._res);

  TRes _res;

  call({
    Mutation$UpdateAcademicExperience$updateAcademicExperience?
        updateAcademicExperience,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$UpdateAcademicExperience$updateAcademicExperience<TRes>
      get updateAcademicExperience =>
          CopyWith$Mutation$UpdateAcademicExperience$updateAcademicExperience
              .stub(_res);
}

const documentNodeMutationUpdateAcademicExperience = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateAcademicExperience'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'AcademicExperienceInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updateAcademicExperience'),
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

class Mutation$UpdateAcademicExperience$updateAcademicExperience {
  Mutation$UpdateAcademicExperience$updateAcademicExperience({
    required this.id,
    this.$__typename = 'ServiceRequest',
  });

  factory Mutation$UpdateAcademicExperience$updateAcademicExperience.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateAcademicExperience$updateAcademicExperience(
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
    if (!(other
            is Mutation$UpdateAcademicExperience$updateAcademicExperience) ||
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

extension UtilityExtension$Mutation$UpdateAcademicExperience$updateAcademicExperience
    on Mutation$UpdateAcademicExperience$updateAcademicExperience {
  CopyWith$Mutation$UpdateAcademicExperience$updateAcademicExperience<
          Mutation$UpdateAcademicExperience$updateAcademicExperience>
      get copyWith =>
          CopyWith$Mutation$UpdateAcademicExperience$updateAcademicExperience(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateAcademicExperience$updateAcademicExperience<
    TRes> {
  factory CopyWith$Mutation$UpdateAcademicExperience$updateAcademicExperience(
    Mutation$UpdateAcademicExperience$updateAcademicExperience instance,
    TRes Function(Mutation$UpdateAcademicExperience$updateAcademicExperience)
        then,
  ) = _CopyWithImpl$Mutation$UpdateAcademicExperience$updateAcademicExperience;

  factory CopyWith$Mutation$UpdateAcademicExperience$updateAcademicExperience.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$UpdateAcademicExperience$updateAcademicExperience;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdateAcademicExperience$updateAcademicExperience<
        TRes>
    implements
        CopyWith$Mutation$UpdateAcademicExperience$updateAcademicExperience<
            TRes> {
  _CopyWithImpl$Mutation$UpdateAcademicExperience$updateAcademicExperience(
    this._instance,
    this._then,
  );

  final Mutation$UpdateAcademicExperience$updateAcademicExperience _instance;

  final TRes Function(
      Mutation$UpdateAcademicExperience$updateAcademicExperience) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateAcademicExperience$updateAcademicExperience(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$UpdateAcademicExperience$updateAcademicExperience<
        TRes>
    implements
        CopyWith$Mutation$UpdateAcademicExperience$updateAcademicExperience<
            TRes> {
  _CopyWithStubImpl$Mutation$UpdateAcademicExperience$updateAcademicExperience(
      this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$UpdateBusinessExperience {
  factory Variables$Mutation$UpdateBusinessExperience(
          {required Input$BusinessExperienceInput input}) =>
      Variables$Mutation$UpdateBusinessExperience._({
        r'input': input,
      });

  Variables$Mutation$UpdateBusinessExperience._(this._$data);

  factory Variables$Mutation$UpdateBusinessExperience.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$BusinessExperienceInput.fromJson(
        (l$input as Map<String, dynamic>));
    return Variables$Mutation$UpdateBusinessExperience._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$BusinessExperienceInput get input =>
      (_$data['input'] as Input$BusinessExperienceInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateBusinessExperience<
          Variables$Mutation$UpdateBusinessExperience>
      get copyWith => CopyWith$Variables$Mutation$UpdateBusinessExperience(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$UpdateBusinessExperience) ||
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

abstract class CopyWith$Variables$Mutation$UpdateBusinessExperience<TRes> {
  factory CopyWith$Variables$Mutation$UpdateBusinessExperience(
    Variables$Mutation$UpdateBusinessExperience instance,
    TRes Function(Variables$Mutation$UpdateBusinessExperience) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateBusinessExperience;

  factory CopyWith$Variables$Mutation$UpdateBusinessExperience.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateBusinessExperience;

  TRes call({Input$BusinessExperienceInput? input});
}

class _CopyWithImpl$Variables$Mutation$UpdateBusinessExperience<TRes>
    implements CopyWith$Variables$Mutation$UpdateBusinessExperience<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateBusinessExperience(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateBusinessExperience _instance;

  final TRes Function(Variables$Mutation$UpdateBusinessExperience) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$UpdateBusinessExperience._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$BusinessExperienceInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateBusinessExperience<TRes>
    implements CopyWith$Variables$Mutation$UpdateBusinessExperience<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateBusinessExperience(this._res);

  TRes _res;

  call({Input$BusinessExperienceInput? input}) => _res;
}

class Mutation$UpdateBusinessExperience {
  Mutation$UpdateBusinessExperience({
    required this.updateBusinessExperience,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateBusinessExperience.fromJson(
      Map<String, dynamic> json) {
    final l$updateBusinessExperience = json['updateBusinessExperience'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateBusinessExperience(
      updateBusinessExperience:
          Mutation$UpdateBusinessExperience$updateBusinessExperience.fromJson(
              (l$updateBusinessExperience as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdateBusinessExperience$updateBusinessExperience
      updateBusinessExperience;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateBusinessExperience = updateBusinessExperience;
    _resultData['updateBusinessExperience'] =
        l$updateBusinessExperience.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateBusinessExperience = updateBusinessExperience;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateBusinessExperience,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateBusinessExperience) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateBusinessExperience = updateBusinessExperience;
    final lOther$updateBusinessExperience = other.updateBusinessExperience;
    if (l$updateBusinessExperience != lOther$updateBusinessExperience) {
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

extension UtilityExtension$Mutation$UpdateBusinessExperience
    on Mutation$UpdateBusinessExperience {
  CopyWith$Mutation$UpdateBusinessExperience<Mutation$UpdateBusinessExperience>
      get copyWith => CopyWith$Mutation$UpdateBusinessExperience(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateBusinessExperience<TRes> {
  factory CopyWith$Mutation$UpdateBusinessExperience(
    Mutation$UpdateBusinessExperience instance,
    TRes Function(Mutation$UpdateBusinessExperience) then,
  ) = _CopyWithImpl$Mutation$UpdateBusinessExperience;

  factory CopyWith$Mutation$UpdateBusinessExperience.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateBusinessExperience;

  TRes call({
    Mutation$UpdateBusinessExperience$updateBusinessExperience?
        updateBusinessExperience,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateBusinessExperience$updateBusinessExperience<TRes>
      get updateBusinessExperience;
}

class _CopyWithImpl$Mutation$UpdateBusinessExperience<TRes>
    implements CopyWith$Mutation$UpdateBusinessExperience<TRes> {
  _CopyWithImpl$Mutation$UpdateBusinessExperience(
    this._instance,
    this._then,
  );

  final Mutation$UpdateBusinessExperience _instance;

  final TRes Function(Mutation$UpdateBusinessExperience) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateBusinessExperience = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateBusinessExperience(
        updateBusinessExperience: updateBusinessExperience == _undefined ||
                updateBusinessExperience == null
            ? _instance.updateBusinessExperience
            : (updateBusinessExperience
                as Mutation$UpdateBusinessExperience$updateBusinessExperience),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$UpdateBusinessExperience$updateBusinessExperience<TRes>
      get updateBusinessExperience {
    final local$updateBusinessExperience = _instance.updateBusinessExperience;
    return CopyWith$Mutation$UpdateBusinessExperience$updateBusinessExperience(
        local$updateBusinessExperience,
        (e) => call(updateBusinessExperience: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateBusinessExperience<TRes>
    implements CopyWith$Mutation$UpdateBusinessExperience<TRes> {
  _CopyWithStubImpl$Mutation$UpdateBusinessExperience(this._res);

  TRes _res;

  call({
    Mutation$UpdateBusinessExperience$updateBusinessExperience?
        updateBusinessExperience,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$UpdateBusinessExperience$updateBusinessExperience<TRes>
      get updateBusinessExperience =>
          CopyWith$Mutation$UpdateBusinessExperience$updateBusinessExperience
              .stub(_res);
}

const documentNodeMutationUpdateBusinessExperience = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateBusinessExperience'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'BusinessExperienceInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updateBusinessExperience'),
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

class Mutation$UpdateBusinessExperience$updateBusinessExperience {
  Mutation$UpdateBusinessExperience$updateBusinessExperience({
    required this.id,
    this.$__typename = 'ServiceRequest',
  });

  factory Mutation$UpdateBusinessExperience$updateBusinessExperience.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateBusinessExperience$updateBusinessExperience(
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
    if (!(other
            is Mutation$UpdateBusinessExperience$updateBusinessExperience) ||
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

extension UtilityExtension$Mutation$UpdateBusinessExperience$updateBusinessExperience
    on Mutation$UpdateBusinessExperience$updateBusinessExperience {
  CopyWith$Mutation$UpdateBusinessExperience$updateBusinessExperience<
          Mutation$UpdateBusinessExperience$updateBusinessExperience>
      get copyWith =>
          CopyWith$Mutation$UpdateBusinessExperience$updateBusinessExperience(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateBusinessExperience$updateBusinessExperience<
    TRes> {
  factory CopyWith$Mutation$UpdateBusinessExperience$updateBusinessExperience(
    Mutation$UpdateBusinessExperience$updateBusinessExperience instance,
    TRes Function(Mutation$UpdateBusinessExperience$updateBusinessExperience)
        then,
  ) = _CopyWithImpl$Mutation$UpdateBusinessExperience$updateBusinessExperience;

  factory CopyWith$Mutation$UpdateBusinessExperience$updateBusinessExperience.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$UpdateBusinessExperience$updateBusinessExperience;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdateBusinessExperience$updateBusinessExperience<
        TRes>
    implements
        CopyWith$Mutation$UpdateBusinessExperience$updateBusinessExperience<
            TRes> {
  _CopyWithImpl$Mutation$UpdateBusinessExperience$updateBusinessExperience(
    this._instance,
    this._then,
  );

  final Mutation$UpdateBusinessExperience$updateBusinessExperience _instance;

  final TRes Function(
      Mutation$UpdateBusinessExperience$updateBusinessExperience) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateBusinessExperience$updateBusinessExperience(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$UpdateBusinessExperience$updateBusinessExperience<
        TRes>
    implements
        CopyWith$Mutation$UpdateBusinessExperience$updateBusinessExperience<
            TRes> {
  _CopyWithStubImpl$Mutation$UpdateBusinessExperience$updateBusinessExperience(
      this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$UpdateCompany {
  factory Variables$Mutation$UpdateCompany(
          {required Input$CompanyInput input}) =>
      Variables$Mutation$UpdateCompany._({
        r'input': input,
      });

  Variables$Mutation$UpdateCompany._(this._$data);

  factory Variables$Mutation$UpdateCompany.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$CompanyInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Mutation$UpdateCompany._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$CompanyInput get input => (_$data['input'] as Input$CompanyInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateCompany<Variables$Mutation$UpdateCompany>
      get copyWith => CopyWith$Variables$Mutation$UpdateCompany(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$UpdateCompany) ||
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

abstract class CopyWith$Variables$Mutation$UpdateCompany<TRes> {
  factory CopyWith$Variables$Mutation$UpdateCompany(
    Variables$Mutation$UpdateCompany instance,
    TRes Function(Variables$Mutation$UpdateCompany) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateCompany;

  factory CopyWith$Variables$Mutation$UpdateCompany.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateCompany;

  TRes call({Input$CompanyInput? input});
}

class _CopyWithImpl$Variables$Mutation$UpdateCompany<TRes>
    implements CopyWith$Variables$Mutation$UpdateCompany<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateCompany(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateCompany _instance;

  final TRes Function(Variables$Mutation$UpdateCompany) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$UpdateCompany._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$CompanyInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateCompany<TRes>
    implements CopyWith$Variables$Mutation$UpdateCompany<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateCompany(this._res);

  TRes _res;

  call({Input$CompanyInput? input}) => _res;
}

class Mutation$UpdateCompany {
  Mutation$UpdateCompany({
    required this.updateCompany,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateCompany.fromJson(Map<String, dynamic> json) {
    final l$updateCompany = json['updateCompany'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateCompany(
      updateCompany: Mutation$UpdateCompany$updateCompany.fromJson(
          (l$updateCompany as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdateCompany$updateCompany updateCompany;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateCompany = updateCompany;
    _resultData['updateCompany'] = l$updateCompany.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateCompany = updateCompany;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateCompany,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateCompany) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateCompany = updateCompany;
    final lOther$updateCompany = other.updateCompany;
    if (l$updateCompany != lOther$updateCompany) {
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

extension UtilityExtension$Mutation$UpdateCompany on Mutation$UpdateCompany {
  CopyWith$Mutation$UpdateCompany<Mutation$UpdateCompany> get copyWith =>
      CopyWith$Mutation$UpdateCompany(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdateCompany<TRes> {
  factory CopyWith$Mutation$UpdateCompany(
    Mutation$UpdateCompany instance,
    TRes Function(Mutation$UpdateCompany) then,
  ) = _CopyWithImpl$Mutation$UpdateCompany;

  factory CopyWith$Mutation$UpdateCompany.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateCompany;

  TRes call({
    Mutation$UpdateCompany$updateCompany? updateCompany,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateCompany$updateCompany<TRes> get updateCompany;
}

class _CopyWithImpl$Mutation$UpdateCompany<TRes>
    implements CopyWith$Mutation$UpdateCompany<TRes> {
  _CopyWithImpl$Mutation$UpdateCompany(
    this._instance,
    this._then,
  );

  final Mutation$UpdateCompany _instance;

  final TRes Function(Mutation$UpdateCompany) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateCompany = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateCompany(
        updateCompany: updateCompany == _undefined || updateCompany == null
            ? _instance.updateCompany
            : (updateCompany as Mutation$UpdateCompany$updateCompany),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$UpdateCompany$updateCompany<TRes> get updateCompany {
    final local$updateCompany = _instance.updateCompany;
    return CopyWith$Mutation$UpdateCompany$updateCompany(
        local$updateCompany, (e) => call(updateCompany: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateCompany<TRes>
    implements CopyWith$Mutation$UpdateCompany<TRes> {
  _CopyWithStubImpl$Mutation$UpdateCompany(this._res);

  TRes _res;

  call({
    Mutation$UpdateCompany$updateCompany? updateCompany,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$UpdateCompany$updateCompany<TRes> get updateCompany =>
      CopyWith$Mutation$UpdateCompany$updateCompany.stub(_res);
}

const documentNodeMutationUpdateCompany = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateCompany'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'CompanyInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updateCompany'),
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

class Mutation$UpdateCompany$updateCompany {
  Mutation$UpdateCompany$updateCompany({
    required this.id,
    this.$__typename = 'ServiceRequest',
  });

  factory Mutation$UpdateCompany$updateCompany.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateCompany$updateCompany(
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
    if (!(other is Mutation$UpdateCompany$updateCompany) ||
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

extension UtilityExtension$Mutation$UpdateCompany$updateCompany
    on Mutation$UpdateCompany$updateCompany {
  CopyWith$Mutation$UpdateCompany$updateCompany<
          Mutation$UpdateCompany$updateCompany>
      get copyWith => CopyWith$Mutation$UpdateCompany$updateCompany(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateCompany$updateCompany<TRes> {
  factory CopyWith$Mutation$UpdateCompany$updateCompany(
    Mutation$UpdateCompany$updateCompany instance,
    TRes Function(Mutation$UpdateCompany$updateCompany) then,
  ) = _CopyWithImpl$Mutation$UpdateCompany$updateCompany;

  factory CopyWith$Mutation$UpdateCompany$updateCompany.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateCompany$updateCompany;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdateCompany$updateCompany<TRes>
    implements CopyWith$Mutation$UpdateCompany$updateCompany<TRes> {
  _CopyWithImpl$Mutation$UpdateCompany$updateCompany(
    this._instance,
    this._then,
  );

  final Mutation$UpdateCompany$updateCompany _instance;

  final TRes Function(Mutation$UpdateCompany$updateCompany) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateCompany$updateCompany(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$UpdateCompany$updateCompany<TRes>
    implements CopyWith$Mutation$UpdateCompany$updateCompany<TRes> {
  _CopyWithStubImpl$Mutation$UpdateCompany$updateCompany(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$UpdateMenteesGroupMembership {
  factory Variables$Mutation$UpdateMenteesGroupMembership(
          {required Input$MenteesGroupMembershipInput input}) =>
      Variables$Mutation$UpdateMenteesGroupMembership._({
        r'input': input,
      });

  Variables$Mutation$UpdateMenteesGroupMembership._(this._$data);

  factory Variables$Mutation$UpdateMenteesGroupMembership.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$MenteesGroupMembershipInput.fromJson(
        (l$input as Map<String, dynamic>));
    return Variables$Mutation$UpdateMenteesGroupMembership._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$MenteesGroupMembershipInput get input =>
      (_$data['input'] as Input$MenteesGroupMembershipInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateMenteesGroupMembership<
          Variables$Mutation$UpdateMenteesGroupMembership>
      get copyWith => CopyWith$Variables$Mutation$UpdateMenteesGroupMembership(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$UpdateMenteesGroupMembership) ||
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

abstract class CopyWith$Variables$Mutation$UpdateMenteesGroupMembership<TRes> {
  factory CopyWith$Variables$Mutation$UpdateMenteesGroupMembership(
    Variables$Mutation$UpdateMenteesGroupMembership instance,
    TRes Function(Variables$Mutation$UpdateMenteesGroupMembership) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateMenteesGroupMembership;

  factory CopyWith$Variables$Mutation$UpdateMenteesGroupMembership.stub(
          TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateMenteesGroupMembership;

  TRes call({Input$MenteesGroupMembershipInput? input});
}

class _CopyWithImpl$Variables$Mutation$UpdateMenteesGroupMembership<TRes>
    implements CopyWith$Variables$Mutation$UpdateMenteesGroupMembership<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateMenteesGroupMembership(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateMenteesGroupMembership _instance;

  final TRes Function(Variables$Mutation$UpdateMenteesGroupMembership) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$UpdateMenteesGroupMembership._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$MenteesGroupMembershipInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateMenteesGroupMembership<TRes>
    implements CopyWith$Variables$Mutation$UpdateMenteesGroupMembership<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateMenteesGroupMembership(this._res);

  TRes _res;

  call({Input$MenteesGroupMembershipInput? input}) => _res;
}

class Mutation$UpdateMenteesGroupMembership {
  Mutation$UpdateMenteesGroupMembership({
    required this.updateMenteesGroupMembership,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateMenteesGroupMembership.fromJson(
      Map<String, dynamic> json) {
    final l$updateMenteesGroupMembership = json['updateMenteesGroupMembership'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateMenteesGroupMembership(
      updateMenteesGroupMembership:
          Mutation$UpdateMenteesGroupMembership$updateMenteesGroupMembership
              .fromJson(
                  (l$updateMenteesGroupMembership as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdateMenteesGroupMembership$updateMenteesGroupMembership
      updateMenteesGroupMembership;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateMenteesGroupMembership = updateMenteesGroupMembership;
    _resultData['updateMenteesGroupMembership'] =
        l$updateMenteesGroupMembership.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateMenteesGroupMembership = updateMenteesGroupMembership;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateMenteesGroupMembership,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateMenteesGroupMembership) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateMenteesGroupMembership = updateMenteesGroupMembership;
    final lOther$updateMenteesGroupMembership =
        other.updateMenteesGroupMembership;
    if (l$updateMenteesGroupMembership != lOther$updateMenteesGroupMembership) {
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

extension UtilityExtension$Mutation$UpdateMenteesGroupMembership
    on Mutation$UpdateMenteesGroupMembership {
  CopyWith$Mutation$UpdateMenteesGroupMembership<
          Mutation$UpdateMenteesGroupMembership>
      get copyWith => CopyWith$Mutation$UpdateMenteesGroupMembership(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateMenteesGroupMembership<TRes> {
  factory CopyWith$Mutation$UpdateMenteesGroupMembership(
    Mutation$UpdateMenteesGroupMembership instance,
    TRes Function(Mutation$UpdateMenteesGroupMembership) then,
  ) = _CopyWithImpl$Mutation$UpdateMenteesGroupMembership;

  factory CopyWith$Mutation$UpdateMenteesGroupMembership.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateMenteesGroupMembership;

  TRes call({
    Mutation$UpdateMenteesGroupMembership$updateMenteesGroupMembership?
        updateMenteesGroupMembership,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateMenteesGroupMembership$updateMenteesGroupMembership<
      TRes> get updateMenteesGroupMembership;
}

class _CopyWithImpl$Mutation$UpdateMenteesGroupMembership<TRes>
    implements CopyWith$Mutation$UpdateMenteesGroupMembership<TRes> {
  _CopyWithImpl$Mutation$UpdateMenteesGroupMembership(
    this._instance,
    this._then,
  );

  final Mutation$UpdateMenteesGroupMembership _instance;

  final TRes Function(Mutation$UpdateMenteesGroupMembership) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateMenteesGroupMembership = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateMenteesGroupMembership(
        updateMenteesGroupMembership: updateMenteesGroupMembership ==
                    _undefined ||
                updateMenteesGroupMembership == null
            ? _instance.updateMenteesGroupMembership
            : (updateMenteesGroupMembership
                as Mutation$UpdateMenteesGroupMembership$updateMenteesGroupMembership),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$UpdateMenteesGroupMembership$updateMenteesGroupMembership<
      TRes> get updateMenteesGroupMembership {
    final local$updateMenteesGroupMembership =
        _instance.updateMenteesGroupMembership;
    return CopyWith$Mutation$UpdateMenteesGroupMembership$updateMenteesGroupMembership(
        local$updateMenteesGroupMembership,
        (e) => call(updateMenteesGroupMembership: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateMenteesGroupMembership<TRes>
    implements CopyWith$Mutation$UpdateMenteesGroupMembership<TRes> {
  _CopyWithStubImpl$Mutation$UpdateMenteesGroupMembership(this._res);

  TRes _res;

  call({
    Mutation$UpdateMenteesGroupMembership$updateMenteesGroupMembership?
        updateMenteesGroupMembership,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$UpdateMenteesGroupMembership$updateMenteesGroupMembership<
          TRes>
      get updateMenteesGroupMembership =>
          CopyWith$Mutation$UpdateMenteesGroupMembership$updateMenteesGroupMembership
              .stub(_res);
}

const documentNodeMutationUpdateMenteesGroupMembership =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateMenteesGroupMembership'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'MenteesGroupMembershipInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updateMenteesGroupMembership'),
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

class Mutation$UpdateMenteesGroupMembership$updateMenteesGroupMembership {
  Mutation$UpdateMenteesGroupMembership$updateMenteesGroupMembership({
    required this.id,
    this.$__typename = 'ServiceRequest',
  });

  factory Mutation$UpdateMenteesGroupMembership$updateMenteesGroupMembership.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateMenteesGroupMembership$updateMenteesGroupMembership(
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
    if (!(other
            is Mutation$UpdateMenteesGroupMembership$updateMenteesGroupMembership) ||
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

extension UtilityExtension$Mutation$UpdateMenteesGroupMembership$updateMenteesGroupMembership
    on Mutation$UpdateMenteesGroupMembership$updateMenteesGroupMembership {
  CopyWith$Mutation$UpdateMenteesGroupMembership$updateMenteesGroupMembership<
          Mutation$UpdateMenteesGroupMembership$updateMenteesGroupMembership>
      get copyWith =>
          CopyWith$Mutation$UpdateMenteesGroupMembership$updateMenteesGroupMembership(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateMenteesGroupMembership$updateMenteesGroupMembership<
    TRes> {
  factory CopyWith$Mutation$UpdateMenteesGroupMembership$updateMenteesGroupMembership(
    Mutation$UpdateMenteesGroupMembership$updateMenteesGroupMembership instance,
    TRes Function(
            Mutation$UpdateMenteesGroupMembership$updateMenteesGroupMembership)
        then,
  ) = _CopyWithImpl$Mutation$UpdateMenteesGroupMembership$updateMenteesGroupMembership;

  factory CopyWith$Mutation$UpdateMenteesGroupMembership$updateMenteesGroupMembership.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$UpdateMenteesGroupMembership$updateMenteesGroupMembership;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdateMenteesGroupMembership$updateMenteesGroupMembership<
        TRes>
    implements
        CopyWith$Mutation$UpdateMenteesGroupMembership$updateMenteesGroupMembership<
            TRes> {
  _CopyWithImpl$Mutation$UpdateMenteesGroupMembership$updateMenteesGroupMembership(
    this._instance,
    this._then,
  );

  final Mutation$UpdateMenteesGroupMembership$updateMenteesGroupMembership
      _instance;

  final TRes Function(
      Mutation$UpdateMenteesGroupMembership$updateMenteesGroupMembership) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateMenteesGroupMembership$updateMenteesGroupMembership(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$UpdateMenteesGroupMembership$updateMenteesGroupMembership<
        TRes>
    implements
        CopyWith$Mutation$UpdateMenteesGroupMembership$updateMenteesGroupMembership<
            TRes> {
  _CopyWithStubImpl$Mutation$UpdateMenteesGroupMembership$updateMenteesGroupMembership(
      this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$UpdateMentorsGroupMembership {
  factory Variables$Mutation$UpdateMentorsGroupMembership(
          {required Input$MentorsGroupMembershipInput input}) =>
      Variables$Mutation$UpdateMentorsGroupMembership._({
        r'input': input,
      });

  Variables$Mutation$UpdateMentorsGroupMembership._(this._$data);

  factory Variables$Mutation$UpdateMentorsGroupMembership.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$MentorsGroupMembershipInput.fromJson(
        (l$input as Map<String, dynamic>));
    return Variables$Mutation$UpdateMentorsGroupMembership._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$MentorsGroupMembershipInput get input =>
      (_$data['input'] as Input$MentorsGroupMembershipInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateMentorsGroupMembership<
          Variables$Mutation$UpdateMentorsGroupMembership>
      get copyWith => CopyWith$Variables$Mutation$UpdateMentorsGroupMembership(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$UpdateMentorsGroupMembership) ||
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

abstract class CopyWith$Variables$Mutation$UpdateMentorsGroupMembership<TRes> {
  factory CopyWith$Variables$Mutation$UpdateMentorsGroupMembership(
    Variables$Mutation$UpdateMentorsGroupMembership instance,
    TRes Function(Variables$Mutation$UpdateMentorsGroupMembership) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateMentorsGroupMembership;

  factory CopyWith$Variables$Mutation$UpdateMentorsGroupMembership.stub(
          TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateMentorsGroupMembership;

  TRes call({Input$MentorsGroupMembershipInput? input});
}

class _CopyWithImpl$Variables$Mutation$UpdateMentorsGroupMembership<TRes>
    implements CopyWith$Variables$Mutation$UpdateMentorsGroupMembership<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateMentorsGroupMembership(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateMentorsGroupMembership _instance;

  final TRes Function(Variables$Mutation$UpdateMentorsGroupMembership) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$UpdateMentorsGroupMembership._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$MentorsGroupMembershipInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateMentorsGroupMembership<TRes>
    implements CopyWith$Variables$Mutation$UpdateMentorsGroupMembership<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateMentorsGroupMembership(this._res);

  TRes _res;

  call({Input$MentorsGroupMembershipInput? input}) => _res;
}

class Mutation$UpdateMentorsGroupMembership {
  Mutation$UpdateMentorsGroupMembership({
    required this.updateMentorsGroupMembership,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateMentorsGroupMembership.fromJson(
      Map<String, dynamic> json) {
    final l$updateMentorsGroupMembership = json['updateMentorsGroupMembership'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateMentorsGroupMembership(
      updateMentorsGroupMembership:
          Mutation$UpdateMentorsGroupMembership$updateMentorsGroupMembership
              .fromJson(
                  (l$updateMentorsGroupMembership as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdateMentorsGroupMembership$updateMentorsGroupMembership
      updateMentorsGroupMembership;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateMentorsGroupMembership = updateMentorsGroupMembership;
    _resultData['updateMentorsGroupMembership'] =
        l$updateMentorsGroupMembership.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateMentorsGroupMembership = updateMentorsGroupMembership;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateMentorsGroupMembership,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateMentorsGroupMembership) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateMentorsGroupMembership = updateMentorsGroupMembership;
    final lOther$updateMentorsGroupMembership =
        other.updateMentorsGroupMembership;
    if (l$updateMentorsGroupMembership != lOther$updateMentorsGroupMembership) {
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

extension UtilityExtension$Mutation$UpdateMentorsGroupMembership
    on Mutation$UpdateMentorsGroupMembership {
  CopyWith$Mutation$UpdateMentorsGroupMembership<
          Mutation$UpdateMentorsGroupMembership>
      get copyWith => CopyWith$Mutation$UpdateMentorsGroupMembership(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateMentorsGroupMembership<TRes> {
  factory CopyWith$Mutation$UpdateMentorsGroupMembership(
    Mutation$UpdateMentorsGroupMembership instance,
    TRes Function(Mutation$UpdateMentorsGroupMembership) then,
  ) = _CopyWithImpl$Mutation$UpdateMentorsGroupMembership;

  factory CopyWith$Mutation$UpdateMentorsGroupMembership.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateMentorsGroupMembership;

  TRes call({
    Mutation$UpdateMentorsGroupMembership$updateMentorsGroupMembership?
        updateMentorsGroupMembership,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateMentorsGroupMembership$updateMentorsGroupMembership<
      TRes> get updateMentorsGroupMembership;
}

class _CopyWithImpl$Mutation$UpdateMentorsGroupMembership<TRes>
    implements CopyWith$Mutation$UpdateMentorsGroupMembership<TRes> {
  _CopyWithImpl$Mutation$UpdateMentorsGroupMembership(
    this._instance,
    this._then,
  );

  final Mutation$UpdateMentorsGroupMembership _instance;

  final TRes Function(Mutation$UpdateMentorsGroupMembership) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateMentorsGroupMembership = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateMentorsGroupMembership(
        updateMentorsGroupMembership: updateMentorsGroupMembership ==
                    _undefined ||
                updateMentorsGroupMembership == null
            ? _instance.updateMentorsGroupMembership
            : (updateMentorsGroupMembership
                as Mutation$UpdateMentorsGroupMembership$updateMentorsGroupMembership),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$UpdateMentorsGroupMembership$updateMentorsGroupMembership<
      TRes> get updateMentorsGroupMembership {
    final local$updateMentorsGroupMembership =
        _instance.updateMentorsGroupMembership;
    return CopyWith$Mutation$UpdateMentorsGroupMembership$updateMentorsGroupMembership(
        local$updateMentorsGroupMembership,
        (e) => call(updateMentorsGroupMembership: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateMentorsGroupMembership<TRes>
    implements CopyWith$Mutation$UpdateMentorsGroupMembership<TRes> {
  _CopyWithStubImpl$Mutation$UpdateMentorsGroupMembership(this._res);

  TRes _res;

  call({
    Mutation$UpdateMentorsGroupMembership$updateMentorsGroupMembership?
        updateMentorsGroupMembership,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$UpdateMentorsGroupMembership$updateMentorsGroupMembership<
          TRes>
      get updateMentorsGroupMembership =>
          CopyWith$Mutation$UpdateMentorsGroupMembership$updateMentorsGroupMembership
              .stub(_res);
}

const documentNodeMutationUpdateMentorsGroupMembership =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateMentorsGroupMembership'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'MentorsGroupMembershipInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updateMentorsGroupMembership'),
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

class Mutation$UpdateMentorsGroupMembership$updateMentorsGroupMembership {
  Mutation$UpdateMentorsGroupMembership$updateMentorsGroupMembership({
    required this.id,
    this.$__typename = 'ServiceRequest',
  });

  factory Mutation$UpdateMentorsGroupMembership$updateMentorsGroupMembership.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateMentorsGroupMembership$updateMentorsGroupMembership(
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
    if (!(other
            is Mutation$UpdateMentorsGroupMembership$updateMentorsGroupMembership) ||
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

extension UtilityExtension$Mutation$UpdateMentorsGroupMembership$updateMentorsGroupMembership
    on Mutation$UpdateMentorsGroupMembership$updateMentorsGroupMembership {
  CopyWith$Mutation$UpdateMentorsGroupMembership$updateMentorsGroupMembership<
          Mutation$UpdateMentorsGroupMembership$updateMentorsGroupMembership>
      get copyWith =>
          CopyWith$Mutation$UpdateMentorsGroupMembership$updateMentorsGroupMembership(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateMentorsGroupMembership$updateMentorsGroupMembership<
    TRes> {
  factory CopyWith$Mutation$UpdateMentorsGroupMembership$updateMentorsGroupMembership(
    Mutation$UpdateMentorsGroupMembership$updateMentorsGroupMembership instance,
    TRes Function(
            Mutation$UpdateMentorsGroupMembership$updateMentorsGroupMembership)
        then,
  ) = _CopyWithImpl$Mutation$UpdateMentorsGroupMembership$updateMentorsGroupMembership;

  factory CopyWith$Mutation$UpdateMentorsGroupMembership$updateMentorsGroupMembership.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$UpdateMentorsGroupMembership$updateMentorsGroupMembership;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdateMentorsGroupMembership$updateMentorsGroupMembership<
        TRes>
    implements
        CopyWith$Mutation$UpdateMentorsGroupMembership$updateMentorsGroupMembership<
            TRes> {
  _CopyWithImpl$Mutation$UpdateMentorsGroupMembership$updateMentorsGroupMembership(
    this._instance,
    this._then,
  );

  final Mutation$UpdateMentorsGroupMembership$updateMentorsGroupMembership
      _instance;

  final TRes Function(
      Mutation$UpdateMentorsGroupMembership$updateMentorsGroupMembership) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateMentorsGroupMembership$updateMentorsGroupMembership(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$UpdateMentorsGroupMembership$updateMentorsGroupMembership<
        TRes>
    implements
        CopyWith$Mutation$UpdateMentorsGroupMembership$updateMentorsGroupMembership<
            TRes> {
  _CopyWithStubImpl$Mutation$UpdateMentorsGroupMembership$updateMentorsGroupMembership(
      this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

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
