// GENERATED WITH GRAPHQL_CODEGEN
// DO NOT MODIFY
// ignore_for_file: type=lint

import 'package:gql/ast.dart';
import 'schema.graphql.dart';

class Variables$Query$FindChannelInvitationById {
  factory Variables$Query$FindChannelInvitationById(
          {required String channelInvitationId}) =>
      Variables$Query$FindChannelInvitationById._({
        r'channelInvitationId': channelInvitationId,
      });

  Variables$Query$FindChannelInvitationById._(this._$data);

  factory Variables$Query$FindChannelInvitationById.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$channelInvitationId = data['channelInvitationId'];
    result$data['channelInvitationId'] = (l$channelInvitationId as String);
    return Variables$Query$FindChannelInvitationById._(result$data);
  }

  Map<String, dynamic> _$data;

  String get channelInvitationId => (_$data['channelInvitationId'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$channelInvitationId = channelInvitationId;
    result$data['channelInvitationId'] = l$channelInvitationId;
    return result$data;
  }

  CopyWith$Variables$Query$FindChannelInvitationById<
          Variables$Query$FindChannelInvitationById>
      get copyWith => CopyWith$Variables$Query$FindChannelInvitationById(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$FindChannelInvitationById) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$channelInvitationId = channelInvitationId;
    final lOther$channelInvitationId = other.channelInvitationId;
    if (l$channelInvitationId != lOther$channelInvitationId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$channelInvitationId = channelInvitationId;
    return Object.hashAll([l$channelInvitationId]);
  }
}

abstract class CopyWith$Variables$Query$FindChannelInvitationById<TRes> {
  factory CopyWith$Variables$Query$FindChannelInvitationById(
    Variables$Query$FindChannelInvitationById instance,
    TRes Function(Variables$Query$FindChannelInvitationById) then,
  ) = _CopyWithImpl$Variables$Query$FindChannelInvitationById;

  factory CopyWith$Variables$Query$FindChannelInvitationById.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$FindChannelInvitationById;

  TRes call({String? channelInvitationId});
}

