// GENERATED WITH GRAPHQL_CODEGEN
// DO NOT MODIFY
// ignore_for_file: type=lint

import 'package:gql/ast.dart';
import 'schema.graphql.dart';

class Variables$Query$FindChannelLatestMessage {
  factory Variables$Query$FindChannelLatestMessage(
          {required String channelId}) =>
      Variables$Query$FindChannelLatestMessage._({
        r'channelId': channelId,
      });

  Variables$Query$FindChannelLatestMessage._(this._$data);

  factory Variables$Query$FindChannelLatestMessage.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$channelId = data['channelId'];
    result$data['channelId'] = (l$channelId as String);
    return Variables$Query$FindChannelLatestMessage._(result$data);
  }

  Map<String, dynamic> _$data;

  String get channelId => (_$data['channelId'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$channelId = channelId;
    result$data['channelId'] = l$channelId;
    return result$data;
  }

  CopyWith$Variables$Query$FindChannelLatestMessage<
          Variables$Query$FindChannelLatestMessage>
      get copyWith => CopyWith$Variables$Query$FindChannelLatestMessage(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$FindChannelLatestMessage) ||
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

abstract class CopyWith$Variables$Query$FindChannelLatestMessage<TRes> {
  factory CopyWith$Variables$Query$FindChannelLatestMessage(
    Variables$Query$FindChannelLatestMessage instance,
    TRes Function(Variables$Query$FindChannelLatestMessage) then,
  ) = _CopyWithImpl$Variables$Query$FindChannelLatestMessage;

  factory CopyWith$Variables$Query$FindChannelLatestMessage.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$FindChannelLatestMessage;

  TRes call({String? channelId});
}

class _CopyWithImpl$Variables$Query$FindChannelLatestMessage<TRes>
    implements CopyWith$Variables$Query$FindChannelLatestMessage<TRes> {
  _CopyWithImpl$Variables$Query$FindChannelLatestMessage(
    this._instance,
    this._then,
  );

  final Variables$Query$FindChannelLatestMessage _instance;

  final TRes Function(Variables$Query$FindChannelLatestMessage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? channelId = _undefined}) =>
      _then(Variables$Query$FindChannelLatestMessage._({
        ..._instance._$data,
        if (channelId != _undefined && channelId != null)
          'channelId': (channelId as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$FindChannelLatestMessage<TRes>
    implements CopyWith$Variables$Query$FindChannelLatestMessage<TRes> {
  _CopyWithStubImpl$Variables$Query$FindChannelLatestMessage(this._res);

  TRes _res;

  call({String? channelId}) => _res;
}

class Query$FindChannelLatestMessage {
  Query$FindChannelLatestMessage({
    required this.findChannelById,
    this.$__typename = 'Query',
  });

  factory Query$FindChannelLatestMessage.fromJson(Map<String, dynamic> json) {
    final l$findChannelById = json['findChannelById'];
    final l$$__typename = json['__typename'];
    return Query$FindChannelLatestMessage(
      findChannelById: Query$FindChannelLatestMessage$findChannelById.fromJson(
          (l$findChannelById as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$FindChannelLatestMessage$findChannelById findChannelById;

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
    if (!(other is Query$FindChannelLatestMessage) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$FindChannelLatestMessage
    on Query$FindChannelLatestMessage {
  CopyWith$Query$FindChannelLatestMessage<Query$FindChannelLatestMessage>
      get copyWith => CopyWith$Query$FindChannelLatestMessage(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindChannelLatestMessage<TRes> {
  factory CopyWith$Query$FindChannelLatestMessage(
    Query$FindChannelLatestMessage instance,
    TRes Function(Query$FindChannelLatestMessage) then,
  ) = _CopyWithImpl$Query$FindChannelLatestMessage;

  factory CopyWith$Query$FindChannelLatestMessage.stub(TRes res) =
      _CopyWithStubImpl$Query$FindChannelLatestMessage;

  TRes call({
    Query$FindChannelLatestMessage$findChannelById? findChannelById,
    String? $__typename,
  });
  CopyWith$Query$FindChannelLatestMessage$findChannelById<TRes>
      get findChannelById;
}

class _CopyWithImpl$Query$FindChannelLatestMessage<TRes>
    implements CopyWith$Query$FindChannelLatestMessage<TRes> {
  _CopyWithImpl$Query$FindChannelLatestMessage(
    this._instance,
    this._then,
  );

  final Query$FindChannelLatestMessage _instance;

  final TRes Function(Query$FindChannelLatestMessage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? findChannelById = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindChannelLatestMessage(
        findChannelById:
            findChannelById == _undefined || findChannelById == null
                ? _instance.findChannelById
                : (findChannelById
                    as Query$FindChannelLatestMessage$findChannelById),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$FindChannelLatestMessage$findChannelById<TRes>
      get findChannelById {
    final local$findChannelById = _instance.findChannelById;
    return CopyWith$Query$FindChannelLatestMessage$findChannelById(
        local$findChannelById, (e) => call(findChannelById: e));
  }
}

class _CopyWithStubImpl$Query$FindChannelLatestMessage<TRes>
    implements CopyWith$Query$FindChannelLatestMessage<TRes> {
  _CopyWithStubImpl$Query$FindChannelLatestMessage(this._res);

  TRes _res;

  call({
    Query$FindChannelLatestMessage$findChannelById? findChannelById,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$FindChannelLatestMessage$findChannelById<TRes>
      get findChannelById =>
          CopyWith$Query$FindChannelLatestMessage$findChannelById.stub(_res);
}

const documentNodeQueryFindChannelLatestMessage = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FindChannelLatestMessage'),
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
            name: NameNode(value: 'latestMessage'),
            alias: null,
            arguments: [],
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
                name: NameNode(value: 'createdBy'),
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

class Query$FindChannelLatestMessage$findChannelById {
  Query$FindChannelLatestMessage$findChannelById({
    required this.latestMessage,
    this.$__typename = 'Channel',
  });

  factory Query$FindChannelLatestMessage$findChannelById.fromJson(
      Map<String, dynamic> json) {
    final l$latestMessage = json['latestMessage'];
    final l$$__typename = json['__typename'];
    return Query$FindChannelLatestMessage$findChannelById(
      latestMessage:
          Query$FindChannelLatestMessage$findChannelById$latestMessage.fromJson(
              (l$latestMessage as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$FindChannelLatestMessage$findChannelById$latestMessage
      latestMessage;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$latestMessage = latestMessage;
    _resultData['latestMessage'] = l$latestMessage.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$latestMessage = latestMessage;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$latestMessage,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FindChannelLatestMessage$findChannelById) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$latestMessage = latestMessage;
    final lOther$latestMessage = other.latestMessage;
    if (l$latestMessage != lOther$latestMessage) {
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

extension UtilityExtension$Query$FindChannelLatestMessage$findChannelById
    on Query$FindChannelLatestMessage$findChannelById {
  CopyWith$Query$FindChannelLatestMessage$findChannelById<
          Query$FindChannelLatestMessage$findChannelById>
      get copyWith => CopyWith$Query$FindChannelLatestMessage$findChannelById(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindChannelLatestMessage$findChannelById<TRes> {
  factory CopyWith$Query$FindChannelLatestMessage$findChannelById(
    Query$FindChannelLatestMessage$findChannelById instance,
    TRes Function(Query$FindChannelLatestMessage$findChannelById) then,
  ) = _CopyWithImpl$Query$FindChannelLatestMessage$findChannelById;

  factory CopyWith$Query$FindChannelLatestMessage$findChannelById.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindChannelLatestMessage$findChannelById;

  TRes call({
    Query$FindChannelLatestMessage$findChannelById$latestMessage? latestMessage,
    String? $__typename,
  });
  CopyWith$Query$FindChannelLatestMessage$findChannelById$latestMessage<TRes>
      get latestMessage;
}

class _CopyWithImpl$Query$FindChannelLatestMessage$findChannelById<TRes>
    implements CopyWith$Query$FindChannelLatestMessage$findChannelById<TRes> {
  _CopyWithImpl$Query$FindChannelLatestMessage$findChannelById(
    this._instance,
    this._then,
  );

  final Query$FindChannelLatestMessage$findChannelById _instance;

  final TRes Function(Query$FindChannelLatestMessage$findChannelById) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? latestMessage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindChannelLatestMessage$findChannelById(
        latestMessage: latestMessage == _undefined || latestMessage == null
            ? _instance.latestMessage
            : (latestMessage
                as Query$FindChannelLatestMessage$findChannelById$latestMessage),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$FindChannelLatestMessage$findChannelById$latestMessage<TRes>
      get latestMessage {
    final local$latestMessage = _instance.latestMessage;
    return CopyWith$Query$FindChannelLatestMessage$findChannelById$latestMessage(
        local$latestMessage, (e) => call(latestMessage: e));
  }
}

class _CopyWithStubImpl$Query$FindChannelLatestMessage$findChannelById<TRes>
    implements CopyWith$Query$FindChannelLatestMessage$findChannelById<TRes> {
  _CopyWithStubImpl$Query$FindChannelLatestMessage$findChannelById(this._res);

  TRes _res;

  call({
    Query$FindChannelLatestMessage$findChannelById$latestMessage? latestMessage,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$FindChannelLatestMessage$findChannelById$latestMessage<TRes>
      get latestMessage =>
          CopyWith$Query$FindChannelLatestMessage$findChannelById$latestMessage
              .stub(_res);
}

class Query$FindChannelLatestMessage$findChannelById$latestMessage {
  Query$FindChannelLatestMessage$findChannelById$latestMessage({
    required this.createdAt,
    this.createdBy,
    this.messageText,
    this.$__typename = 'ChannelMessage',
  });

  factory Query$FindChannelLatestMessage$findChannelById$latestMessage.fromJson(
      Map<String, dynamic> json) {
    final l$createdAt = json['createdAt'];
    final l$createdBy = json['createdBy'];
    final l$messageText = json['messageText'];
    final l$$__typename = json['__typename'];
    return Query$FindChannelLatestMessage$findChannelById$latestMessage(
      createdAt: DateTime.parse((l$createdAt as String)),
      createdBy: (l$createdBy as String?),
      messageText: (l$messageText as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime createdAt;

  final String? createdBy;

  final String? messageText;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt.toIso8601String();
    final l$createdBy = createdBy;
    _resultData['createdBy'] = l$createdBy;
    final l$messageText = messageText;
    _resultData['messageText'] = l$messageText;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createdAt = createdAt;
    final l$createdBy = createdBy;
    final l$messageText = messageText;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$createdAt,
      l$createdBy,
      l$messageText,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$FindChannelLatestMessage$findChannelById$latestMessage) ||
        runtimeType != other.runtimeType) {
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
    final l$messageText = messageText;
    final lOther$messageText = other.messageText;
    if (l$messageText != lOther$messageText) {
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

extension UtilityExtension$Query$FindChannelLatestMessage$findChannelById$latestMessage
    on Query$FindChannelLatestMessage$findChannelById$latestMessage {
  CopyWith$Query$FindChannelLatestMessage$findChannelById$latestMessage<
          Query$FindChannelLatestMessage$findChannelById$latestMessage>
      get copyWith =>
          CopyWith$Query$FindChannelLatestMessage$findChannelById$latestMessage(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindChannelLatestMessage$findChannelById$latestMessage<
    TRes> {
  factory CopyWith$Query$FindChannelLatestMessage$findChannelById$latestMessage(
    Query$FindChannelLatestMessage$findChannelById$latestMessage instance,
    TRes Function(Query$FindChannelLatestMessage$findChannelById$latestMessage)
        then,
  ) = _CopyWithImpl$Query$FindChannelLatestMessage$findChannelById$latestMessage;

  factory CopyWith$Query$FindChannelLatestMessage$findChannelById$latestMessage.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindChannelLatestMessage$findChannelById$latestMessage;

  TRes call({
    DateTime? createdAt,
    String? createdBy,
    String? messageText,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindChannelLatestMessage$findChannelById$latestMessage<
        TRes>
    implements
        CopyWith$Query$FindChannelLatestMessage$findChannelById$latestMessage<
            TRes> {
  _CopyWithImpl$Query$FindChannelLatestMessage$findChannelById$latestMessage(
    this._instance,
    this._then,
  );

  final Query$FindChannelLatestMessage$findChannelById$latestMessage _instance;

  final TRes Function(
      Query$FindChannelLatestMessage$findChannelById$latestMessage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createdAt = _undefined,
    Object? createdBy = _undefined,
    Object? messageText = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindChannelLatestMessage$findChannelById$latestMessage(
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as DateTime),
        createdBy: createdBy == _undefined
            ? _instance.createdBy
            : (createdBy as String?),
        messageText: messageText == _undefined
            ? _instance.messageText
            : (messageText as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FindChannelLatestMessage$findChannelById$latestMessage<
        TRes>
    implements
        CopyWith$Query$FindChannelLatestMessage$findChannelById$latestMessage<
            TRes> {
  _CopyWithStubImpl$Query$FindChannelLatestMessage$findChannelById$latestMessage(
      this._res);

  TRes _res;

  call({
    DateTime? createdAt,
    String? createdBy,
    String? messageText,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$FindChannelMessages {
  factory Variables$Query$FindChannelMessages({
    Input$ChannelMessageListFilter? filter,
    Input$FindObjectsOptions? options,
  }) =>
      Variables$Query$FindChannelMessages._({
        if (filter != null) r'filter': filter,
        if (options != null) r'options': options,
      });

  Variables$Query$FindChannelMessages._(this._$data);

  factory Variables$Query$FindChannelMessages.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('filter')) {
      final l$filter = data['filter'];
      result$data['filter'] = l$filter == null
          ? null
          : Input$ChannelMessageListFilter.fromJson(
              (l$filter as Map<String, dynamic>));
    }
    if (data.containsKey('options')) {
      final l$options = data['options'];
      result$data['options'] = l$options == null
          ? null
          : Input$FindObjectsOptions.fromJson(
              (l$options as Map<String, dynamic>));
    }
    return Variables$Query$FindChannelMessages._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$ChannelMessageListFilter? get filter =>
      (_$data['filter'] as Input$ChannelMessageListFilter?);
  Input$FindObjectsOptions? get options =>
      (_$data['options'] as Input$FindObjectsOptions?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('filter')) {
      final l$filter = filter;
      result$data['filter'] = l$filter?.toJson();
    }
    if (_$data.containsKey('options')) {
      final l$options = options;
      result$data['options'] = l$options?.toJson();
    }
    return result$data;
  }

  CopyWith$Variables$Query$FindChannelMessages<
          Variables$Query$FindChannelMessages>
      get copyWith => CopyWith$Variables$Query$FindChannelMessages(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$FindChannelMessages) ||
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
    final l$filter = filter;
    final l$options = options;
    return Object.hashAll([
      _$data.containsKey('filter') ? l$filter : const {},
      _$data.containsKey('options') ? l$options : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$FindChannelMessages<TRes> {
  factory CopyWith$Variables$Query$FindChannelMessages(
    Variables$Query$FindChannelMessages instance,
    TRes Function(Variables$Query$FindChannelMessages) then,
  ) = _CopyWithImpl$Variables$Query$FindChannelMessages;

  factory CopyWith$Variables$Query$FindChannelMessages.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$FindChannelMessages;

  TRes call({
    Input$ChannelMessageListFilter? filter,
    Input$FindObjectsOptions? options,
  });
}

class _CopyWithImpl$Variables$Query$FindChannelMessages<TRes>
    implements CopyWith$Variables$Query$FindChannelMessages<TRes> {
  _CopyWithImpl$Variables$Query$FindChannelMessages(
    this._instance,
    this._then,
  );

  final Variables$Query$FindChannelMessages _instance;

  final TRes Function(Variables$Query$FindChannelMessages) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? filter = _undefined,
    Object? options = _undefined,
  }) =>
      _then(Variables$Query$FindChannelMessages._({
        ..._instance._$data,
        if (filter != _undefined)
          'filter': (filter as Input$ChannelMessageListFilter?),
        if (options != _undefined)
          'options': (options as Input$FindObjectsOptions?),
      }));
}

class _CopyWithStubImpl$Variables$Query$FindChannelMessages<TRes>
    implements CopyWith$Variables$Query$FindChannelMessages<TRes> {
  _CopyWithStubImpl$Variables$Query$FindChannelMessages(this._res);

  TRes _res;

  call({
    Input$ChannelMessageListFilter? filter,
    Input$FindObjectsOptions? options,
  }) =>
      _res;
}

class Query$FindChannelMessages {
  Query$FindChannelMessages({
    required this.findChannelMessages,
    this.$__typename = 'Query',
  });

  factory Query$FindChannelMessages.fromJson(Map<String, dynamic> json) {
    final l$findChannelMessages = json['findChannelMessages'];
    final l$$__typename = json['__typename'];
    return Query$FindChannelMessages(
      findChannelMessages: (l$findChannelMessages as List<dynamic>)
          .map((e) => Query$FindChannelMessages$findChannelMessages.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$FindChannelMessages$findChannelMessages> findChannelMessages;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$findChannelMessages = findChannelMessages;
    _resultData['findChannelMessages'] =
        l$findChannelMessages.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$findChannelMessages = findChannelMessages;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$findChannelMessages.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FindChannelMessages) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$findChannelMessages = findChannelMessages;
    final lOther$findChannelMessages = other.findChannelMessages;
    if (l$findChannelMessages.length != lOther$findChannelMessages.length) {
      return false;
    }
    for (int i = 0; i < l$findChannelMessages.length; i++) {
      final l$findChannelMessages$entry = l$findChannelMessages[i];
      final lOther$findChannelMessages$entry = lOther$findChannelMessages[i];
      if (l$findChannelMessages$entry != lOther$findChannelMessages$entry) {
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

extension UtilityExtension$Query$FindChannelMessages
    on Query$FindChannelMessages {
  CopyWith$Query$FindChannelMessages<Query$FindChannelMessages> get copyWith =>
      CopyWith$Query$FindChannelMessages(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FindChannelMessages<TRes> {
  factory CopyWith$Query$FindChannelMessages(
    Query$FindChannelMessages instance,
    TRes Function(Query$FindChannelMessages) then,
  ) = _CopyWithImpl$Query$FindChannelMessages;

  factory CopyWith$Query$FindChannelMessages.stub(TRes res) =
      _CopyWithStubImpl$Query$FindChannelMessages;

  TRes call({
    List<Query$FindChannelMessages$findChannelMessages>? findChannelMessages,
    String? $__typename,
  });
  TRes findChannelMessages(
      Iterable<Query$FindChannelMessages$findChannelMessages> Function(
              Iterable<
                  CopyWith$Query$FindChannelMessages$findChannelMessages<
                      Query$FindChannelMessages$findChannelMessages>>)
          _fn);
}

class _CopyWithImpl$Query$FindChannelMessages<TRes>
    implements CopyWith$Query$FindChannelMessages<TRes> {
  _CopyWithImpl$Query$FindChannelMessages(
    this._instance,
    this._then,
  );

  final Query$FindChannelMessages _instance;

  final TRes Function(Query$FindChannelMessages) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? findChannelMessages = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindChannelMessages(
        findChannelMessages:
            findChannelMessages == _undefined || findChannelMessages == null
                ? _instance.findChannelMessages
                : (findChannelMessages
                    as List<Query$FindChannelMessages$findChannelMessages>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes findChannelMessages(
          Iterable<Query$FindChannelMessages$findChannelMessages> Function(
                  Iterable<
                      CopyWith$Query$FindChannelMessages$findChannelMessages<
                          Query$FindChannelMessages$findChannelMessages>>)
              _fn) =>
      call(
          findChannelMessages: _fn(_instance.findChannelMessages.map(
              (e) => CopyWith$Query$FindChannelMessages$findChannelMessages(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$FindChannelMessages<TRes>
    implements CopyWith$Query$FindChannelMessages<TRes> {
  _CopyWithStubImpl$Query$FindChannelMessages(this._res);

  TRes _res;

  call({
    List<Query$FindChannelMessages$findChannelMessages>? findChannelMessages,
    String? $__typename,
  }) =>
      _res;
  findChannelMessages(_fn) => _res;
}

const documentNodeQueryFindChannelMessages = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FindChannelMessages'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'filter')),
        type: NamedTypeNode(
          name: NameNode(value: 'ChannelMessageListFilter'),
          isNonNull: false,
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
        name: NameNode(value: 'findChannelMessages'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'filter'),
            value: VariableNode(name: NameNode(value: 'filter')),
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
            name: NameNode(value: 'createdBy'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'channelId'),
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
            name: NameNode(value: 'createdAt'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'replyToMessageId'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'deletedBy'),
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
            name: NameNode(value: 'deletedAt'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'editedAt'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'statuses'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'seenAt'),
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

class Query$FindChannelMessages$findChannelMessages {
  Query$FindChannelMessages$findChannelMessages({
    required this.id,
    this.createdBy,
    required this.channelId,
    this.messageText,
    required this.createdAt,
    this.replyToMessageId,
    this.deletedBy,
    this.updatedAt,
    this.deletedAt,
    this.editedAt,
    this.statuses,
    this.$__typename = 'ChannelMessage',
  });

  factory Query$FindChannelMessages$findChannelMessages.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$createdBy = json['createdBy'];
    final l$channelId = json['channelId'];
    final l$messageText = json['messageText'];
    final l$createdAt = json['createdAt'];
    final l$replyToMessageId = json['replyToMessageId'];
    final l$deletedBy = json['deletedBy'];
    final l$updatedAt = json['updatedAt'];
    final l$deletedAt = json['deletedAt'];
    final l$editedAt = json['editedAt'];
    final l$statuses = json['statuses'];
    final l$$__typename = json['__typename'];
    return Query$FindChannelMessages$findChannelMessages(
      id: (l$id as String),
      createdBy: (l$createdBy as String?),
      channelId: (l$channelId as String),
      messageText: (l$messageText as String?),
      createdAt: DateTime.parse((l$createdAt as String)),
      replyToMessageId: (l$replyToMessageId as String?),
      deletedBy: (l$deletedBy as String?),
      updatedAt:
          l$updatedAt == null ? null : DateTime.parse((l$updatedAt as String)),
      deletedAt:
          l$deletedAt == null ? null : DateTime.parse((l$deletedAt as String)),
      editedAt:
          l$editedAt == null ? null : DateTime.parse((l$editedAt as String)),
      statuses: (l$statuses as List<dynamic>?)
          ?.map((e) =>
              Query$FindChannelMessages$findChannelMessages$statuses.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String? createdBy;

  final String channelId;

  final String? messageText;

  final DateTime createdAt;

  final String? replyToMessageId;

  final String? deletedBy;

  final DateTime? updatedAt;

  final DateTime? deletedAt;

  final DateTime? editedAt;

  final List<Query$FindChannelMessages$findChannelMessages$statuses>? statuses;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$createdBy = createdBy;
    _resultData['createdBy'] = l$createdBy;
    final l$channelId = channelId;
    _resultData['channelId'] = l$channelId;
    final l$messageText = messageText;
    _resultData['messageText'] = l$messageText;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt.toIso8601String();
    final l$replyToMessageId = replyToMessageId;
    _resultData['replyToMessageId'] = l$replyToMessageId;
    final l$deletedBy = deletedBy;
    _resultData['deletedBy'] = l$deletedBy;
    final l$updatedAt = updatedAt;
    _resultData['updatedAt'] = l$updatedAt?.toIso8601String();
    final l$deletedAt = deletedAt;
    _resultData['deletedAt'] = l$deletedAt?.toIso8601String();
    final l$editedAt = editedAt;
    _resultData['editedAt'] = l$editedAt?.toIso8601String();
    final l$statuses = statuses;
    _resultData['statuses'] = l$statuses?.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$createdBy = createdBy;
    final l$channelId = channelId;
    final l$messageText = messageText;
    final l$createdAt = createdAt;
    final l$replyToMessageId = replyToMessageId;
    final l$deletedBy = deletedBy;
    final l$updatedAt = updatedAt;
    final l$deletedAt = deletedAt;
    final l$editedAt = editedAt;
    final l$statuses = statuses;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$createdBy,
      l$channelId,
      l$messageText,
      l$createdAt,
      l$replyToMessageId,
      l$deletedBy,
      l$updatedAt,
      l$deletedAt,
      l$editedAt,
      l$statuses == null ? null : Object.hashAll(l$statuses.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FindChannelMessages$findChannelMessages) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$createdBy = createdBy;
    final lOther$createdBy = other.createdBy;
    if (l$createdBy != lOther$createdBy) {
      return false;
    }
    final l$channelId = channelId;
    final lOther$channelId = other.channelId;
    if (l$channelId != lOther$channelId) {
      return false;
    }
    final l$messageText = messageText;
    final lOther$messageText = other.messageText;
    if (l$messageText != lOther$messageText) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$replyToMessageId = replyToMessageId;
    final lOther$replyToMessageId = other.replyToMessageId;
    if (l$replyToMessageId != lOther$replyToMessageId) {
      return false;
    }
    final l$deletedBy = deletedBy;
    final lOther$deletedBy = other.deletedBy;
    if (l$deletedBy != lOther$deletedBy) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    final l$deletedAt = deletedAt;
    final lOther$deletedAt = other.deletedAt;
    if (l$deletedAt != lOther$deletedAt) {
      return false;
    }
    final l$editedAt = editedAt;
    final lOther$editedAt = other.editedAt;
    if (l$editedAt != lOther$editedAt) {
      return false;
    }
    final l$statuses = statuses;
    final lOther$statuses = other.statuses;
    if (l$statuses != null && lOther$statuses != null) {
      if (l$statuses.length != lOther$statuses.length) {
        return false;
      }
      for (int i = 0; i < l$statuses.length; i++) {
        final l$statuses$entry = l$statuses[i];
        final lOther$statuses$entry = lOther$statuses[i];
        if (l$statuses$entry != lOther$statuses$entry) {
          return false;
        }
      }
    } else if (l$statuses != lOther$statuses) {
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

extension UtilityExtension$Query$FindChannelMessages$findChannelMessages
    on Query$FindChannelMessages$findChannelMessages {
  CopyWith$Query$FindChannelMessages$findChannelMessages<
          Query$FindChannelMessages$findChannelMessages>
      get copyWith => CopyWith$Query$FindChannelMessages$findChannelMessages(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindChannelMessages$findChannelMessages<TRes> {
  factory CopyWith$Query$FindChannelMessages$findChannelMessages(
    Query$FindChannelMessages$findChannelMessages instance,
    TRes Function(Query$FindChannelMessages$findChannelMessages) then,
  ) = _CopyWithImpl$Query$FindChannelMessages$findChannelMessages;

  factory CopyWith$Query$FindChannelMessages$findChannelMessages.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindChannelMessages$findChannelMessages;

  TRes call({
    String? id,
    String? createdBy,
    String? channelId,
    String? messageText,
    DateTime? createdAt,
    String? replyToMessageId,
    String? deletedBy,
    DateTime? updatedAt,
    DateTime? deletedAt,
    DateTime? editedAt,
    List<Query$FindChannelMessages$findChannelMessages$statuses>? statuses,
    String? $__typename,
  });
  TRes statuses(
      Iterable<Query$FindChannelMessages$findChannelMessages$statuses>? Function(
              Iterable<
                  CopyWith$Query$FindChannelMessages$findChannelMessages$statuses<
                      Query$FindChannelMessages$findChannelMessages$statuses>>?)
          _fn);
}

class _CopyWithImpl$Query$FindChannelMessages$findChannelMessages<TRes>
    implements CopyWith$Query$FindChannelMessages$findChannelMessages<TRes> {
  _CopyWithImpl$Query$FindChannelMessages$findChannelMessages(
    this._instance,
    this._then,
  );

  final Query$FindChannelMessages$findChannelMessages _instance;

  final TRes Function(Query$FindChannelMessages$findChannelMessages) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? createdBy = _undefined,
    Object? channelId = _undefined,
    Object? messageText = _undefined,
    Object? createdAt = _undefined,
    Object? replyToMessageId = _undefined,
    Object? deletedBy = _undefined,
    Object? updatedAt = _undefined,
    Object? deletedAt = _undefined,
    Object? editedAt = _undefined,
    Object? statuses = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindChannelMessages$findChannelMessages(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        createdBy: createdBy == _undefined
            ? _instance.createdBy
            : (createdBy as String?),
        channelId: channelId == _undefined || channelId == null
            ? _instance.channelId
            : (channelId as String),
        messageText: messageText == _undefined
            ? _instance.messageText
            : (messageText as String?),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as DateTime),
        replyToMessageId: replyToMessageId == _undefined
            ? _instance.replyToMessageId
            : (replyToMessageId as String?),
        deletedBy: deletedBy == _undefined
            ? _instance.deletedBy
            : (deletedBy as String?),
        updatedAt: updatedAt == _undefined
            ? _instance.updatedAt
            : (updatedAt as DateTime?),
        deletedAt: deletedAt == _undefined
            ? _instance.deletedAt
            : (deletedAt as DateTime?),
        editedAt: editedAt == _undefined
            ? _instance.editedAt
            : (editedAt as DateTime?),
        statuses: statuses == _undefined
            ? _instance.statuses
            : (statuses as List<
                Query$FindChannelMessages$findChannelMessages$statuses>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes statuses(
          Iterable<Query$FindChannelMessages$findChannelMessages$statuses>? Function(
                  Iterable<
                      CopyWith$Query$FindChannelMessages$findChannelMessages$statuses<
                          Query$FindChannelMessages$findChannelMessages$statuses>>?)
              _fn) =>
      call(
          statuses: _fn(_instance.statuses?.map((e) =>
              CopyWith$Query$FindChannelMessages$findChannelMessages$statuses(
                e,
                (i) => i,
              )))?.toList());
}

class _CopyWithStubImpl$Query$FindChannelMessages$findChannelMessages<TRes>
    implements CopyWith$Query$FindChannelMessages$findChannelMessages<TRes> {
  _CopyWithStubImpl$Query$FindChannelMessages$findChannelMessages(this._res);

  TRes _res;

  call({
    String? id,
    String? createdBy,
    String? channelId,
    String? messageText,
    DateTime? createdAt,
    String? replyToMessageId,
    String? deletedBy,
    DateTime? updatedAt,
    DateTime? deletedAt,
    DateTime? editedAt,
    List<Query$FindChannelMessages$findChannelMessages$statuses>? statuses,
    String? $__typename,
  }) =>
      _res;
  statuses(_fn) => _res;
}

class Query$FindChannelMessages$findChannelMessages$statuses {
  Query$FindChannelMessages$findChannelMessages$statuses({
    this.seenAt,
    required this.userId,
    this.$__typename = 'ChannelMessageStatus',
  });

  factory Query$FindChannelMessages$findChannelMessages$statuses.fromJson(
      Map<String, dynamic> json) {
    final l$seenAt = json['seenAt'];
    final l$userId = json['userId'];
    final l$$__typename = json['__typename'];
    return Query$FindChannelMessages$findChannelMessages$statuses(
      seenAt: l$seenAt == null ? null : DateTime.parse((l$seenAt as String)),
      userId: (l$userId as String),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime? seenAt;

  final String userId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$seenAt = seenAt;
    _resultData['seenAt'] = l$seenAt?.toIso8601String();
    final l$userId = userId;
    _resultData['userId'] = l$userId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$seenAt = seenAt;
    final l$userId = userId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$seenAt,
      l$userId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FindChannelMessages$findChannelMessages$statuses) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$seenAt = seenAt;
    final lOther$seenAt = other.seenAt;
    if (l$seenAt != lOther$seenAt) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) {
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

extension UtilityExtension$Query$FindChannelMessages$findChannelMessages$statuses
    on Query$FindChannelMessages$findChannelMessages$statuses {
  CopyWith$Query$FindChannelMessages$findChannelMessages$statuses<
          Query$FindChannelMessages$findChannelMessages$statuses>
      get copyWith =>
          CopyWith$Query$FindChannelMessages$findChannelMessages$statuses(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindChannelMessages$findChannelMessages$statuses<
    TRes> {
  factory CopyWith$Query$FindChannelMessages$findChannelMessages$statuses(
    Query$FindChannelMessages$findChannelMessages$statuses instance,
    TRes Function(Query$FindChannelMessages$findChannelMessages$statuses) then,
  ) = _CopyWithImpl$Query$FindChannelMessages$findChannelMessages$statuses;

  factory CopyWith$Query$FindChannelMessages$findChannelMessages$statuses.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindChannelMessages$findChannelMessages$statuses;

  TRes call({
    DateTime? seenAt,
    String? userId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindChannelMessages$findChannelMessages$statuses<TRes>
    implements
        CopyWith$Query$FindChannelMessages$findChannelMessages$statuses<TRes> {
  _CopyWithImpl$Query$FindChannelMessages$findChannelMessages$statuses(
    this._instance,
    this._then,
  );

  final Query$FindChannelMessages$findChannelMessages$statuses _instance;

  final TRes Function(Query$FindChannelMessages$findChannelMessages$statuses)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? seenAt = _undefined,
    Object? userId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindChannelMessages$findChannelMessages$statuses(
        seenAt: seenAt == _undefined ? _instance.seenAt : (seenAt as DateTime?),
        userId: userId == _undefined || userId == null
            ? _instance.userId
            : (userId as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FindChannelMessages$findChannelMessages$statuses<
        TRes>
    implements
        CopyWith$Query$FindChannelMessages$findChannelMessages$statuses<TRes> {
  _CopyWithStubImpl$Query$FindChannelMessages$findChannelMessages$statuses(
      this._res);

  TRes _res;

  call({
    DateTime? seenAt,
    String? userId,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$FindChannelMessageById {
  factory Variables$Query$FindChannelMessageById(
          {required String channelMessageId}) =>
      Variables$Query$FindChannelMessageById._({
        r'channelMessageId': channelMessageId,
      });

  Variables$Query$FindChannelMessageById._(this._$data);

  factory Variables$Query$FindChannelMessageById.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$channelMessageId = data['channelMessageId'];
    result$data['channelMessageId'] = (l$channelMessageId as String);
    return Variables$Query$FindChannelMessageById._(result$data);
  }

  Map<String, dynamic> _$data;

  String get channelMessageId => (_$data['channelMessageId'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$channelMessageId = channelMessageId;
    result$data['channelMessageId'] = l$channelMessageId;
    return result$data;
  }

  CopyWith$Variables$Query$FindChannelMessageById<
          Variables$Query$FindChannelMessageById>
      get copyWith => CopyWith$Variables$Query$FindChannelMessageById(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$FindChannelMessageById) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$channelMessageId = channelMessageId;
    final lOther$channelMessageId = other.channelMessageId;
    if (l$channelMessageId != lOther$channelMessageId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$channelMessageId = channelMessageId;
    return Object.hashAll([l$channelMessageId]);
  }
}

abstract class CopyWith$Variables$Query$FindChannelMessageById<TRes> {
  factory CopyWith$Variables$Query$FindChannelMessageById(
    Variables$Query$FindChannelMessageById instance,
    TRes Function(Variables$Query$FindChannelMessageById) then,
  ) = _CopyWithImpl$Variables$Query$FindChannelMessageById;

  factory CopyWith$Variables$Query$FindChannelMessageById.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$FindChannelMessageById;

  TRes call({String? channelMessageId});
}

class _CopyWithImpl$Variables$Query$FindChannelMessageById<TRes>
    implements CopyWith$Variables$Query$FindChannelMessageById<TRes> {
  _CopyWithImpl$Variables$Query$FindChannelMessageById(
    this._instance,
    this._then,
  );

  final Variables$Query$FindChannelMessageById _instance;

  final TRes Function(Variables$Query$FindChannelMessageById) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? channelMessageId = _undefined}) =>
      _then(Variables$Query$FindChannelMessageById._({
        ..._instance._$data,
        if (channelMessageId != _undefined && channelMessageId != null)
          'channelMessageId': (channelMessageId as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$FindChannelMessageById<TRes>
    implements CopyWith$Variables$Query$FindChannelMessageById<TRes> {
  _CopyWithStubImpl$Variables$Query$FindChannelMessageById(this._res);

  TRes _res;

  call({String? channelMessageId}) => _res;
}

class Query$FindChannelMessageById {
  Query$FindChannelMessageById({
    required this.findChannelMessageById,
    this.$__typename = 'Query',
  });

  factory Query$FindChannelMessageById.fromJson(Map<String, dynamic> json) {
    final l$findChannelMessageById = json['findChannelMessageById'];
    final l$$__typename = json['__typename'];
    return Query$FindChannelMessageById(
      findChannelMessageById:
          Query$FindChannelMessageById$findChannelMessageById.fromJson(
              (l$findChannelMessageById as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$FindChannelMessageById$findChannelMessageById
      findChannelMessageById;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$findChannelMessageById = findChannelMessageById;
    _resultData['findChannelMessageById'] = l$findChannelMessageById.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$findChannelMessageById = findChannelMessageById;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$findChannelMessageById,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FindChannelMessageById) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$findChannelMessageById = findChannelMessageById;
    final lOther$findChannelMessageById = other.findChannelMessageById;
    if (l$findChannelMessageById != lOther$findChannelMessageById) {
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

extension UtilityExtension$Query$FindChannelMessageById
    on Query$FindChannelMessageById {
  CopyWith$Query$FindChannelMessageById<Query$FindChannelMessageById>
      get copyWith => CopyWith$Query$FindChannelMessageById(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindChannelMessageById<TRes> {
  factory CopyWith$Query$FindChannelMessageById(
    Query$FindChannelMessageById instance,
    TRes Function(Query$FindChannelMessageById) then,
  ) = _CopyWithImpl$Query$FindChannelMessageById;

  factory CopyWith$Query$FindChannelMessageById.stub(TRes res) =
      _CopyWithStubImpl$Query$FindChannelMessageById;

  TRes call({
    Query$FindChannelMessageById$findChannelMessageById? findChannelMessageById,
    String? $__typename,
  });
  CopyWith$Query$FindChannelMessageById$findChannelMessageById<TRes>
      get findChannelMessageById;
}

class _CopyWithImpl$Query$FindChannelMessageById<TRes>
    implements CopyWith$Query$FindChannelMessageById<TRes> {
  _CopyWithImpl$Query$FindChannelMessageById(
    this._instance,
    this._then,
  );

  final Query$FindChannelMessageById _instance;

  final TRes Function(Query$FindChannelMessageById) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? findChannelMessageById = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindChannelMessageById(
        findChannelMessageById: findChannelMessageById == _undefined ||
                findChannelMessageById == null
            ? _instance.findChannelMessageById
            : (findChannelMessageById
                as Query$FindChannelMessageById$findChannelMessageById),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$FindChannelMessageById$findChannelMessageById<TRes>
      get findChannelMessageById {
    final local$findChannelMessageById = _instance.findChannelMessageById;
    return CopyWith$Query$FindChannelMessageById$findChannelMessageById(
        local$findChannelMessageById, (e) => call(findChannelMessageById: e));
  }
}

class _CopyWithStubImpl$Query$FindChannelMessageById<TRes>
    implements CopyWith$Query$FindChannelMessageById<TRes> {
  _CopyWithStubImpl$Query$FindChannelMessageById(this._res);

  TRes _res;

  call({
    Query$FindChannelMessageById$findChannelMessageById? findChannelMessageById,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$FindChannelMessageById$findChannelMessageById<TRes>
      get findChannelMessageById =>
          CopyWith$Query$FindChannelMessageById$findChannelMessageById.stub(
              _res);
}

const documentNodeQueryFindChannelMessageById = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FindChannelMessageById'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'channelMessageId')),
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
        name: NameNode(value: 'findChannelMessageById'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'channelMessageId')),
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
            name: NameNode(value: 'createdBy'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'channelId'),
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
            name: NameNode(value: 'createdAt'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'replyToMessageId'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'deletedBy'),
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
            name: NameNode(value: 'deletedAt'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'editedAt'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'statuses'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'seenAt'),
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

class Query$FindChannelMessageById$findChannelMessageById {
  Query$FindChannelMessageById$findChannelMessageById({
    required this.id,
    this.createdBy,
    required this.channelId,
    this.messageText,
    required this.createdAt,
    this.replyToMessageId,
    this.deletedBy,
    this.updatedAt,
    this.deletedAt,
    this.editedAt,
    this.statuses,
    this.$__typename = 'ChannelMessage',
  });

  factory Query$FindChannelMessageById$findChannelMessageById.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$createdBy = json['createdBy'];
    final l$channelId = json['channelId'];
    final l$messageText = json['messageText'];
    final l$createdAt = json['createdAt'];
    final l$replyToMessageId = json['replyToMessageId'];
    final l$deletedBy = json['deletedBy'];
    final l$updatedAt = json['updatedAt'];
    final l$deletedAt = json['deletedAt'];
    final l$editedAt = json['editedAt'];
    final l$statuses = json['statuses'];
    final l$$__typename = json['__typename'];
    return Query$FindChannelMessageById$findChannelMessageById(
      id: (l$id as String),
      createdBy: (l$createdBy as String?),
      channelId: (l$channelId as String),
      messageText: (l$messageText as String?),
      createdAt: DateTime.parse((l$createdAt as String)),
      replyToMessageId: (l$replyToMessageId as String?),
      deletedBy: (l$deletedBy as String?),
      updatedAt:
          l$updatedAt == null ? null : DateTime.parse((l$updatedAt as String)),
      deletedAt:
          l$deletedAt == null ? null : DateTime.parse((l$deletedAt as String)),
      editedAt:
          l$editedAt == null ? null : DateTime.parse((l$editedAt as String)),
      statuses: (l$statuses as List<dynamic>?)
          ?.map((e) =>
              Query$FindChannelMessageById$findChannelMessageById$statuses
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String? createdBy;

  final String channelId;

  final String? messageText;

  final DateTime createdAt;

  final String? replyToMessageId;

  final String? deletedBy;

  final DateTime? updatedAt;

  final DateTime? deletedAt;

  final DateTime? editedAt;

  final List<Query$FindChannelMessageById$findChannelMessageById$statuses>?
      statuses;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$createdBy = createdBy;
    _resultData['createdBy'] = l$createdBy;
    final l$channelId = channelId;
    _resultData['channelId'] = l$channelId;
    final l$messageText = messageText;
    _resultData['messageText'] = l$messageText;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt.toIso8601String();
    final l$replyToMessageId = replyToMessageId;
    _resultData['replyToMessageId'] = l$replyToMessageId;
    final l$deletedBy = deletedBy;
    _resultData['deletedBy'] = l$deletedBy;
    final l$updatedAt = updatedAt;
    _resultData['updatedAt'] = l$updatedAt?.toIso8601String();
    final l$deletedAt = deletedAt;
    _resultData['deletedAt'] = l$deletedAt?.toIso8601String();
    final l$editedAt = editedAt;
    _resultData['editedAt'] = l$editedAt?.toIso8601String();
    final l$statuses = statuses;
    _resultData['statuses'] = l$statuses?.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$createdBy = createdBy;
    final l$channelId = channelId;
    final l$messageText = messageText;
    final l$createdAt = createdAt;
    final l$replyToMessageId = replyToMessageId;
    final l$deletedBy = deletedBy;
    final l$updatedAt = updatedAt;
    final l$deletedAt = deletedAt;
    final l$editedAt = editedAt;
    final l$statuses = statuses;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$createdBy,
      l$channelId,
      l$messageText,
      l$createdAt,
      l$replyToMessageId,
      l$deletedBy,
      l$updatedAt,
      l$deletedAt,
      l$editedAt,
      l$statuses == null ? null : Object.hashAll(l$statuses.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FindChannelMessageById$findChannelMessageById) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$createdBy = createdBy;
    final lOther$createdBy = other.createdBy;
    if (l$createdBy != lOther$createdBy) {
      return false;
    }
    final l$channelId = channelId;
    final lOther$channelId = other.channelId;
    if (l$channelId != lOther$channelId) {
      return false;
    }
    final l$messageText = messageText;
    final lOther$messageText = other.messageText;
    if (l$messageText != lOther$messageText) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$replyToMessageId = replyToMessageId;
    final lOther$replyToMessageId = other.replyToMessageId;
    if (l$replyToMessageId != lOther$replyToMessageId) {
      return false;
    }
    final l$deletedBy = deletedBy;
    final lOther$deletedBy = other.deletedBy;
    if (l$deletedBy != lOther$deletedBy) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    final l$deletedAt = deletedAt;
    final lOther$deletedAt = other.deletedAt;
    if (l$deletedAt != lOther$deletedAt) {
      return false;
    }
    final l$editedAt = editedAt;
    final lOther$editedAt = other.editedAt;
    if (l$editedAt != lOther$editedAt) {
      return false;
    }
    final l$statuses = statuses;
    final lOther$statuses = other.statuses;
    if (l$statuses != null && lOther$statuses != null) {
      if (l$statuses.length != lOther$statuses.length) {
        return false;
      }
      for (int i = 0; i < l$statuses.length; i++) {
        final l$statuses$entry = l$statuses[i];
        final lOther$statuses$entry = lOther$statuses[i];
        if (l$statuses$entry != lOther$statuses$entry) {
          return false;
        }
      }
    } else if (l$statuses != lOther$statuses) {
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

extension UtilityExtension$Query$FindChannelMessageById$findChannelMessageById
    on Query$FindChannelMessageById$findChannelMessageById {
  CopyWith$Query$FindChannelMessageById$findChannelMessageById<
          Query$FindChannelMessageById$findChannelMessageById>
      get copyWith =>
          CopyWith$Query$FindChannelMessageById$findChannelMessageById(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindChannelMessageById$findChannelMessageById<
    TRes> {
  factory CopyWith$Query$FindChannelMessageById$findChannelMessageById(
    Query$FindChannelMessageById$findChannelMessageById instance,
    TRes Function(Query$FindChannelMessageById$findChannelMessageById) then,
  ) = _CopyWithImpl$Query$FindChannelMessageById$findChannelMessageById;

  factory CopyWith$Query$FindChannelMessageById$findChannelMessageById.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindChannelMessageById$findChannelMessageById;

  TRes call({
    String? id,
    String? createdBy,
    String? channelId,
    String? messageText,
    DateTime? createdAt,
    String? replyToMessageId,
    String? deletedBy,
    DateTime? updatedAt,
    DateTime? deletedAt,
    DateTime? editedAt,
    List<Query$FindChannelMessageById$findChannelMessageById$statuses>?
        statuses,
    String? $__typename,
  });
  TRes statuses(
      Iterable<Query$FindChannelMessageById$findChannelMessageById$statuses>? Function(
              Iterable<
                  CopyWith$Query$FindChannelMessageById$findChannelMessageById$statuses<
                      Query$FindChannelMessageById$findChannelMessageById$statuses>>?)
          _fn);
}

class _CopyWithImpl$Query$FindChannelMessageById$findChannelMessageById<TRes>
    implements
        CopyWith$Query$FindChannelMessageById$findChannelMessageById<TRes> {
  _CopyWithImpl$Query$FindChannelMessageById$findChannelMessageById(
    this._instance,
    this._then,
  );

  final Query$FindChannelMessageById$findChannelMessageById _instance;

  final TRes Function(Query$FindChannelMessageById$findChannelMessageById)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? createdBy = _undefined,
    Object? channelId = _undefined,
    Object? messageText = _undefined,
    Object? createdAt = _undefined,
    Object? replyToMessageId = _undefined,
    Object? deletedBy = _undefined,
    Object? updatedAt = _undefined,
    Object? deletedAt = _undefined,
    Object? editedAt = _undefined,
    Object? statuses = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindChannelMessageById$findChannelMessageById(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        createdBy: createdBy == _undefined
            ? _instance.createdBy
            : (createdBy as String?),
        channelId: channelId == _undefined || channelId == null
            ? _instance.channelId
            : (channelId as String),
        messageText: messageText == _undefined
            ? _instance.messageText
            : (messageText as String?),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as DateTime),
        replyToMessageId: replyToMessageId == _undefined
            ? _instance.replyToMessageId
            : (replyToMessageId as String?),
        deletedBy: deletedBy == _undefined
            ? _instance.deletedBy
            : (deletedBy as String?),
        updatedAt: updatedAt == _undefined
            ? _instance.updatedAt
            : (updatedAt as DateTime?),
        deletedAt: deletedAt == _undefined
            ? _instance.deletedAt
            : (deletedAt as DateTime?),
        editedAt: editedAt == _undefined
            ? _instance.editedAt
            : (editedAt as DateTime?),
        statuses: statuses == _undefined
            ? _instance.statuses
            : (statuses as List<
                Query$FindChannelMessageById$findChannelMessageById$statuses>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes statuses(
          Iterable<Query$FindChannelMessageById$findChannelMessageById$statuses>? Function(
                  Iterable<
                      CopyWith$Query$FindChannelMessageById$findChannelMessageById$statuses<
                          Query$FindChannelMessageById$findChannelMessageById$statuses>>?)
              _fn) =>
      call(
          statuses: _fn(_instance.statuses?.map((e) =>
              CopyWith$Query$FindChannelMessageById$findChannelMessageById$statuses(
                e,
                (i) => i,
              )))?.toList());
}

class _CopyWithStubImpl$Query$FindChannelMessageById$findChannelMessageById<
        TRes>
    implements
        CopyWith$Query$FindChannelMessageById$findChannelMessageById<TRes> {
  _CopyWithStubImpl$Query$FindChannelMessageById$findChannelMessageById(
      this._res);

  TRes _res;

  call({
    String? id,
    String? createdBy,
    String? channelId,
    String? messageText,
    DateTime? createdAt,
    String? replyToMessageId,
    String? deletedBy,
    DateTime? updatedAt,
    DateTime? deletedAt,
    DateTime? editedAt,
    List<Query$FindChannelMessageById$findChannelMessageById$statuses>?
        statuses,
    String? $__typename,
  }) =>
      _res;
  statuses(_fn) => _res;
}

class Query$FindChannelMessageById$findChannelMessageById$statuses {
  Query$FindChannelMessageById$findChannelMessageById$statuses({
    this.seenAt,
    required this.userId,
    this.$__typename = 'ChannelMessageStatus',
  });

  factory Query$FindChannelMessageById$findChannelMessageById$statuses.fromJson(
      Map<String, dynamic> json) {
    final l$seenAt = json['seenAt'];
    final l$userId = json['userId'];
    final l$$__typename = json['__typename'];
    return Query$FindChannelMessageById$findChannelMessageById$statuses(
      seenAt: l$seenAt == null ? null : DateTime.parse((l$seenAt as String)),
      userId: (l$userId as String),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime? seenAt;

  final String userId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$seenAt = seenAt;
    _resultData['seenAt'] = l$seenAt?.toIso8601String();
    final l$userId = userId;
    _resultData['userId'] = l$userId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$seenAt = seenAt;
    final l$userId = userId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$seenAt,
      l$userId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$FindChannelMessageById$findChannelMessageById$statuses) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$seenAt = seenAt;
    final lOther$seenAt = other.seenAt;
    if (l$seenAt != lOther$seenAt) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) {
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

extension UtilityExtension$Query$FindChannelMessageById$findChannelMessageById$statuses
    on Query$FindChannelMessageById$findChannelMessageById$statuses {
  CopyWith$Query$FindChannelMessageById$findChannelMessageById$statuses<
          Query$FindChannelMessageById$findChannelMessageById$statuses>
      get copyWith =>
          CopyWith$Query$FindChannelMessageById$findChannelMessageById$statuses(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindChannelMessageById$findChannelMessageById$statuses<
    TRes> {
  factory CopyWith$Query$FindChannelMessageById$findChannelMessageById$statuses(
    Query$FindChannelMessageById$findChannelMessageById$statuses instance,
    TRes Function(Query$FindChannelMessageById$findChannelMessageById$statuses)
        then,
  ) = _CopyWithImpl$Query$FindChannelMessageById$findChannelMessageById$statuses;

  factory CopyWith$Query$FindChannelMessageById$findChannelMessageById$statuses.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindChannelMessageById$findChannelMessageById$statuses;

  TRes call({
    DateTime? seenAt,
    String? userId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindChannelMessageById$findChannelMessageById$statuses<
        TRes>
    implements
        CopyWith$Query$FindChannelMessageById$findChannelMessageById$statuses<
            TRes> {
  _CopyWithImpl$Query$FindChannelMessageById$findChannelMessageById$statuses(
    this._instance,
    this._then,
  );

  final Query$FindChannelMessageById$findChannelMessageById$statuses _instance;

  final TRes Function(
      Query$FindChannelMessageById$findChannelMessageById$statuses) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? seenAt = _undefined,
    Object? userId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindChannelMessageById$findChannelMessageById$statuses(
        seenAt: seenAt == _undefined ? _instance.seenAt : (seenAt as DateTime?),
        userId: userId == _undefined || userId == null
            ? _instance.userId
            : (userId as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FindChannelMessageById$findChannelMessageById$statuses<
        TRes>
    implements
        CopyWith$Query$FindChannelMessageById$findChannelMessageById$statuses<
            TRes> {
  _CopyWithStubImpl$Query$FindChannelMessageById$findChannelMessageById$statuses(
      this._res);

  TRes _res;

  call({
    DateTime? seenAt,
    String? userId,
    String? $__typename,
  }) =>
      _res;
}

class Query$InboxUnseenArchivedMessages {
  Query$InboxUnseenArchivedMessages({
    required this.myInbox,
    this.$__typename = 'Query',
  });

  factory Query$InboxUnseenArchivedMessages.fromJson(
      Map<String, dynamic> json) {
    final l$myInbox = json['myInbox'];
    final l$$__typename = json['__typename'];
    return Query$InboxUnseenArchivedMessages(
      myInbox: Query$InboxUnseenArchivedMessages$myInbox.fromJson(
          (l$myInbox as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$InboxUnseenArchivedMessages$myInbox myInbox;

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
    if (!(other is Query$InboxUnseenArchivedMessages) ||
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

extension UtilityExtension$Query$InboxUnseenArchivedMessages
    on Query$InboxUnseenArchivedMessages {
  CopyWith$Query$InboxUnseenArchivedMessages<Query$InboxUnseenArchivedMessages>
      get copyWith => CopyWith$Query$InboxUnseenArchivedMessages(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$InboxUnseenArchivedMessages<TRes> {
  factory CopyWith$Query$InboxUnseenArchivedMessages(
    Query$InboxUnseenArchivedMessages instance,
    TRes Function(Query$InboxUnseenArchivedMessages) then,
  ) = _CopyWithImpl$Query$InboxUnseenArchivedMessages;

  factory CopyWith$Query$InboxUnseenArchivedMessages.stub(TRes res) =
      _CopyWithStubImpl$Query$InboxUnseenArchivedMessages;

  TRes call({
    Query$InboxUnseenArchivedMessages$myInbox? myInbox,
    String? $__typename,
  });
  CopyWith$Query$InboxUnseenArchivedMessages$myInbox<TRes> get myInbox;
}

class _CopyWithImpl$Query$InboxUnseenArchivedMessages<TRes>
    implements CopyWith$Query$InboxUnseenArchivedMessages<TRes> {
  _CopyWithImpl$Query$InboxUnseenArchivedMessages(
    this._instance,
    this._then,
  );

  final Query$InboxUnseenArchivedMessages _instance;

  final TRes Function(Query$InboxUnseenArchivedMessages) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? myInbox = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$InboxUnseenArchivedMessages(
        myInbox: myInbox == _undefined || myInbox == null
            ? _instance.myInbox
            : (myInbox as Query$InboxUnseenArchivedMessages$myInbox),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$InboxUnseenArchivedMessages$myInbox<TRes> get myInbox {
    final local$myInbox = _instance.myInbox;
    return CopyWith$Query$InboxUnseenArchivedMessages$myInbox(
        local$myInbox, (e) => call(myInbox: e));
  }
}

class _CopyWithStubImpl$Query$InboxUnseenArchivedMessages<TRes>
    implements CopyWith$Query$InboxUnseenArchivedMessages<TRes> {
  _CopyWithStubImpl$Query$InboxUnseenArchivedMessages(this._res);

  TRes _res;

  call({
    Query$InboxUnseenArchivedMessages$myInbox? myInbox,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$InboxUnseenArchivedMessages$myInbox<TRes> get myInbox =>
      CopyWith$Query$InboxUnseenArchivedMessages$myInbox.stub(_res);
}

const documentNodeQueryInboxUnseenArchivedMessages = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'InboxUnseenArchivedMessages'),
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
                name: NameNode(value: 'unseenArchivedMessages'),
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

class Query$InboxUnseenArchivedMessages$myInbox {
  Query$InboxUnseenArchivedMessages$myInbox({
    this.channels,
    this.$__typename = 'UserInbox',
  });

  factory Query$InboxUnseenArchivedMessages$myInbox.fromJson(
      Map<String, dynamic> json) {
    final l$channels = json['channels'];
    final l$$__typename = json['__typename'];
    return Query$InboxUnseenArchivedMessages$myInbox(
      channels: l$channels == null
          ? null
          : Query$InboxUnseenArchivedMessages$myInbox$channels.fromJson(
              (l$channels as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$InboxUnseenArchivedMessages$myInbox$channels? channels;

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
    if (!(other is Query$InboxUnseenArchivedMessages$myInbox) ||
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

extension UtilityExtension$Query$InboxUnseenArchivedMessages$myInbox
    on Query$InboxUnseenArchivedMessages$myInbox {
  CopyWith$Query$InboxUnseenArchivedMessages$myInbox<
          Query$InboxUnseenArchivedMessages$myInbox>
      get copyWith => CopyWith$Query$InboxUnseenArchivedMessages$myInbox(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$InboxUnseenArchivedMessages$myInbox<TRes> {
  factory CopyWith$Query$InboxUnseenArchivedMessages$myInbox(
    Query$InboxUnseenArchivedMessages$myInbox instance,
    TRes Function(Query$InboxUnseenArchivedMessages$myInbox) then,
  ) = _CopyWithImpl$Query$InboxUnseenArchivedMessages$myInbox;

  factory CopyWith$Query$InboxUnseenArchivedMessages$myInbox.stub(TRes res) =
      _CopyWithStubImpl$Query$InboxUnseenArchivedMessages$myInbox;

  TRes call({
    Query$InboxUnseenArchivedMessages$myInbox$channels? channels,
    String? $__typename,
  });
  CopyWith$Query$InboxUnseenArchivedMessages$myInbox$channels<TRes>
      get channels;
}

class _CopyWithImpl$Query$InboxUnseenArchivedMessages$myInbox<TRes>
    implements CopyWith$Query$InboxUnseenArchivedMessages$myInbox<TRes> {
  _CopyWithImpl$Query$InboxUnseenArchivedMessages$myInbox(
    this._instance,
    this._then,
  );

  final Query$InboxUnseenArchivedMessages$myInbox _instance;

  final TRes Function(Query$InboxUnseenArchivedMessages$myInbox) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? channels = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$InboxUnseenArchivedMessages$myInbox(
        channels: channels == _undefined
            ? _instance.channels
            : (channels as Query$InboxUnseenArchivedMessages$myInbox$channels?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$InboxUnseenArchivedMessages$myInbox$channels<TRes>
      get channels {
    final local$channels = _instance.channels;
    return local$channels == null
        ? CopyWith$Query$InboxUnseenArchivedMessages$myInbox$channels.stub(
            _then(_instance))
        : CopyWith$Query$InboxUnseenArchivedMessages$myInbox$channels(
            local$channels, (e) => call(channels: e));
  }
}

class _CopyWithStubImpl$Query$InboxUnseenArchivedMessages$myInbox<TRes>
    implements CopyWith$Query$InboxUnseenArchivedMessages$myInbox<TRes> {
  _CopyWithStubImpl$Query$InboxUnseenArchivedMessages$myInbox(this._res);

  TRes _res;

  call({
    Query$InboxUnseenArchivedMessages$myInbox$channels? channels,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$InboxUnseenArchivedMessages$myInbox$channels<TRes>
      get channels =>
          CopyWith$Query$InboxUnseenArchivedMessages$myInbox$channels.stub(
              _res);
}

class Query$InboxUnseenArchivedMessages$myInbox$channels {
  Query$InboxUnseenArchivedMessages$myInbox$channels({
    this.unseenArchivedMessages,
    this.$__typename = 'ChannelInbox',
  });

  factory Query$InboxUnseenArchivedMessages$myInbox$channels.fromJson(
      Map<String, dynamic> json) {
    final l$unseenArchivedMessages = json['unseenArchivedMessages'];
    final l$$__typename = json['__typename'];
    return Query$InboxUnseenArchivedMessages$myInbox$channels(
      unseenArchivedMessages: (l$unseenArchivedMessages as List<dynamic>?)
          ?.map((e) =>
              Query$InboxUnseenArchivedMessages$myInbox$channels$unseenArchivedMessages
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
          Query$InboxUnseenArchivedMessages$myInbox$channels$unseenArchivedMessages>?
      unseenArchivedMessages;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$unseenArchivedMessages = unseenArchivedMessages;
    _resultData['unseenArchivedMessages'] =
        l$unseenArchivedMessages?.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$unseenArchivedMessages = unseenArchivedMessages;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$unseenArchivedMessages == null
          ? null
          : Object.hashAll(l$unseenArchivedMessages.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$InboxUnseenArchivedMessages$myInbox$channels) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$unseenArchivedMessages = unseenArchivedMessages;
    final lOther$unseenArchivedMessages = other.unseenArchivedMessages;
    if (l$unseenArchivedMessages != null &&
        lOther$unseenArchivedMessages != null) {
      if (l$unseenArchivedMessages.length !=
          lOther$unseenArchivedMessages.length) {
        return false;
      }
      for (int i = 0; i < l$unseenArchivedMessages.length; i++) {
        final l$unseenArchivedMessages$entry = l$unseenArchivedMessages[i];
        final lOther$unseenArchivedMessages$entry =
            lOther$unseenArchivedMessages[i];
        if (l$unseenArchivedMessages$entry !=
            lOther$unseenArchivedMessages$entry) {
          return false;
        }
      }
    } else if (l$unseenArchivedMessages != lOther$unseenArchivedMessages) {
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

extension UtilityExtension$Query$InboxUnseenArchivedMessages$myInbox$channels
    on Query$InboxUnseenArchivedMessages$myInbox$channels {
  CopyWith$Query$InboxUnseenArchivedMessages$myInbox$channels<
          Query$InboxUnseenArchivedMessages$myInbox$channels>
      get copyWith =>
          CopyWith$Query$InboxUnseenArchivedMessages$myInbox$channels(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$InboxUnseenArchivedMessages$myInbox$channels<
    TRes> {
  factory CopyWith$Query$InboxUnseenArchivedMessages$myInbox$channels(
    Query$InboxUnseenArchivedMessages$myInbox$channels instance,
    TRes Function(Query$InboxUnseenArchivedMessages$myInbox$channels) then,
  ) = _CopyWithImpl$Query$InboxUnseenArchivedMessages$myInbox$channels;

  factory CopyWith$Query$InboxUnseenArchivedMessages$myInbox$channels.stub(
          TRes res) =
      _CopyWithStubImpl$Query$InboxUnseenArchivedMessages$myInbox$channels;

  TRes call({
    List<Query$InboxUnseenArchivedMessages$myInbox$channels$unseenArchivedMessages>?
        unseenArchivedMessages,
    String? $__typename,
  });
  TRes unseenArchivedMessages(
      Iterable<Query$InboxUnseenArchivedMessages$myInbox$channels$unseenArchivedMessages>? Function(
              Iterable<
                  CopyWith$Query$InboxUnseenArchivedMessages$myInbox$channels$unseenArchivedMessages<
                      Query$InboxUnseenArchivedMessages$myInbox$channels$unseenArchivedMessages>>?)
          _fn);
}

class _CopyWithImpl$Query$InboxUnseenArchivedMessages$myInbox$channels<TRes>
    implements
        CopyWith$Query$InboxUnseenArchivedMessages$myInbox$channels<TRes> {
  _CopyWithImpl$Query$InboxUnseenArchivedMessages$myInbox$channels(
    this._instance,
    this._then,
  );

  final Query$InboxUnseenArchivedMessages$myInbox$channels _instance;

  final TRes Function(Query$InboxUnseenArchivedMessages$myInbox$channels) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? unseenArchivedMessages = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$InboxUnseenArchivedMessages$myInbox$channels(
        unseenArchivedMessages: unseenArchivedMessages == _undefined
            ? _instance.unseenArchivedMessages
            : (unseenArchivedMessages as List<
                Query$InboxUnseenArchivedMessages$myInbox$channels$unseenArchivedMessages>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes unseenArchivedMessages(
          Iterable<Query$InboxUnseenArchivedMessages$myInbox$channels$unseenArchivedMessages>? Function(
                  Iterable<
                      CopyWith$Query$InboxUnseenArchivedMessages$myInbox$channels$unseenArchivedMessages<
                          Query$InboxUnseenArchivedMessages$myInbox$channels$unseenArchivedMessages>>?)
              _fn) =>
      call(
          unseenArchivedMessages: _fn(_instance.unseenArchivedMessages?.map((e) =>
              CopyWith$Query$InboxUnseenArchivedMessages$myInbox$channels$unseenArchivedMessages(
                e,
                (i) => i,
              )))?.toList());
}

class _CopyWithStubImpl$Query$InboxUnseenArchivedMessages$myInbox$channels<TRes>
    implements
        CopyWith$Query$InboxUnseenArchivedMessages$myInbox$channels<TRes> {
  _CopyWithStubImpl$Query$InboxUnseenArchivedMessages$myInbox$channels(
      this._res);

  TRes _res;

  call({
    List<Query$InboxUnseenArchivedMessages$myInbox$channels$unseenArchivedMessages>?
        unseenArchivedMessages,
    String? $__typename,
  }) =>
      _res;
  unseenArchivedMessages(_fn) => _res;
}

class Query$InboxUnseenArchivedMessages$myInbox$channels$unseenArchivedMessages {
  Query$InboxUnseenArchivedMessages$myInbox$channels$unseenArchivedMessages({
    required this.channelId,
    this.$__typename = 'ChannelInboxItemMessage',
  });

  factory Query$InboxUnseenArchivedMessages$myInbox$channels$unseenArchivedMessages.fromJson(
      Map<String, dynamic> json) {
    final l$channelId = json['channelId'];
    final l$$__typename = json['__typename'];
    return Query$InboxUnseenArchivedMessages$myInbox$channels$unseenArchivedMessages(
      channelId: (l$channelId as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String channelId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$channelId = channelId;
    _resultData['channelId'] = l$channelId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$channelId = channelId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$channelId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$InboxUnseenArchivedMessages$myInbox$channels$unseenArchivedMessages) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$channelId = channelId;
    final lOther$channelId = other.channelId;
    if (l$channelId != lOther$channelId) {
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

extension UtilityExtension$Query$InboxUnseenArchivedMessages$myInbox$channels$unseenArchivedMessages
    on Query$InboxUnseenArchivedMessages$myInbox$channels$unseenArchivedMessages {
  CopyWith$Query$InboxUnseenArchivedMessages$myInbox$channels$unseenArchivedMessages<
          Query$InboxUnseenArchivedMessages$myInbox$channels$unseenArchivedMessages>
      get copyWith =>
          CopyWith$Query$InboxUnseenArchivedMessages$myInbox$channels$unseenArchivedMessages(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$InboxUnseenArchivedMessages$myInbox$channels$unseenArchivedMessages<
    TRes> {
  factory CopyWith$Query$InboxUnseenArchivedMessages$myInbox$channels$unseenArchivedMessages(
    Query$InboxUnseenArchivedMessages$myInbox$channels$unseenArchivedMessages
        instance,
    TRes Function(
            Query$InboxUnseenArchivedMessages$myInbox$channels$unseenArchivedMessages)
        then,
  ) = _CopyWithImpl$Query$InboxUnseenArchivedMessages$myInbox$channels$unseenArchivedMessages;

  factory CopyWith$Query$InboxUnseenArchivedMessages$myInbox$channels$unseenArchivedMessages.stub(
          TRes res) =
      _CopyWithStubImpl$Query$InboxUnseenArchivedMessages$myInbox$channels$unseenArchivedMessages;

  TRes call({
    String? channelId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$InboxUnseenArchivedMessages$myInbox$channels$unseenArchivedMessages<
        TRes>
    implements
        CopyWith$Query$InboxUnseenArchivedMessages$myInbox$channels$unseenArchivedMessages<
            TRes> {
  _CopyWithImpl$Query$InboxUnseenArchivedMessages$myInbox$channels$unseenArchivedMessages(
    this._instance,
    this._then,
  );

  final Query$InboxUnseenArchivedMessages$myInbox$channels$unseenArchivedMessages
      _instance;

  final TRes Function(
          Query$InboxUnseenArchivedMessages$myInbox$channels$unseenArchivedMessages)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? channelId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$InboxUnseenArchivedMessages$myInbox$channels$unseenArchivedMessages(
        channelId: channelId == _undefined || channelId == null
            ? _instance.channelId
            : (channelId as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$InboxUnseenArchivedMessages$myInbox$channels$unseenArchivedMessages<
        TRes>
    implements
        CopyWith$Query$InboxUnseenArchivedMessages$myInbox$channels$unseenArchivedMessages<
            TRes> {
  _CopyWithStubImpl$Query$InboxUnseenArchivedMessages$myInbox$channels$unseenArchivedMessages(
      this._res);

  TRes _res;

  call({
    String? channelId,
    String? $__typename,
  }) =>
      _res;
}

class Query$InboxUnseenMessages {
  Query$InboxUnseenMessages({
    required this.myInbox,
    this.$__typename = 'Query',
  });

  factory Query$InboxUnseenMessages.fromJson(Map<String, dynamic> json) {
    final l$myInbox = json['myInbox'];
    final l$$__typename = json['__typename'];
    return Query$InboxUnseenMessages(
      myInbox: Query$InboxUnseenMessages$myInbox.fromJson(
          (l$myInbox as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$InboxUnseenMessages$myInbox myInbox;

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
    if (!(other is Query$InboxUnseenMessages) ||
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

extension UtilityExtension$Query$InboxUnseenMessages
    on Query$InboxUnseenMessages {
  CopyWith$Query$InboxUnseenMessages<Query$InboxUnseenMessages> get copyWith =>
      CopyWith$Query$InboxUnseenMessages(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$InboxUnseenMessages<TRes> {
  factory CopyWith$Query$InboxUnseenMessages(
    Query$InboxUnseenMessages instance,
    TRes Function(Query$InboxUnseenMessages) then,
  ) = _CopyWithImpl$Query$InboxUnseenMessages;

  factory CopyWith$Query$InboxUnseenMessages.stub(TRes res) =
      _CopyWithStubImpl$Query$InboxUnseenMessages;

  TRes call({
    Query$InboxUnseenMessages$myInbox? myInbox,
    String? $__typename,
  });
  CopyWith$Query$InboxUnseenMessages$myInbox<TRes> get myInbox;
}

class _CopyWithImpl$Query$InboxUnseenMessages<TRes>
    implements CopyWith$Query$InboxUnseenMessages<TRes> {
  _CopyWithImpl$Query$InboxUnseenMessages(
    this._instance,
    this._then,
  );

  final Query$InboxUnseenMessages _instance;

  final TRes Function(Query$InboxUnseenMessages) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? myInbox = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$InboxUnseenMessages(
        myInbox: myInbox == _undefined || myInbox == null
            ? _instance.myInbox
            : (myInbox as Query$InboxUnseenMessages$myInbox),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$InboxUnseenMessages$myInbox<TRes> get myInbox {
    final local$myInbox = _instance.myInbox;
    return CopyWith$Query$InboxUnseenMessages$myInbox(
        local$myInbox, (e) => call(myInbox: e));
  }
}

class _CopyWithStubImpl$Query$InboxUnseenMessages<TRes>
    implements CopyWith$Query$InboxUnseenMessages<TRes> {
  _CopyWithStubImpl$Query$InboxUnseenMessages(this._res);

  TRes _res;

  call({
    Query$InboxUnseenMessages$myInbox? myInbox,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$InboxUnseenMessages$myInbox<TRes> get myInbox =>
      CopyWith$Query$InboxUnseenMessages$myInbox.stub(_res);
}

const documentNodeQueryInboxUnseenMessages = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'InboxUnseenMessages'),
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
                name: NameNode(value: 'unseenMessages'),
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

class Query$InboxUnseenMessages$myInbox {
  Query$InboxUnseenMessages$myInbox({
    this.channels,
    this.$__typename = 'UserInbox',
  });

  factory Query$InboxUnseenMessages$myInbox.fromJson(
      Map<String, dynamic> json) {
    final l$channels = json['channels'];
    final l$$__typename = json['__typename'];
    return Query$InboxUnseenMessages$myInbox(
      channels: l$channels == null
          ? null
          : Query$InboxUnseenMessages$myInbox$channels.fromJson(
              (l$channels as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$InboxUnseenMessages$myInbox$channels? channels;

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
    if (!(other is Query$InboxUnseenMessages$myInbox) ||
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

extension UtilityExtension$Query$InboxUnseenMessages$myInbox
    on Query$InboxUnseenMessages$myInbox {
  CopyWith$Query$InboxUnseenMessages$myInbox<Query$InboxUnseenMessages$myInbox>
      get copyWith => CopyWith$Query$InboxUnseenMessages$myInbox(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$InboxUnseenMessages$myInbox<TRes> {
  factory CopyWith$Query$InboxUnseenMessages$myInbox(
    Query$InboxUnseenMessages$myInbox instance,
    TRes Function(Query$InboxUnseenMessages$myInbox) then,
  ) = _CopyWithImpl$Query$InboxUnseenMessages$myInbox;

  factory CopyWith$Query$InboxUnseenMessages$myInbox.stub(TRes res) =
      _CopyWithStubImpl$Query$InboxUnseenMessages$myInbox;

  TRes call({
    Query$InboxUnseenMessages$myInbox$channels? channels,
    String? $__typename,
  });
  CopyWith$Query$InboxUnseenMessages$myInbox$channels<TRes> get channels;
}

class _CopyWithImpl$Query$InboxUnseenMessages$myInbox<TRes>
    implements CopyWith$Query$InboxUnseenMessages$myInbox<TRes> {
  _CopyWithImpl$Query$InboxUnseenMessages$myInbox(
    this._instance,
    this._then,
  );

  final Query$InboxUnseenMessages$myInbox _instance;

  final TRes Function(Query$InboxUnseenMessages$myInbox) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? channels = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$InboxUnseenMessages$myInbox(
        channels: channels == _undefined
            ? _instance.channels
            : (channels as Query$InboxUnseenMessages$myInbox$channels?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$InboxUnseenMessages$myInbox$channels<TRes> get channels {
    final local$channels = _instance.channels;
    return local$channels == null
        ? CopyWith$Query$InboxUnseenMessages$myInbox$channels.stub(
            _then(_instance))
        : CopyWith$Query$InboxUnseenMessages$myInbox$channels(
            local$channels, (e) => call(channels: e));
  }
}

class _CopyWithStubImpl$Query$InboxUnseenMessages$myInbox<TRes>
    implements CopyWith$Query$InboxUnseenMessages$myInbox<TRes> {
  _CopyWithStubImpl$Query$InboxUnseenMessages$myInbox(this._res);

  TRes _res;

  call({
    Query$InboxUnseenMessages$myInbox$channels? channels,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$InboxUnseenMessages$myInbox$channels<TRes> get channels =>
      CopyWith$Query$InboxUnseenMessages$myInbox$channels.stub(_res);
}

class Query$InboxUnseenMessages$myInbox$channels {
  Query$InboxUnseenMessages$myInbox$channels({
    this.unseenMessages,
    this.$__typename = 'ChannelInbox',
  });

  factory Query$InboxUnseenMessages$myInbox$channels.fromJson(
      Map<String, dynamic> json) {
    final l$unseenMessages = json['unseenMessages'];
    final l$$__typename = json['__typename'];
    return Query$InboxUnseenMessages$myInbox$channels(
      unseenMessages: (l$unseenMessages as List<dynamic>?)
          ?.map((e) => Query$InboxUnseenMessages$myInbox$channels$unseenMessages
              .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$InboxUnseenMessages$myInbox$channels$unseenMessages>?
      unseenMessages;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$unseenMessages = unseenMessages;
    _resultData['unseenMessages'] =
        l$unseenMessages?.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$unseenMessages = unseenMessages;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$unseenMessages == null
          ? null
          : Object.hashAll(l$unseenMessages.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$InboxUnseenMessages$myInbox$channels) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$unseenMessages = unseenMessages;
    final lOther$unseenMessages = other.unseenMessages;
    if (l$unseenMessages != null && lOther$unseenMessages != null) {
      if (l$unseenMessages.length != lOther$unseenMessages.length) {
        return false;
      }
      for (int i = 0; i < l$unseenMessages.length; i++) {
        final l$unseenMessages$entry = l$unseenMessages[i];
        final lOther$unseenMessages$entry = lOther$unseenMessages[i];
        if (l$unseenMessages$entry != lOther$unseenMessages$entry) {
          return false;
        }
      }
    } else if (l$unseenMessages != lOther$unseenMessages) {
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

extension UtilityExtension$Query$InboxUnseenMessages$myInbox$channels
    on Query$InboxUnseenMessages$myInbox$channels {
  CopyWith$Query$InboxUnseenMessages$myInbox$channels<
          Query$InboxUnseenMessages$myInbox$channels>
      get copyWith => CopyWith$Query$InboxUnseenMessages$myInbox$channels(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$InboxUnseenMessages$myInbox$channels<TRes> {
  factory CopyWith$Query$InboxUnseenMessages$myInbox$channels(
    Query$InboxUnseenMessages$myInbox$channels instance,
    TRes Function(Query$InboxUnseenMessages$myInbox$channels) then,
  ) = _CopyWithImpl$Query$InboxUnseenMessages$myInbox$channels;

  factory CopyWith$Query$InboxUnseenMessages$myInbox$channels.stub(TRes res) =
      _CopyWithStubImpl$Query$InboxUnseenMessages$myInbox$channels;

  TRes call({
    List<Query$InboxUnseenMessages$myInbox$channels$unseenMessages>?
        unseenMessages,
    String? $__typename,
  });
  TRes unseenMessages(
      Iterable<Query$InboxUnseenMessages$myInbox$channels$unseenMessages>? Function(
              Iterable<
                  CopyWith$Query$InboxUnseenMessages$myInbox$channels$unseenMessages<
                      Query$InboxUnseenMessages$myInbox$channels$unseenMessages>>?)
          _fn);
}

class _CopyWithImpl$Query$InboxUnseenMessages$myInbox$channels<TRes>
    implements CopyWith$Query$InboxUnseenMessages$myInbox$channels<TRes> {
  _CopyWithImpl$Query$InboxUnseenMessages$myInbox$channels(
    this._instance,
    this._then,
  );

  final Query$InboxUnseenMessages$myInbox$channels _instance;

  final TRes Function(Query$InboxUnseenMessages$myInbox$channels) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? unseenMessages = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$InboxUnseenMessages$myInbox$channels(
        unseenMessages: unseenMessages == _undefined
            ? _instance.unseenMessages
            : (unseenMessages as List<
                Query$InboxUnseenMessages$myInbox$channels$unseenMessages>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes unseenMessages(
          Iterable<Query$InboxUnseenMessages$myInbox$channels$unseenMessages>? Function(
                  Iterable<
                      CopyWith$Query$InboxUnseenMessages$myInbox$channels$unseenMessages<
                          Query$InboxUnseenMessages$myInbox$channels$unseenMessages>>?)
              _fn) =>
      call(
          unseenMessages: _fn(_instance.unseenMessages?.map((e) =>
              CopyWith$Query$InboxUnseenMessages$myInbox$channels$unseenMessages(
                e,
                (i) => i,
              )))?.toList());
}

class _CopyWithStubImpl$Query$InboxUnseenMessages$myInbox$channels<TRes>
    implements CopyWith$Query$InboxUnseenMessages$myInbox$channels<TRes> {
  _CopyWithStubImpl$Query$InboxUnseenMessages$myInbox$channels(this._res);

  TRes _res;

  call({
    List<Query$InboxUnseenMessages$myInbox$channels$unseenMessages>?
        unseenMessages,
    String? $__typename,
  }) =>
      _res;
  unseenMessages(_fn) => _res;
}

class Query$InboxUnseenMessages$myInbox$channels$unseenMessages {
  Query$InboxUnseenMessages$myInbox$channels$unseenMessages({
    required this.channelId,
    this.$__typename = 'ChannelInboxItemMessage',
  });

  factory Query$InboxUnseenMessages$myInbox$channels$unseenMessages.fromJson(
      Map<String, dynamic> json) {
    final l$channelId = json['channelId'];
    final l$$__typename = json['__typename'];
    return Query$InboxUnseenMessages$myInbox$channels$unseenMessages(
      channelId: (l$channelId as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String channelId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$channelId = channelId;
    _resultData['channelId'] = l$channelId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$channelId = channelId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$channelId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$InboxUnseenMessages$myInbox$channels$unseenMessages) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$channelId = channelId;
    final lOther$channelId = other.channelId;
    if (l$channelId != lOther$channelId) {
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

extension UtilityExtension$Query$InboxUnseenMessages$myInbox$channels$unseenMessages
    on Query$InboxUnseenMessages$myInbox$channels$unseenMessages {
  CopyWith$Query$InboxUnseenMessages$myInbox$channels$unseenMessages<
          Query$InboxUnseenMessages$myInbox$channels$unseenMessages>
      get copyWith =>
          CopyWith$Query$InboxUnseenMessages$myInbox$channels$unseenMessages(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$InboxUnseenMessages$myInbox$channels$unseenMessages<
    TRes> {
  factory CopyWith$Query$InboxUnseenMessages$myInbox$channels$unseenMessages(
    Query$InboxUnseenMessages$myInbox$channels$unseenMessages instance,
    TRes Function(Query$InboxUnseenMessages$myInbox$channels$unseenMessages)
        then,
  ) = _CopyWithImpl$Query$InboxUnseenMessages$myInbox$channels$unseenMessages;

  factory CopyWith$Query$InboxUnseenMessages$myInbox$channels$unseenMessages.stub(
          TRes res) =
      _CopyWithStubImpl$Query$InboxUnseenMessages$myInbox$channels$unseenMessages;

  TRes call({
    String? channelId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$InboxUnseenMessages$myInbox$channels$unseenMessages<
        TRes>
    implements
        CopyWith$Query$InboxUnseenMessages$myInbox$channels$unseenMessages<
            TRes> {
  _CopyWithImpl$Query$InboxUnseenMessages$myInbox$channels$unseenMessages(
    this._instance,
    this._then,
  );

  final Query$InboxUnseenMessages$myInbox$channels$unseenMessages _instance;

  final TRes Function(Query$InboxUnseenMessages$myInbox$channels$unseenMessages)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? channelId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$InboxUnseenMessages$myInbox$channels$unseenMessages(
        channelId: channelId == _undefined || channelId == null
            ? _instance.channelId
            : (channelId as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$InboxUnseenMessages$myInbox$channels$unseenMessages<
        TRes>
    implements
        CopyWith$Query$InboxUnseenMessages$myInbox$channels$unseenMessages<
            TRes> {
  _CopyWithStubImpl$Query$InboxUnseenMessages$myInbox$channels$unseenMessages(
      this._res);

  TRes _res;

  call({
    String? channelId,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$CreateChannelMessage {
  factory Variables$Mutation$CreateChannelMessage(
          {required Input$ChannelMessageInput input}) =>
      Variables$Mutation$CreateChannelMessage._({
        r'input': input,
      });

  Variables$Mutation$CreateChannelMessage._(this._$data);

  factory Variables$Mutation$CreateChannelMessage.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$ChannelMessageInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Mutation$CreateChannelMessage._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$ChannelMessageInput get input =>
      (_$data['input'] as Input$ChannelMessageInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$CreateChannelMessage<
          Variables$Mutation$CreateChannelMessage>
      get copyWith => CopyWith$Variables$Mutation$CreateChannelMessage(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$CreateChannelMessage) ||
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

abstract class CopyWith$Variables$Mutation$CreateChannelMessage<TRes> {
  factory CopyWith$Variables$Mutation$CreateChannelMessage(
    Variables$Mutation$CreateChannelMessage instance,
    TRes Function(Variables$Mutation$CreateChannelMessage) then,
  ) = _CopyWithImpl$Variables$Mutation$CreateChannelMessage;

  factory CopyWith$Variables$Mutation$CreateChannelMessage.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CreateChannelMessage;

  TRes call({Input$ChannelMessageInput? input});
}

class _CopyWithImpl$Variables$Mutation$CreateChannelMessage<TRes>
    implements CopyWith$Variables$Mutation$CreateChannelMessage<TRes> {
  _CopyWithImpl$Variables$Mutation$CreateChannelMessage(
    this._instance,
    this._then,
  );

  final Variables$Mutation$CreateChannelMessage _instance;

  final TRes Function(Variables$Mutation$CreateChannelMessage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$CreateChannelMessage._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$ChannelMessageInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$CreateChannelMessage<TRes>
    implements CopyWith$Variables$Mutation$CreateChannelMessage<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreateChannelMessage(this._res);

  TRes _res;

  call({Input$ChannelMessageInput? input}) => _res;
}

class Mutation$CreateChannelMessage {
  Mutation$CreateChannelMessage({
    required this.createChannelMessage,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CreateChannelMessage.fromJson(Map<String, dynamic> json) {
    final l$createChannelMessage = json['createChannelMessage'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateChannelMessage(
      createChannelMessage:
          Mutation$CreateChannelMessage$createChannelMessage.fromJson(
              (l$createChannelMessage as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CreateChannelMessage$createChannelMessage createChannelMessage;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createChannelMessage = createChannelMessage;
    _resultData['createChannelMessage'] = l$createChannelMessage.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createChannelMessage = createChannelMessage;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$createChannelMessage,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CreateChannelMessage) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$createChannelMessage = createChannelMessage;
    final lOther$createChannelMessage = other.createChannelMessage;
    if (l$createChannelMessage != lOther$createChannelMessage) {
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

extension UtilityExtension$Mutation$CreateChannelMessage
    on Mutation$CreateChannelMessage {
  CopyWith$Mutation$CreateChannelMessage<Mutation$CreateChannelMessage>
      get copyWith => CopyWith$Mutation$CreateChannelMessage(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateChannelMessage<TRes> {
  factory CopyWith$Mutation$CreateChannelMessage(
    Mutation$CreateChannelMessage instance,
    TRes Function(Mutation$CreateChannelMessage) then,
  ) = _CopyWithImpl$Mutation$CreateChannelMessage;

  factory CopyWith$Mutation$CreateChannelMessage.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateChannelMessage;

  TRes call({
    Mutation$CreateChannelMessage$createChannelMessage? createChannelMessage,
    String? $__typename,
  });
  CopyWith$Mutation$CreateChannelMessage$createChannelMessage<TRes>
      get createChannelMessage;
}

class _CopyWithImpl$Mutation$CreateChannelMessage<TRes>
    implements CopyWith$Mutation$CreateChannelMessage<TRes> {
  _CopyWithImpl$Mutation$CreateChannelMessage(
    this._instance,
    this._then,
  );

  final Mutation$CreateChannelMessage _instance;

  final TRes Function(Mutation$CreateChannelMessage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createChannelMessage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateChannelMessage(
        createChannelMessage:
            createChannelMessage == _undefined || createChannelMessage == null
                ? _instance.createChannelMessage
                : (createChannelMessage
                    as Mutation$CreateChannelMessage$createChannelMessage),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$CreateChannelMessage$createChannelMessage<TRes>
      get createChannelMessage {
    final local$createChannelMessage = _instance.createChannelMessage;
    return CopyWith$Mutation$CreateChannelMessage$createChannelMessage(
        local$createChannelMessage, (e) => call(createChannelMessage: e));
  }
}

class _CopyWithStubImpl$Mutation$CreateChannelMessage<TRes>
    implements CopyWith$Mutation$CreateChannelMessage<TRes> {
  _CopyWithStubImpl$Mutation$CreateChannelMessage(this._res);

  TRes _res;

  call({
    Mutation$CreateChannelMessage$createChannelMessage? createChannelMessage,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$CreateChannelMessage$createChannelMessage<TRes>
      get createChannelMessage =>
          CopyWith$Mutation$CreateChannelMessage$createChannelMessage.stub(
              _res);
}

const documentNodeMutationCreateChannelMessage = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'CreateChannelMessage'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'ChannelMessageInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'createChannelMessage'),
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
            name: NameNode(value: 'createdBy'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'channelId'),
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
            name: NameNode(value: 'createdAt'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'replyToMessageId'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'deletedBy'),
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
            name: NameNode(value: 'deletedAt'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'editedAt'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'statuses'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'seenAt'),
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

class Mutation$CreateChannelMessage$createChannelMessage {
  Mutation$CreateChannelMessage$createChannelMessage({
    required this.id,
    this.createdBy,
    required this.channelId,
    this.messageText,
    required this.createdAt,
    this.replyToMessageId,
    this.deletedBy,
    this.updatedAt,
    this.deletedAt,
    this.editedAt,
    this.statuses,
    this.$__typename = 'ChannelMessage',
  });

  factory Mutation$CreateChannelMessage$createChannelMessage.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$createdBy = json['createdBy'];
    final l$channelId = json['channelId'];
    final l$messageText = json['messageText'];
    final l$createdAt = json['createdAt'];
    final l$replyToMessageId = json['replyToMessageId'];
    final l$deletedBy = json['deletedBy'];
    final l$updatedAt = json['updatedAt'];
    final l$deletedAt = json['deletedAt'];
    final l$editedAt = json['editedAt'];
    final l$statuses = json['statuses'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateChannelMessage$createChannelMessage(
      id: (l$id as String),
      createdBy: (l$createdBy as String?),
      channelId: (l$channelId as String),
      messageText: (l$messageText as String?),
      createdAt: DateTime.parse((l$createdAt as String)),
      replyToMessageId: (l$replyToMessageId as String?),
      deletedBy: (l$deletedBy as String?),
      updatedAt:
          l$updatedAt == null ? null : DateTime.parse((l$updatedAt as String)),
      deletedAt:
          l$deletedAt == null ? null : DateTime.parse((l$deletedAt as String)),
      editedAt:
          l$editedAt == null ? null : DateTime.parse((l$editedAt as String)),
      statuses: (l$statuses as List<dynamic>?)
          ?.map((e) =>
              Mutation$CreateChannelMessage$createChannelMessage$statuses
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String? createdBy;

  final String channelId;

  final String? messageText;

  final DateTime createdAt;

  final String? replyToMessageId;

  final String? deletedBy;

  final DateTime? updatedAt;

  final DateTime? deletedAt;

  final DateTime? editedAt;

  final List<Mutation$CreateChannelMessage$createChannelMessage$statuses>?
      statuses;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$createdBy = createdBy;
    _resultData['createdBy'] = l$createdBy;
    final l$channelId = channelId;
    _resultData['channelId'] = l$channelId;
    final l$messageText = messageText;
    _resultData['messageText'] = l$messageText;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt.toIso8601String();
    final l$replyToMessageId = replyToMessageId;
    _resultData['replyToMessageId'] = l$replyToMessageId;
    final l$deletedBy = deletedBy;
    _resultData['deletedBy'] = l$deletedBy;
    final l$updatedAt = updatedAt;
    _resultData['updatedAt'] = l$updatedAt?.toIso8601String();
    final l$deletedAt = deletedAt;
    _resultData['deletedAt'] = l$deletedAt?.toIso8601String();
    final l$editedAt = editedAt;
    _resultData['editedAt'] = l$editedAt?.toIso8601String();
    final l$statuses = statuses;
    _resultData['statuses'] = l$statuses?.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$createdBy = createdBy;
    final l$channelId = channelId;
    final l$messageText = messageText;
    final l$createdAt = createdAt;
    final l$replyToMessageId = replyToMessageId;
    final l$deletedBy = deletedBy;
    final l$updatedAt = updatedAt;
    final l$deletedAt = deletedAt;
    final l$editedAt = editedAt;
    final l$statuses = statuses;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$createdBy,
      l$channelId,
      l$messageText,
      l$createdAt,
      l$replyToMessageId,
      l$deletedBy,
      l$updatedAt,
      l$deletedAt,
      l$editedAt,
      l$statuses == null ? null : Object.hashAll(l$statuses.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CreateChannelMessage$createChannelMessage) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$createdBy = createdBy;
    final lOther$createdBy = other.createdBy;
    if (l$createdBy != lOther$createdBy) {
      return false;
    }
    final l$channelId = channelId;
    final lOther$channelId = other.channelId;
    if (l$channelId != lOther$channelId) {
      return false;
    }
    final l$messageText = messageText;
    final lOther$messageText = other.messageText;
    if (l$messageText != lOther$messageText) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$replyToMessageId = replyToMessageId;
    final lOther$replyToMessageId = other.replyToMessageId;
    if (l$replyToMessageId != lOther$replyToMessageId) {
      return false;
    }
    final l$deletedBy = deletedBy;
    final lOther$deletedBy = other.deletedBy;
    if (l$deletedBy != lOther$deletedBy) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    final l$deletedAt = deletedAt;
    final lOther$deletedAt = other.deletedAt;
    if (l$deletedAt != lOther$deletedAt) {
      return false;
    }
    final l$editedAt = editedAt;
    final lOther$editedAt = other.editedAt;
    if (l$editedAt != lOther$editedAt) {
      return false;
    }
    final l$statuses = statuses;
    final lOther$statuses = other.statuses;
    if (l$statuses != null && lOther$statuses != null) {
      if (l$statuses.length != lOther$statuses.length) {
        return false;
      }
      for (int i = 0; i < l$statuses.length; i++) {
        final l$statuses$entry = l$statuses[i];
        final lOther$statuses$entry = lOther$statuses[i];
        if (l$statuses$entry != lOther$statuses$entry) {
          return false;
        }
      }
    } else if (l$statuses != lOther$statuses) {
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

extension UtilityExtension$Mutation$CreateChannelMessage$createChannelMessage
    on Mutation$CreateChannelMessage$createChannelMessage {
  CopyWith$Mutation$CreateChannelMessage$createChannelMessage<
          Mutation$CreateChannelMessage$createChannelMessage>
      get copyWith =>
          CopyWith$Mutation$CreateChannelMessage$createChannelMessage(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateChannelMessage$createChannelMessage<
    TRes> {
  factory CopyWith$Mutation$CreateChannelMessage$createChannelMessage(
    Mutation$CreateChannelMessage$createChannelMessage instance,
    TRes Function(Mutation$CreateChannelMessage$createChannelMessage) then,
  ) = _CopyWithImpl$Mutation$CreateChannelMessage$createChannelMessage;

  factory CopyWith$Mutation$CreateChannelMessage$createChannelMessage.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$CreateChannelMessage$createChannelMessage;

  TRes call({
    String? id,
    String? createdBy,
    String? channelId,
    String? messageText,
    DateTime? createdAt,
    String? replyToMessageId,
    String? deletedBy,
    DateTime? updatedAt,
    DateTime? deletedAt,
    DateTime? editedAt,
    List<Mutation$CreateChannelMessage$createChannelMessage$statuses>? statuses,
    String? $__typename,
  });
  TRes statuses(
      Iterable<Mutation$CreateChannelMessage$createChannelMessage$statuses>? Function(
              Iterable<
                  CopyWith$Mutation$CreateChannelMessage$createChannelMessage$statuses<
                      Mutation$CreateChannelMessage$createChannelMessage$statuses>>?)
          _fn);
}

class _CopyWithImpl$Mutation$CreateChannelMessage$createChannelMessage<TRes>
    implements
        CopyWith$Mutation$CreateChannelMessage$createChannelMessage<TRes> {
  _CopyWithImpl$Mutation$CreateChannelMessage$createChannelMessage(
    this._instance,
    this._then,
  );

  final Mutation$CreateChannelMessage$createChannelMessage _instance;

  final TRes Function(Mutation$CreateChannelMessage$createChannelMessage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? createdBy = _undefined,
    Object? channelId = _undefined,
    Object? messageText = _undefined,
    Object? createdAt = _undefined,
    Object? replyToMessageId = _undefined,
    Object? deletedBy = _undefined,
    Object? updatedAt = _undefined,
    Object? deletedAt = _undefined,
    Object? editedAt = _undefined,
    Object? statuses = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateChannelMessage$createChannelMessage(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        createdBy: createdBy == _undefined
            ? _instance.createdBy
            : (createdBy as String?),
        channelId: channelId == _undefined || channelId == null
            ? _instance.channelId
            : (channelId as String),
        messageText: messageText == _undefined
            ? _instance.messageText
            : (messageText as String?),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as DateTime),
        replyToMessageId: replyToMessageId == _undefined
            ? _instance.replyToMessageId
            : (replyToMessageId as String?),
        deletedBy: deletedBy == _undefined
            ? _instance.deletedBy
            : (deletedBy as String?),
        updatedAt: updatedAt == _undefined
            ? _instance.updatedAt
            : (updatedAt as DateTime?),
        deletedAt: deletedAt == _undefined
            ? _instance.deletedAt
            : (deletedAt as DateTime?),
        editedAt: editedAt == _undefined
            ? _instance.editedAt
            : (editedAt as DateTime?),
        statuses: statuses == _undefined
            ? _instance.statuses
            : (statuses as List<
                Mutation$CreateChannelMessage$createChannelMessage$statuses>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes statuses(
          Iterable<Mutation$CreateChannelMessage$createChannelMessage$statuses>? Function(
                  Iterable<
                      CopyWith$Mutation$CreateChannelMessage$createChannelMessage$statuses<
                          Mutation$CreateChannelMessage$createChannelMessage$statuses>>?)
              _fn) =>
      call(
          statuses: _fn(_instance.statuses?.map((e) =>
              CopyWith$Mutation$CreateChannelMessage$createChannelMessage$statuses(
                e,
                (i) => i,
              )))?.toList());
}

class _CopyWithStubImpl$Mutation$CreateChannelMessage$createChannelMessage<TRes>
    implements
        CopyWith$Mutation$CreateChannelMessage$createChannelMessage<TRes> {
  _CopyWithStubImpl$Mutation$CreateChannelMessage$createChannelMessage(
      this._res);

  TRes _res;

  call({
    String? id,
    String? createdBy,
    String? channelId,
    String? messageText,
    DateTime? createdAt,
    String? replyToMessageId,
    String? deletedBy,
    DateTime? updatedAt,
    DateTime? deletedAt,
    DateTime? editedAt,
    List<Mutation$CreateChannelMessage$createChannelMessage$statuses>? statuses,
    String? $__typename,
  }) =>
      _res;
  statuses(_fn) => _res;
}

class Mutation$CreateChannelMessage$createChannelMessage$statuses {
  Mutation$CreateChannelMessage$createChannelMessage$statuses({
    this.seenAt,
    required this.userId,
    this.$__typename = 'ChannelMessageStatus',
  });

  factory Mutation$CreateChannelMessage$createChannelMessage$statuses.fromJson(
      Map<String, dynamic> json) {
    final l$seenAt = json['seenAt'];
    final l$userId = json['userId'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateChannelMessage$createChannelMessage$statuses(
      seenAt: l$seenAt == null ? null : DateTime.parse((l$seenAt as String)),
      userId: (l$userId as String),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime? seenAt;

  final String userId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$seenAt = seenAt;
    _resultData['seenAt'] = l$seenAt?.toIso8601String();
    final l$userId = userId;
    _resultData['userId'] = l$userId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$seenAt = seenAt;
    final l$userId = userId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$seenAt,
      l$userId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Mutation$CreateChannelMessage$createChannelMessage$statuses) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$seenAt = seenAt;
    final lOther$seenAt = other.seenAt;
    if (l$seenAt != lOther$seenAt) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) {
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

extension UtilityExtension$Mutation$CreateChannelMessage$createChannelMessage$statuses
    on Mutation$CreateChannelMessage$createChannelMessage$statuses {
  CopyWith$Mutation$CreateChannelMessage$createChannelMessage$statuses<
          Mutation$CreateChannelMessage$createChannelMessage$statuses>
      get copyWith =>
          CopyWith$Mutation$CreateChannelMessage$createChannelMessage$statuses(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateChannelMessage$createChannelMessage$statuses<
    TRes> {
  factory CopyWith$Mutation$CreateChannelMessage$createChannelMessage$statuses(
    Mutation$CreateChannelMessage$createChannelMessage$statuses instance,
    TRes Function(Mutation$CreateChannelMessage$createChannelMessage$statuses)
        then,
  ) = _CopyWithImpl$Mutation$CreateChannelMessage$createChannelMessage$statuses;

  factory CopyWith$Mutation$CreateChannelMessage$createChannelMessage$statuses.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$CreateChannelMessage$createChannelMessage$statuses;

  TRes call({
    DateTime? seenAt,
    String? userId,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$CreateChannelMessage$createChannelMessage$statuses<
        TRes>
    implements
        CopyWith$Mutation$CreateChannelMessage$createChannelMessage$statuses<
            TRes> {
  _CopyWithImpl$Mutation$CreateChannelMessage$createChannelMessage$statuses(
    this._instance,
    this._then,
  );

  final Mutation$CreateChannelMessage$createChannelMessage$statuses _instance;

  final TRes Function(
      Mutation$CreateChannelMessage$createChannelMessage$statuses) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? seenAt = _undefined,
    Object? userId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateChannelMessage$createChannelMessage$statuses(
        seenAt: seenAt == _undefined ? _instance.seenAt : (seenAt as DateTime?),
        userId: userId == _undefined || userId == null
            ? _instance.userId
            : (userId as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$CreateChannelMessage$createChannelMessage$statuses<
        TRes>
    implements
        CopyWith$Mutation$CreateChannelMessage$createChannelMessage$statuses<
            TRes> {
  _CopyWithStubImpl$Mutation$CreateChannelMessage$createChannelMessage$statuses(
      this._res);

  TRes _res;

  call({
    DateTime? seenAt,
    String? userId,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$DeleteChannelMessage {
  factory Variables$Mutation$DeleteChannelMessage({
    required bool deletePhysically,
    required String channelMessageId,
  }) =>
      Variables$Mutation$DeleteChannelMessage._({
        r'deletePhysically': deletePhysically,
        r'channelMessageId': channelMessageId,
      });

  Variables$Mutation$DeleteChannelMessage._(this._$data);

  factory Variables$Mutation$DeleteChannelMessage.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$deletePhysically = data['deletePhysically'];
    result$data['deletePhysically'] = (l$deletePhysically as bool);
    final l$channelMessageId = data['channelMessageId'];
    result$data['channelMessageId'] = (l$channelMessageId as String);
    return Variables$Mutation$DeleteChannelMessage._(result$data);
  }

  Map<String, dynamic> _$data;

  bool get deletePhysically => (_$data['deletePhysically'] as bool);
  String get channelMessageId => (_$data['channelMessageId'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$deletePhysically = deletePhysically;
    result$data['deletePhysically'] = l$deletePhysically;
    final l$channelMessageId = channelMessageId;
    result$data['channelMessageId'] = l$channelMessageId;
    return result$data;
  }

  CopyWith$Variables$Mutation$DeleteChannelMessage<
          Variables$Mutation$DeleteChannelMessage>
      get copyWith => CopyWith$Variables$Mutation$DeleteChannelMessage(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$DeleteChannelMessage) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deletePhysically = deletePhysically;
    final lOther$deletePhysically = other.deletePhysically;
    if (l$deletePhysically != lOther$deletePhysically) {
      return false;
    }
    final l$channelMessageId = channelMessageId;
    final lOther$channelMessageId = other.channelMessageId;
    if (l$channelMessageId != lOther$channelMessageId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$deletePhysically = deletePhysically;
    final l$channelMessageId = channelMessageId;
    return Object.hashAll([
      l$deletePhysically,
      l$channelMessageId,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$DeleteChannelMessage<TRes> {
  factory CopyWith$Variables$Mutation$DeleteChannelMessage(
    Variables$Mutation$DeleteChannelMessage instance,
    TRes Function(Variables$Mutation$DeleteChannelMessage) then,
  ) = _CopyWithImpl$Variables$Mutation$DeleteChannelMessage;

  factory CopyWith$Variables$Mutation$DeleteChannelMessage.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$DeleteChannelMessage;

  TRes call({
    bool? deletePhysically,
    String? channelMessageId,
  });
}

class _CopyWithImpl$Variables$Mutation$DeleteChannelMessage<TRes>
    implements CopyWith$Variables$Mutation$DeleteChannelMessage<TRes> {
  _CopyWithImpl$Variables$Mutation$DeleteChannelMessage(
    this._instance,
    this._then,
  );

  final Variables$Mutation$DeleteChannelMessage _instance;

  final TRes Function(Variables$Mutation$DeleteChannelMessage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deletePhysically = _undefined,
    Object? channelMessageId = _undefined,
  }) =>
      _then(Variables$Mutation$DeleteChannelMessage._({
        ..._instance._$data,
        if (deletePhysically != _undefined && deletePhysically != null)
          'deletePhysically': (deletePhysically as bool),
        if (channelMessageId != _undefined && channelMessageId != null)
          'channelMessageId': (channelMessageId as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$DeleteChannelMessage<TRes>
    implements CopyWith$Variables$Mutation$DeleteChannelMessage<TRes> {
  _CopyWithStubImpl$Variables$Mutation$DeleteChannelMessage(this._res);

  TRes _res;

  call({
    bool? deletePhysically,
    String? channelMessageId,
  }) =>
      _res;
}

class Mutation$DeleteChannelMessage {
  Mutation$DeleteChannelMessage({
    required this.deleteChannelMessage,
    this.$__typename = 'Mutation',
  });

  factory Mutation$DeleteChannelMessage.fromJson(Map<String, dynamic> json) {
    final l$deleteChannelMessage = json['deleteChannelMessage'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteChannelMessage(
      deleteChannelMessage: (l$deleteChannelMessage as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String deleteChannelMessage;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteChannelMessage = deleteChannelMessage;
    _resultData['deleteChannelMessage'] = l$deleteChannelMessage;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteChannelMessage = deleteChannelMessage;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$deleteChannelMessage,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$DeleteChannelMessage) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteChannelMessage = deleteChannelMessage;
    final lOther$deleteChannelMessage = other.deleteChannelMessage;
    if (l$deleteChannelMessage != lOther$deleteChannelMessage) {
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

extension UtilityExtension$Mutation$DeleteChannelMessage
    on Mutation$DeleteChannelMessage {
  CopyWith$Mutation$DeleteChannelMessage<Mutation$DeleteChannelMessage>
      get copyWith => CopyWith$Mutation$DeleteChannelMessage(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$DeleteChannelMessage<TRes> {
  factory CopyWith$Mutation$DeleteChannelMessage(
    Mutation$DeleteChannelMessage instance,
    TRes Function(Mutation$DeleteChannelMessage) then,
  ) = _CopyWithImpl$Mutation$DeleteChannelMessage;

  factory CopyWith$Mutation$DeleteChannelMessage.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteChannelMessage;

  TRes call({
    String? deleteChannelMessage,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$DeleteChannelMessage<TRes>
    implements CopyWith$Mutation$DeleteChannelMessage<TRes> {
  _CopyWithImpl$Mutation$DeleteChannelMessage(
    this._instance,
    this._then,
  );

  final Mutation$DeleteChannelMessage _instance;

  final TRes Function(Mutation$DeleteChannelMessage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleteChannelMessage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteChannelMessage(
        deleteChannelMessage:
            deleteChannelMessage == _undefined || deleteChannelMessage == null
                ? _instance.deleteChannelMessage
                : (deleteChannelMessage as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$DeleteChannelMessage<TRes>
    implements CopyWith$Mutation$DeleteChannelMessage<TRes> {
  _CopyWithStubImpl$Mutation$DeleteChannelMessage(this._res);

  TRes _res;

  call({
    String? deleteChannelMessage,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeMutationDeleteChannelMessage = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'DeleteChannelMessage'),
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
        variable: VariableNode(name: NameNode(value: 'channelMessageId')),
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
        name: NameNode(value: 'deleteChannelMessage'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'deletePhysically'),
            value: VariableNode(name: NameNode(value: 'deletePhysically')),
          ),
          ArgumentNode(
            name: NameNode(value: 'channelMessageId'),
            value: VariableNode(name: NameNode(value: 'channelMessageId')),
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

class Variables$Mutation$MarkChannelMessagesAsSeenByMe {
  factory Variables$Mutation$MarkChannelMessagesAsSeenByMe(
          {required String channelId}) =>
      Variables$Mutation$MarkChannelMessagesAsSeenByMe._({
        r'channelId': channelId,
      });

  Variables$Mutation$MarkChannelMessagesAsSeenByMe._(this._$data);

  factory Variables$Mutation$MarkChannelMessagesAsSeenByMe.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$channelId = data['channelId'];
    result$data['channelId'] = (l$channelId as String);
    return Variables$Mutation$MarkChannelMessagesAsSeenByMe._(result$data);
  }

  Map<String, dynamic> _$data;

  String get channelId => (_$data['channelId'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$channelId = channelId;
    result$data['channelId'] = l$channelId;
    return result$data;
  }

  CopyWith$Variables$Mutation$MarkChannelMessagesAsSeenByMe<
          Variables$Mutation$MarkChannelMessagesAsSeenByMe>
      get copyWith => CopyWith$Variables$Mutation$MarkChannelMessagesAsSeenByMe(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$MarkChannelMessagesAsSeenByMe) ||
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

abstract class CopyWith$Variables$Mutation$MarkChannelMessagesAsSeenByMe<TRes> {
  factory CopyWith$Variables$Mutation$MarkChannelMessagesAsSeenByMe(
    Variables$Mutation$MarkChannelMessagesAsSeenByMe instance,
    TRes Function(Variables$Mutation$MarkChannelMessagesAsSeenByMe) then,
  ) = _CopyWithImpl$Variables$Mutation$MarkChannelMessagesAsSeenByMe;

  factory CopyWith$Variables$Mutation$MarkChannelMessagesAsSeenByMe.stub(
          TRes res) =
      _CopyWithStubImpl$Variables$Mutation$MarkChannelMessagesAsSeenByMe;

  TRes call({String? channelId});
}

class _CopyWithImpl$Variables$Mutation$MarkChannelMessagesAsSeenByMe<TRes>
    implements CopyWith$Variables$Mutation$MarkChannelMessagesAsSeenByMe<TRes> {
  _CopyWithImpl$Variables$Mutation$MarkChannelMessagesAsSeenByMe(
    this._instance,
    this._then,
  );

  final Variables$Mutation$MarkChannelMessagesAsSeenByMe _instance;

  final TRes Function(Variables$Mutation$MarkChannelMessagesAsSeenByMe) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? channelId = _undefined}) =>
      _then(Variables$Mutation$MarkChannelMessagesAsSeenByMe._({
        ..._instance._$data,
        if (channelId != _undefined && channelId != null)
          'channelId': (channelId as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$MarkChannelMessagesAsSeenByMe<TRes>
    implements CopyWith$Variables$Mutation$MarkChannelMessagesAsSeenByMe<TRes> {
  _CopyWithStubImpl$Variables$Mutation$MarkChannelMessagesAsSeenByMe(this._res);

  TRes _res;

  call({String? channelId}) => _res;
}

class Mutation$MarkChannelMessagesAsSeenByMe {
  Mutation$MarkChannelMessagesAsSeenByMe({
    required this.markChannelMessagesAsSeenByMe,
    this.$__typename = 'Mutation',
  });

  factory Mutation$MarkChannelMessagesAsSeenByMe.fromJson(
      Map<String, dynamic> json) {
    final l$markChannelMessagesAsSeenByMe =
        json['markChannelMessagesAsSeenByMe'];
    final l$$__typename = json['__typename'];
    return Mutation$MarkChannelMessagesAsSeenByMe(
      markChannelMessagesAsSeenByMe:
          (l$markChannelMessagesAsSeenByMe as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String markChannelMessagesAsSeenByMe;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$markChannelMessagesAsSeenByMe = markChannelMessagesAsSeenByMe;
    _resultData['markChannelMessagesAsSeenByMe'] =
        l$markChannelMessagesAsSeenByMe;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$markChannelMessagesAsSeenByMe = markChannelMessagesAsSeenByMe;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$markChannelMessagesAsSeenByMe,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$MarkChannelMessagesAsSeenByMe) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$markChannelMessagesAsSeenByMe = markChannelMessagesAsSeenByMe;
    final lOther$markChannelMessagesAsSeenByMe =
        other.markChannelMessagesAsSeenByMe;
    if (l$markChannelMessagesAsSeenByMe !=
        lOther$markChannelMessagesAsSeenByMe) {
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

extension UtilityExtension$Mutation$MarkChannelMessagesAsSeenByMe
    on Mutation$MarkChannelMessagesAsSeenByMe {
  CopyWith$Mutation$MarkChannelMessagesAsSeenByMe<
          Mutation$MarkChannelMessagesAsSeenByMe>
      get copyWith => CopyWith$Mutation$MarkChannelMessagesAsSeenByMe(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$MarkChannelMessagesAsSeenByMe<TRes> {
  factory CopyWith$Mutation$MarkChannelMessagesAsSeenByMe(
    Mutation$MarkChannelMessagesAsSeenByMe instance,
    TRes Function(Mutation$MarkChannelMessagesAsSeenByMe) then,
  ) = _CopyWithImpl$Mutation$MarkChannelMessagesAsSeenByMe;

  factory CopyWith$Mutation$MarkChannelMessagesAsSeenByMe.stub(TRes res) =
      _CopyWithStubImpl$Mutation$MarkChannelMessagesAsSeenByMe;

  TRes call({
    String? markChannelMessagesAsSeenByMe,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$MarkChannelMessagesAsSeenByMe<TRes>
    implements CopyWith$Mutation$MarkChannelMessagesAsSeenByMe<TRes> {
  _CopyWithImpl$Mutation$MarkChannelMessagesAsSeenByMe(
    this._instance,
    this._then,
  );

  final Mutation$MarkChannelMessagesAsSeenByMe _instance;

  final TRes Function(Mutation$MarkChannelMessagesAsSeenByMe) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? markChannelMessagesAsSeenByMe = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$MarkChannelMessagesAsSeenByMe(
        markChannelMessagesAsSeenByMe:
            markChannelMessagesAsSeenByMe == _undefined ||
                    markChannelMessagesAsSeenByMe == null
                ? _instance.markChannelMessagesAsSeenByMe
                : (markChannelMessagesAsSeenByMe as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$MarkChannelMessagesAsSeenByMe<TRes>
    implements CopyWith$Mutation$MarkChannelMessagesAsSeenByMe<TRes> {
  _CopyWithStubImpl$Mutation$MarkChannelMessagesAsSeenByMe(this._res);

  TRes _res;

  call({
    String? markChannelMessagesAsSeenByMe,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeMutationMarkChannelMessagesAsSeenByMe =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'MarkChannelMessagesAsSeenByMe'),
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
        name: NameNode(value: 'markChannelMessagesAsSeenByMe'),
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

class Variables$Mutation$UpdateChannelMessage {
  factory Variables$Mutation$UpdateChannelMessage(
          {required Input$ChannelMessageInput input}) =>
      Variables$Mutation$UpdateChannelMessage._({
        r'input': input,
      });

  Variables$Mutation$UpdateChannelMessage._(this._$data);

  factory Variables$Mutation$UpdateChannelMessage.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$ChannelMessageInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Mutation$UpdateChannelMessage._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$ChannelMessageInput get input =>
      (_$data['input'] as Input$ChannelMessageInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateChannelMessage<
          Variables$Mutation$UpdateChannelMessage>
      get copyWith => CopyWith$Variables$Mutation$UpdateChannelMessage(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$UpdateChannelMessage) ||
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

abstract class CopyWith$Variables$Mutation$UpdateChannelMessage<TRes> {
  factory CopyWith$Variables$Mutation$UpdateChannelMessage(
    Variables$Mutation$UpdateChannelMessage instance,
    TRes Function(Variables$Mutation$UpdateChannelMessage) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateChannelMessage;

  factory CopyWith$Variables$Mutation$UpdateChannelMessage.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateChannelMessage;

  TRes call({Input$ChannelMessageInput? input});
}

class _CopyWithImpl$Variables$Mutation$UpdateChannelMessage<TRes>
    implements CopyWith$Variables$Mutation$UpdateChannelMessage<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateChannelMessage(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateChannelMessage _instance;

  final TRes Function(Variables$Mutation$UpdateChannelMessage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$UpdateChannelMessage._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$ChannelMessageInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateChannelMessage<TRes>
    implements CopyWith$Variables$Mutation$UpdateChannelMessage<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateChannelMessage(this._res);

  TRes _res;

  call({Input$ChannelMessageInput? input}) => _res;
}

class Mutation$UpdateChannelMessage {
  Mutation$UpdateChannelMessage({
    required this.updateChannelMessage,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateChannelMessage.fromJson(Map<String, dynamic> json) {
    final l$updateChannelMessage = json['updateChannelMessage'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateChannelMessage(
      updateChannelMessage: (l$updateChannelMessage as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String updateChannelMessage;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateChannelMessage = updateChannelMessage;
    _resultData['updateChannelMessage'] = l$updateChannelMessage;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateChannelMessage = updateChannelMessage;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateChannelMessage,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateChannelMessage) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateChannelMessage = updateChannelMessage;
    final lOther$updateChannelMessage = other.updateChannelMessage;
    if (l$updateChannelMessage != lOther$updateChannelMessage) {
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

extension UtilityExtension$Mutation$UpdateChannelMessage
    on Mutation$UpdateChannelMessage {
  CopyWith$Mutation$UpdateChannelMessage<Mutation$UpdateChannelMessage>
      get copyWith => CopyWith$Mutation$UpdateChannelMessage(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateChannelMessage<TRes> {
  factory CopyWith$Mutation$UpdateChannelMessage(
    Mutation$UpdateChannelMessage instance,
    TRes Function(Mutation$UpdateChannelMessage) then,
  ) = _CopyWithImpl$Mutation$UpdateChannelMessage;

  factory CopyWith$Mutation$UpdateChannelMessage.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateChannelMessage;

  TRes call({
    String? updateChannelMessage,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdateChannelMessage<TRes>
    implements CopyWith$Mutation$UpdateChannelMessage<TRes> {
  _CopyWithImpl$Mutation$UpdateChannelMessage(
    this._instance,
    this._then,
  );

  final Mutation$UpdateChannelMessage _instance;

  final TRes Function(Mutation$UpdateChannelMessage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateChannelMessage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateChannelMessage(
        updateChannelMessage:
            updateChannelMessage == _undefined || updateChannelMessage == null
                ? _instance.updateChannelMessage
                : (updateChannelMessage as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$UpdateChannelMessage<TRes>
    implements CopyWith$Mutation$UpdateChannelMessage<TRes> {
  _CopyWithStubImpl$Mutation$UpdateChannelMessage(this._res);

  TRes _res;

  call({
    String? updateChannelMessage,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeMutationUpdateChannelMessage = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateChannelMessage'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'ChannelMessageInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updateChannelMessage'),
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

class Variables$Subscription$ObjectChanged {
  factory Variables$Subscription$ObjectChanged({required String objectId}) =>
      Variables$Subscription$ObjectChanged._({
        r'objectId': objectId,
      });

  Variables$Subscription$ObjectChanged._(this._$data);

  factory Variables$Subscription$ObjectChanged.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$objectId = data['objectId'];
    result$data['objectId'] = (l$objectId as String);
    return Variables$Subscription$ObjectChanged._(result$data);
  }

  Map<String, dynamic> _$data;

  String get objectId => (_$data['objectId'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$objectId = objectId;
    result$data['objectId'] = l$objectId;
    return result$data;
  }

  CopyWith$Variables$Subscription$ObjectChanged<
          Variables$Subscription$ObjectChanged>
      get copyWith => CopyWith$Variables$Subscription$ObjectChanged(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Subscription$ObjectChanged) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$objectId = objectId;
    final lOther$objectId = other.objectId;
    if (l$objectId != lOther$objectId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$objectId = objectId;
    return Object.hashAll([l$objectId]);
  }
}

abstract class CopyWith$Variables$Subscription$ObjectChanged<TRes> {
  factory CopyWith$Variables$Subscription$ObjectChanged(
    Variables$Subscription$ObjectChanged instance,
    TRes Function(Variables$Subscription$ObjectChanged) then,
  ) = _CopyWithImpl$Variables$Subscription$ObjectChanged;

  factory CopyWith$Variables$Subscription$ObjectChanged.stub(TRes res) =
      _CopyWithStubImpl$Variables$Subscription$ObjectChanged;

  TRes call({String? objectId});
}

class _CopyWithImpl$Variables$Subscription$ObjectChanged<TRes>
    implements CopyWith$Variables$Subscription$ObjectChanged<TRes> {
  _CopyWithImpl$Variables$Subscription$ObjectChanged(
    this._instance,
    this._then,
  );

  final Variables$Subscription$ObjectChanged _instance;

  final TRes Function(Variables$Subscription$ObjectChanged) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? objectId = _undefined}) =>
      _then(Variables$Subscription$ObjectChanged._({
        ..._instance._$data,
        if (objectId != _undefined && objectId != null)
          'objectId': (objectId as String),
      }));
}

class _CopyWithStubImpl$Variables$Subscription$ObjectChanged<TRes>
    implements CopyWith$Variables$Subscription$ObjectChanged<TRes> {
  _CopyWithStubImpl$Variables$Subscription$ObjectChanged(this._res);

  TRes _res;

  call({String? objectId}) => _res;
}

class Subscription$ObjectChanged {
  Subscription$ObjectChanged({required this.objectChanged});

  factory Subscription$ObjectChanged.fromJson(Map<String, dynamic> json) {
    final l$objectChanged = json['objectChanged'];
    return Subscription$ObjectChanged(
        objectChanged: Subscription$ObjectChanged$objectChanged.fromJson(
            (l$objectChanged as Map<String, dynamic>)));
  }

  final Subscription$ObjectChanged$objectChanged objectChanged;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$objectChanged = objectChanged;
    _resultData['objectChanged'] = l$objectChanged.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$objectChanged = objectChanged;
    return Object.hashAll([l$objectChanged]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$ObjectChanged) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$objectChanged = objectChanged;
    final lOther$objectChanged = other.objectChanged;
    if (l$objectChanged != lOther$objectChanged) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Subscription$ObjectChanged
    on Subscription$ObjectChanged {
  CopyWith$Subscription$ObjectChanged<Subscription$ObjectChanged>
      get copyWith => CopyWith$Subscription$ObjectChanged(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$ObjectChanged<TRes> {
  factory CopyWith$Subscription$ObjectChanged(
    Subscription$ObjectChanged instance,
    TRes Function(Subscription$ObjectChanged) then,
  ) = _CopyWithImpl$Subscription$ObjectChanged;

  factory CopyWith$Subscription$ObjectChanged.stub(TRes res) =
      _CopyWithStubImpl$Subscription$ObjectChanged;

  TRes call({Subscription$ObjectChanged$objectChanged? objectChanged});
  CopyWith$Subscription$ObjectChanged$objectChanged<TRes> get objectChanged;
}

class _CopyWithImpl$Subscription$ObjectChanged<TRes>
    implements CopyWith$Subscription$ObjectChanged<TRes> {
  _CopyWithImpl$Subscription$ObjectChanged(
    this._instance,
    this._then,
  );

  final Subscription$ObjectChanged _instance;

  final TRes Function(Subscription$ObjectChanged) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? objectChanged = _undefined}) =>
      _then(Subscription$ObjectChanged(
          objectChanged: objectChanged == _undefined || objectChanged == null
              ? _instance.objectChanged
              : (objectChanged as Subscription$ObjectChanged$objectChanged)));
  CopyWith$Subscription$ObjectChanged$objectChanged<TRes> get objectChanged {
    final local$objectChanged = _instance.objectChanged;
    return CopyWith$Subscription$ObjectChanged$objectChanged(
        local$objectChanged, (e) => call(objectChanged: e));
  }
}

class _CopyWithStubImpl$Subscription$ObjectChanged<TRes>
    implements CopyWith$Subscription$ObjectChanged<TRes> {
  _CopyWithStubImpl$Subscription$ObjectChanged(this._res);

  TRes _res;

  call({Subscription$ObjectChanged$objectChanged? objectChanged}) => _res;
  CopyWith$Subscription$ObjectChanged$objectChanged<TRes> get objectChanged =>
      CopyWith$Subscription$ObjectChanged$objectChanged.stub(_res);
}

const documentNodeSubscriptionObjectChanged = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'ObjectChanged'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'objectId')),
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
        name: NameNode(value: 'objectChanged'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'objectId'),
            value: VariableNode(name: NameNode(value: 'objectId')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'objectId'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'messageType'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'modelType'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'ownerUserId'),
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

class Subscription$ObjectChanged$objectChanged {
  Subscription$ObjectChanged$objectChanged({
    required this.objectId,
    required this.messageType,
    required this.modelType,
    this.ownerUserId,
    this.$__typename = 'ObjectChangedEvent',
  });

  factory Subscription$ObjectChanged$objectChanged.fromJson(
      Map<String, dynamic> json) {
    final l$objectId = json['objectId'];
    final l$messageType = json['messageType'];
    final l$modelType = json['modelType'];
    final l$ownerUserId = json['ownerUserId'];
    final l$$__typename = json['__typename'];
    return Subscription$ObjectChanged$objectChanged(
      objectId: (l$objectId as String),
      messageType:
          fromJson$Enum$ObjectChangedEventType((l$messageType as String)),
      modelType: fromJson$Enum$ModelType((l$modelType as String)),
      ownerUserId: (l$ownerUserId as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String objectId;

  final Enum$ObjectChangedEventType messageType;

  final Enum$ModelType modelType;

  final String? ownerUserId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$objectId = objectId;
    _resultData['objectId'] = l$objectId;
    final l$messageType = messageType;
    _resultData['messageType'] =
        toJson$Enum$ObjectChangedEventType(l$messageType);
    final l$modelType = modelType;
    _resultData['modelType'] = toJson$Enum$ModelType(l$modelType);
    final l$ownerUserId = ownerUserId;
    _resultData['ownerUserId'] = l$ownerUserId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$objectId = objectId;
    final l$messageType = messageType;
    final l$modelType = modelType;
    final l$ownerUserId = ownerUserId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$objectId,
      l$messageType,
      l$modelType,
      l$ownerUserId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$ObjectChanged$objectChanged) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$objectId = objectId;
    final lOther$objectId = other.objectId;
    if (l$objectId != lOther$objectId) {
      return false;
    }
    final l$messageType = messageType;
    final lOther$messageType = other.messageType;
    if (l$messageType != lOther$messageType) {
      return false;
    }
    final l$modelType = modelType;
    final lOther$modelType = other.modelType;
    if (l$modelType != lOther$modelType) {
      return false;
    }
    final l$ownerUserId = ownerUserId;
    final lOther$ownerUserId = other.ownerUserId;
    if (l$ownerUserId != lOther$ownerUserId) {
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

extension UtilityExtension$Subscription$ObjectChanged$objectChanged
    on Subscription$ObjectChanged$objectChanged {
  CopyWith$Subscription$ObjectChanged$objectChanged<
          Subscription$ObjectChanged$objectChanged>
      get copyWith => CopyWith$Subscription$ObjectChanged$objectChanged(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$ObjectChanged$objectChanged<TRes> {
  factory CopyWith$Subscription$ObjectChanged$objectChanged(
    Subscription$ObjectChanged$objectChanged instance,
    TRes Function(Subscription$ObjectChanged$objectChanged) then,
  ) = _CopyWithImpl$Subscription$ObjectChanged$objectChanged;

  factory CopyWith$Subscription$ObjectChanged$objectChanged.stub(TRes res) =
      _CopyWithStubImpl$Subscription$ObjectChanged$objectChanged;

  TRes call({
    String? objectId,
    Enum$ObjectChangedEventType? messageType,
    Enum$ModelType? modelType,
    String? ownerUserId,
    String? $__typename,
  });
}

class _CopyWithImpl$Subscription$ObjectChanged$objectChanged<TRes>
    implements CopyWith$Subscription$ObjectChanged$objectChanged<TRes> {
  _CopyWithImpl$Subscription$ObjectChanged$objectChanged(
    this._instance,
    this._then,
  );

  final Subscription$ObjectChanged$objectChanged _instance;

  final TRes Function(Subscription$ObjectChanged$objectChanged) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? objectId = _undefined,
    Object? messageType = _undefined,
    Object? modelType = _undefined,
    Object? ownerUserId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$ObjectChanged$objectChanged(
        objectId: objectId == _undefined || objectId == null
            ? _instance.objectId
            : (objectId as String),
        messageType: messageType == _undefined || messageType == null
            ? _instance.messageType
            : (messageType as Enum$ObjectChangedEventType),
        modelType: modelType == _undefined || modelType == null
            ? _instance.modelType
            : (modelType as Enum$ModelType),
        ownerUserId: ownerUserId == _undefined
            ? _instance.ownerUserId
            : (ownerUserId as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Subscription$ObjectChanged$objectChanged<TRes>
    implements CopyWith$Subscription$ObjectChanged$objectChanged<TRes> {
  _CopyWithStubImpl$Subscription$ObjectChanged$objectChanged(this._res);

  TRes _res;

  call({
    String? objectId,
    Enum$ObjectChangedEventType? messageType,
    Enum$ModelType? modelType,
    String? ownerUserId,
    String? $__typename,
  }) =>
      _res;
}
