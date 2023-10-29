// GENERATED WITH GRAPHQL_CODEGEN
// DO NOT MODIFY
// ignore_for_file: type=lint

import 'package:gql/ast.dart';
import 'schema.graphql.dart';

class Variables$Mutation$CreateContentTag {
  factory Variables$Mutation$CreateContentTag(
          {required Input$ContentTagInput input}) =>
      Variables$Mutation$CreateContentTag._({
        r'input': input,
      });

  Variables$Mutation$CreateContentTag._(this._$data);

  factory Variables$Mutation$CreateContentTag.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$ContentTagInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Mutation$CreateContentTag._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$ContentTagInput get input => (_$data['input'] as Input$ContentTagInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$CreateContentTag<
          Variables$Mutation$CreateContentTag>
      get copyWith => CopyWith$Variables$Mutation$CreateContentTag(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$CreateContentTag) ||
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

abstract class CopyWith$Variables$Mutation$CreateContentTag<TRes> {
  factory CopyWith$Variables$Mutation$CreateContentTag(
    Variables$Mutation$CreateContentTag instance,
    TRes Function(Variables$Mutation$CreateContentTag) then,
  ) = _CopyWithImpl$Variables$Mutation$CreateContentTag;

  factory CopyWith$Variables$Mutation$CreateContentTag.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CreateContentTag;

  TRes call({Input$ContentTagInput? input});
}

class _CopyWithImpl$Variables$Mutation$CreateContentTag<TRes>
    implements CopyWith$Variables$Mutation$CreateContentTag<TRes> {
  _CopyWithImpl$Variables$Mutation$CreateContentTag(
    this._instance,
    this._then,
  );

  final Variables$Mutation$CreateContentTag _instance;

  final TRes Function(Variables$Mutation$CreateContentTag) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$CreateContentTag._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$ContentTagInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$CreateContentTag<TRes>
    implements CopyWith$Variables$Mutation$CreateContentTag<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreateContentTag(this._res);

  TRes _res;

  call({Input$ContentTagInput? input}) => _res;
}

class Mutation$CreateContentTag {
  Mutation$CreateContentTag({
    required this.createContentTag,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CreateContentTag.fromJson(Map<String, dynamic> json) {
    final l$createContentTag = json['createContentTag'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateContentTag(
      createContentTag: Mutation$CreateContentTag$createContentTag.fromJson(
          (l$createContentTag as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CreateContentTag$createContentTag createContentTag;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createContentTag = createContentTag;
    _resultData['createContentTag'] = l$createContentTag.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createContentTag = createContentTag;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$createContentTag,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CreateContentTag) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$createContentTag = createContentTag;
    final lOther$createContentTag = other.createContentTag;
    if (l$createContentTag != lOther$createContentTag) {
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

extension UtilityExtension$Mutation$CreateContentTag
    on Mutation$CreateContentTag {
  CopyWith$Mutation$CreateContentTag<Mutation$CreateContentTag> get copyWith =>
      CopyWith$Mutation$CreateContentTag(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CreateContentTag<TRes> {
  factory CopyWith$Mutation$CreateContentTag(
    Mutation$CreateContentTag instance,
    TRes Function(Mutation$CreateContentTag) then,
  ) = _CopyWithImpl$Mutation$CreateContentTag;

  factory CopyWith$Mutation$CreateContentTag.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateContentTag;

  TRes call({
    Mutation$CreateContentTag$createContentTag? createContentTag,
    String? $__typename,
  });
  CopyWith$Mutation$CreateContentTag$createContentTag<TRes>
      get createContentTag;
}

class _CopyWithImpl$Mutation$CreateContentTag<TRes>
    implements CopyWith$Mutation$CreateContentTag<TRes> {
  _CopyWithImpl$Mutation$CreateContentTag(
    this._instance,
    this._then,
  );

  final Mutation$CreateContentTag _instance;

  final TRes Function(Mutation$CreateContentTag) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createContentTag = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateContentTag(
        createContentTag: createContentTag == _undefined ||
                createContentTag == null
            ? _instance.createContentTag
            : (createContentTag as Mutation$CreateContentTag$createContentTag),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$CreateContentTag$createContentTag<TRes>
      get createContentTag {
    final local$createContentTag = _instance.createContentTag;
    return CopyWith$Mutation$CreateContentTag$createContentTag(
        local$createContentTag, (e) => call(createContentTag: e));
  }
}

class _CopyWithStubImpl$Mutation$CreateContentTag<TRes>
    implements CopyWith$Mutation$CreateContentTag<TRes> {
  _CopyWithStubImpl$Mutation$CreateContentTag(this._res);

  TRes _res;

  call({
    Mutation$CreateContentTag$createContentTag? createContentTag,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$CreateContentTag$createContentTag<TRes>
      get createContentTag =>
          CopyWith$Mutation$CreateContentTag$createContentTag.stub(_res);
}

const documentNodeMutationCreateContentTag = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'CreateContentTag'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'ContentTagInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'createContentTag'),
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

class Mutation$CreateContentTag$createContentTag {
  Mutation$CreateContentTag$createContentTag({
    required this.id,
    this.$__typename = 'ContentTag',
  });

  factory Mutation$CreateContentTag$createContentTag.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateContentTag$createContentTag(
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
    if (!(other is Mutation$CreateContentTag$createContentTag) ||
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

extension UtilityExtension$Mutation$CreateContentTag$createContentTag
    on Mutation$CreateContentTag$createContentTag {
  CopyWith$Mutation$CreateContentTag$createContentTag<
          Mutation$CreateContentTag$createContentTag>
      get copyWith => CopyWith$Mutation$CreateContentTag$createContentTag(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateContentTag$createContentTag<TRes> {
  factory CopyWith$Mutation$CreateContentTag$createContentTag(
    Mutation$CreateContentTag$createContentTag instance,
    TRes Function(Mutation$CreateContentTag$createContentTag) then,
  ) = _CopyWithImpl$Mutation$CreateContentTag$createContentTag;

  factory CopyWith$Mutation$CreateContentTag$createContentTag.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateContentTag$createContentTag;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$CreateContentTag$createContentTag<TRes>
    implements CopyWith$Mutation$CreateContentTag$createContentTag<TRes> {
  _CopyWithImpl$Mutation$CreateContentTag$createContentTag(
    this._instance,
    this._then,
  );

  final Mutation$CreateContentTag$createContentTag _instance;

  final TRes Function(Mutation$CreateContentTag$createContentTag) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateContentTag$createContentTag(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$CreateContentTag$createContentTag<TRes>
    implements CopyWith$Mutation$CreateContentTag$createContentTag<TRes> {
  _CopyWithStubImpl$Mutation$CreateContentTag$createContentTag(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$DeleteContentTag {
  factory Variables$Mutation$DeleteContentTag({
    required bool deletePhysically,
    required String contentTagId,
  }) =>
      Variables$Mutation$DeleteContentTag._({
        r'deletePhysically': deletePhysically,
        r'contentTagId': contentTagId,
      });

  Variables$Mutation$DeleteContentTag._(this._$data);

  factory Variables$Mutation$DeleteContentTag.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$deletePhysically = data['deletePhysically'];
    result$data['deletePhysically'] = (l$deletePhysically as bool);
    final l$contentTagId = data['contentTagId'];
    result$data['contentTagId'] = (l$contentTagId as String);
    return Variables$Mutation$DeleteContentTag._(result$data);
  }

  Map<String, dynamic> _$data;

  bool get deletePhysically => (_$data['deletePhysically'] as bool);

  String get contentTagId => (_$data['contentTagId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$deletePhysically = deletePhysically;
    result$data['deletePhysically'] = l$deletePhysically;
    final l$contentTagId = contentTagId;
    result$data['contentTagId'] = l$contentTagId;
    return result$data;
  }

  CopyWith$Variables$Mutation$DeleteContentTag<
          Variables$Mutation$DeleteContentTag>
      get copyWith => CopyWith$Variables$Mutation$DeleteContentTag(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$DeleteContentTag) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deletePhysically = deletePhysically;
    final lOther$deletePhysically = other.deletePhysically;
    if (l$deletePhysically != lOther$deletePhysically) {
      return false;
    }
    final l$contentTagId = contentTagId;
    final lOther$contentTagId = other.contentTagId;
    if (l$contentTagId != lOther$contentTagId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$deletePhysically = deletePhysically;
    final l$contentTagId = contentTagId;
    return Object.hashAll([
      l$deletePhysically,
      l$contentTagId,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$DeleteContentTag<TRes> {
  factory CopyWith$Variables$Mutation$DeleteContentTag(
    Variables$Mutation$DeleteContentTag instance,
    TRes Function(Variables$Mutation$DeleteContentTag) then,
  ) = _CopyWithImpl$Variables$Mutation$DeleteContentTag;

  factory CopyWith$Variables$Mutation$DeleteContentTag.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$DeleteContentTag;

  TRes call({
    bool? deletePhysically,
    String? contentTagId,
  });
}

class _CopyWithImpl$Variables$Mutation$DeleteContentTag<TRes>
    implements CopyWith$Variables$Mutation$DeleteContentTag<TRes> {
  _CopyWithImpl$Variables$Mutation$DeleteContentTag(
    this._instance,
    this._then,
  );

  final Variables$Mutation$DeleteContentTag _instance;

  final TRes Function(Variables$Mutation$DeleteContentTag) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deletePhysically = _undefined,
    Object? contentTagId = _undefined,
  }) =>
      _then(Variables$Mutation$DeleteContentTag._({
        ..._instance._$data,
        if (deletePhysically != _undefined && deletePhysically != null)
          'deletePhysically': (deletePhysically as bool),
        if (contentTagId != _undefined && contentTagId != null)
          'contentTagId': (contentTagId as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$DeleteContentTag<TRes>
    implements CopyWith$Variables$Mutation$DeleteContentTag<TRes> {
  _CopyWithStubImpl$Variables$Mutation$DeleteContentTag(this._res);

  TRes _res;

  call({
    bool? deletePhysically,
    String? contentTagId,
  }) =>
      _res;
}

class Mutation$DeleteContentTag {
  Mutation$DeleteContentTag({
    required this.deleteContentTag,
    this.$__typename = 'Mutation',
  });

  factory Mutation$DeleteContentTag.fromJson(Map<String, dynamic> json) {
    final l$deleteContentTag = json['deleteContentTag'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteContentTag(
      deleteContentTag: Mutation$DeleteContentTag$deleteContentTag.fromJson(
          (l$deleteContentTag as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$DeleteContentTag$deleteContentTag deleteContentTag;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteContentTag = deleteContentTag;
    _resultData['deleteContentTag'] = l$deleteContentTag.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteContentTag = deleteContentTag;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$deleteContentTag,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$DeleteContentTag) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteContentTag = deleteContentTag;
    final lOther$deleteContentTag = other.deleteContentTag;
    if (l$deleteContentTag != lOther$deleteContentTag) {
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

extension UtilityExtension$Mutation$DeleteContentTag
    on Mutation$DeleteContentTag {
  CopyWith$Mutation$DeleteContentTag<Mutation$DeleteContentTag> get copyWith =>
      CopyWith$Mutation$DeleteContentTag(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$DeleteContentTag<TRes> {
  factory CopyWith$Mutation$DeleteContentTag(
    Mutation$DeleteContentTag instance,
    TRes Function(Mutation$DeleteContentTag) then,
  ) = _CopyWithImpl$Mutation$DeleteContentTag;

  factory CopyWith$Mutation$DeleteContentTag.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteContentTag;

  TRes call({
    Mutation$DeleteContentTag$deleteContentTag? deleteContentTag,
    String? $__typename,
  });
  CopyWith$Mutation$DeleteContentTag$deleteContentTag<TRes>
      get deleteContentTag;
}

class _CopyWithImpl$Mutation$DeleteContentTag<TRes>
    implements CopyWith$Mutation$DeleteContentTag<TRes> {
  _CopyWithImpl$Mutation$DeleteContentTag(
    this._instance,
    this._then,
  );

  final Mutation$DeleteContentTag _instance;

  final TRes Function(Mutation$DeleteContentTag) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleteContentTag = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteContentTag(
        deleteContentTag: deleteContentTag == _undefined ||
                deleteContentTag == null
            ? _instance.deleteContentTag
            : (deleteContentTag as Mutation$DeleteContentTag$deleteContentTag),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$DeleteContentTag$deleteContentTag<TRes>
      get deleteContentTag {
    final local$deleteContentTag = _instance.deleteContentTag;
    return CopyWith$Mutation$DeleteContentTag$deleteContentTag(
        local$deleteContentTag, (e) => call(deleteContentTag: e));
  }
}

class _CopyWithStubImpl$Mutation$DeleteContentTag<TRes>
    implements CopyWith$Mutation$DeleteContentTag<TRes> {
  _CopyWithStubImpl$Mutation$DeleteContentTag(this._res);

  TRes _res;

  call({
    Mutation$DeleteContentTag$deleteContentTag? deleteContentTag,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$DeleteContentTag$deleteContentTag<TRes>
      get deleteContentTag =>
          CopyWith$Mutation$DeleteContentTag$deleteContentTag.stub(_res);
}

const documentNodeMutationDeleteContentTag = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'DeleteContentTag'),
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
        variable: VariableNode(name: NameNode(value: 'contentTagId')),
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
        name: NameNode(value: 'deleteContentTag'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'deletePhysically'),
            value: VariableNode(name: NameNode(value: 'deletePhysically')),
          ),
          ArgumentNode(
            name: NameNode(value: 'contentTagId'),
            value: VariableNode(name: NameNode(value: 'contentTagId')),
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

class Mutation$DeleteContentTag$deleteContentTag {
  Mutation$DeleteContentTag$deleteContentTag({
    required this.id,
    this.$__typename = 'ServiceRequest',
  });

  factory Mutation$DeleteContentTag$deleteContentTag.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteContentTag$deleteContentTag(
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
    if (!(other is Mutation$DeleteContentTag$deleteContentTag) ||
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

extension UtilityExtension$Mutation$DeleteContentTag$deleteContentTag
    on Mutation$DeleteContentTag$deleteContentTag {
  CopyWith$Mutation$DeleteContentTag$deleteContentTag<
          Mutation$DeleteContentTag$deleteContentTag>
      get copyWith => CopyWith$Mutation$DeleteContentTag$deleteContentTag(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$DeleteContentTag$deleteContentTag<TRes> {
  factory CopyWith$Mutation$DeleteContentTag$deleteContentTag(
    Mutation$DeleteContentTag$deleteContentTag instance,
    TRes Function(Mutation$DeleteContentTag$deleteContentTag) then,
  ) = _CopyWithImpl$Mutation$DeleteContentTag$deleteContentTag;

  factory CopyWith$Mutation$DeleteContentTag$deleteContentTag.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteContentTag$deleteContentTag;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$DeleteContentTag$deleteContentTag<TRes>
    implements CopyWith$Mutation$DeleteContentTag$deleteContentTag<TRes> {
  _CopyWithImpl$Mutation$DeleteContentTag$deleteContentTag(
    this._instance,
    this._then,
  );

  final Mutation$DeleteContentTag$deleteContentTag _instance;

  final TRes Function(Mutation$DeleteContentTag$deleteContentTag) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteContentTag$deleteContentTag(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$DeleteContentTag$deleteContentTag<TRes>
    implements CopyWith$Mutation$DeleteContentTag$deleteContentTag<TRes> {
  _CopyWithStubImpl$Mutation$DeleteContentTag$deleteContentTag(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$UpdateContentTag {
  factory Variables$Mutation$UpdateContentTag(
          {required Input$ContentTagInput input}) =>
      Variables$Mutation$UpdateContentTag._({
        r'input': input,
      });

  Variables$Mutation$UpdateContentTag._(this._$data);

  factory Variables$Mutation$UpdateContentTag.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$ContentTagInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Mutation$UpdateContentTag._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$ContentTagInput get input => (_$data['input'] as Input$ContentTagInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateContentTag<
          Variables$Mutation$UpdateContentTag>
      get copyWith => CopyWith$Variables$Mutation$UpdateContentTag(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$UpdateContentTag) ||
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

abstract class CopyWith$Variables$Mutation$UpdateContentTag<TRes> {
  factory CopyWith$Variables$Mutation$UpdateContentTag(
    Variables$Mutation$UpdateContentTag instance,
    TRes Function(Variables$Mutation$UpdateContentTag) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateContentTag;

  factory CopyWith$Variables$Mutation$UpdateContentTag.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateContentTag;

  TRes call({Input$ContentTagInput? input});
}

class _CopyWithImpl$Variables$Mutation$UpdateContentTag<TRes>
    implements CopyWith$Variables$Mutation$UpdateContentTag<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateContentTag(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateContentTag _instance;

  final TRes Function(Variables$Mutation$UpdateContentTag) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$UpdateContentTag._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$ContentTagInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateContentTag<TRes>
    implements CopyWith$Variables$Mutation$UpdateContentTag<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateContentTag(this._res);

  TRes _res;

  call({Input$ContentTagInput? input}) => _res;
}

class Mutation$UpdateContentTag {
  Mutation$UpdateContentTag({
    required this.updateContentTag,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateContentTag.fromJson(Map<String, dynamic> json) {
    final l$updateContentTag = json['updateContentTag'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateContentTag(
      updateContentTag: Mutation$UpdateContentTag$updateContentTag.fromJson(
          (l$updateContentTag as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdateContentTag$updateContentTag updateContentTag;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateContentTag = updateContentTag;
    _resultData['updateContentTag'] = l$updateContentTag.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateContentTag = updateContentTag;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateContentTag,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateContentTag) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateContentTag = updateContentTag;
    final lOther$updateContentTag = other.updateContentTag;
    if (l$updateContentTag != lOther$updateContentTag) {
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

extension UtilityExtension$Mutation$UpdateContentTag
    on Mutation$UpdateContentTag {
  CopyWith$Mutation$UpdateContentTag<Mutation$UpdateContentTag> get copyWith =>
      CopyWith$Mutation$UpdateContentTag(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdateContentTag<TRes> {
  factory CopyWith$Mutation$UpdateContentTag(
    Mutation$UpdateContentTag instance,
    TRes Function(Mutation$UpdateContentTag) then,
  ) = _CopyWithImpl$Mutation$UpdateContentTag;

  factory CopyWith$Mutation$UpdateContentTag.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateContentTag;

  TRes call({
    Mutation$UpdateContentTag$updateContentTag? updateContentTag,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateContentTag$updateContentTag<TRes>
      get updateContentTag;
}

class _CopyWithImpl$Mutation$UpdateContentTag<TRes>
    implements CopyWith$Mutation$UpdateContentTag<TRes> {
  _CopyWithImpl$Mutation$UpdateContentTag(
    this._instance,
    this._then,
  );

  final Mutation$UpdateContentTag _instance;

  final TRes Function(Mutation$UpdateContentTag) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateContentTag = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateContentTag(
        updateContentTag: updateContentTag == _undefined ||
                updateContentTag == null
            ? _instance.updateContentTag
            : (updateContentTag as Mutation$UpdateContentTag$updateContentTag),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$UpdateContentTag$updateContentTag<TRes>
      get updateContentTag {
    final local$updateContentTag = _instance.updateContentTag;
    return CopyWith$Mutation$UpdateContentTag$updateContentTag(
        local$updateContentTag, (e) => call(updateContentTag: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateContentTag<TRes>
    implements CopyWith$Mutation$UpdateContentTag<TRes> {
  _CopyWithStubImpl$Mutation$UpdateContentTag(this._res);

  TRes _res;

  call({
    Mutation$UpdateContentTag$updateContentTag? updateContentTag,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$UpdateContentTag$updateContentTag<TRes>
      get updateContentTag =>
          CopyWith$Mutation$UpdateContentTag$updateContentTag.stub(_res);
}

const documentNodeMutationUpdateContentTag = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateContentTag'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'ContentTagInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updateContentTag'),
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

class Mutation$UpdateContentTag$updateContentTag {
  Mutation$UpdateContentTag$updateContentTag({
    required this.id,
    this.$__typename = 'ServiceRequest',
  });

  factory Mutation$UpdateContentTag$updateContentTag.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateContentTag$updateContentTag(
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
    if (!(other is Mutation$UpdateContentTag$updateContentTag) ||
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

extension UtilityExtension$Mutation$UpdateContentTag$updateContentTag
    on Mutation$UpdateContentTag$updateContentTag {
  CopyWith$Mutation$UpdateContentTag$updateContentTag<
          Mutation$UpdateContentTag$updateContentTag>
      get copyWith => CopyWith$Mutation$UpdateContentTag$updateContentTag(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateContentTag$updateContentTag<TRes> {
  factory CopyWith$Mutation$UpdateContentTag$updateContentTag(
    Mutation$UpdateContentTag$updateContentTag instance,
    TRes Function(Mutation$UpdateContentTag$updateContentTag) then,
  ) = _CopyWithImpl$Mutation$UpdateContentTag$updateContentTag;

  factory CopyWith$Mutation$UpdateContentTag$updateContentTag.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateContentTag$updateContentTag;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdateContentTag$updateContentTag<TRes>
    implements CopyWith$Mutation$UpdateContentTag$updateContentTag<TRes> {
  _CopyWithImpl$Mutation$UpdateContentTag$updateContentTag(
    this._instance,
    this._then,
  );

  final Mutation$UpdateContentTag$updateContentTag _instance;

  final TRes Function(Mutation$UpdateContentTag$updateContentTag) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateContentTag$updateContentTag(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$UpdateContentTag$updateContentTag<TRes>
    implements CopyWith$Mutation$UpdateContentTag$updateContentTag<TRes> {
  _CopyWithStubImpl$Mutation$UpdateContentTag$updateContentTag(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}
