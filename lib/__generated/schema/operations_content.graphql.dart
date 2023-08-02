// GENERATED WITH GRAPHQL_CODEGEN
// DO NOT MODIFY
// ignore_for_file: type=lint

import 'package:gql/ast.dart';
import 'schema.graphql.dart';

class Query$FindCompanyStages {
  Query$FindCompanyStages({
    required this.findCompanyStages,
    this.$__typename = 'Query',
  });

  factory Query$FindCompanyStages.fromJson(Map<String, dynamic> json) {
    final l$findCompanyStages = json['findCompanyStages'];
    final l$$__typename = json['__typename'];
    return Query$FindCompanyStages(
      findCompanyStages: (l$findCompanyStages as List<dynamic>)
          .map((e) => Query$FindCompanyStages$findCompanyStages.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$FindCompanyStages$findCompanyStages> findCompanyStages;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$findCompanyStages = findCompanyStages;
    _resultData['findCompanyStages'] =
        l$findCompanyStages.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$findCompanyStages = findCompanyStages;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$findCompanyStages.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FindCompanyStages) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$findCompanyStages = findCompanyStages;
    final lOther$findCompanyStages = other.findCompanyStages;
    if (l$findCompanyStages.length != lOther$findCompanyStages.length) {
      return false;
    }
    for (int i = 0; i < l$findCompanyStages.length; i++) {
      final l$findCompanyStages$entry = l$findCompanyStages[i];
      final lOther$findCompanyStages$entry = lOther$findCompanyStages[i];
      if (l$findCompanyStages$entry != lOther$findCompanyStages$entry) {
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

extension UtilityExtension$Query$FindCompanyStages on Query$FindCompanyStages {
  CopyWith$Query$FindCompanyStages<Query$FindCompanyStages> get copyWith =>
      CopyWith$Query$FindCompanyStages(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FindCompanyStages<TRes> {
  factory CopyWith$Query$FindCompanyStages(
    Query$FindCompanyStages instance,
    TRes Function(Query$FindCompanyStages) then,
  ) = _CopyWithImpl$Query$FindCompanyStages;

  factory CopyWith$Query$FindCompanyStages.stub(TRes res) =
      _CopyWithStubImpl$Query$FindCompanyStages;

  TRes call({
    List<Query$FindCompanyStages$findCompanyStages>? findCompanyStages,
    String? $__typename,
  });
  TRes findCompanyStages(
      Iterable<Query$FindCompanyStages$findCompanyStages> Function(
              Iterable<
                  CopyWith$Query$FindCompanyStages$findCompanyStages<
                      Query$FindCompanyStages$findCompanyStages>>)
          _fn);
}

class _CopyWithImpl$Query$FindCompanyStages<TRes>
    implements CopyWith$Query$FindCompanyStages<TRes> {
  _CopyWithImpl$Query$FindCompanyStages(
    this._instance,
    this._then,
  );

  final Query$FindCompanyStages _instance;

  final TRes Function(Query$FindCompanyStages) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? findCompanyStages = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindCompanyStages(
        findCompanyStages:
            findCompanyStages == _undefined || findCompanyStages == null
                ? _instance.findCompanyStages
                : (findCompanyStages
                    as List<Query$FindCompanyStages$findCompanyStages>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes findCompanyStages(
          Iterable<Query$FindCompanyStages$findCompanyStages> Function(
                  Iterable<
                      CopyWith$Query$FindCompanyStages$findCompanyStages<
                          Query$FindCompanyStages$findCompanyStages>>)
              _fn) =>
      call(
          findCompanyStages: _fn(_instance.findCompanyStages
              .map((e) => CopyWith$Query$FindCompanyStages$findCompanyStages(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$FindCompanyStages<TRes>
    implements CopyWith$Query$FindCompanyStages<TRes> {
  _CopyWithStubImpl$Query$FindCompanyStages(this._res);

  TRes _res;

  call({
    List<Query$FindCompanyStages$findCompanyStages>? findCompanyStages,
    String? $__typename,
  }) =>
      _res;
  findCompanyStages(_fn) => _res;
}

const documentNodeQueryFindCompanyStages = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FindCompanyStages'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'findCompanyStages'),
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
]);

class Query$FindCompanyStages$findCompanyStages {
  Query$FindCompanyStages$findCompanyStages({
    required this.textId,
    this.translatedValue,
    this.$__typename = 'CompanyStage',
  });

  factory Query$FindCompanyStages$findCompanyStages.fromJson(
      Map<String, dynamic> json) {
    final l$textId = json['textId'];
    final l$translatedValue = json['translatedValue'];
    final l$$__typename = json['__typename'];
    return Query$FindCompanyStages$findCompanyStages(
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
    if (!(other is Query$FindCompanyStages$findCompanyStages) ||
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

extension UtilityExtension$Query$FindCompanyStages$findCompanyStages
    on Query$FindCompanyStages$findCompanyStages {
  CopyWith$Query$FindCompanyStages$findCompanyStages<
          Query$FindCompanyStages$findCompanyStages>
      get copyWith => CopyWith$Query$FindCompanyStages$findCompanyStages(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindCompanyStages$findCompanyStages<TRes> {
  factory CopyWith$Query$FindCompanyStages$findCompanyStages(
    Query$FindCompanyStages$findCompanyStages instance,
    TRes Function(Query$FindCompanyStages$findCompanyStages) then,
  ) = _CopyWithImpl$Query$FindCompanyStages$findCompanyStages;

  factory CopyWith$Query$FindCompanyStages$findCompanyStages.stub(TRes res) =
      _CopyWithStubImpl$Query$FindCompanyStages$findCompanyStages;

  TRes call({
    String? textId,
    String? translatedValue,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindCompanyStages$findCompanyStages<TRes>
    implements CopyWith$Query$FindCompanyStages$findCompanyStages<TRes> {
  _CopyWithImpl$Query$FindCompanyStages$findCompanyStages(
    this._instance,
    this._then,
  );

  final Query$FindCompanyStages$findCompanyStages _instance;

  final TRes Function(Query$FindCompanyStages$findCompanyStages) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? textId = _undefined,
    Object? translatedValue = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindCompanyStages$findCompanyStages(
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

class _CopyWithStubImpl$Query$FindCompanyStages$findCompanyStages<TRes>
    implements CopyWith$Query$FindCompanyStages$findCompanyStages<TRes> {
  _CopyWithStubImpl$Query$FindCompanyStages$findCompanyStages(this._res);

  TRes _res;

  call({
    String? textId,
    String? translatedValue,
    String? $__typename,
  }) =>
      _res;
}

class Query$FindCompanyTypes {
  Query$FindCompanyTypes({
    required this.findCompanyTypes,
    this.$__typename = 'Query',
  });

  factory Query$FindCompanyTypes.fromJson(Map<String, dynamic> json) {
    final l$findCompanyTypes = json['findCompanyTypes'];
    final l$$__typename = json['__typename'];
    return Query$FindCompanyTypes(
      findCompanyTypes: (l$findCompanyTypes as List<dynamic>)
          .map((e) => Query$FindCompanyTypes$findCompanyTypes.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$FindCompanyTypes$findCompanyTypes> findCompanyTypes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$findCompanyTypes = findCompanyTypes;
    _resultData['findCompanyTypes'] =
        l$findCompanyTypes.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$findCompanyTypes = findCompanyTypes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$findCompanyTypes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FindCompanyTypes) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$findCompanyTypes = findCompanyTypes;
    final lOther$findCompanyTypes = other.findCompanyTypes;
    if (l$findCompanyTypes.length != lOther$findCompanyTypes.length) {
      return false;
    }
    for (int i = 0; i < l$findCompanyTypes.length; i++) {
      final l$findCompanyTypes$entry = l$findCompanyTypes[i];
      final lOther$findCompanyTypes$entry = lOther$findCompanyTypes[i];
      if (l$findCompanyTypes$entry != lOther$findCompanyTypes$entry) {
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

extension UtilityExtension$Query$FindCompanyTypes on Query$FindCompanyTypes {
  CopyWith$Query$FindCompanyTypes<Query$FindCompanyTypes> get copyWith =>
      CopyWith$Query$FindCompanyTypes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FindCompanyTypes<TRes> {
  factory CopyWith$Query$FindCompanyTypes(
    Query$FindCompanyTypes instance,
    TRes Function(Query$FindCompanyTypes) then,
  ) = _CopyWithImpl$Query$FindCompanyTypes;

  factory CopyWith$Query$FindCompanyTypes.stub(TRes res) =
      _CopyWithStubImpl$Query$FindCompanyTypes;

  TRes call({
    List<Query$FindCompanyTypes$findCompanyTypes>? findCompanyTypes,
    String? $__typename,
  });
  TRes findCompanyTypes(
      Iterable<Query$FindCompanyTypes$findCompanyTypes> Function(
              Iterable<
                  CopyWith$Query$FindCompanyTypes$findCompanyTypes<
                      Query$FindCompanyTypes$findCompanyTypes>>)
          _fn);
}

class _CopyWithImpl$Query$FindCompanyTypes<TRes>
    implements CopyWith$Query$FindCompanyTypes<TRes> {
  _CopyWithImpl$Query$FindCompanyTypes(
    this._instance,
    this._then,
  );

  final Query$FindCompanyTypes _instance;

  final TRes Function(Query$FindCompanyTypes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? findCompanyTypes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindCompanyTypes(
        findCompanyTypes:
            findCompanyTypes == _undefined || findCompanyTypes == null
                ? _instance.findCompanyTypes
                : (findCompanyTypes
                    as List<Query$FindCompanyTypes$findCompanyTypes>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes findCompanyTypes(
          Iterable<Query$FindCompanyTypes$findCompanyTypes> Function(
                  Iterable<
                      CopyWith$Query$FindCompanyTypes$findCompanyTypes<
                          Query$FindCompanyTypes$findCompanyTypes>>)
              _fn) =>
      call(
          findCompanyTypes: _fn(_instance.findCompanyTypes
              .map((e) => CopyWith$Query$FindCompanyTypes$findCompanyTypes(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$FindCompanyTypes<TRes>
    implements CopyWith$Query$FindCompanyTypes<TRes> {
  _CopyWithStubImpl$Query$FindCompanyTypes(this._res);

  TRes _res;

  call({
    List<Query$FindCompanyTypes$findCompanyTypes>? findCompanyTypes,
    String? $__typename,
  }) =>
      _res;
  findCompanyTypes(_fn) => _res;
}

const documentNodeQueryFindCompanyTypes = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FindCompanyTypes'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'findCompanyTypes'),
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
]);

class Query$FindCompanyTypes$findCompanyTypes {
  Query$FindCompanyTypes$findCompanyTypes({
    required this.textId,
    this.translatedValue,
    this.$__typename = 'CompanyType',
  });

  factory Query$FindCompanyTypes$findCompanyTypes.fromJson(
      Map<String, dynamic> json) {
    final l$textId = json['textId'];
    final l$translatedValue = json['translatedValue'];
    final l$$__typename = json['__typename'];
    return Query$FindCompanyTypes$findCompanyTypes(
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
    if (!(other is Query$FindCompanyTypes$findCompanyTypes) ||
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

extension UtilityExtension$Query$FindCompanyTypes$findCompanyTypes
    on Query$FindCompanyTypes$findCompanyTypes {
  CopyWith$Query$FindCompanyTypes$findCompanyTypes<
          Query$FindCompanyTypes$findCompanyTypes>
      get copyWith => CopyWith$Query$FindCompanyTypes$findCompanyTypes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindCompanyTypes$findCompanyTypes<TRes> {
  factory CopyWith$Query$FindCompanyTypes$findCompanyTypes(
    Query$FindCompanyTypes$findCompanyTypes instance,
    TRes Function(Query$FindCompanyTypes$findCompanyTypes) then,
  ) = _CopyWithImpl$Query$FindCompanyTypes$findCompanyTypes;

  factory CopyWith$Query$FindCompanyTypes$findCompanyTypes.stub(TRes res) =
      _CopyWithStubImpl$Query$FindCompanyTypes$findCompanyTypes;

  TRes call({
    String? textId,
    String? translatedValue,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindCompanyTypes$findCompanyTypes<TRes>
    implements CopyWith$Query$FindCompanyTypes$findCompanyTypes<TRes> {
  _CopyWithImpl$Query$FindCompanyTypes$findCompanyTypes(
    this._instance,
    this._then,
  );

  final Query$FindCompanyTypes$findCompanyTypes _instance;

  final TRes Function(Query$FindCompanyTypes$findCompanyTypes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? textId = _undefined,
    Object? translatedValue = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindCompanyTypes$findCompanyTypes(
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

class _CopyWithStubImpl$Query$FindCompanyTypes$findCompanyTypes<TRes>
    implements CopyWith$Query$FindCompanyTypes$findCompanyTypes<TRes> {
  _CopyWithStubImpl$Query$FindCompanyTypes$findCompanyTypes(this._res);

  TRes _res;

  call({
    String? textId,
    String? translatedValue,
    String? $__typename,
  }) =>
      _res;
}

class Query$FindCountries {
  Query$FindCountries({
    required this.findCountries,
    this.$__typename = 'Query',
  });

  factory Query$FindCountries.fromJson(Map<String, dynamic> json) {
    final l$findCountries = json['findCountries'];
    final l$$__typename = json['__typename'];
    return Query$FindCountries(
      findCountries: (l$findCountries as List<dynamic>)
          .map((e) => Query$FindCountries$findCountries.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$FindCountries$findCountries> findCountries;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$findCountries = findCountries;
    _resultData['findCountries'] =
        l$findCountries.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$findCountries = findCountries;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$findCountries.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FindCountries) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$findCountries = findCountries;
    final lOther$findCountries = other.findCountries;
    if (l$findCountries.length != lOther$findCountries.length) {
      return false;
    }
    for (int i = 0; i < l$findCountries.length; i++) {
      final l$findCountries$entry = l$findCountries[i];
      final lOther$findCountries$entry = lOther$findCountries[i];
      if (l$findCountries$entry != lOther$findCountries$entry) {
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

extension UtilityExtension$Query$FindCountries on Query$FindCountries {
  CopyWith$Query$FindCountries<Query$FindCountries> get copyWith =>
      CopyWith$Query$FindCountries(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FindCountries<TRes> {
  factory CopyWith$Query$FindCountries(
    Query$FindCountries instance,
    TRes Function(Query$FindCountries) then,
  ) = _CopyWithImpl$Query$FindCountries;

  factory CopyWith$Query$FindCountries.stub(TRes res) =
      _CopyWithStubImpl$Query$FindCountries;

  TRes call({
    List<Query$FindCountries$findCountries>? findCountries,
    String? $__typename,
  });
  TRes findCountries(
      Iterable<Query$FindCountries$findCountries> Function(
              Iterable<
                  CopyWith$Query$FindCountries$findCountries<
                      Query$FindCountries$findCountries>>)
          _fn);
}

class _CopyWithImpl$Query$FindCountries<TRes>
    implements CopyWith$Query$FindCountries<TRes> {
  _CopyWithImpl$Query$FindCountries(
    this._instance,
    this._then,
  );

  final Query$FindCountries _instance;

  final TRes Function(Query$FindCountries) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? findCountries = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindCountries(
        findCountries: findCountries == _undefined || findCountries == null
            ? _instance.findCountries
            : (findCountries as List<Query$FindCountries$findCountries>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes findCountries(
          Iterable<Query$FindCountries$findCountries> Function(
                  Iterable<
                      CopyWith$Query$FindCountries$findCountries<
                          Query$FindCountries$findCountries>>)
              _fn) =>
      call(
          findCountries: _fn(_instance.findCountries
              .map((e) => CopyWith$Query$FindCountries$findCountries(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$FindCountries<TRes>
    implements CopyWith$Query$FindCountries<TRes> {
  _CopyWithStubImpl$Query$FindCountries(this._res);

  TRes _res;

  call({
    List<Query$FindCountries$findCountries>? findCountries,
    String? $__typename,
  }) =>
      _res;
  findCountries(_fn) => _res;
}

const documentNodeQueryFindCountries = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FindCountries'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'findCountries'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'alpha2Key'),
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
]);

class Query$FindCountries$findCountries {
  Query$FindCountries$findCountries({
    required this.alpha2Key,
    required this.textId,
    this.translatedValue,
    this.$__typename = 'Country',
  });

  factory Query$FindCountries$findCountries.fromJson(
      Map<String, dynamic> json) {
    final l$alpha2Key = json['alpha2Key'];
    final l$textId = json['textId'];
    final l$translatedValue = json['translatedValue'];
    final l$$__typename = json['__typename'];
    return Query$FindCountries$findCountries(
      alpha2Key: (l$alpha2Key as String),
      textId: (l$textId as String),
      translatedValue: (l$translatedValue as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String alpha2Key;

  final String textId;

  final String? translatedValue;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$alpha2Key = alpha2Key;
    _resultData['alpha2Key'] = l$alpha2Key;
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
    final l$alpha2Key = alpha2Key;
    final l$textId = textId;
    final l$translatedValue = translatedValue;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$alpha2Key,
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
    if (!(other is Query$FindCountries$findCountries) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$alpha2Key = alpha2Key;
    final lOther$alpha2Key = other.alpha2Key;
    if (l$alpha2Key != lOther$alpha2Key) {
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

extension UtilityExtension$Query$FindCountries$findCountries
    on Query$FindCountries$findCountries {
  CopyWith$Query$FindCountries$findCountries<Query$FindCountries$findCountries>
      get copyWith => CopyWith$Query$FindCountries$findCountries(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindCountries$findCountries<TRes> {
  factory CopyWith$Query$FindCountries$findCountries(
    Query$FindCountries$findCountries instance,
    TRes Function(Query$FindCountries$findCountries) then,
  ) = _CopyWithImpl$Query$FindCountries$findCountries;

  factory CopyWith$Query$FindCountries$findCountries.stub(TRes res) =
      _CopyWithStubImpl$Query$FindCountries$findCountries;

  TRes call({
    String? alpha2Key,
    String? textId,
    String? translatedValue,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindCountries$findCountries<TRes>
    implements CopyWith$Query$FindCountries$findCountries<TRes> {
  _CopyWithImpl$Query$FindCountries$findCountries(
    this._instance,
    this._then,
  );

  final Query$FindCountries$findCountries _instance;

  final TRes Function(Query$FindCountries$findCountries) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? alpha2Key = _undefined,
    Object? textId = _undefined,
    Object? translatedValue = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindCountries$findCountries(
        alpha2Key: alpha2Key == _undefined || alpha2Key == null
            ? _instance.alpha2Key
            : (alpha2Key as String),
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

class _CopyWithStubImpl$Query$FindCountries$findCountries<TRes>
    implements CopyWith$Query$FindCountries$findCountries<TRes> {
  _CopyWithStubImpl$Query$FindCountries$findCountries(this._res);

  TRes _res;

  call({
    String? alpha2Key,
    String? textId,
    String? translatedValue,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$FindCountriesInLanguage {
  factory Variables$Query$FindCountriesInLanguage(
          {Enum$UiLanguage? uiLanguage}) =>
      Variables$Query$FindCountriesInLanguage._({
        if (uiLanguage != null) r'uiLanguage': uiLanguage,
      });

  Variables$Query$FindCountriesInLanguage._(this._$data);

  factory Variables$Query$FindCountriesInLanguage.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('uiLanguage')) {
      final l$uiLanguage = data['uiLanguage'];
      result$data['uiLanguage'] = l$uiLanguage == null
          ? null
          : fromJson$Enum$UiLanguage((l$uiLanguage as String));
    }
    return Variables$Query$FindCountriesInLanguage._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$UiLanguage? get uiLanguage => (_$data['uiLanguage'] as Enum$UiLanguage?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('uiLanguage')) {
      final l$uiLanguage = uiLanguage;
      result$data['uiLanguage'] =
          l$uiLanguage == null ? null : toJson$Enum$UiLanguage(l$uiLanguage);
    }
    return result$data;
  }

  CopyWith$Variables$Query$FindCountriesInLanguage<
          Variables$Query$FindCountriesInLanguage>
      get copyWith => CopyWith$Variables$Query$FindCountriesInLanguage(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$FindCountriesInLanguage) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$uiLanguage = uiLanguage;
    final lOther$uiLanguage = other.uiLanguage;
    if (_$data.containsKey('uiLanguage') !=
        other._$data.containsKey('uiLanguage')) {
      return false;
    }
    if (l$uiLanguage != lOther$uiLanguage) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$uiLanguage = uiLanguage;
    return Object.hashAll(
        [_$data.containsKey('uiLanguage') ? l$uiLanguage : const {}]);
  }
}

abstract class CopyWith$Variables$Query$FindCountriesInLanguage<TRes> {
  factory CopyWith$Variables$Query$FindCountriesInLanguage(
    Variables$Query$FindCountriesInLanguage instance,
    TRes Function(Variables$Query$FindCountriesInLanguage) then,
  ) = _CopyWithImpl$Variables$Query$FindCountriesInLanguage;

  factory CopyWith$Variables$Query$FindCountriesInLanguage.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$FindCountriesInLanguage;

  TRes call({Enum$UiLanguage? uiLanguage});
}

class _CopyWithImpl$Variables$Query$FindCountriesInLanguage<TRes>
    implements CopyWith$Variables$Query$FindCountriesInLanguage<TRes> {
  _CopyWithImpl$Variables$Query$FindCountriesInLanguage(
    this._instance,
    this._then,
  );

  final Variables$Query$FindCountriesInLanguage _instance;

  final TRes Function(Variables$Query$FindCountriesInLanguage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? uiLanguage = _undefined}) =>
      _then(Variables$Query$FindCountriesInLanguage._({
        ..._instance._$data,
        if (uiLanguage != _undefined)
          'uiLanguage': (uiLanguage as Enum$UiLanguage?),
      }));
}

class _CopyWithStubImpl$Variables$Query$FindCountriesInLanguage<TRes>
    implements CopyWith$Variables$Query$FindCountriesInLanguage<TRes> {
  _CopyWithStubImpl$Variables$Query$FindCountriesInLanguage(this._res);

  TRes _res;

  call({Enum$UiLanguage? uiLanguage}) => _res;
}

class Query$FindCountriesInLanguage {
  Query$FindCountriesInLanguage({
    required this.findCountries,
    this.$__typename = 'Query',
  });

  factory Query$FindCountriesInLanguage.fromJson(Map<String, dynamic> json) {
    final l$findCountries = json['findCountries'];
    final l$$__typename = json['__typename'];
    return Query$FindCountriesInLanguage(
      findCountries: (l$findCountries as List<dynamic>)
          .map((e) => Query$FindCountriesInLanguage$findCountries.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$FindCountriesInLanguage$findCountries> findCountries;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$findCountries = findCountries;
    _resultData['findCountries'] =
        l$findCountries.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$findCountries = findCountries;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$findCountries.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FindCountriesInLanguage) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$findCountries = findCountries;
    final lOther$findCountries = other.findCountries;
    if (l$findCountries.length != lOther$findCountries.length) {
      return false;
    }
    for (int i = 0; i < l$findCountries.length; i++) {
      final l$findCountries$entry = l$findCountries[i];
      final lOther$findCountries$entry = lOther$findCountries[i];
      if (l$findCountries$entry != lOther$findCountries$entry) {
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

extension UtilityExtension$Query$FindCountriesInLanguage
    on Query$FindCountriesInLanguage {
  CopyWith$Query$FindCountriesInLanguage<Query$FindCountriesInLanguage>
      get copyWith => CopyWith$Query$FindCountriesInLanguage(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindCountriesInLanguage<TRes> {
  factory CopyWith$Query$FindCountriesInLanguage(
    Query$FindCountriesInLanguage instance,
    TRes Function(Query$FindCountriesInLanguage) then,
  ) = _CopyWithImpl$Query$FindCountriesInLanguage;

  factory CopyWith$Query$FindCountriesInLanguage.stub(TRes res) =
      _CopyWithStubImpl$Query$FindCountriesInLanguage;

  TRes call({
    List<Query$FindCountriesInLanguage$findCountries>? findCountries,
    String? $__typename,
  });
  TRes findCountries(
      Iterable<Query$FindCountriesInLanguage$findCountries> Function(
              Iterable<
                  CopyWith$Query$FindCountriesInLanguage$findCountries<
                      Query$FindCountriesInLanguage$findCountries>>)
          _fn);
}

class _CopyWithImpl$Query$FindCountriesInLanguage<TRes>
    implements CopyWith$Query$FindCountriesInLanguage<TRes> {
  _CopyWithImpl$Query$FindCountriesInLanguage(
    this._instance,
    this._then,
  );

  final Query$FindCountriesInLanguage _instance;

  final TRes Function(Query$FindCountriesInLanguage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? findCountries = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindCountriesInLanguage(
        findCountries: findCountries == _undefined || findCountries == null
            ? _instance.findCountries
            : (findCountries
                as List<Query$FindCountriesInLanguage$findCountries>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes findCountries(
          Iterable<Query$FindCountriesInLanguage$findCountries> Function(
                  Iterable<
                      CopyWith$Query$FindCountriesInLanguage$findCountries<
                          Query$FindCountriesInLanguage$findCountries>>)
              _fn) =>
      call(
          findCountries: _fn(_instance.findCountries
              .map((e) => CopyWith$Query$FindCountriesInLanguage$findCountries(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$FindCountriesInLanguage<TRes>
    implements CopyWith$Query$FindCountriesInLanguage<TRes> {
  _CopyWithStubImpl$Query$FindCountriesInLanguage(this._res);

  TRes _res;

  call({
    List<Query$FindCountriesInLanguage$findCountries>? findCountries,
    String? $__typename,
  }) =>
      _res;
  findCountries(_fn) => _res;
}

const documentNodeQueryFindCountriesInLanguage = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FindCountriesInLanguage'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'uiLanguage')),
        type: NamedTypeNode(
          name: NameNode(value: 'UiLanguage'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'findCountries'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'uiLanguage'),
            value: VariableNode(name: NameNode(value: 'uiLanguage')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'alpha2Key'),
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
]);

class Query$FindCountriesInLanguage$findCountries {
  Query$FindCountriesInLanguage$findCountries({
    required this.alpha2Key,
    required this.textId,
    this.translatedValue,
    this.$__typename = 'Country',
  });

  factory Query$FindCountriesInLanguage$findCountries.fromJson(
      Map<String, dynamic> json) {
    final l$alpha2Key = json['alpha2Key'];
    final l$textId = json['textId'];
    final l$translatedValue = json['translatedValue'];
    final l$$__typename = json['__typename'];
    return Query$FindCountriesInLanguage$findCountries(
      alpha2Key: (l$alpha2Key as String),
      textId: (l$textId as String),
      translatedValue: (l$translatedValue as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String alpha2Key;

  final String textId;

  final String? translatedValue;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$alpha2Key = alpha2Key;
    _resultData['alpha2Key'] = l$alpha2Key;
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
    final l$alpha2Key = alpha2Key;
    final l$textId = textId;
    final l$translatedValue = translatedValue;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$alpha2Key,
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
    if (!(other is Query$FindCountriesInLanguage$findCountries) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$alpha2Key = alpha2Key;
    final lOther$alpha2Key = other.alpha2Key;
    if (l$alpha2Key != lOther$alpha2Key) {
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

extension UtilityExtension$Query$FindCountriesInLanguage$findCountries
    on Query$FindCountriesInLanguage$findCountries {
  CopyWith$Query$FindCountriesInLanguage$findCountries<
          Query$FindCountriesInLanguage$findCountries>
      get copyWith => CopyWith$Query$FindCountriesInLanguage$findCountries(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindCountriesInLanguage$findCountries<TRes> {
  factory CopyWith$Query$FindCountriesInLanguage$findCountries(
    Query$FindCountriesInLanguage$findCountries instance,
    TRes Function(Query$FindCountriesInLanguage$findCountries) then,
  ) = _CopyWithImpl$Query$FindCountriesInLanguage$findCountries;

  factory CopyWith$Query$FindCountriesInLanguage$findCountries.stub(TRes res) =
      _CopyWithStubImpl$Query$FindCountriesInLanguage$findCountries;

  TRes call({
    String? alpha2Key,
    String? textId,
    String? translatedValue,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindCountriesInLanguage$findCountries<TRes>
    implements CopyWith$Query$FindCountriesInLanguage$findCountries<TRes> {
  _CopyWithImpl$Query$FindCountriesInLanguage$findCountries(
    this._instance,
    this._then,
  );

  final Query$FindCountriesInLanguage$findCountries _instance;

  final TRes Function(Query$FindCountriesInLanguage$findCountries) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? alpha2Key = _undefined,
    Object? textId = _undefined,
    Object? translatedValue = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindCountriesInLanguage$findCountries(
        alpha2Key: alpha2Key == _undefined || alpha2Key == null
            ? _instance.alpha2Key
            : (alpha2Key as String),
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

class _CopyWithStubImpl$Query$FindCountriesInLanguage$findCountries<TRes>
    implements CopyWith$Query$FindCountriesInLanguage$findCountries<TRes> {
  _CopyWithStubImpl$Query$FindCountriesInLanguage$findCountries(this._res);

  TRes _res;

  call({
    String? alpha2Key,
    String? textId,
    String? translatedValue,
    String? $__typename,
  }) =>
      _res;
}

class Query$FindEducationLevels {
  Query$FindEducationLevels({
    required this.findEducationLevels,
    this.$__typename = 'Query',
  });

  factory Query$FindEducationLevels.fromJson(Map<String, dynamic> json) {
    final l$findEducationLevels = json['findEducationLevels'];
    final l$$__typename = json['__typename'];
    return Query$FindEducationLevels(
      findEducationLevels: (l$findEducationLevels as List<dynamic>)
          .map((e) => Query$FindEducationLevels$findEducationLevels.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$FindEducationLevels$findEducationLevels> findEducationLevels;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$findEducationLevels = findEducationLevels;
    _resultData['findEducationLevels'] =
        l$findEducationLevels.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$findEducationLevels = findEducationLevels;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$findEducationLevels.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FindEducationLevels) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$findEducationLevels = findEducationLevels;
    final lOther$findEducationLevels = other.findEducationLevels;
    if (l$findEducationLevels.length != lOther$findEducationLevels.length) {
      return false;
    }
    for (int i = 0; i < l$findEducationLevels.length; i++) {
      final l$findEducationLevels$entry = l$findEducationLevels[i];
      final lOther$findEducationLevels$entry = lOther$findEducationLevels[i];
      if (l$findEducationLevels$entry != lOther$findEducationLevels$entry) {
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

extension UtilityExtension$Query$FindEducationLevels
    on Query$FindEducationLevels {
  CopyWith$Query$FindEducationLevels<Query$FindEducationLevels> get copyWith =>
      CopyWith$Query$FindEducationLevels(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FindEducationLevels<TRes> {
  factory CopyWith$Query$FindEducationLevels(
    Query$FindEducationLevels instance,
    TRes Function(Query$FindEducationLevels) then,
  ) = _CopyWithImpl$Query$FindEducationLevels;

  factory CopyWith$Query$FindEducationLevels.stub(TRes res) =
      _CopyWithStubImpl$Query$FindEducationLevels;

  TRes call({
    List<Query$FindEducationLevels$findEducationLevels>? findEducationLevels,
    String? $__typename,
  });
  TRes findEducationLevels(
      Iterable<Query$FindEducationLevels$findEducationLevels> Function(
              Iterable<
                  CopyWith$Query$FindEducationLevels$findEducationLevels<
                      Query$FindEducationLevels$findEducationLevels>>)
          _fn);
}

class _CopyWithImpl$Query$FindEducationLevels<TRes>
    implements CopyWith$Query$FindEducationLevels<TRes> {
  _CopyWithImpl$Query$FindEducationLevels(
    this._instance,
    this._then,
  );

  final Query$FindEducationLevels _instance;

  final TRes Function(Query$FindEducationLevels) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? findEducationLevels = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindEducationLevels(
        findEducationLevels:
            findEducationLevels == _undefined || findEducationLevels == null
                ? _instance.findEducationLevels
                : (findEducationLevels
                    as List<Query$FindEducationLevels$findEducationLevels>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes findEducationLevels(
          Iterable<Query$FindEducationLevels$findEducationLevels> Function(
                  Iterable<
                      CopyWith$Query$FindEducationLevels$findEducationLevels<
                          Query$FindEducationLevels$findEducationLevels>>)
              _fn) =>
      call(
          findEducationLevels: _fn(_instance.findEducationLevels.map(
              (e) => CopyWith$Query$FindEducationLevels$findEducationLevels(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$FindEducationLevels<TRes>
    implements CopyWith$Query$FindEducationLevels<TRes> {
  _CopyWithStubImpl$Query$FindEducationLevels(this._res);

  TRes _res;

  call({
    List<Query$FindEducationLevels$findEducationLevels>? findEducationLevels,
    String? $__typename,
  }) =>
      _res;
  findEducationLevels(_fn) => _res;
}

const documentNodeQueryFindEducationLevels = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FindEducationLevels'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'findEducationLevels'),
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
]);

class Query$FindEducationLevels$findEducationLevels {
  Query$FindEducationLevels$findEducationLevels({
    required this.textId,
    this.translatedValue,
    this.$__typename = 'EducationLevel',
  });

  factory Query$FindEducationLevels$findEducationLevels.fromJson(
      Map<String, dynamic> json) {
    final l$textId = json['textId'];
    final l$translatedValue = json['translatedValue'];
    final l$$__typename = json['__typename'];
    return Query$FindEducationLevels$findEducationLevels(
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
    if (!(other is Query$FindEducationLevels$findEducationLevels) ||
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

extension UtilityExtension$Query$FindEducationLevels$findEducationLevels
    on Query$FindEducationLevels$findEducationLevels {
  CopyWith$Query$FindEducationLevels$findEducationLevels<
          Query$FindEducationLevels$findEducationLevels>
      get copyWith => CopyWith$Query$FindEducationLevels$findEducationLevels(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindEducationLevels$findEducationLevels<TRes> {
  factory CopyWith$Query$FindEducationLevels$findEducationLevels(
    Query$FindEducationLevels$findEducationLevels instance,
    TRes Function(Query$FindEducationLevels$findEducationLevels) then,
  ) = _CopyWithImpl$Query$FindEducationLevels$findEducationLevels;

  factory CopyWith$Query$FindEducationLevels$findEducationLevels.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindEducationLevels$findEducationLevels;

  TRes call({
    String? textId,
    String? translatedValue,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindEducationLevels$findEducationLevels<TRes>
    implements CopyWith$Query$FindEducationLevels$findEducationLevels<TRes> {
  _CopyWithImpl$Query$FindEducationLevels$findEducationLevels(
    this._instance,
    this._then,
  );

  final Query$FindEducationLevels$findEducationLevels _instance;

  final TRes Function(Query$FindEducationLevels$findEducationLevels) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? textId = _undefined,
    Object? translatedValue = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindEducationLevels$findEducationLevels(
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

class _CopyWithStubImpl$Query$FindEducationLevels$findEducationLevels<TRes>
    implements CopyWith$Query$FindEducationLevels$findEducationLevels<TRes> {
  _CopyWithStubImpl$Query$FindEducationLevels$findEducationLevels(this._res);

  TRes _res;

  call({
    String? textId,
    String? translatedValue,
    String? $__typename,
  }) =>
      _res;
}

class Query$FindExpertises {
  Query$FindExpertises({
    required this.findExpertises,
    this.$__typename = 'Query',
  });

  factory Query$FindExpertises.fromJson(Map<String, dynamic> json) {
    final l$findExpertises = json['findExpertises'];
    final l$$__typename = json['__typename'];
    return Query$FindExpertises(
      findExpertises: (l$findExpertises as List<dynamic>)
          .map((e) => Query$FindExpertises$findExpertises.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$FindExpertises$findExpertises> findExpertises;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$findExpertises = findExpertises;
    _resultData['findExpertises'] =
        l$findExpertises.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$findExpertises = findExpertises;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$findExpertises.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FindExpertises) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$findExpertises = findExpertises;
    final lOther$findExpertises = other.findExpertises;
    if (l$findExpertises.length != lOther$findExpertises.length) {
      return false;
    }
    for (int i = 0; i < l$findExpertises.length; i++) {
      final l$findExpertises$entry = l$findExpertises[i];
      final lOther$findExpertises$entry = lOther$findExpertises[i];
      if (l$findExpertises$entry != lOther$findExpertises$entry) {
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

extension UtilityExtension$Query$FindExpertises on Query$FindExpertises {
  CopyWith$Query$FindExpertises<Query$FindExpertises> get copyWith =>
      CopyWith$Query$FindExpertises(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FindExpertises<TRes> {
  factory CopyWith$Query$FindExpertises(
    Query$FindExpertises instance,
    TRes Function(Query$FindExpertises) then,
  ) = _CopyWithImpl$Query$FindExpertises;

  factory CopyWith$Query$FindExpertises.stub(TRes res) =
      _CopyWithStubImpl$Query$FindExpertises;

  TRes call({
    List<Query$FindExpertises$findExpertises>? findExpertises,
    String? $__typename,
  });
  TRes findExpertises(
      Iterable<Query$FindExpertises$findExpertises> Function(
              Iterable<
                  CopyWith$Query$FindExpertises$findExpertises<
                      Query$FindExpertises$findExpertises>>)
          _fn);
}

class _CopyWithImpl$Query$FindExpertises<TRes>
    implements CopyWith$Query$FindExpertises<TRes> {
  _CopyWithImpl$Query$FindExpertises(
    this._instance,
    this._then,
  );

  final Query$FindExpertises _instance;

  final TRes Function(Query$FindExpertises) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? findExpertises = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindExpertises(
        findExpertises: findExpertises == _undefined || findExpertises == null
            ? _instance.findExpertises
            : (findExpertises as List<Query$FindExpertises$findExpertises>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes findExpertises(
          Iterable<Query$FindExpertises$findExpertises> Function(
                  Iterable<
                      CopyWith$Query$FindExpertises$findExpertises<
                          Query$FindExpertises$findExpertises>>)
              _fn) =>
      call(
          findExpertises: _fn(_instance.findExpertises
              .map((e) => CopyWith$Query$FindExpertises$findExpertises(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$FindExpertises<TRes>
    implements CopyWith$Query$FindExpertises<TRes> {
  _CopyWithStubImpl$Query$FindExpertises(this._res);

  TRes _res;

  call({
    List<Query$FindExpertises$findExpertises>? findExpertises,
    String? $__typename,
  }) =>
      _res;
  findExpertises(_fn) => _res;
}

const documentNodeQueryFindExpertises = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FindExpertises'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'findExpertises'),
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
]);

class Query$FindExpertises$findExpertises {
  Query$FindExpertises$findExpertises({
    required this.textId,
    this.translatedValue,
    this.$__typename = 'Expertise',
  });

  factory Query$FindExpertises$findExpertises.fromJson(
      Map<String, dynamic> json) {
    final l$textId = json['textId'];
    final l$translatedValue = json['translatedValue'];
    final l$$__typename = json['__typename'];
    return Query$FindExpertises$findExpertises(
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
    if (!(other is Query$FindExpertises$findExpertises) ||
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

extension UtilityExtension$Query$FindExpertises$findExpertises
    on Query$FindExpertises$findExpertises {
  CopyWith$Query$FindExpertises$findExpertises<
          Query$FindExpertises$findExpertises>
      get copyWith => CopyWith$Query$FindExpertises$findExpertises(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindExpertises$findExpertises<TRes> {
  factory CopyWith$Query$FindExpertises$findExpertises(
    Query$FindExpertises$findExpertises instance,
    TRes Function(Query$FindExpertises$findExpertises) then,
  ) = _CopyWithImpl$Query$FindExpertises$findExpertises;

  factory CopyWith$Query$FindExpertises$findExpertises.stub(TRes res) =
      _CopyWithStubImpl$Query$FindExpertises$findExpertises;

  TRes call({
    String? textId,
    String? translatedValue,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindExpertises$findExpertises<TRes>
    implements CopyWith$Query$FindExpertises$findExpertises<TRes> {
  _CopyWithImpl$Query$FindExpertises$findExpertises(
    this._instance,
    this._then,
  );

  final Query$FindExpertises$findExpertises _instance;

  final TRes Function(Query$FindExpertises$findExpertises) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? textId = _undefined,
    Object? translatedValue = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindExpertises$findExpertises(
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

class _CopyWithStubImpl$Query$FindExpertises$findExpertises<TRes>
    implements CopyWith$Query$FindExpertises$findExpertises<TRes> {
  _CopyWithStubImpl$Query$FindExpertises$findExpertises(this._res);

  TRes _res;

  call({
    String? textId,
    String? translatedValue,
    String? $__typename,
  }) =>
      _res;
}

class Query$FindIndustries {
  Query$FindIndustries({
    required this.findIndustries,
    this.$__typename = 'Query',
  });

  factory Query$FindIndustries.fromJson(Map<String, dynamic> json) {
    final l$findIndustries = json['findIndustries'];
    final l$$__typename = json['__typename'];
    return Query$FindIndustries(
      findIndustries: (l$findIndustries as List<dynamic>)
          .map((e) => Query$FindIndustries$findIndustries.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$FindIndustries$findIndustries> findIndustries;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$findIndustries = findIndustries;
    _resultData['findIndustries'] =
        l$findIndustries.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$findIndustries = findIndustries;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$findIndustries.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FindIndustries) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$findIndustries = findIndustries;
    final lOther$findIndustries = other.findIndustries;
    if (l$findIndustries.length != lOther$findIndustries.length) {
      return false;
    }
    for (int i = 0; i < l$findIndustries.length; i++) {
      final l$findIndustries$entry = l$findIndustries[i];
      final lOther$findIndustries$entry = lOther$findIndustries[i];
      if (l$findIndustries$entry != lOther$findIndustries$entry) {
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

extension UtilityExtension$Query$FindIndustries on Query$FindIndustries {
  CopyWith$Query$FindIndustries<Query$FindIndustries> get copyWith =>
      CopyWith$Query$FindIndustries(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FindIndustries<TRes> {
  factory CopyWith$Query$FindIndustries(
    Query$FindIndustries instance,
    TRes Function(Query$FindIndustries) then,
  ) = _CopyWithImpl$Query$FindIndustries;

  factory CopyWith$Query$FindIndustries.stub(TRes res) =
      _CopyWithStubImpl$Query$FindIndustries;

  TRes call({
    List<Query$FindIndustries$findIndustries>? findIndustries,
    String? $__typename,
  });
  TRes findIndustries(
      Iterable<Query$FindIndustries$findIndustries> Function(
              Iterable<
                  CopyWith$Query$FindIndustries$findIndustries<
                      Query$FindIndustries$findIndustries>>)
          _fn);
}

class _CopyWithImpl$Query$FindIndustries<TRes>
    implements CopyWith$Query$FindIndustries<TRes> {
  _CopyWithImpl$Query$FindIndustries(
    this._instance,
    this._then,
  );

  final Query$FindIndustries _instance;

  final TRes Function(Query$FindIndustries) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? findIndustries = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindIndustries(
        findIndustries: findIndustries == _undefined || findIndustries == null
            ? _instance.findIndustries
            : (findIndustries as List<Query$FindIndustries$findIndustries>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes findIndustries(
          Iterable<Query$FindIndustries$findIndustries> Function(
                  Iterable<
                      CopyWith$Query$FindIndustries$findIndustries<
                          Query$FindIndustries$findIndustries>>)
              _fn) =>
      call(
          findIndustries: _fn(_instance.findIndustries
              .map((e) => CopyWith$Query$FindIndustries$findIndustries(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$FindIndustries<TRes>
    implements CopyWith$Query$FindIndustries<TRes> {
  _CopyWithStubImpl$Query$FindIndustries(this._res);

  TRes _res;

  call({
    List<Query$FindIndustries$findIndustries>? findIndustries,
    String? $__typename,
  }) =>
      _res;
  findIndustries(_fn) => _res;
}

const documentNodeQueryFindIndustries = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FindIndustries'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'findIndustries'),
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
]);

class Query$FindIndustries$findIndustries {
  Query$FindIndustries$findIndustries({
    required this.textId,
    this.translatedValue,
    this.$__typename = 'Industry',
  });

  factory Query$FindIndustries$findIndustries.fromJson(
      Map<String, dynamic> json) {
    final l$textId = json['textId'];
    final l$translatedValue = json['translatedValue'];
    final l$$__typename = json['__typename'];
    return Query$FindIndustries$findIndustries(
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
    if (!(other is Query$FindIndustries$findIndustries) ||
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

extension UtilityExtension$Query$FindIndustries$findIndustries
    on Query$FindIndustries$findIndustries {
  CopyWith$Query$FindIndustries$findIndustries<
          Query$FindIndustries$findIndustries>
      get copyWith => CopyWith$Query$FindIndustries$findIndustries(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindIndustries$findIndustries<TRes> {
  factory CopyWith$Query$FindIndustries$findIndustries(
    Query$FindIndustries$findIndustries instance,
    TRes Function(Query$FindIndustries$findIndustries) then,
  ) = _CopyWithImpl$Query$FindIndustries$findIndustries;

  factory CopyWith$Query$FindIndustries$findIndustries.stub(TRes res) =
      _CopyWithStubImpl$Query$FindIndustries$findIndustries;

  TRes call({
    String? textId,
    String? translatedValue,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindIndustries$findIndustries<TRes>
    implements CopyWith$Query$FindIndustries$findIndustries<TRes> {
  _CopyWithImpl$Query$FindIndustries$findIndustries(
    this._instance,
    this._then,
  );

  final Query$FindIndustries$findIndustries _instance;

  final TRes Function(Query$FindIndustries$findIndustries) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? textId = _undefined,
    Object? translatedValue = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindIndustries$findIndustries(
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

class _CopyWithStubImpl$Query$FindIndustries$findIndustries<TRes>
    implements CopyWith$Query$FindIndustries$findIndustries<TRes> {
  _CopyWithStubImpl$Query$FindIndustries$findIndustries(this._res);

  TRes _res;

  call({
    String? textId,
    String? translatedValue,
    String? $__typename,
  }) =>
      _res;
}

class Query$FindGenders {
  Query$FindGenders({
    required this.findGenders,
    this.$__typename = 'Query',
  });

  factory Query$FindGenders.fromJson(Map<String, dynamic> json) {
    final l$findGenders = json['findGenders'];
    final l$$__typename = json['__typename'];
    return Query$FindGenders(
      findGenders: (l$findGenders as List<dynamic>)
          .map((e) => Query$FindGenders$findGenders.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$FindGenders$findGenders> findGenders;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$findGenders = findGenders;
    _resultData['findGenders'] = l$findGenders.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$findGenders = findGenders;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$findGenders.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FindGenders) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$findGenders = findGenders;
    final lOther$findGenders = other.findGenders;
    if (l$findGenders.length != lOther$findGenders.length) {
      return false;
    }
    for (int i = 0; i < l$findGenders.length; i++) {
      final l$findGenders$entry = l$findGenders[i];
      final lOther$findGenders$entry = lOther$findGenders[i];
      if (l$findGenders$entry != lOther$findGenders$entry) {
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

extension UtilityExtension$Query$FindGenders on Query$FindGenders {
  CopyWith$Query$FindGenders<Query$FindGenders> get copyWith =>
      CopyWith$Query$FindGenders(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FindGenders<TRes> {
  factory CopyWith$Query$FindGenders(
    Query$FindGenders instance,
    TRes Function(Query$FindGenders) then,
  ) = _CopyWithImpl$Query$FindGenders;

  factory CopyWith$Query$FindGenders.stub(TRes res) =
      _CopyWithStubImpl$Query$FindGenders;

  TRes call({
    List<Query$FindGenders$findGenders>? findGenders,
    String? $__typename,
  });
  TRes findGenders(
      Iterable<Query$FindGenders$findGenders> Function(
              Iterable<
                  CopyWith$Query$FindGenders$findGenders<
                      Query$FindGenders$findGenders>>)
          _fn);
}

class _CopyWithImpl$Query$FindGenders<TRes>
    implements CopyWith$Query$FindGenders<TRes> {
  _CopyWithImpl$Query$FindGenders(
    this._instance,
    this._then,
  );

  final Query$FindGenders _instance;

  final TRes Function(Query$FindGenders) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? findGenders = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindGenders(
        findGenders: findGenders == _undefined || findGenders == null
            ? _instance.findGenders
            : (findGenders as List<Query$FindGenders$findGenders>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes findGenders(
          Iterable<Query$FindGenders$findGenders> Function(
                  Iterable<
                      CopyWith$Query$FindGenders$findGenders<
                          Query$FindGenders$findGenders>>)
              _fn) =>
      call(
          findGenders: _fn(_instance.findGenders
              .map((e) => CopyWith$Query$FindGenders$findGenders(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$FindGenders<TRes>
    implements CopyWith$Query$FindGenders<TRes> {
  _CopyWithStubImpl$Query$FindGenders(this._res);

  TRes _res;

  call({
    List<Query$FindGenders$findGenders>? findGenders,
    String? $__typename,
  }) =>
      _res;
  findGenders(_fn) => _res;
}

const documentNodeQueryFindGenders = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FindGenders'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'findGenders'),
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
]);

class Query$FindGenders$findGenders {
  Query$FindGenders$findGenders({
    required this.textId,
    this.translatedValue,
    this.$__typename = 'Gender',
  });

  factory Query$FindGenders$findGenders.fromJson(Map<String, dynamic> json) {
    final l$textId = json['textId'];
    final l$translatedValue = json['translatedValue'];
    final l$$__typename = json['__typename'];
    return Query$FindGenders$findGenders(
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
    if (!(other is Query$FindGenders$findGenders) ||
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

extension UtilityExtension$Query$FindGenders$findGenders
    on Query$FindGenders$findGenders {
  CopyWith$Query$FindGenders$findGenders<Query$FindGenders$findGenders>
      get copyWith => CopyWith$Query$FindGenders$findGenders(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindGenders$findGenders<TRes> {
  factory CopyWith$Query$FindGenders$findGenders(
    Query$FindGenders$findGenders instance,
    TRes Function(Query$FindGenders$findGenders) then,
  ) = _CopyWithImpl$Query$FindGenders$findGenders;

  factory CopyWith$Query$FindGenders$findGenders.stub(TRes res) =
      _CopyWithStubImpl$Query$FindGenders$findGenders;

  TRes call({
    String? textId,
    String? translatedValue,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindGenders$findGenders<TRes>
    implements CopyWith$Query$FindGenders$findGenders<TRes> {
  _CopyWithImpl$Query$FindGenders$findGenders(
    this._instance,
    this._then,
  );

  final Query$FindGenders$findGenders _instance;

  final TRes Function(Query$FindGenders$findGenders) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? textId = _undefined,
    Object? translatedValue = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindGenders$findGenders(
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

class _CopyWithStubImpl$Query$FindGenders$findGenders<TRes>
    implements CopyWith$Query$FindGenders$findGenders<TRes> {
  _CopyWithStubImpl$Query$FindGenders$findGenders(this._res);

  TRes _res;

  call({
    String? textId,
    String? translatedValue,
    String? $__typename,
  }) =>
      _res;
}

class Query$FindLanguages {
  Query$FindLanguages({
    required this.findLanguages,
    this.$__typename = 'Query',
  });

  factory Query$FindLanguages.fromJson(Map<String, dynamic> json) {
    final l$findLanguages = json['findLanguages'];
    final l$$__typename = json['__typename'];
    return Query$FindLanguages(
      findLanguages: (l$findLanguages as List<dynamic>)
          .map((e) => Query$FindLanguages$findLanguages.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$FindLanguages$findLanguages> findLanguages;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$findLanguages = findLanguages;
    _resultData['findLanguages'] =
        l$findLanguages.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$findLanguages = findLanguages;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$findLanguages.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FindLanguages) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$findLanguages = findLanguages;
    final lOther$findLanguages = other.findLanguages;
    if (l$findLanguages.length != lOther$findLanguages.length) {
      return false;
    }
    for (int i = 0; i < l$findLanguages.length; i++) {
      final l$findLanguages$entry = l$findLanguages[i];
      final lOther$findLanguages$entry = lOther$findLanguages[i];
      if (l$findLanguages$entry != lOther$findLanguages$entry) {
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

extension UtilityExtension$Query$FindLanguages on Query$FindLanguages {
  CopyWith$Query$FindLanguages<Query$FindLanguages> get copyWith =>
      CopyWith$Query$FindLanguages(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FindLanguages<TRes> {
  factory CopyWith$Query$FindLanguages(
    Query$FindLanguages instance,
    TRes Function(Query$FindLanguages) then,
  ) = _CopyWithImpl$Query$FindLanguages;

  factory CopyWith$Query$FindLanguages.stub(TRes res) =
      _CopyWithStubImpl$Query$FindLanguages;

  TRes call({
    List<Query$FindLanguages$findLanguages>? findLanguages,
    String? $__typename,
  });
  TRes findLanguages(
      Iterable<Query$FindLanguages$findLanguages> Function(
              Iterable<
                  CopyWith$Query$FindLanguages$findLanguages<
                      Query$FindLanguages$findLanguages>>)
          _fn);
}

class _CopyWithImpl$Query$FindLanguages<TRes>
    implements CopyWith$Query$FindLanguages<TRes> {
  _CopyWithImpl$Query$FindLanguages(
    this._instance,
    this._then,
  );

  final Query$FindLanguages _instance;

  final TRes Function(Query$FindLanguages) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? findLanguages = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindLanguages(
        findLanguages: findLanguages == _undefined || findLanguages == null
            ? _instance.findLanguages
            : (findLanguages as List<Query$FindLanguages$findLanguages>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes findLanguages(
          Iterable<Query$FindLanguages$findLanguages> Function(
                  Iterable<
                      CopyWith$Query$FindLanguages$findLanguages<
                          Query$FindLanguages$findLanguages>>)
              _fn) =>
      call(
          findLanguages: _fn(_instance.findLanguages
              .map((e) => CopyWith$Query$FindLanguages$findLanguages(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$FindLanguages<TRes>
    implements CopyWith$Query$FindLanguages<TRes> {
  _CopyWithStubImpl$Query$FindLanguages(this._res);

  TRes _res;

  call({
    List<Query$FindLanguages$findLanguages>? findLanguages,
    String? $__typename,
  }) =>
      _res;
  findLanguages(_fn) => _res;
}

const documentNodeQueryFindLanguages = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FindLanguages'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'findLanguages'),
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
            name: NameNode(value: 'isUiLanguage'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'shortLangCode'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'longLangCode'),
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

class Query$FindLanguages$findLanguages {
  Query$FindLanguages$findLanguages({
    required this.textId,
    this.translatedValue,
    required this.isUiLanguage,
    this.shortLangCode,
    this.longLangCode,
    this.$__typename = 'Language',
  });

  factory Query$FindLanguages$findLanguages.fromJson(
      Map<String, dynamic> json) {
    final l$textId = json['textId'];
    final l$translatedValue = json['translatedValue'];
    final l$isUiLanguage = json['isUiLanguage'];
    final l$shortLangCode = json['shortLangCode'];
    final l$longLangCode = json['longLangCode'];
    final l$$__typename = json['__typename'];
    return Query$FindLanguages$findLanguages(
      textId: (l$textId as String),
      translatedValue: (l$translatedValue as String?),
      isUiLanguage: (l$isUiLanguage as bool),
      shortLangCode: (l$shortLangCode as String?),
      longLangCode: (l$longLangCode as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String textId;

  final String? translatedValue;

  final bool isUiLanguage;

  final String? shortLangCode;

  final String? longLangCode;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$textId = textId;
    _resultData['textId'] = l$textId;
    final l$translatedValue = translatedValue;
    _resultData['translatedValue'] = l$translatedValue;
    final l$isUiLanguage = isUiLanguage;
    _resultData['isUiLanguage'] = l$isUiLanguage;
    final l$shortLangCode = shortLangCode;
    _resultData['shortLangCode'] = l$shortLangCode;
    final l$longLangCode = longLangCode;
    _resultData['longLangCode'] = l$longLangCode;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$textId = textId;
    final l$translatedValue = translatedValue;
    final l$isUiLanguage = isUiLanguage;
    final l$shortLangCode = shortLangCode;
    final l$longLangCode = longLangCode;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$textId,
      l$translatedValue,
      l$isUiLanguage,
      l$shortLangCode,
      l$longLangCode,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FindLanguages$findLanguages) ||
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
    final l$isUiLanguage = isUiLanguage;
    final lOther$isUiLanguage = other.isUiLanguage;
    if (l$isUiLanguage != lOther$isUiLanguage) {
      return false;
    }
    final l$shortLangCode = shortLangCode;
    final lOther$shortLangCode = other.shortLangCode;
    if (l$shortLangCode != lOther$shortLangCode) {
      return false;
    }
    final l$longLangCode = longLangCode;
    final lOther$longLangCode = other.longLangCode;
    if (l$longLangCode != lOther$longLangCode) {
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

extension UtilityExtension$Query$FindLanguages$findLanguages
    on Query$FindLanguages$findLanguages {
  CopyWith$Query$FindLanguages$findLanguages<Query$FindLanguages$findLanguages>
      get copyWith => CopyWith$Query$FindLanguages$findLanguages(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindLanguages$findLanguages<TRes> {
  factory CopyWith$Query$FindLanguages$findLanguages(
    Query$FindLanguages$findLanguages instance,
    TRes Function(Query$FindLanguages$findLanguages) then,
  ) = _CopyWithImpl$Query$FindLanguages$findLanguages;

  factory CopyWith$Query$FindLanguages$findLanguages.stub(TRes res) =
      _CopyWithStubImpl$Query$FindLanguages$findLanguages;

  TRes call({
    String? textId,
    String? translatedValue,
    bool? isUiLanguage,
    String? shortLangCode,
    String? longLangCode,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindLanguages$findLanguages<TRes>
    implements CopyWith$Query$FindLanguages$findLanguages<TRes> {
  _CopyWithImpl$Query$FindLanguages$findLanguages(
    this._instance,
    this._then,
  );

  final Query$FindLanguages$findLanguages _instance;

  final TRes Function(Query$FindLanguages$findLanguages) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? textId = _undefined,
    Object? translatedValue = _undefined,
    Object? isUiLanguage = _undefined,
    Object? shortLangCode = _undefined,
    Object? longLangCode = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindLanguages$findLanguages(
        textId: textId == _undefined || textId == null
            ? _instance.textId
            : (textId as String),
        translatedValue: translatedValue == _undefined
            ? _instance.translatedValue
            : (translatedValue as String?),
        isUiLanguage: isUiLanguage == _undefined || isUiLanguage == null
            ? _instance.isUiLanguage
            : (isUiLanguage as bool),
        shortLangCode: shortLangCode == _undefined
            ? _instance.shortLangCode
            : (shortLangCode as String?),
        longLangCode: longLangCode == _undefined
            ? _instance.longLangCode
            : (longLangCode as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FindLanguages$findLanguages<TRes>
    implements CopyWith$Query$FindLanguages$findLanguages<TRes> {
  _CopyWithStubImpl$Query$FindLanguages$findLanguages(this._res);

  TRes _res;

  call({
    String? textId,
    String? translatedValue,
    bool? isUiLanguage,
    String? shortLangCode,
    String? longLangCode,
    String? $__typename,
  }) =>
      _res;
}

class Query$FindAllOptions {
  Query$FindAllOptions({
    required this.findOptions,
    this.$__typename = 'Query',
  });

  factory Query$FindAllOptions.fromJson(Map<String, dynamic> json) {
    final l$findOptions = json['findOptions'];
    final l$$__typename = json['__typename'];
    return Query$FindAllOptions(
      findOptions: (l$findOptions as List<dynamic>)
          .map((e) => Query$FindAllOptions$findOptions.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$FindAllOptions$findOptions> findOptions;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$findOptions = findOptions;
    _resultData['findOptions'] = l$findOptions.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$findOptions = findOptions;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$findOptions.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FindAllOptions) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$findOptions = findOptions;
    final lOther$findOptions = other.findOptions;
    if (l$findOptions.length != lOther$findOptions.length) {
      return false;
    }
    for (int i = 0; i < l$findOptions.length; i++) {
      final l$findOptions$entry = l$findOptions[i];
      final lOther$findOptions$entry = lOther$findOptions[i];
      if (l$findOptions$entry != lOther$findOptions$entry) {
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

extension UtilityExtension$Query$FindAllOptions on Query$FindAllOptions {
  CopyWith$Query$FindAllOptions<Query$FindAllOptions> get copyWith =>
      CopyWith$Query$FindAllOptions(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FindAllOptions<TRes> {
  factory CopyWith$Query$FindAllOptions(
    Query$FindAllOptions instance,
    TRes Function(Query$FindAllOptions) then,
  ) = _CopyWithImpl$Query$FindAllOptions;

  factory CopyWith$Query$FindAllOptions.stub(TRes res) =
      _CopyWithStubImpl$Query$FindAllOptions;

  TRes call({
    List<Query$FindAllOptions$findOptions>? findOptions,
    String? $__typename,
  });
  TRes findOptions(
      Iterable<Query$FindAllOptions$findOptions> Function(
              Iterable<
                  CopyWith$Query$FindAllOptions$findOptions<
                      Query$FindAllOptions$findOptions>>)
          _fn);
}

class _CopyWithImpl$Query$FindAllOptions<TRes>
    implements CopyWith$Query$FindAllOptions<TRes> {
  _CopyWithImpl$Query$FindAllOptions(
    this._instance,
    this._then,
  );

  final Query$FindAllOptions _instance;

  final TRes Function(Query$FindAllOptions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? findOptions = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindAllOptions(
        findOptions: findOptions == _undefined || findOptions == null
            ? _instance.findOptions
            : (findOptions as List<Query$FindAllOptions$findOptions>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes findOptions(
          Iterable<Query$FindAllOptions$findOptions> Function(
                  Iterable<
                      CopyWith$Query$FindAllOptions$findOptions<
                          Query$FindAllOptions$findOptions>>)
              _fn) =>
      call(
          findOptions: _fn(_instance.findOptions
              .map((e) => CopyWith$Query$FindAllOptions$findOptions(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$FindAllOptions<TRes>
    implements CopyWith$Query$FindAllOptions<TRes> {
  _CopyWithStubImpl$Query$FindAllOptions(this._res);

  TRes _res;

  call({
    List<Query$FindAllOptions$findOptions>? findOptions,
    String? $__typename,
  }) =>
      _res;
  findOptions(_fn) => _res;
}

const documentNodeQueryFindAllOptions = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FindAllOptions'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'findOptions'),
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
            name: NameNode(value: 'optionType'),
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

class Query$FindAllOptions$findOptions {
  Query$FindAllOptions$findOptions({
    required this.textId,
    this.translatedValue,
    required this.optionType,
    this.$__typename = 'Option',
  });

  factory Query$FindAllOptions$findOptions.fromJson(Map<String, dynamic> json) {
    final l$textId = json['textId'];
    final l$translatedValue = json['translatedValue'];
    final l$optionType = json['optionType'];
    final l$$__typename = json['__typename'];
    return Query$FindAllOptions$findOptions(
      textId: (l$textId as String),
      translatedValue: (l$translatedValue as String?),
      optionType: fromJson$Enum$OptionType((l$optionType as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String textId;

  final String? translatedValue;

  final Enum$OptionType optionType;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$textId = textId;
    _resultData['textId'] = l$textId;
    final l$translatedValue = translatedValue;
    _resultData['translatedValue'] = l$translatedValue;
    final l$optionType = optionType;
    _resultData['optionType'] = toJson$Enum$OptionType(l$optionType);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$textId = textId;
    final l$translatedValue = translatedValue;
    final l$optionType = optionType;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$textId,
      l$translatedValue,
      l$optionType,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FindAllOptions$findOptions) ||
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
    final l$optionType = optionType;
    final lOther$optionType = other.optionType;
    if (l$optionType != lOther$optionType) {
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

extension UtilityExtension$Query$FindAllOptions$findOptions
    on Query$FindAllOptions$findOptions {
  CopyWith$Query$FindAllOptions$findOptions<Query$FindAllOptions$findOptions>
      get copyWith => CopyWith$Query$FindAllOptions$findOptions(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindAllOptions$findOptions<TRes> {
  factory CopyWith$Query$FindAllOptions$findOptions(
    Query$FindAllOptions$findOptions instance,
    TRes Function(Query$FindAllOptions$findOptions) then,
  ) = _CopyWithImpl$Query$FindAllOptions$findOptions;

  factory CopyWith$Query$FindAllOptions$findOptions.stub(TRes res) =
      _CopyWithStubImpl$Query$FindAllOptions$findOptions;

  TRes call({
    String? textId,
    String? translatedValue,
    Enum$OptionType? optionType,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindAllOptions$findOptions<TRes>
    implements CopyWith$Query$FindAllOptions$findOptions<TRes> {
  _CopyWithImpl$Query$FindAllOptions$findOptions(
    this._instance,
    this._then,
  );

  final Query$FindAllOptions$findOptions _instance;

  final TRes Function(Query$FindAllOptions$findOptions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? textId = _undefined,
    Object? translatedValue = _undefined,
    Object? optionType = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindAllOptions$findOptions(
        textId: textId == _undefined || textId == null
            ? _instance.textId
            : (textId as String),
        translatedValue: translatedValue == _undefined
            ? _instance.translatedValue
            : (translatedValue as String?),
        optionType: optionType == _undefined || optionType == null
            ? _instance.optionType
            : (optionType as Enum$OptionType),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FindAllOptions$findOptions<TRes>
    implements CopyWith$Query$FindAllOptions$findOptions<TRes> {
  _CopyWithStubImpl$Query$FindAllOptions$findOptions(this._res);

  TRes _res;

  call({
    String? textId,
    String? translatedValue,
    Enum$OptionType? optionType,
    String? $__typename,
  }) =>
      _res;
}
