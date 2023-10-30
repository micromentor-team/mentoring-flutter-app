// GENERATED WITH GRAPHQL_CODEGEN
// DO NOT MODIFY
// ignore_for_file: type=lint

import 'package:gql/ast.dart';
import 'schema.graphql.dart';

class Variables$Mutation$UpdateUserDevice {
  factory Variables$Mutation$UpdateUserDevice(
          {required Input$UserDeviceInput input}) =>
      Variables$Mutation$UpdateUserDevice._({
        r'input': input,
      });

  Variables$Mutation$UpdateUserDevice._(this._$data);

  factory Variables$Mutation$UpdateUserDevice.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$UserDeviceInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Mutation$UpdateUserDevice._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$UserDeviceInput get input => (_$data['input'] as Input$UserDeviceInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateUserDevice<
          Variables$Mutation$UpdateUserDevice>
      get copyWith => CopyWith$Variables$Mutation$UpdateUserDevice(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$UpdateUserDevice) ||
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

abstract class CopyWith$Variables$Mutation$UpdateUserDevice<TRes> {
  factory CopyWith$Variables$Mutation$UpdateUserDevice(
    Variables$Mutation$UpdateUserDevice instance,
    TRes Function(Variables$Mutation$UpdateUserDevice) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateUserDevice;

  factory CopyWith$Variables$Mutation$UpdateUserDevice.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateUserDevice;

  TRes call({Input$UserDeviceInput? input});
}

class _CopyWithImpl$Variables$Mutation$UpdateUserDevice<TRes>
    implements CopyWith$Variables$Mutation$UpdateUserDevice<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateUserDevice(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateUserDevice _instance;

  final TRes Function(Variables$Mutation$UpdateUserDevice) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$UpdateUserDevice._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$UserDeviceInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateUserDevice<TRes>
    implements CopyWith$Variables$Mutation$UpdateUserDevice<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateUserDevice(this._res);

  TRes _res;

  call({Input$UserDeviceInput? input}) => _res;
}

class Mutation$UpdateUserDevice {
  Mutation$UpdateUserDevice({
    required this.updateUserDevice,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateUserDevice.fromJson(Map<String, dynamic> json) {
    final l$updateUserDevice = json['updateUserDevice'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateUserDevice(
      updateUserDevice: (l$updateUserDevice as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String updateUserDevice;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateUserDevice = updateUserDevice;
    _resultData['updateUserDevice'] = l$updateUserDevice;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateUserDevice = updateUserDevice;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateUserDevice,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateUserDevice) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateUserDevice = updateUserDevice;
    final lOther$updateUserDevice = other.updateUserDevice;
    if (l$updateUserDevice != lOther$updateUserDevice) {
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

extension UtilityExtension$Mutation$UpdateUserDevice
    on Mutation$UpdateUserDevice {
  CopyWith$Mutation$UpdateUserDevice<Mutation$UpdateUserDevice> get copyWith =>
      CopyWith$Mutation$UpdateUserDevice(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdateUserDevice<TRes> {
  factory CopyWith$Mutation$UpdateUserDevice(
    Mutation$UpdateUserDevice instance,
    TRes Function(Mutation$UpdateUserDevice) then,
  ) = _CopyWithImpl$Mutation$UpdateUserDevice;

  factory CopyWith$Mutation$UpdateUserDevice.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateUserDevice;

  TRes call({
    String? updateUserDevice,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdateUserDevice<TRes>
    implements CopyWith$Mutation$UpdateUserDevice<TRes> {
  _CopyWithImpl$Mutation$UpdateUserDevice(
    this._instance,
    this._then,
  );

  final Mutation$UpdateUserDevice _instance;

  final TRes Function(Mutation$UpdateUserDevice) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateUserDevice = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateUserDevice(
        updateUserDevice:
            updateUserDevice == _undefined || updateUserDevice == null
                ? _instance.updateUserDevice
                : (updateUserDevice as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$UpdateUserDevice<TRes>
    implements CopyWith$Mutation$UpdateUserDevice<TRes> {
  _CopyWithStubImpl$Mutation$UpdateUserDevice(this._res);

  TRes _res;

  call({
    String? updateUserDevice,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeMutationUpdateUserDevice = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateUserDevice'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'UserDeviceInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updateUserDevice'),
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