class _CopyWithImpl$Variables$Query$FindChannelInvitationById<TRes>
    implements CopyWith$Variables$Query$FindChannelInvitationById<TRes> {
  _CopyWithImpl$Variables$Query$FindChannelInvitationById(
    this._instance,
    this._then,
  );

  final Variables$Query$FindChannelInvitationById _instance;

  final TRes Function(Variables$Query$FindChannelInvitationById) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? channelInvitationId = _undefined}) =>
      _then(Variables$Query$FindChannelInvitationById._({
        ..._instance._$data,
        if (channelInvitationId != _undefined && channelInvitationId != null)
          'channelInvitationId': (channelInvitationId as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$FindChannelInvitationById<TRes>
    implements CopyWith$Variables$Query$FindChannelInvitationById<TRes> {
  _CopyWithStubImpl$Variables$Query$FindChannelInvitationById(this._res);

  TRes _res;

  call({String? channelInvitationId}) => _res;
}

class Query$FindChannelInvitationById {
  Query$FindChannelInvitationById({
    required this.findChannelInvitationById,
    this.$__typename = 'Query',
  });

  factory Query$FindChannelInvitationById.fromJson(Map<String, dynamic> json) {
    final l$findChannelInvitationById = json['findChannelInvitationById'];
    final l$$__typename = json['__typename'];
    return Query$FindChannelInvitationById(
      findChannelInvitationById:
          Query$FindChannelInvitationById$findChannelInvitationById.fromJson(
              (l$findChannelInvitationById as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$FindChannelInvitationById$findChannelInvitationById
      findChannelInvitationById;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$findChannelInvitationById = findChannelInvitationById;
    _resultData['findChannelInvitationById'] =
        l$findChannelInvitationById.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$findChannelInvitationById = findChannelInvitationById;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$findChannelInvitationById,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FindChannelInvitationById) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$findChannelInvitationById = findChannelInvitationById;
    final lOther$findChannelInvitationById = other.findChannelInvitationById;
    if (l$findChannelInvitationById != lOther$findChannelInvitationById) {
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

extension UtilityExtension$Query$FindChannelInvitationById
    on Query$FindChannelInvitationById {
  CopyWith$Query$FindChannelInvitationById<Query$FindChannelInvitationById>
      get copyWith => CopyWith$Query$FindChannelInvitationById(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindChannelInvitationById<TRes> {
  factory CopyWith$Query$FindChannelInvitationById(
    Query$FindChannelInvitationById instance,
    TRes Function(Query$FindChannelInvitationById) then,
  ) = _CopyWithImpl$Query$FindChannelInvitationById;

  factory CopyWith$Query$FindChannelInvitationById.stub(TRes res) =
      _CopyWithStubImpl$Query$FindChannelInvitationById;

  TRes call({
    Query$FindChannelInvitationById$findChannelInvitationById?
        findChannelInvitationById,
    String? $__typename,
  });
  CopyWith$Query$FindChannelInvitationById$findChannelInvitationById<TRes>
      get findChannelInvitationById;
}

class _CopyWithImpl$Query$FindChannelInvitationById<TRes>
    implements CopyWith$Query$FindChannelInvitationById<TRes> {
  _CopyWithImpl$Query$FindChannelInvitationById(
    this._instance,
    this._then,
  );

  final Query$FindChannelInvitationById _instance;

  final TRes Function(Query$FindChannelInvitationById) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? findChannelInvitationById = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindChannelInvitationById(
        findChannelInvitationById: findChannelInvitationById == _undefined ||
                findChannelInvitationById == null
            ? _instance.findChannelInvitationById
            : (findChannelInvitationById
                as Query$FindChannelInvitationById$findChannelInvitationById),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$FindChannelInvitationById$findChannelInvitationById<TRes>
      get findChannelInvitationById {
    final local$findChannelInvitationById = _instance.findChannelInvitationById;
    return CopyWith$Query$FindChannelInvitationById$findChannelInvitationById(
        local$findChannelInvitationById,
        (e) => call(findChannelInvitationById: e));
  }
}

class _CopyWithStubImpl$Query$FindChannelInvitationById<TRes>
    implements CopyWith$Query$FindChannelInvitationById<TRes> {
  _CopyWithStubImpl$Query$FindChannelInvitationById(this._res);

  TRes _res;

  call({
    Query$FindChannelInvitationById$findChannelInvitationById?
        findChannelInvitationById,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$FindChannelInvitationById$findChannelInvitationById<TRes>
      get findChannelInvitationById =>
          CopyWith$Query$FindChannelInvitationById$findChannelInvitationById
              .stub(_res);
}

const documentNodeQueryFindChannelInvitationById = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FindChannelInvitationById'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'channelInvitationId')),
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
        name: NameNode(value: 'findChannelInvitationById'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'channelInvitationId')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'createdAt'),
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
            name: NameNode(value: 'senderId'),
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

class Query$FindChannelInvitationById$findChannelInvitationById {
  Query$FindChannelInvitationById$findChannelInvitationById({
    required this.createdAt,
    this.messageText,
    required this.status,
    required this.senderId,
    this.$__typename = 'ChannelInvitation',
  });

  factory Query$FindChannelInvitationById$findChannelInvitationById.fromJson(
      Map<String, dynamic> json) {
    final l$createdAt = json['createdAt'];
    final l$messageText = json['messageText'];
    final l$status = json['status'];
    final l$senderId = json['senderId'];
    final l$$__typename = json['__typename'];
    return Query$FindChannelInvitationById$findChannelInvitationById(
      createdAt: DateTime.parse((l$createdAt as String)),
      messageText: (l$messageText as String?),
      status: fromJson$Enum$ChannelInvitationStatus((l$status as String)),
      senderId: (l$senderId as String),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime createdAt;

  final String? messageText;

  final Enum$ChannelInvitationStatus status;

  final String senderId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt.toIso8601String();
    final l$messageText = messageText;
    _resultData['messageText'] = l$messageText;
    final l$status = status;
    _resultData['status'] = toJson$Enum$ChannelInvitationStatus(l$status);
    final l$senderId = senderId;
    _resultData['senderId'] = l$senderId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createdAt = createdAt;
    final l$messageText = messageText;
    final l$status = status;
    final l$senderId = senderId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$createdAt,
      l$messageText,
      l$status,
      l$senderId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FindChannelInvitationById$findChannelInvitationById) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
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
    final l$senderId = senderId;
    final lOther$senderId = other.senderId;
    if (l$senderId != lOther$senderId) {
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

extension UtilityExtension$Query$FindChannelInvitationById$findChannelInvitationById
    on Query$FindChannelInvitationById$findChannelInvitationById {
  CopyWith$Query$FindChannelInvitationById$findChannelInvitationById<
          Query$FindChannelInvitationById$findChannelInvitationById>
      get copyWith =>
          CopyWith$Query$FindChannelInvitationById$findChannelInvitationById(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindChannelInvitationById$findChannelInvitationById<
    TRes> {
  factory CopyWith$Query$FindChannelInvitationById$findChannelInvitationById(
    Query$FindChannelInvitationById$findChannelInvitationById instance,
    TRes Function(Query$FindChannelInvitationById$findChannelInvitationById)
        then,
  ) = _CopyWithImpl$Query$FindChannelInvitationById$findChannelInvitationById;

  factory CopyWith$Query$FindChannelInvitationById$findChannelInvitationById.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindChannelInvitationById$findChannelInvitationById;

  TRes call({
    DateTime? createdAt,
    String? messageText,
    Enum$ChannelInvitationStatus? status,
    String? senderId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindChannelInvitationById$findChannelInvitationById<
        TRes>
    implements
        CopyWith$Query$FindChannelInvitationById$findChannelInvitationById<
            TRes> {
  _CopyWithImpl$Query$FindChannelInvitationById$findChannelInvitationById(
    this._instance,
    this._then,
  );

  final Query$FindChannelInvitationById$findChannelInvitationById _instance;

  final TRes Function(Query$FindChannelInvitationById$findChannelInvitationById)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createdAt = _undefined,
    Object? messageText = _undefined,
    Object? status = _undefined,
    Object? senderId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindChannelInvitationById$findChannelInvitationById(
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as DateTime),
        messageText: messageText == _undefined
            ? _instance.messageText
            : (messageText as String?),
        status: status == _undefined || status == null
            ? _instance.status
            : (status as Enum$ChannelInvitationStatus),
        senderId: senderId == _undefined || senderId == null
            ? _instance.senderId
            : (senderId as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FindChannelInvitationById$findChannelInvitationById<
        TRes>
    implements
        CopyWith$Query$FindChannelInvitationById$findChannelInvitationById<
            TRes> {
  _CopyWithStubImpl$Query$FindChannelInvitationById$findChannelInvitationById(
      this._res);

  TRes _res;

  call({
    DateTime? createdAt,
    String? messageText,
    Enum$ChannelInvitationStatus? status,
    String? senderId,
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

class Variables$Mutation$AcceptChannelInvitation {
  factory Variables$Mutation$AcceptChannelInvitation(
          {required String channelInvitationId}) =>
      Variables$Mutation$AcceptChannelInvitation._({
        r'channelInvitationId': channelInvitationId,
      });

  Variables$Mutation$AcceptChannelInvitation._(this._$data);

  factory Variables$Mutation$AcceptChannelInvitation.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$channelInvitationId = data['channelInvitationId'];
    result$data['channelInvitationId'] = (l$channelInvitationId as String);
    return Variables$Mutation$AcceptChannelInvitation._(result$data);
  }

  Map<String, dynamic> _$data;

  String get channelInvitationId => (_$data['channelInvitationId'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$channelInvitationId = channelInvitationId;
    result$data['channelInvitationId'] = l$channelInvitationId;
    return result$data;
  }

  CopyWith$Variables$Mutation$AcceptChannelInvitation<
          Variables$Mutation$AcceptChannelInvitation>
      get copyWith => CopyWith$Variables$Mutation$AcceptChannelInvitation(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$AcceptChannelInvitation) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$channelInvitationId = channelInvitationId;
    final lOther$channelInvitationId = other.channelInvitationId;
    if (l$channelInvitationId != lOther$channelInvitationId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$channelInvitationId = channelInvitationId;
    return Object.hashAll([l$channelInvitationId]);
  }
}

abstract class CopyWith$Variables$Mutation$AcceptChannelInvitation<TRes> {
  factory CopyWith$Variables$Mutation$AcceptChannelInvitation(
    Variables$Mutation$AcceptChannelInvitation instance,
    TRes Function(Variables$Mutation$AcceptChannelInvitation) then,
  ) = _CopyWithImpl$Variables$Mutation$AcceptChannelInvitation;

  factory CopyWith$Variables$Mutation$AcceptChannelInvitation.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$AcceptChannelInvitation;

  TRes call({String? channelInvitationId});
}

class _CopyWithImpl$Variables$Mutation$AcceptChannelInvitation<TRes>
    implements CopyWith$Variables$Mutation$AcceptChannelInvitation<TRes> {
  _CopyWithImpl$Variables$Mutation$AcceptChannelInvitation(
    this._instance,
    this._then,
  );

  final Variables$Mutation$AcceptChannelInvitation _instance;

  final TRes Function(Variables$Mutation$AcceptChannelInvitation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? channelInvitationId = _undefined}) =>
      _then(Variables$Mutation$AcceptChannelInvitation._({
        ..._instance._$data,
        if (channelInvitationId != _undefined && channelInvitationId != null)
          'channelInvitationId': (channelInvitationId as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$AcceptChannelInvitation<TRes>
    implements CopyWith$Variables$Mutation$AcceptChannelInvitation<TRes> {
  _CopyWithStubImpl$Variables$Mutation$AcceptChannelInvitation(this._res);

  TRes _res;

  call({String? channelInvitationId}) => _res;
}

class Mutation$AcceptChannelInvitation {
  Mutation$AcceptChannelInvitation({
    required this.acceptChannelInvitation,
    this.$__typename = 'Mutation',
  });

  factory Mutation$AcceptChannelInvitation.fromJson(Map<String, dynamic> json) {
    final l$acceptChannelInvitation = json['acceptChannelInvitation'];
    final l$$__typename = json['__typename'];
    return Mutation$AcceptChannelInvitation(
      acceptChannelInvitation: (l$acceptChannelInvitation as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String acceptChannelInvitation;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$acceptChannelInvitation = acceptChannelInvitation;
    _resultData['acceptChannelInvitation'] = l$acceptChannelInvitation;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$acceptChannelInvitation = acceptChannelInvitation;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$acceptChannelInvitation,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$AcceptChannelInvitation) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$acceptChannelInvitation = acceptChannelInvitation;
    final lOther$acceptChannelInvitation = other.acceptChannelInvitation;
    if (l$acceptChannelInvitation != lOther$acceptChannelInvitation) {
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

extension UtilityExtension$Mutation$AcceptChannelInvitation
    on Mutation$AcceptChannelInvitation {
  CopyWith$Mutation$AcceptChannelInvitation<Mutation$AcceptChannelInvitation>
      get copyWith => CopyWith$Mutation$AcceptChannelInvitation(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$AcceptChannelInvitation<TRes> {
  factory CopyWith$Mutation$AcceptChannelInvitation(
    Mutation$AcceptChannelInvitation instance,
    TRes Function(Mutation$AcceptChannelInvitation) then,
  ) = _CopyWithImpl$Mutation$AcceptChannelInvitation;

  factory CopyWith$Mutation$AcceptChannelInvitation.stub(TRes res) =
      _CopyWithStubImpl$Mutation$AcceptChannelInvitation;

  TRes call({
    String? acceptChannelInvitation,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$AcceptChannelInvitation<TRes>
    implements CopyWith$Mutation$AcceptChannelInvitation<TRes> {
  _CopyWithImpl$Mutation$AcceptChannelInvitation(
    this._instance,
    this._then,
  );

  final Mutation$AcceptChannelInvitation _instance;

  final TRes Function(Mutation$AcceptChannelInvitation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? acceptChannelInvitation = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$AcceptChannelInvitation(
        acceptChannelInvitation: acceptChannelInvitation == _undefined ||
                acceptChannelInvitation == null
            ? _instance.acceptChannelInvitation
            : (acceptChannelInvitation as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$AcceptChannelInvitation<TRes>
    implements CopyWith$Mutation$AcceptChannelInvitation<TRes> {
  _CopyWithStubImpl$Mutation$AcceptChannelInvitation(this._res);

  TRes _res;

  call({
    String? acceptChannelInvitation,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeMutationAcceptChannelInvitation = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'AcceptChannelInvitation'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'channelInvitationId')),
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
        name: NameNode(value: 'acceptChannelInvitation'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'channelInvitationId'),
            value: VariableNode(name: NameNode(value: 'channelInvitationId')),
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

class Variables$Mutation$DeclineChannelInvitation {
  factory Variables$Mutation$DeclineChannelInvitation(
          {required String channelInvitationId}) =>
      Variables$Mutation$DeclineChannelInvitation._({
        r'channelInvitationId': channelInvitationId,
      });

  Variables$Mutation$DeclineChannelInvitation._(this._$data);

  factory Variables$Mutation$DeclineChannelInvitation.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$channelInvitationId = data['channelInvitationId'];
    result$data['channelInvitationId'] = (l$channelInvitationId as String);
    return Variables$Mutation$DeclineChannelInvitation._(result$data);
  }

  Map<String, dynamic> _$data;

  String get channelInvitationId => (_$data['channelInvitationId'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$channelInvitationId = channelInvitationId;
    result$data['channelInvitationId'] = l$channelInvitationId;
    return result$data;
  }

  CopyWith$Variables$Mutation$DeclineChannelInvitation<
          Variables$Mutation$DeclineChannelInvitation>
      get copyWith => CopyWith$Variables$Mutation$DeclineChannelInvitation(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$DeclineChannelInvitation) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$channelInvitationId = channelInvitationId;
    final lOther$channelInvitationId = other.channelInvitationId;
    if (l$channelInvitationId != lOther$channelInvitationId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$channelInvitationId = channelInvitationId;
    return Object.hashAll([l$channelInvitationId]);
  }
}

abstract class CopyWith$Variables$Mutation$DeclineChannelInvitation<TRes> {
  factory CopyWith$Variables$Mutation$DeclineChannelInvitation(
    Variables$Mutation$DeclineChannelInvitation instance,
    TRes Function(Variables$Mutation$DeclineChannelInvitation) then,
  ) = _CopyWithImpl$Variables$Mutation$DeclineChannelInvitation;

  factory CopyWith$Variables$Mutation$DeclineChannelInvitation.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$DeclineChannelInvitation;

  TRes call({String? channelInvitationId});
}

class _CopyWithImpl$Variables$Mutation$DeclineChannelInvitation<TRes>
    implements CopyWith$Variables$Mutation$DeclineChannelInvitation<TRes> {
  _CopyWithImpl$Variables$Mutation$DeclineChannelInvitation(
    this._instance,
    this._then,
  );

  final Variables$Mutation$DeclineChannelInvitation _instance;

  final TRes Function(Variables$Mutation$DeclineChannelInvitation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? channelInvitationId = _undefined}) =>
      _then(Variables$Mutation$DeclineChannelInvitation._({
        ..._instance._$data,
        if (channelInvitationId != _undefined && channelInvitationId != null)
          'channelInvitationId': (channelInvitationId as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$DeclineChannelInvitation<TRes>
    implements CopyWith$Variables$Mutation$DeclineChannelInvitation<TRes> {
  _CopyWithStubImpl$Variables$Mutation$DeclineChannelInvitation(this._res);

  TRes _res;

  call({String? channelInvitationId}) => _res;
}

class Mutation$DeclineChannelInvitation {
  Mutation$DeclineChannelInvitation({
    required this.declineChannelInvitation,
    this.$__typename = 'Mutation',
  });

  factory Mutation$DeclineChannelInvitation.fromJson(
      Map<String, dynamic> json) {
    final l$declineChannelInvitation = json['declineChannelInvitation'];
    final l$$__typename = json['__typename'];
    return Mutation$DeclineChannelInvitation(
      declineChannelInvitation: (l$declineChannelInvitation as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String declineChannelInvitation;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$declineChannelInvitation = declineChannelInvitation;
    _resultData['declineChannelInvitation'] = l$declineChannelInvitation;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$declineChannelInvitation = declineChannelInvitation;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$declineChannelInvitation,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$DeclineChannelInvitation) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$declineChannelInvitation = declineChannelInvitation;
    final lOther$declineChannelInvitation = other.declineChannelInvitation;
    if (l$declineChannelInvitation != lOther$declineChannelInvitation) {
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

extension UtilityExtension$Mutation$DeclineChannelInvitation
    on Mutation$DeclineChannelInvitation {
  CopyWith$Mutation$DeclineChannelInvitation<Mutation$DeclineChannelInvitation>
      get copyWith => CopyWith$Mutation$DeclineChannelInvitation(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$DeclineChannelInvitation<TRes> {
  factory CopyWith$Mutation$DeclineChannelInvitation(
    Mutation$DeclineChannelInvitation instance,
    TRes Function(Mutation$DeclineChannelInvitation) then,
  ) = _CopyWithImpl$Mutation$DeclineChannelInvitation;

  factory CopyWith$Mutation$DeclineChannelInvitation.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeclineChannelInvitation;

  TRes call({
    String? declineChannelInvitation,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$DeclineChannelInvitation<TRes>
    implements CopyWith$Mutation$DeclineChannelInvitation<TRes> {
  _CopyWithImpl$Mutation$DeclineChannelInvitation(
    this._instance,
    this._then,
  );

  final Mutation$DeclineChannelInvitation _instance;

  final TRes Function(Mutation$DeclineChannelInvitation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? declineChannelInvitation = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeclineChannelInvitation(
        declineChannelInvitation: declineChannelInvitation == _undefined ||
                declineChannelInvitation == null
            ? _instance.declineChannelInvitation
            : (declineChannelInvitation as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$DeclineChannelInvitation<TRes>
    implements CopyWith$Mutation$DeclineChannelInvitation<TRes> {
  _CopyWithStubImpl$Mutation$DeclineChannelInvitation(this._res);

  TRes _res;

  call({
    String? declineChannelInvitation,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeMutationDeclineChannelInvitation = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'DeclineChannelInvitation'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'channelInvitationId')),
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
        name: NameNode(value: 'declineChannelInvitation'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'channelInvitationId'),
            value: VariableNode(name: NameNode(value: 'channelInvitationId')),
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
