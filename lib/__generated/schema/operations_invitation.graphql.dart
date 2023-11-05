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
            name: NameNode(value: 'readByRecipientAt'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'sender'),
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
                name: NameNode(value: 'jobTitle'),
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
                        name: NameNode(value: 'endorsements'),
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
            name: NameNode(value: 'recipient'),
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
                name: NameNode(value: 'jobTitle'),
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
                        name: NameNode(value: 'endorsements'),
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

class Query$FindChannelInvitationById$findChannelInvitationById {
  Query$FindChannelInvitationById$findChannelInvitationById({
    required this.createdAt,
    this.messageText,
    required this.status,
    this.readByRecipientAt,
    required this.sender,
    required this.recipient,
    this.$__typename = 'ChannelInvitation',
  });

  factory Query$FindChannelInvitationById$findChannelInvitationById.fromJson(
      Map<String, dynamic> json) {
    final l$createdAt = json['createdAt'];
    final l$messageText = json['messageText'];
    final l$status = json['status'];
    final l$readByRecipientAt = json['readByRecipientAt'];
    final l$sender = json['sender'];
    final l$recipient = json['recipient'];
    final l$$__typename = json['__typename'];
    return Query$FindChannelInvitationById$findChannelInvitationById(
      createdAt: DateTime.parse((l$createdAt as String)),
      messageText: (l$messageText as String?),
      status: fromJson$Enum$ChannelInvitationStatus((l$status as String)),
      readByRecipientAt: l$readByRecipientAt == null
          ? null
          : DateTime.parse((l$readByRecipientAt as String)),
      sender: Query$FindChannelInvitationById$findChannelInvitationById$sender
          .fromJson((l$sender as Map<String, dynamic>)),
      recipient:
          Query$FindChannelInvitationById$findChannelInvitationById$recipient
              .fromJson((l$recipient as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime createdAt;

  final String? messageText;

  final Enum$ChannelInvitationStatus status;

  final DateTime? readByRecipientAt;

  final Query$FindChannelInvitationById$findChannelInvitationById$sender sender;

  final Query$FindChannelInvitationById$findChannelInvitationById$recipient
      recipient;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt.toIso8601String();
    final l$messageText = messageText;
    _resultData['messageText'] = l$messageText;
    final l$status = status;
    _resultData['status'] = toJson$Enum$ChannelInvitationStatus(l$status);
    final l$readByRecipientAt = readByRecipientAt;
    _resultData['readByRecipientAt'] = l$readByRecipientAt?.toIso8601String();
    final l$sender = sender;
    _resultData['sender'] = l$sender.toJson();
    final l$recipient = recipient;
    _resultData['recipient'] = l$recipient.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createdAt = createdAt;
    final l$messageText = messageText;
    final l$status = status;
    final l$readByRecipientAt = readByRecipientAt;
    final l$sender = sender;
    final l$recipient = recipient;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$createdAt,
      l$messageText,
      l$status,
      l$readByRecipientAt,
      l$sender,
      l$recipient,
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
    final l$readByRecipientAt = readByRecipientAt;
    final lOther$readByRecipientAt = other.readByRecipientAt;
    if (l$readByRecipientAt != lOther$readByRecipientAt) {
      return false;
    }
    final l$sender = sender;
    final lOther$sender = other.sender;
    if (l$sender != lOther$sender) {
      return false;
    }
    final l$recipient = recipient;
    final lOther$recipient = other.recipient;
    if (l$recipient != lOther$recipient) {
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
    DateTime? readByRecipientAt,
    Query$FindChannelInvitationById$findChannelInvitationById$sender? sender,
    Query$FindChannelInvitationById$findChannelInvitationById$recipient?
        recipient,
    String? $__typename,
  });
  CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender<
      TRes> get sender;
  CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient<
      TRes> get recipient;
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
    Object? readByRecipientAt = _undefined,
    Object? sender = _undefined,
    Object? recipient = _undefined,
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
        readByRecipientAt: readByRecipientAt == _undefined
            ? _instance.readByRecipientAt
            : (readByRecipientAt as DateTime?),
        sender: sender == _undefined || sender == null
            ? _instance.sender
            : (sender
                as Query$FindChannelInvitationById$findChannelInvitationById$sender),
        recipient: recipient == _undefined || recipient == null
            ? _instance.recipient
            : (recipient
                as Query$FindChannelInvitationById$findChannelInvitationById$recipient),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender<
      TRes> get sender {
    final local$sender = _instance.sender;
    return CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender(
        local$sender, (e) => call(sender: e));
  }

  CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient<
      TRes> get recipient {
    final local$recipient = _instance.recipient;
    return CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient(
        local$recipient, (e) => call(recipient: e));
  }
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
    DateTime? readByRecipientAt,
    Query$FindChannelInvitationById$findChannelInvitationById$sender? sender,
    Query$FindChannelInvitationById$findChannelInvitationById$recipient?
        recipient,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender<
          TRes>
      get sender =>
          CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender
              .stub(_res);

  CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient<
          TRes>
      get recipient =>
          CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient
              .stub(_res);
}

class Query$FindChannelInvitationById$findChannelInvitationById$sender {
  Query$FindChannelInvitationById$findChannelInvitationById$sender({
    required this.id,
    this.fullName,
    this.avatarUrl,
    this.jobTitle,
    required this.offersHelp,
    required this.seeksHelp,
    required this.companies,
    this.countryOfResidence,
    required this.groupMemberships,
    this.$__typename = 'User',
  });

  factory Query$FindChannelInvitationById$findChannelInvitationById$sender.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$fullName = json['fullName'];
    final l$avatarUrl = json['avatarUrl'];
    final l$jobTitle = json['jobTitle'];
    final l$offersHelp = json['offersHelp'];
    final l$seeksHelp = json['seeksHelp'];
    final l$companies = json['companies'];
    final l$countryOfResidence = json['countryOfResidence'];
    final l$groupMemberships = json['groupMemberships'];
    final l$$__typename = json['__typename'];
    return Query$FindChannelInvitationById$findChannelInvitationById$sender(
      id: (l$id as String),
      fullName: (l$fullName as String?),
      avatarUrl: (l$avatarUrl as String?),
      jobTitle: (l$jobTitle as String?),
      offersHelp: (l$offersHelp as bool),
      seeksHelp: (l$seeksHelp as bool),
      companies: (l$companies as List<dynamic>)
          .map((e) =>
              Query$FindChannelInvitationById$findChannelInvitationById$sender$companies
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      countryOfResidence: l$countryOfResidence == null
          ? null
          : Query$FindChannelInvitationById$findChannelInvitationById$sender$countryOfResidence
              .fromJson((l$countryOfResidence as Map<String, dynamic>)),
      groupMemberships: (l$groupMemberships as List<dynamic>)
          .map((e) =>
              Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String? fullName;

  final String? avatarUrl;

  final String? jobTitle;

  final bool offersHelp;

  final bool seeksHelp;

  final List<
          Query$FindChannelInvitationById$findChannelInvitationById$sender$companies>
      companies;

  final Query$FindChannelInvitationById$findChannelInvitationById$sender$countryOfResidence?
      countryOfResidence;

  final List<
          Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships>
      groupMemberships;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$fullName = fullName;
    _resultData['fullName'] = l$fullName;
    final l$avatarUrl = avatarUrl;
    _resultData['avatarUrl'] = l$avatarUrl;
    final l$jobTitle = jobTitle;
    _resultData['jobTitle'] = l$jobTitle;
    final l$offersHelp = offersHelp;
    _resultData['offersHelp'] = l$offersHelp;
    final l$seeksHelp = seeksHelp;
    _resultData['seeksHelp'] = l$seeksHelp;
    final l$companies = companies;
    _resultData['companies'] = l$companies.map((e) => e.toJson()).toList();
    final l$countryOfResidence = countryOfResidence;
    _resultData['countryOfResidence'] = l$countryOfResidence?.toJson();
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
    final l$fullName = fullName;
    final l$avatarUrl = avatarUrl;
    final l$jobTitle = jobTitle;
    final l$offersHelp = offersHelp;
    final l$seeksHelp = seeksHelp;
    final l$companies = companies;
    final l$countryOfResidence = countryOfResidence;
    final l$groupMemberships = groupMemberships;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$fullName,
      l$avatarUrl,
      l$jobTitle,
      l$offersHelp,
      l$seeksHelp,
      Object.hashAll(l$companies.map((v) => v)),
      l$countryOfResidence,
      Object.hashAll(l$groupMemberships.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$FindChannelInvitationById$findChannelInvitationById$sender) ||
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
    final l$jobTitle = jobTitle;
    final lOther$jobTitle = other.jobTitle;
    if (l$jobTitle != lOther$jobTitle) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FindChannelInvitationById$findChannelInvitationById$sender
    on Query$FindChannelInvitationById$findChannelInvitationById$sender {
  CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender<
          Query$FindChannelInvitationById$findChannelInvitationById$sender>
      get copyWith =>
          CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender<
    TRes> {
  factory CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender(
    Query$FindChannelInvitationById$findChannelInvitationById$sender instance,
    TRes Function(
            Query$FindChannelInvitationById$findChannelInvitationById$sender)
        then,
  ) = _CopyWithImpl$Query$FindChannelInvitationById$findChannelInvitationById$sender;

  factory CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindChannelInvitationById$findChannelInvitationById$sender;

  TRes call({
    String? id,
    String? fullName,
    String? avatarUrl,
    String? jobTitle,
    bool? offersHelp,
    bool? seeksHelp,
    List<Query$FindChannelInvitationById$findChannelInvitationById$sender$companies>?
        companies,
    Query$FindChannelInvitationById$findChannelInvitationById$sender$countryOfResidence?
        countryOfResidence,
    List<Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships>?
        groupMemberships,
    String? $__typename,
  });
  TRes companies(
      Iterable<Query$FindChannelInvitationById$findChannelInvitationById$sender$companies> Function(
              Iterable<
                  CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$companies<
                      Query$FindChannelInvitationById$findChannelInvitationById$sender$companies>>)
          _fn);
  CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$countryOfResidence<
      TRes> get countryOfResidence;
  TRes groupMemberships(
      Iterable<Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships> Function(
              Iterable<
                  CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships<
                      Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships>>)
          _fn);
}

class _CopyWithImpl$Query$FindChannelInvitationById$findChannelInvitationById$sender<
        TRes>
    implements
        CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender<
            TRes> {
  _CopyWithImpl$Query$FindChannelInvitationById$findChannelInvitationById$sender(
    this._instance,
    this._then,
  );

  final Query$FindChannelInvitationById$findChannelInvitationById$sender
      _instance;

  final TRes Function(
      Query$FindChannelInvitationById$findChannelInvitationById$sender) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? fullName = _undefined,
    Object? avatarUrl = _undefined,
    Object? jobTitle = _undefined,
    Object? offersHelp = _undefined,
    Object? seeksHelp = _undefined,
    Object? companies = _undefined,
    Object? countryOfResidence = _undefined,
    Object? groupMemberships = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindChannelInvitationById$findChannelInvitationById$sender(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        fullName:
            fullName == _undefined ? _instance.fullName : (fullName as String?),
        avatarUrl: avatarUrl == _undefined
            ? _instance.avatarUrl
            : (avatarUrl as String?),
        jobTitle:
            jobTitle == _undefined ? _instance.jobTitle : (jobTitle as String?),
        offersHelp: offersHelp == _undefined || offersHelp == null
            ? _instance.offersHelp
            : (offersHelp as bool),
        seeksHelp: seeksHelp == _undefined || seeksHelp == null
            ? _instance.seeksHelp
            : (seeksHelp as bool),
        companies: companies == _undefined || companies == null
            ? _instance.companies
            : (companies as List<
                Query$FindChannelInvitationById$findChannelInvitationById$sender$companies>),
        countryOfResidence: countryOfResidence == _undefined
            ? _instance.countryOfResidence
            : (countryOfResidence
                as Query$FindChannelInvitationById$findChannelInvitationById$sender$countryOfResidence?),
        groupMemberships: groupMemberships == _undefined ||
                groupMemberships == null
            ? _instance.groupMemberships
            : (groupMemberships as List<
                Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes companies(
          Iterable<Query$FindChannelInvitationById$findChannelInvitationById$sender$companies> Function(
                  Iterable<
                      CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$companies<
                          Query$FindChannelInvitationById$findChannelInvitationById$sender$companies>>)
              _fn) =>
      call(
          companies: _fn(_instance.companies.map((e) =>
              CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$companies(
                e,
                (i) => i,
              ))).toList());

  CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$countryOfResidence<
      TRes> get countryOfResidence {
    final local$countryOfResidence = _instance.countryOfResidence;
    return local$countryOfResidence == null
        ? CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$countryOfResidence
            .stub(_then(_instance))
        : CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$countryOfResidence(
            local$countryOfResidence, (e) => call(countryOfResidence: e));
  }

  TRes groupMemberships(
          Iterable<Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships> Function(
                  Iterable<
                      CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships<
                          Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships>>)
              _fn) =>
      call(
          groupMemberships: _fn(_instance.groupMemberships.map((e) =>
              CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$FindChannelInvitationById$findChannelInvitationById$sender<
        TRes>
    implements
        CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender<
            TRes> {
  _CopyWithStubImpl$Query$FindChannelInvitationById$findChannelInvitationById$sender(
      this._res);

  TRes _res;

  call({
    String? id,
    String? fullName,
    String? avatarUrl,
    String? jobTitle,
    bool? offersHelp,
    bool? seeksHelp,
    List<Query$FindChannelInvitationById$findChannelInvitationById$sender$companies>?
        companies,
    Query$FindChannelInvitationById$findChannelInvitationById$sender$countryOfResidence?
        countryOfResidence,
    List<Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships>?
        groupMemberships,
    String? $__typename,
  }) =>
      _res;

  companies(_fn) => _res;

  CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$countryOfResidence<
          TRes>
      get countryOfResidence =>
          CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$countryOfResidence
              .stub(_res);

  groupMemberships(_fn) => _res;
}

class Query$FindChannelInvitationById$findChannelInvitationById$sender$companies {
  Query$FindChannelInvitationById$findChannelInvitationById$sender$companies({
    required this.id,
    required this.name,
    this.companyStage,
    this.companyType,
    this.$__typename = 'Company',
  });

  factory Query$FindChannelInvitationById$findChannelInvitationById$sender$companies.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$companyStage = json['companyStage'];
    final l$companyType = json['companyType'];
    final l$$__typename = json['__typename'];
    return Query$FindChannelInvitationById$findChannelInvitationById$sender$companies(
      id: (l$id as String),
      name: (l$name as String),
      companyStage: l$companyStage == null
          ? null
          : Query$FindChannelInvitationById$findChannelInvitationById$sender$companies$companyStage
              .fromJson((l$companyStage as Map<String, dynamic>)),
      companyType: l$companyType == null
          ? null
          : Query$FindChannelInvitationById$findChannelInvitationById$sender$companies$companyType
              .fromJson((l$companyType as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final Query$FindChannelInvitationById$findChannelInvitationById$sender$companies$companyStage?
      companyStage;

  final Query$FindChannelInvitationById$findChannelInvitationById$sender$companies$companyType?
      companyType;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
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
    final l$id = id;
    final l$name = name;
    final l$companyStage = companyStage;
    final l$companyType = companyType;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
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
    if (!(other
            is Query$FindChannelInvitationById$findChannelInvitationById$sender$companies) ||
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

extension UtilityExtension$Query$FindChannelInvitationById$findChannelInvitationById$sender$companies
    on Query$FindChannelInvitationById$findChannelInvitationById$sender$companies {
  CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$companies<
          Query$FindChannelInvitationById$findChannelInvitationById$sender$companies>
      get copyWith =>
          CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$companies(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$companies<
    TRes> {
  factory CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$companies(
    Query$FindChannelInvitationById$findChannelInvitationById$sender$companies
        instance,
    TRes Function(
            Query$FindChannelInvitationById$findChannelInvitationById$sender$companies)
        then,
  ) = _CopyWithImpl$Query$FindChannelInvitationById$findChannelInvitationById$sender$companies;

  factory CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$companies.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindChannelInvitationById$findChannelInvitationById$sender$companies;

  TRes call({
    String? id,
    String? name,
    Query$FindChannelInvitationById$findChannelInvitationById$sender$companies$companyStage?
        companyStage,
    Query$FindChannelInvitationById$findChannelInvitationById$sender$companies$companyType?
        companyType,
    String? $__typename,
  });
  CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$companies$companyStage<
      TRes> get companyStage;
  CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$companies$companyType<
      TRes> get companyType;
}

class _CopyWithImpl$Query$FindChannelInvitationById$findChannelInvitationById$sender$companies<
        TRes>
    implements
        CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$companies<
            TRes> {
  _CopyWithImpl$Query$FindChannelInvitationById$findChannelInvitationById$sender$companies(
    this._instance,
    this._then,
  );

  final Query$FindChannelInvitationById$findChannelInvitationById$sender$companies
      _instance;

  final TRes Function(
          Query$FindChannelInvitationById$findChannelInvitationById$sender$companies)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? companyStage = _undefined,
    Object? companyType = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$FindChannelInvitationById$findChannelInvitationById$sender$companies(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        companyStage: companyStage == _undefined
            ? _instance.companyStage
            : (companyStage
                as Query$FindChannelInvitationById$findChannelInvitationById$sender$companies$companyStage?),
        companyType: companyType == _undefined
            ? _instance.companyType
            : (companyType
                as Query$FindChannelInvitationById$findChannelInvitationById$sender$companies$companyType?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$companies$companyStage<
      TRes> get companyStage {
    final local$companyStage = _instance.companyStage;
    return local$companyStage == null
        ? CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$companies$companyStage
            .stub(_then(_instance))
        : CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$companies$companyStage(
            local$companyStage, (e) => call(companyStage: e));
  }

  CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$companies$companyType<
      TRes> get companyType {
    final local$companyType = _instance.companyType;
    return local$companyType == null
        ? CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$companies$companyType
            .stub(_then(_instance))
        : CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$companies$companyType(
            local$companyType, (e) => call(companyType: e));
  }
}

class _CopyWithStubImpl$Query$FindChannelInvitationById$findChannelInvitationById$sender$companies<
        TRes>
    implements
        CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$companies<
            TRes> {
  _CopyWithStubImpl$Query$FindChannelInvitationById$findChannelInvitationById$sender$companies(
      this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    Query$FindChannelInvitationById$findChannelInvitationById$sender$companies$companyStage?
        companyStage,
    Query$FindChannelInvitationById$findChannelInvitationById$sender$companies$companyType?
        companyType,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$companies$companyStage<
          TRes>
      get companyStage =>
          CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$companies$companyStage
              .stub(_res);

  CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$companies$companyType<
          TRes>
      get companyType =>
          CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$companies$companyType
              .stub(_res);
}

class Query$FindChannelInvitationById$findChannelInvitationById$sender$companies$companyStage {
  Query$FindChannelInvitationById$findChannelInvitationById$sender$companies$companyStage({
    this.translatedValue,
    this.$__typename = 'CompanyStage',
  });

  factory Query$FindChannelInvitationById$findChannelInvitationById$sender$companies$companyStage.fromJson(
      Map<String, dynamic> json) {
    final l$translatedValue = json['translatedValue'];
    final l$$__typename = json['__typename'];
    return Query$FindChannelInvitationById$findChannelInvitationById$sender$companies$companyStage(
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
            is Query$FindChannelInvitationById$findChannelInvitationById$sender$companies$companyStage) ||
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

extension UtilityExtension$Query$FindChannelInvitationById$findChannelInvitationById$sender$companies$companyStage
    on Query$FindChannelInvitationById$findChannelInvitationById$sender$companies$companyStage {
  CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$companies$companyStage<
          Query$FindChannelInvitationById$findChannelInvitationById$sender$companies$companyStage>
      get copyWith =>
          CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$companies$companyStage(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$companies$companyStage<
    TRes> {
  factory CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$companies$companyStage(
    Query$FindChannelInvitationById$findChannelInvitationById$sender$companies$companyStage
        instance,
    TRes Function(
            Query$FindChannelInvitationById$findChannelInvitationById$sender$companies$companyStage)
        then,
  ) = _CopyWithImpl$Query$FindChannelInvitationById$findChannelInvitationById$sender$companies$companyStage;

  factory CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$companies$companyStage.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindChannelInvitationById$findChannelInvitationById$sender$companies$companyStage;

  TRes call({
    String? translatedValue,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindChannelInvitationById$findChannelInvitationById$sender$companies$companyStage<
        TRes>
    implements
        CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$companies$companyStage<
            TRes> {
  _CopyWithImpl$Query$FindChannelInvitationById$findChannelInvitationById$sender$companies$companyStage(
    this._instance,
    this._then,
  );

  final Query$FindChannelInvitationById$findChannelInvitationById$sender$companies$companyStage
      _instance;

  final TRes Function(
          Query$FindChannelInvitationById$findChannelInvitationById$sender$companies$companyStage)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? translatedValue = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$FindChannelInvitationById$findChannelInvitationById$sender$companies$companyStage(
        translatedValue: translatedValue == _undefined
            ? _instance.translatedValue
            : (translatedValue as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FindChannelInvitationById$findChannelInvitationById$sender$companies$companyStage<
        TRes>
    implements
        CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$companies$companyStage<
            TRes> {
  _CopyWithStubImpl$Query$FindChannelInvitationById$findChannelInvitationById$sender$companies$companyStage(
      this._res);

  TRes _res;

  call({
    String? translatedValue,
    String? $__typename,
  }) =>
      _res;
}

class Query$FindChannelInvitationById$findChannelInvitationById$sender$companies$companyType {
  Query$FindChannelInvitationById$findChannelInvitationById$sender$companies$companyType({
    this.translatedValue,
    this.$__typename = 'CompanyType',
  });

  factory Query$FindChannelInvitationById$findChannelInvitationById$sender$companies$companyType.fromJson(
      Map<String, dynamic> json) {
    final l$translatedValue = json['translatedValue'];
    final l$$__typename = json['__typename'];
    return Query$FindChannelInvitationById$findChannelInvitationById$sender$companies$companyType(
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
            is Query$FindChannelInvitationById$findChannelInvitationById$sender$companies$companyType) ||
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

extension UtilityExtension$Query$FindChannelInvitationById$findChannelInvitationById$sender$companies$companyType
    on Query$FindChannelInvitationById$findChannelInvitationById$sender$companies$companyType {
  CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$companies$companyType<
          Query$FindChannelInvitationById$findChannelInvitationById$sender$companies$companyType>
      get copyWith =>
          CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$companies$companyType(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$companies$companyType<
    TRes> {
  factory CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$companies$companyType(
    Query$FindChannelInvitationById$findChannelInvitationById$sender$companies$companyType
        instance,
    TRes Function(
            Query$FindChannelInvitationById$findChannelInvitationById$sender$companies$companyType)
        then,
  ) = _CopyWithImpl$Query$FindChannelInvitationById$findChannelInvitationById$sender$companies$companyType;

  factory CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$companies$companyType.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindChannelInvitationById$findChannelInvitationById$sender$companies$companyType;

  TRes call({
    String? translatedValue,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindChannelInvitationById$findChannelInvitationById$sender$companies$companyType<
        TRes>
    implements
        CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$companies$companyType<
            TRes> {
  _CopyWithImpl$Query$FindChannelInvitationById$findChannelInvitationById$sender$companies$companyType(
    this._instance,
    this._then,
  );

  final Query$FindChannelInvitationById$findChannelInvitationById$sender$companies$companyType
      _instance;

  final TRes Function(
          Query$FindChannelInvitationById$findChannelInvitationById$sender$companies$companyType)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? translatedValue = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$FindChannelInvitationById$findChannelInvitationById$sender$companies$companyType(
        translatedValue: translatedValue == _undefined
            ? _instance.translatedValue
            : (translatedValue as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FindChannelInvitationById$findChannelInvitationById$sender$companies$companyType<
        TRes>
    implements
        CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$companies$companyType<
            TRes> {
  _CopyWithStubImpl$Query$FindChannelInvitationById$findChannelInvitationById$sender$companies$companyType(
      this._res);

  TRes _res;

  call({
    String? translatedValue,
    String? $__typename,
  }) =>
      _res;
}

class Query$FindChannelInvitationById$findChannelInvitationById$sender$countryOfResidence {
  Query$FindChannelInvitationById$findChannelInvitationById$sender$countryOfResidence({
    this.translatedValue,
    this.$__typename = 'Country',
  });

  factory Query$FindChannelInvitationById$findChannelInvitationById$sender$countryOfResidence.fromJson(
      Map<String, dynamic> json) {
    final l$translatedValue = json['translatedValue'];
    final l$$__typename = json['__typename'];
    return Query$FindChannelInvitationById$findChannelInvitationById$sender$countryOfResidence(
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
            is Query$FindChannelInvitationById$findChannelInvitationById$sender$countryOfResidence) ||
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

extension UtilityExtension$Query$FindChannelInvitationById$findChannelInvitationById$sender$countryOfResidence
    on Query$FindChannelInvitationById$findChannelInvitationById$sender$countryOfResidence {
  CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$countryOfResidence<
          Query$FindChannelInvitationById$findChannelInvitationById$sender$countryOfResidence>
      get copyWith =>
          CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$countryOfResidence(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$countryOfResidence<
    TRes> {
  factory CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$countryOfResidence(
    Query$FindChannelInvitationById$findChannelInvitationById$sender$countryOfResidence
        instance,
    TRes Function(
            Query$FindChannelInvitationById$findChannelInvitationById$sender$countryOfResidence)
        then,
  ) = _CopyWithImpl$Query$FindChannelInvitationById$findChannelInvitationById$sender$countryOfResidence;

  factory CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$countryOfResidence.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindChannelInvitationById$findChannelInvitationById$sender$countryOfResidence;

  TRes call({
    String? translatedValue,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindChannelInvitationById$findChannelInvitationById$sender$countryOfResidence<
        TRes>
    implements
        CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$countryOfResidence<
            TRes> {
  _CopyWithImpl$Query$FindChannelInvitationById$findChannelInvitationById$sender$countryOfResidence(
    this._instance,
    this._then,
  );

  final Query$FindChannelInvitationById$findChannelInvitationById$sender$countryOfResidence
      _instance;

  final TRes Function(
          Query$FindChannelInvitationById$findChannelInvitationById$sender$countryOfResidence)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? translatedValue = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$FindChannelInvitationById$findChannelInvitationById$sender$countryOfResidence(
        translatedValue: translatedValue == _undefined
            ? _instance.translatedValue
            : (translatedValue as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FindChannelInvitationById$findChannelInvitationById$sender$countryOfResidence<
        TRes>
    implements
        CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$countryOfResidence<
            TRes> {
  _CopyWithStubImpl$Query$FindChannelInvitationById$findChannelInvitationById$sender$countryOfResidence(
      this._res);

  TRes _res;

  call({
    String? translatedValue,
    String? $__typename,
  }) =>
      _res;
}

class Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships {
  Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships({
    required this.groupIdent,
    required this.$__typename,
  });

  factory Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships.fromJson(
      Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "MentorsGroupMembership":
        return Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership
            .fromJson(json);

      case "MenteesGroupMembership":
        return Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership
            .fromJson(json);

      case "GroupMembership":
        return Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$GroupMembership
            .fromJson(json);

      default:
        final l$groupIdent = json['groupIdent'];
        final l$$__typename = json['__typename'];
        return Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships(
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
            is Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships) ||
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

extension UtilityExtension$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships
    on Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships {
  CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships<
          Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships>
      get copyWith =>
          CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships(
            this,
            (i) => i,
          );
  _T when<_T>({
    required _T Function(
            Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership)
        mentorsGroupMembership,
    required _T Function(
            Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership)
        menteesGroupMembership,
    required _T Function(
            Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$GroupMembership)
        groupMembership,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "MentorsGroupMembership":
        return mentorsGroupMembership(this
            as Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership);

      case "MenteesGroupMembership":
        return menteesGroupMembership(this
            as Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership);

      case "GroupMembership":
        return groupMembership(this
            as Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$GroupMembership);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(
            Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership)?
        mentorsGroupMembership,
    _T Function(
            Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership)?
        menteesGroupMembership,
    _T Function(
            Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$GroupMembership)?
        groupMembership,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "MentorsGroupMembership":
        if (mentorsGroupMembership != null) {
          return mentorsGroupMembership(this
              as Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership);
        } else {
          return orElse();
        }

      case "MenteesGroupMembership":
        if (menteesGroupMembership != null) {
          return menteesGroupMembership(this
              as Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership);
        } else {
          return orElse();
        }

      case "GroupMembership":
        if (groupMembership != null) {
          return groupMembership(this
              as Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$GroupMembership);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships<
    TRes> {
  factory CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships(
    Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships
        instance,
    TRes Function(
            Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships)
        then,
  ) = _CopyWithImpl$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships;

  factory CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships;

  TRes call({
    String? groupIdent,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships<
        TRes>
    implements
        CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships<
            TRes> {
  _CopyWithImpl$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships(
    this._instance,
    this._then,
  );

  final Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships
      _instance;

  final TRes Function(
          Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? groupIdent = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships(
        groupIdent: groupIdent == _undefined || groupIdent == null
            ? _instance.groupIdent
            : (groupIdent as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships<
        TRes>
    implements
        CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships<
            TRes> {
  _CopyWithStubImpl$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships(
      this._res);

  TRes _res;

  call({
    String? groupIdent,
    String? $__typename,
  }) =>
      _res;
}

class Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership
    implements
        Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships {
  Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership({
    this.endorsements,
    required this.industries,
    required this.expertises,
    this.$__typename = 'MentorsGroupMembership',
    required this.groupIdent,
  });

  factory Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership.fromJson(
      Map<String, dynamic> json) {
    final l$endorsements = json['endorsements'];
    final l$industries = json['industries'];
    final l$expertises = json['expertises'];
    final l$$__typename = json['__typename'];
    final l$groupIdent = json['groupIdent'];
    return Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership(
      endorsements: (l$endorsements as int?),
      industries: (l$industries as List<dynamic>)
          .map((e) =>
              Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership$industries
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      expertises: (l$expertises as List<dynamic>)
          .map((e) =>
              Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership$expertises
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
      groupIdent: (l$groupIdent as String),
    );
  }

  final int? endorsements;

  final List<
          Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership$industries>
      industries;

  final List<
          Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership$expertises>
      expertises;

  final String $__typename;

  final String groupIdent;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$endorsements = endorsements;
    _resultData['endorsements'] = l$endorsements;
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
    final l$endorsements = endorsements;
    final l$industries = industries;
    final l$expertises = expertises;
    final l$$__typename = $__typename;
    final l$groupIdent = groupIdent;
    return Object.hashAll([
      l$endorsements,
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
            is Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$endorsements = endorsements;
    final lOther$endorsements = other.endorsements;
    if (l$endorsements != lOther$endorsements) {
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

extension UtilityExtension$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership
    on Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership {
  CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership<
          Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership>
      get copyWith =>
          CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership<
    TRes> {
  factory CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership(
    Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership
        instance,
    TRes Function(
            Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership)
        then,
  ) = _CopyWithImpl$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership;

  factory CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership;

  TRes call({
    int? endorsements,
    List<Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership$industries>?
        industries,
    List<Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership$expertises>?
        expertises,
    String? $__typename,
    String? groupIdent,
  });
  TRes industries(
      Iterable<Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership$industries> Function(
              Iterable<
                  CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership$industries<
                      Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership$industries>>)
          _fn);
  TRes expertises(
      Iterable<Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership$expertises> Function(
              Iterable<
                  CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership$expertises<
                      Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership$expertises>>)
          _fn);
}

class _CopyWithImpl$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership<
        TRes>
    implements
        CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership<
            TRes> {
  _CopyWithImpl$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership(
    this._instance,
    this._then,
  );

  final Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership
      _instance;

  final TRes Function(
          Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? endorsements = _undefined,
    Object? industries = _undefined,
    Object? expertises = _undefined,
    Object? $__typename = _undefined,
    Object? groupIdent = _undefined,
  }) =>
      _then(
          Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership(
        endorsements: endorsements == _undefined
            ? _instance.endorsements
            : (endorsements as int?),
        industries: industries == _undefined || industries == null
            ? _instance.industries
            : (industries as List<
                Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership$industries>),
        expertises: expertises == _undefined || expertises == null
            ? _instance.expertises
            : (expertises as List<
                Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership$expertises>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        groupIdent: groupIdent == _undefined || groupIdent == null
            ? _instance.groupIdent
            : (groupIdent as String),
      ));

  TRes industries(
          Iterable<Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership$industries> Function(
                  Iterable<
                      CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership$industries<
                          Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership$industries>>)
              _fn) =>
      call(
          industries: _fn(_instance.industries.map((e) =>
              CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership$industries(
                e,
                (i) => i,
              ))).toList());

  TRes expertises(
          Iterable<Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership$expertises> Function(
                  Iterable<
                      CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership$expertises<
                          Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership$expertises>>)
              _fn) =>
      call(
          expertises: _fn(_instance.expertises.map((e) =>
              CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership$expertises(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership<
        TRes>
    implements
        CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership<
            TRes> {
  _CopyWithStubImpl$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership(
      this._res);

  TRes _res;

  call({
    int? endorsements,
    List<Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership$industries>?
        industries,
    List<Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership$expertises>?
        expertises,
    String? $__typename,
    String? groupIdent,
  }) =>
      _res;

  industries(_fn) => _res;

  expertises(_fn) => _res;
}

class Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership$industries {
  Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership$industries({
    this.translatedValue,
    this.$__typename = 'Industry',
  });

  factory Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership$industries.fromJson(
      Map<String, dynamic> json) {
    final l$translatedValue = json['translatedValue'];
    final l$$__typename = json['__typename'];
    return Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership$industries(
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
            is Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership$industries) ||
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

extension UtilityExtension$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership$industries
    on Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership$industries {
  CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership$industries<
          Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership$industries>
      get copyWith =>
          CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership$industries(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership$industries<
    TRes> {
  factory CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership$industries(
    Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership$industries
        instance,
    TRes Function(
            Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership$industries)
        then,
  ) = _CopyWithImpl$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership$industries;

  factory CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership$industries.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership$industries;

  TRes call({
    String? translatedValue,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership$industries<
        TRes>
    implements
        CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership$industries<
            TRes> {
  _CopyWithImpl$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership$industries(
    this._instance,
    this._then,
  );

  final Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership$industries
      _instance;

  final TRes Function(
          Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership$industries)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? translatedValue = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership$industries(
        translatedValue: translatedValue == _undefined
            ? _instance.translatedValue
            : (translatedValue as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership$industries<
        TRes>
    implements
        CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership$industries<
            TRes> {
  _CopyWithStubImpl$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership$industries(
      this._res);

  TRes _res;

  call({
    String? translatedValue,
    String? $__typename,
  }) =>
      _res;
}

class Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership$expertises {
  Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership$expertises({
    this.translatedValue,
    this.$__typename = 'Expertise',
  });

  factory Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership$expertises.fromJson(
      Map<String, dynamic> json) {
    final l$translatedValue = json['translatedValue'];
    final l$$__typename = json['__typename'];
    return Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership$expertises(
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
            is Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership$expertises) ||
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

extension UtilityExtension$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership$expertises
    on Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership$expertises {
  CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership$expertises<
          Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership$expertises>
      get copyWith =>
          CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership$expertises(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership$expertises<
    TRes> {
  factory CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership$expertises(
    Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership$expertises
        instance,
    TRes Function(
            Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership$expertises)
        then,
  ) = _CopyWithImpl$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership$expertises;

  factory CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership$expertises.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership$expertises;

  TRes call({
    String? translatedValue,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership$expertises<
        TRes>
    implements
        CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership$expertises<
            TRes> {
  _CopyWithImpl$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership$expertises(
    this._instance,
    this._then,
  );

  final Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership$expertises
      _instance;

  final TRes Function(
          Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership$expertises)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? translatedValue = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership$expertises(
        translatedValue: translatedValue == _undefined
            ? _instance.translatedValue
            : (translatedValue as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership$expertises<
        TRes>
    implements
        CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership$expertises<
            TRes> {
  _CopyWithStubImpl$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MentorsGroupMembership$expertises(
      this._res);

  TRes _res;

  call({
    String? translatedValue,
    String? $__typename,
  }) =>
      _res;
}

class Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership
    implements
        Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships {
  Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership({
    this.industry,
    required this.soughtExpertises,
    this.$__typename = 'MenteesGroupMembership',
    required this.groupIdent,
  });

  factory Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership.fromJson(
      Map<String, dynamic> json) {
    final l$industry = json['industry'];
    final l$soughtExpertises = json['soughtExpertises'];
    final l$$__typename = json['__typename'];
    final l$groupIdent = json['groupIdent'];
    return Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership(
      industry: l$industry == null
          ? null
          : Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership$industry
              .fromJson((l$industry as Map<String, dynamic>)),
      soughtExpertises: (l$soughtExpertises as List<dynamic>)
          .map((e) =>
              Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership$soughtExpertises
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
      groupIdent: (l$groupIdent as String),
    );
  }

  final Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership$industry?
      industry;

  final List<
          Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership$soughtExpertises>
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
            is Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership) ||
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

extension UtilityExtension$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership
    on Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership {
  CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership<
          Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership>
      get copyWith =>
          CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership<
    TRes> {
  factory CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership(
    Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership
        instance,
    TRes Function(
            Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership)
        then,
  ) = _CopyWithImpl$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership;

  factory CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership;

  TRes call({
    Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership$industry?
        industry,
    List<Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership$soughtExpertises>?
        soughtExpertises,
    String? $__typename,
    String? groupIdent,
  });
  CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership$industry<
      TRes> get industry;
  TRes soughtExpertises(
      Iterable<Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership$soughtExpertises> Function(
              Iterable<
                  CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership$soughtExpertises<
                      Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership$soughtExpertises>>)
          _fn);
}

class _CopyWithImpl$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership<
        TRes>
    implements
        CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership<
            TRes> {
  _CopyWithImpl$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership(
    this._instance,
    this._then,
  );

  final Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership
      _instance;

  final TRes Function(
          Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? industry = _undefined,
    Object? soughtExpertises = _undefined,
    Object? $__typename = _undefined,
    Object? groupIdent = _undefined,
  }) =>
      _then(
          Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership(
        industry: industry == _undefined
            ? _instance.industry
            : (industry
                as Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership$industry?),
        soughtExpertises: soughtExpertises == _undefined ||
                soughtExpertises == null
            ? _instance.soughtExpertises
            : (soughtExpertises as List<
                Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership$soughtExpertises>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        groupIdent: groupIdent == _undefined || groupIdent == null
            ? _instance.groupIdent
            : (groupIdent as String),
      ));

  CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership$industry<
      TRes> get industry {
    final local$industry = _instance.industry;
    return local$industry == null
        ? CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership$industry
            .stub(_then(_instance))
        : CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership$industry(
            local$industry, (e) => call(industry: e));
  }

  TRes soughtExpertises(
          Iterable<Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership$soughtExpertises> Function(
                  Iterable<
                      CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership$soughtExpertises<
                          Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership$soughtExpertises>>)
              _fn) =>
      call(
          soughtExpertises: _fn(_instance.soughtExpertises.map((e) =>
              CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership$soughtExpertises(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership<
        TRes>
    implements
        CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership<
            TRes> {
  _CopyWithStubImpl$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership(
      this._res);

  TRes _res;

  call({
    Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership$industry?
        industry,
    List<Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership$soughtExpertises>?
        soughtExpertises,
    String? $__typename,
    String? groupIdent,
  }) =>
      _res;

  CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership$industry<
          TRes>
      get industry =>
          CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership$industry
              .stub(_res);

  soughtExpertises(_fn) => _res;
}

class Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership$industry {
  Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership$industry({
    this.translatedValue,
    this.$__typename = 'Industry',
  });

  factory Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership$industry.fromJson(
      Map<String, dynamic> json) {
    final l$translatedValue = json['translatedValue'];
    final l$$__typename = json['__typename'];
    return Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership$industry(
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
            is Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership$industry) ||
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

extension UtilityExtension$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership$industry
    on Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership$industry {
  CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership$industry<
          Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership$industry>
      get copyWith =>
          CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership$industry(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership$industry<
    TRes> {
  factory CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership$industry(
    Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership$industry
        instance,
    TRes Function(
            Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership$industry)
        then,
  ) = _CopyWithImpl$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership$industry;

  factory CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership$industry.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership$industry;

  TRes call({
    String? translatedValue,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership$industry<
        TRes>
    implements
        CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership$industry<
            TRes> {
  _CopyWithImpl$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership$industry(
    this._instance,
    this._then,
  );

  final Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership$industry
      _instance;

  final TRes Function(
          Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership$industry)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? translatedValue = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership$industry(
        translatedValue: translatedValue == _undefined
            ? _instance.translatedValue
            : (translatedValue as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership$industry<
        TRes>
    implements
        CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership$industry<
            TRes> {
  _CopyWithStubImpl$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership$industry(
      this._res);

  TRes _res;

  call({
    String? translatedValue,
    String? $__typename,
  }) =>
      _res;
}

class Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership$soughtExpertises {
  Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership$soughtExpertises({
    this.translatedValue,
    this.$__typename = 'Expertise',
  });

  factory Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership$soughtExpertises.fromJson(
      Map<String, dynamic> json) {
    final l$translatedValue = json['translatedValue'];
    final l$$__typename = json['__typename'];
    return Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership$soughtExpertises(
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
            is Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership$soughtExpertises) ||
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

extension UtilityExtension$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership$soughtExpertises
    on Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership$soughtExpertises {
  CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership$soughtExpertises<
          Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership$soughtExpertises>
      get copyWith =>
          CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership$soughtExpertises(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership$soughtExpertises<
    TRes> {
  factory CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership$soughtExpertises(
    Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership$soughtExpertises
        instance,
    TRes Function(
            Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership$soughtExpertises)
        then,
  ) = _CopyWithImpl$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership$soughtExpertises;

  factory CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership$soughtExpertises.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership$soughtExpertises;

  TRes call({
    String? translatedValue,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership$soughtExpertises<
        TRes>
    implements
        CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership$soughtExpertises<
            TRes> {
  _CopyWithImpl$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership$soughtExpertises(
    this._instance,
    this._then,
  );

  final Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership$soughtExpertises
      _instance;

  final TRes Function(
          Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership$soughtExpertises)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? translatedValue = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership$soughtExpertises(
        translatedValue: translatedValue == _undefined
            ? _instance.translatedValue
            : (translatedValue as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership$soughtExpertises<
        TRes>
    implements
        CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership$soughtExpertises<
            TRes> {
  _CopyWithStubImpl$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$MenteesGroupMembership$soughtExpertises(
      this._res);

  TRes _res;

  call({
    String? translatedValue,
    String? $__typename,
  }) =>
      _res;
}

class Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$GroupMembership
    implements
        Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships {
  Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$GroupMembership({
    required this.groupIdent,
    this.$__typename = 'GroupMembership',
  });

  factory Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$GroupMembership.fromJson(
      Map<String, dynamic> json) {
    final l$groupIdent = json['groupIdent'];
    final l$$__typename = json['__typename'];
    return Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$GroupMembership(
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
            is Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$GroupMembership) ||
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

extension UtilityExtension$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$GroupMembership
    on Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$GroupMembership {
  CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$GroupMembership<
          Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$GroupMembership>
      get copyWith =>
          CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$GroupMembership(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$GroupMembership<
    TRes> {
  factory CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$GroupMembership(
    Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$GroupMembership
        instance,
    TRes Function(
            Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$GroupMembership)
        then,
  ) = _CopyWithImpl$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$GroupMembership;

  factory CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$GroupMembership.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$GroupMembership;

  TRes call({
    String? groupIdent,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$GroupMembership<
        TRes>
    implements
        CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$GroupMembership<
            TRes> {
  _CopyWithImpl$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$GroupMembership(
    this._instance,
    this._then,
  );

  final Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$GroupMembership
      _instance;

  final TRes Function(
          Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$GroupMembership)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? groupIdent = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$GroupMembership(
        groupIdent: groupIdent == _undefined || groupIdent == null
            ? _instance.groupIdent
            : (groupIdent as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$GroupMembership<
        TRes>
    implements
        CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$GroupMembership<
            TRes> {
  _CopyWithStubImpl$Query$FindChannelInvitationById$findChannelInvitationById$sender$groupMemberships$$GroupMembership(
      this._res);

  TRes _res;

  call({
    String? groupIdent,
    String? $__typename,
  }) =>
      _res;
}

class Query$FindChannelInvitationById$findChannelInvitationById$recipient {
  Query$FindChannelInvitationById$findChannelInvitationById$recipient({
    required this.id,
    this.fullName,
    this.avatarUrl,
    this.jobTitle,
    required this.offersHelp,
    required this.seeksHelp,
    required this.companies,
    this.countryOfResidence,
    required this.groupMemberships,
    this.$__typename = 'User',
  });

  factory Query$FindChannelInvitationById$findChannelInvitationById$recipient.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$fullName = json['fullName'];
    final l$avatarUrl = json['avatarUrl'];
    final l$jobTitle = json['jobTitle'];
    final l$offersHelp = json['offersHelp'];
    final l$seeksHelp = json['seeksHelp'];
    final l$companies = json['companies'];
    final l$countryOfResidence = json['countryOfResidence'];
    final l$groupMemberships = json['groupMemberships'];
    final l$$__typename = json['__typename'];
    return Query$FindChannelInvitationById$findChannelInvitationById$recipient(
      id: (l$id as String),
      fullName: (l$fullName as String?),
      avatarUrl: (l$avatarUrl as String?),
      jobTitle: (l$jobTitle as String?),
      offersHelp: (l$offersHelp as bool),
      seeksHelp: (l$seeksHelp as bool),
      companies: (l$companies as List<dynamic>)
          .map((e) =>
              Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      countryOfResidence: l$countryOfResidence == null
          ? null
          : Query$FindChannelInvitationById$findChannelInvitationById$recipient$countryOfResidence
              .fromJson((l$countryOfResidence as Map<String, dynamic>)),
      groupMemberships: (l$groupMemberships as List<dynamic>)
          .map((e) =>
              Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String? fullName;

  final String? avatarUrl;

  final String? jobTitle;

  final bool offersHelp;

  final bool seeksHelp;

  final List<
          Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies>
      companies;

  final Query$FindChannelInvitationById$findChannelInvitationById$recipient$countryOfResidence?
      countryOfResidence;

  final List<
          Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships>
      groupMemberships;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$fullName = fullName;
    _resultData['fullName'] = l$fullName;
    final l$avatarUrl = avatarUrl;
    _resultData['avatarUrl'] = l$avatarUrl;
    final l$jobTitle = jobTitle;
    _resultData['jobTitle'] = l$jobTitle;
    final l$offersHelp = offersHelp;
    _resultData['offersHelp'] = l$offersHelp;
    final l$seeksHelp = seeksHelp;
    _resultData['seeksHelp'] = l$seeksHelp;
    final l$companies = companies;
    _resultData['companies'] = l$companies.map((e) => e.toJson()).toList();
    final l$countryOfResidence = countryOfResidence;
    _resultData['countryOfResidence'] = l$countryOfResidence?.toJson();
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
    final l$fullName = fullName;
    final l$avatarUrl = avatarUrl;
    final l$jobTitle = jobTitle;
    final l$offersHelp = offersHelp;
    final l$seeksHelp = seeksHelp;
    final l$companies = companies;
    final l$countryOfResidence = countryOfResidence;
    final l$groupMemberships = groupMemberships;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$fullName,
      l$avatarUrl,
      l$jobTitle,
      l$offersHelp,
      l$seeksHelp,
      Object.hashAll(l$companies.map((v) => v)),
      l$countryOfResidence,
      Object.hashAll(l$groupMemberships.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$FindChannelInvitationById$findChannelInvitationById$recipient) ||
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
    final l$jobTitle = jobTitle;
    final lOther$jobTitle = other.jobTitle;
    if (l$jobTitle != lOther$jobTitle) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FindChannelInvitationById$findChannelInvitationById$recipient
    on Query$FindChannelInvitationById$findChannelInvitationById$recipient {
  CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient<
          Query$FindChannelInvitationById$findChannelInvitationById$recipient>
      get copyWith =>
          CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient<
    TRes> {
  factory CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient(
    Query$FindChannelInvitationById$findChannelInvitationById$recipient
        instance,
    TRes Function(
            Query$FindChannelInvitationById$findChannelInvitationById$recipient)
        then,
  ) = _CopyWithImpl$Query$FindChannelInvitationById$findChannelInvitationById$recipient;

  factory CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindChannelInvitationById$findChannelInvitationById$recipient;

  TRes call({
    String? id,
    String? fullName,
    String? avatarUrl,
    String? jobTitle,
    bool? offersHelp,
    bool? seeksHelp,
    List<Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies>?
        companies,
    Query$FindChannelInvitationById$findChannelInvitationById$recipient$countryOfResidence?
        countryOfResidence,
    List<Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships>?
        groupMemberships,
    String? $__typename,
  });
  TRes companies(
      Iterable<Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies> Function(
              Iterable<
                  CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies<
                      Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies>>)
          _fn);
  CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$countryOfResidence<
      TRes> get countryOfResidence;
  TRes groupMemberships(
      Iterable<Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships> Function(
              Iterable<
                  CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships<
                      Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships>>)
          _fn);
}

class _CopyWithImpl$Query$FindChannelInvitationById$findChannelInvitationById$recipient<
        TRes>
    implements
        CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient<
            TRes> {
  _CopyWithImpl$Query$FindChannelInvitationById$findChannelInvitationById$recipient(
    this._instance,
    this._then,
  );

  final Query$FindChannelInvitationById$findChannelInvitationById$recipient
      _instance;

  final TRes Function(
          Query$FindChannelInvitationById$findChannelInvitationById$recipient)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? fullName = _undefined,
    Object? avatarUrl = _undefined,
    Object? jobTitle = _undefined,
    Object? offersHelp = _undefined,
    Object? seeksHelp = _undefined,
    Object? companies = _undefined,
    Object? countryOfResidence = _undefined,
    Object? groupMemberships = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FindChannelInvitationById$findChannelInvitationById$recipient(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        fullName:
            fullName == _undefined ? _instance.fullName : (fullName as String?),
        avatarUrl: avatarUrl == _undefined
            ? _instance.avatarUrl
            : (avatarUrl as String?),
        jobTitle:
            jobTitle == _undefined ? _instance.jobTitle : (jobTitle as String?),
        offersHelp: offersHelp == _undefined || offersHelp == null
            ? _instance.offersHelp
            : (offersHelp as bool),
        seeksHelp: seeksHelp == _undefined || seeksHelp == null
            ? _instance.seeksHelp
            : (seeksHelp as bool),
        companies: companies == _undefined || companies == null
            ? _instance.companies
            : (companies as List<
                Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies>),
        countryOfResidence: countryOfResidence == _undefined
            ? _instance.countryOfResidence
            : (countryOfResidence
                as Query$FindChannelInvitationById$findChannelInvitationById$recipient$countryOfResidence?),
        groupMemberships: groupMemberships == _undefined ||
                groupMemberships == null
            ? _instance.groupMemberships
            : (groupMemberships as List<
                Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes companies(
          Iterable<Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies> Function(
                  Iterable<
                      CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies<
                          Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies>>)
              _fn) =>
      call(
          companies: _fn(_instance.companies.map((e) =>
              CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies(
                e,
                (i) => i,
              ))).toList());

  CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$countryOfResidence<
      TRes> get countryOfResidence {
    final local$countryOfResidence = _instance.countryOfResidence;
    return local$countryOfResidence == null
        ? CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$countryOfResidence
            .stub(_then(_instance))
        : CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$countryOfResidence(
            local$countryOfResidence, (e) => call(countryOfResidence: e));
  }

  TRes groupMemberships(
          Iterable<Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships> Function(
                  Iterable<
                      CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships<
                          Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships>>)
              _fn) =>
      call(
          groupMemberships: _fn(_instance.groupMemberships.map((e) =>
              CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$FindChannelInvitationById$findChannelInvitationById$recipient<
        TRes>
    implements
        CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient<
            TRes> {
  _CopyWithStubImpl$Query$FindChannelInvitationById$findChannelInvitationById$recipient(
      this._res);

  TRes _res;

  call({
    String? id,
    String? fullName,
    String? avatarUrl,
    String? jobTitle,
    bool? offersHelp,
    bool? seeksHelp,
    List<Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies>?
        companies,
    Query$FindChannelInvitationById$findChannelInvitationById$recipient$countryOfResidence?
        countryOfResidence,
    List<Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships>?
        groupMemberships,
    String? $__typename,
  }) =>
      _res;

  companies(_fn) => _res;

  CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$countryOfResidence<
          TRes>
      get countryOfResidence =>
          CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$countryOfResidence
              .stub(_res);

  groupMemberships(_fn) => _res;
}

class Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies {
  Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies({
    required this.id,
    required this.name,
    this.companyStage,
    this.companyType,
    this.$__typename = 'Company',
  });

  factory Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$companyStage = json['companyStage'];
    final l$companyType = json['companyType'];
    final l$$__typename = json['__typename'];
    return Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies(
      id: (l$id as String),
      name: (l$name as String),
      companyStage: l$companyStage == null
          ? null
          : Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies$companyStage
              .fromJson((l$companyStage as Map<String, dynamic>)),
      companyType: l$companyType == null
          ? null
          : Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies$companyType
              .fromJson((l$companyType as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies$companyStage?
      companyStage;

  final Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies$companyType?
      companyType;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
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
    final l$id = id;
    final l$name = name;
    final l$companyStage = companyStage;
    final l$companyType = companyType;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
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
    if (!(other
            is Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies) ||
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

extension UtilityExtension$Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies
    on Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies {
  CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies<
          Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies>
      get copyWith =>
          CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies<
    TRes> {
  factory CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies(
    Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies
        instance,
    TRes Function(
            Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies)
        then,
  ) = _CopyWithImpl$Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies;

  factory CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies;

  TRes call({
    String? id,
    String? name,
    Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies$companyStage?
        companyStage,
    Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies$companyType?
        companyType,
    String? $__typename,
  });
  CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies$companyStage<
      TRes> get companyStage;
  CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies$companyType<
      TRes> get companyType;
}

class _CopyWithImpl$Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies<
        TRes>
    implements
        CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies<
            TRes> {
  _CopyWithImpl$Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies(
    this._instance,
    this._then,
  );

  final Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies
      _instance;

  final TRes Function(
          Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? companyStage = _undefined,
    Object? companyType = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        companyStage: companyStage == _undefined
            ? _instance.companyStage
            : (companyStage
                as Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies$companyStage?),
        companyType: companyType == _undefined
            ? _instance.companyType
            : (companyType
                as Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies$companyType?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies$companyStage<
      TRes> get companyStage {
    final local$companyStage = _instance.companyStage;
    return local$companyStage == null
        ? CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies$companyStage
            .stub(_then(_instance))
        : CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies$companyStage(
            local$companyStage, (e) => call(companyStage: e));
  }

  CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies$companyType<
      TRes> get companyType {
    final local$companyType = _instance.companyType;
    return local$companyType == null
        ? CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies$companyType
            .stub(_then(_instance))
        : CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies$companyType(
            local$companyType, (e) => call(companyType: e));
  }
}

class _CopyWithStubImpl$Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies<
        TRes>
    implements
        CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies<
            TRes> {
  _CopyWithStubImpl$Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies(
      this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies$companyStage?
        companyStage,
    Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies$companyType?
        companyType,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies$companyStage<
          TRes>
      get companyStage =>
          CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies$companyStage
              .stub(_res);

  CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies$companyType<
          TRes>
      get companyType =>
          CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies$companyType
              .stub(_res);
}

class Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies$companyStage {
  Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies$companyStage({
    this.translatedValue,
    this.$__typename = 'CompanyStage',
  });

  factory Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies$companyStage.fromJson(
      Map<String, dynamic> json) {
    final l$translatedValue = json['translatedValue'];
    final l$$__typename = json['__typename'];
    return Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies$companyStage(
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
            is Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies$companyStage) ||
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

extension UtilityExtension$Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies$companyStage
    on Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies$companyStage {
  CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies$companyStage<
          Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies$companyStage>
      get copyWith =>
          CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies$companyStage(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies$companyStage<
    TRes> {
  factory CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies$companyStage(
    Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies$companyStage
        instance,
    TRes Function(
            Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies$companyStage)
        then,
  ) = _CopyWithImpl$Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies$companyStage;

  factory CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies$companyStage.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies$companyStage;

  TRes call({
    String? translatedValue,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies$companyStage<
        TRes>
    implements
        CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies$companyStage<
            TRes> {
  _CopyWithImpl$Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies$companyStage(
    this._instance,
    this._then,
  );

  final Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies$companyStage
      _instance;

  final TRes Function(
          Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies$companyStage)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? translatedValue = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies$companyStage(
        translatedValue: translatedValue == _undefined
            ? _instance.translatedValue
            : (translatedValue as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies$companyStage<
        TRes>
    implements
        CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies$companyStage<
            TRes> {
  _CopyWithStubImpl$Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies$companyStage(
      this._res);

  TRes _res;

  call({
    String? translatedValue,
    String? $__typename,
  }) =>
      _res;
}

class Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies$companyType {
  Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies$companyType({
    this.translatedValue,
    this.$__typename = 'CompanyType',
  });

  factory Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies$companyType.fromJson(
      Map<String, dynamic> json) {
    final l$translatedValue = json['translatedValue'];
    final l$$__typename = json['__typename'];
    return Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies$companyType(
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
            is Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies$companyType) ||
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

extension UtilityExtension$Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies$companyType
    on Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies$companyType {
  CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies$companyType<
          Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies$companyType>
      get copyWith =>
          CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies$companyType(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies$companyType<
    TRes> {
  factory CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies$companyType(
    Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies$companyType
        instance,
    TRes Function(
            Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies$companyType)
        then,
  ) = _CopyWithImpl$Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies$companyType;

  factory CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies$companyType.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies$companyType;

  TRes call({
    String? translatedValue,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies$companyType<
        TRes>
    implements
        CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies$companyType<
            TRes> {
  _CopyWithImpl$Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies$companyType(
    this._instance,
    this._then,
  );

  final Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies$companyType
      _instance;

  final TRes Function(
          Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies$companyType)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? translatedValue = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies$companyType(
        translatedValue: translatedValue == _undefined
            ? _instance.translatedValue
            : (translatedValue as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies$companyType<
        TRes>
    implements
        CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies$companyType<
            TRes> {
  _CopyWithStubImpl$Query$FindChannelInvitationById$findChannelInvitationById$recipient$companies$companyType(
      this._res);

  TRes _res;

  call({
    String? translatedValue,
    String? $__typename,
  }) =>
      _res;
}

class Query$FindChannelInvitationById$findChannelInvitationById$recipient$countryOfResidence {
  Query$FindChannelInvitationById$findChannelInvitationById$recipient$countryOfResidence({
    this.translatedValue,
    this.$__typename = 'Country',
  });

  factory Query$FindChannelInvitationById$findChannelInvitationById$recipient$countryOfResidence.fromJson(
      Map<String, dynamic> json) {
    final l$translatedValue = json['translatedValue'];
    final l$$__typename = json['__typename'];
    return Query$FindChannelInvitationById$findChannelInvitationById$recipient$countryOfResidence(
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
            is Query$FindChannelInvitationById$findChannelInvitationById$recipient$countryOfResidence) ||
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

extension UtilityExtension$Query$FindChannelInvitationById$findChannelInvitationById$recipient$countryOfResidence
    on Query$FindChannelInvitationById$findChannelInvitationById$recipient$countryOfResidence {
  CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$countryOfResidence<
          Query$FindChannelInvitationById$findChannelInvitationById$recipient$countryOfResidence>
      get copyWith =>
          CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$countryOfResidence(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$countryOfResidence<
    TRes> {
  factory CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$countryOfResidence(
    Query$FindChannelInvitationById$findChannelInvitationById$recipient$countryOfResidence
        instance,
    TRes Function(
            Query$FindChannelInvitationById$findChannelInvitationById$recipient$countryOfResidence)
        then,
  ) = _CopyWithImpl$Query$FindChannelInvitationById$findChannelInvitationById$recipient$countryOfResidence;

  factory CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$countryOfResidence.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindChannelInvitationById$findChannelInvitationById$recipient$countryOfResidence;

  TRes call({
    String? translatedValue,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindChannelInvitationById$findChannelInvitationById$recipient$countryOfResidence<
        TRes>
    implements
        CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$countryOfResidence<
            TRes> {
  _CopyWithImpl$Query$FindChannelInvitationById$findChannelInvitationById$recipient$countryOfResidence(
    this._instance,
    this._then,
  );

  final Query$FindChannelInvitationById$findChannelInvitationById$recipient$countryOfResidence
      _instance;

  final TRes Function(
          Query$FindChannelInvitationById$findChannelInvitationById$recipient$countryOfResidence)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? translatedValue = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$FindChannelInvitationById$findChannelInvitationById$recipient$countryOfResidence(
        translatedValue: translatedValue == _undefined
            ? _instance.translatedValue
            : (translatedValue as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FindChannelInvitationById$findChannelInvitationById$recipient$countryOfResidence<
        TRes>
    implements
        CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$countryOfResidence<
            TRes> {
  _CopyWithStubImpl$Query$FindChannelInvitationById$findChannelInvitationById$recipient$countryOfResidence(
      this._res);

  TRes _res;

  call({
    String? translatedValue,
    String? $__typename,
  }) =>
      _res;
}

class Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships {
  Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships({
    required this.groupIdent,
    required this.$__typename,
  });

  factory Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships.fromJson(
      Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "MentorsGroupMembership":
        return Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership
            .fromJson(json);

      case "MenteesGroupMembership":
        return Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership
            .fromJson(json);

      case "GroupMembership":
        return Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$GroupMembership
            .fromJson(json);

      default:
        final l$groupIdent = json['groupIdent'];
        final l$$__typename = json['__typename'];
        return Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships(
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
            is Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships) ||
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

extension UtilityExtension$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships
    on Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships {
  CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships<
          Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships>
      get copyWith =>
          CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships(
            this,
            (i) => i,
          );
  _T when<_T>({
    required _T Function(
            Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership)
        mentorsGroupMembership,
    required _T Function(
            Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership)
        menteesGroupMembership,
    required _T Function(
            Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$GroupMembership)
        groupMembership,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "MentorsGroupMembership":
        return mentorsGroupMembership(this
            as Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership);

      case "MenteesGroupMembership":
        return menteesGroupMembership(this
            as Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership);

      case "GroupMembership":
        return groupMembership(this
            as Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$GroupMembership);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(
            Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership)?
        mentorsGroupMembership,
    _T Function(
            Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership)?
        menteesGroupMembership,
    _T Function(
            Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$GroupMembership)?
        groupMembership,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "MentorsGroupMembership":
        if (mentorsGroupMembership != null) {
          return mentorsGroupMembership(this
              as Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership);
        } else {
          return orElse();
        }

      case "MenteesGroupMembership":
        if (menteesGroupMembership != null) {
          return menteesGroupMembership(this
              as Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership);
        } else {
          return orElse();
        }

      case "GroupMembership":
        if (groupMembership != null) {
          return groupMembership(this
              as Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$GroupMembership);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships<
    TRes> {
  factory CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships(
    Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships
        instance,
    TRes Function(
            Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships)
        then,
  ) = _CopyWithImpl$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships;

  factory CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships;

  TRes call({
    String? groupIdent,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships<
        TRes>
    implements
        CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships<
            TRes> {
  _CopyWithImpl$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships(
    this._instance,
    this._then,
  );

  final Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships
      _instance;

  final TRes Function(
          Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? groupIdent = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships(
        groupIdent: groupIdent == _undefined || groupIdent == null
            ? _instance.groupIdent
            : (groupIdent as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships<
        TRes>
    implements
        CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships<
            TRes> {
  _CopyWithStubImpl$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships(
      this._res);

  TRes _res;

  call({
    String? groupIdent,
    String? $__typename,
  }) =>
      _res;
}

class Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership
    implements
        Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships {
  Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership({
    this.endorsements,
    required this.industries,
    required this.expertises,
    this.$__typename = 'MentorsGroupMembership',
    required this.groupIdent,
  });

  factory Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership.fromJson(
      Map<String, dynamic> json) {
    final l$endorsements = json['endorsements'];
    final l$industries = json['industries'];
    final l$expertises = json['expertises'];
    final l$$__typename = json['__typename'];
    final l$groupIdent = json['groupIdent'];
    return Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership(
      endorsements: (l$endorsements as int?),
      industries: (l$industries as List<dynamic>)
          .map((e) =>
              Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership$industries
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      expertises: (l$expertises as List<dynamic>)
          .map((e) =>
              Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership$expertises
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
      groupIdent: (l$groupIdent as String),
    );
  }

  final int? endorsements;

  final List<
          Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership$industries>
      industries;

  final List<
          Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership$expertises>
      expertises;

  final String $__typename;

  final String groupIdent;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$endorsements = endorsements;
    _resultData['endorsements'] = l$endorsements;
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
    final l$endorsements = endorsements;
    final l$industries = industries;
    final l$expertises = expertises;
    final l$$__typename = $__typename;
    final l$groupIdent = groupIdent;
    return Object.hashAll([
      l$endorsements,
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
            is Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$endorsements = endorsements;
    final lOther$endorsements = other.endorsements;
    if (l$endorsements != lOther$endorsements) {
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

extension UtilityExtension$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership
    on Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership {
  CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership<
          Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership>
      get copyWith =>
          CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership<
    TRes> {
  factory CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership(
    Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership
        instance,
    TRes Function(
            Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership)
        then,
  ) = _CopyWithImpl$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership;

  factory CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership;

  TRes call({
    int? endorsements,
    List<Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership$industries>?
        industries,
    List<Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership$expertises>?
        expertises,
    String? $__typename,
    String? groupIdent,
  });
  TRes industries(
      Iterable<Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership$industries> Function(
              Iterable<
                  CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership$industries<
                      Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership$industries>>)
          _fn);
  TRes expertises(
      Iterable<Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership$expertises> Function(
              Iterable<
                  CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership$expertises<
                      Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership$expertises>>)
          _fn);
}

class _CopyWithImpl$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership<
        TRes>
    implements
        CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership<
            TRes> {
  _CopyWithImpl$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership(
    this._instance,
    this._then,
  );

  final Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership
      _instance;

  final TRes Function(
          Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? endorsements = _undefined,
    Object? industries = _undefined,
    Object? expertises = _undefined,
    Object? $__typename = _undefined,
    Object? groupIdent = _undefined,
  }) =>
      _then(
          Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership(
        endorsements: endorsements == _undefined
            ? _instance.endorsements
            : (endorsements as int?),
        industries: industries == _undefined || industries == null
            ? _instance.industries
            : (industries as List<
                Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership$industries>),
        expertises: expertises == _undefined || expertises == null
            ? _instance.expertises
            : (expertises as List<
                Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership$expertises>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        groupIdent: groupIdent == _undefined || groupIdent == null
            ? _instance.groupIdent
            : (groupIdent as String),
      ));

  TRes industries(
          Iterable<Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership$industries> Function(
                  Iterable<
                      CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership$industries<
                          Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership$industries>>)
              _fn) =>
      call(
          industries: _fn(_instance.industries.map((e) =>
              CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership$industries(
                e,
                (i) => i,
              ))).toList());

  TRes expertises(
          Iterable<Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership$expertises> Function(
                  Iterable<
                      CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership$expertises<
                          Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership$expertises>>)
              _fn) =>
      call(
          expertises: _fn(_instance.expertises.map((e) =>
              CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership$expertises(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership<
        TRes>
    implements
        CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership<
            TRes> {
  _CopyWithStubImpl$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership(
      this._res);

  TRes _res;

  call({
    int? endorsements,
    List<Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership$industries>?
        industries,
    List<Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership$expertises>?
        expertises,
    String? $__typename,
    String? groupIdent,
  }) =>
      _res;

  industries(_fn) => _res;

  expertises(_fn) => _res;
}

class Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership$industries {
  Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership$industries({
    this.translatedValue,
    this.$__typename = 'Industry',
  });

  factory Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership$industries.fromJson(
      Map<String, dynamic> json) {
    final l$translatedValue = json['translatedValue'];
    final l$$__typename = json['__typename'];
    return Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership$industries(
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
            is Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership$industries) ||
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

extension UtilityExtension$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership$industries
    on Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership$industries {
  CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership$industries<
          Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership$industries>
      get copyWith =>
          CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership$industries(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership$industries<
    TRes> {
  factory CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership$industries(
    Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership$industries
        instance,
    TRes Function(
            Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership$industries)
        then,
  ) = _CopyWithImpl$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership$industries;

  factory CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership$industries.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership$industries;

  TRes call({
    String? translatedValue,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership$industries<
        TRes>
    implements
        CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership$industries<
            TRes> {
  _CopyWithImpl$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership$industries(
    this._instance,
    this._then,
  );

  final Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership$industries
      _instance;

  final TRes Function(
          Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership$industries)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? translatedValue = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership$industries(
        translatedValue: translatedValue == _undefined
            ? _instance.translatedValue
            : (translatedValue as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership$industries<
        TRes>
    implements
        CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership$industries<
            TRes> {
  _CopyWithStubImpl$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership$industries(
      this._res);

  TRes _res;

  call({
    String? translatedValue,
    String? $__typename,
  }) =>
      _res;
}

class Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership$expertises {
  Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership$expertises({
    this.translatedValue,
    this.$__typename = 'Expertise',
  });

  factory Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership$expertises.fromJson(
      Map<String, dynamic> json) {
    final l$translatedValue = json['translatedValue'];
    final l$$__typename = json['__typename'];
    return Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership$expertises(
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
            is Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership$expertises) ||
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

extension UtilityExtension$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership$expertises
    on Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership$expertises {
  CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership$expertises<
          Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership$expertises>
      get copyWith =>
          CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership$expertises(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership$expertises<
    TRes> {
  factory CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership$expertises(
    Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership$expertises
        instance,
    TRes Function(
            Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership$expertises)
        then,
  ) = _CopyWithImpl$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership$expertises;

  factory CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership$expertises.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership$expertises;

  TRes call({
    String? translatedValue,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership$expertises<
        TRes>
    implements
        CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership$expertises<
            TRes> {
  _CopyWithImpl$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership$expertises(
    this._instance,
    this._then,
  );

  final Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership$expertises
      _instance;

  final TRes Function(
          Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership$expertises)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? translatedValue = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership$expertises(
        translatedValue: translatedValue == _undefined
            ? _instance.translatedValue
            : (translatedValue as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership$expertises<
        TRes>
    implements
        CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership$expertises<
            TRes> {
  _CopyWithStubImpl$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MentorsGroupMembership$expertises(
      this._res);

  TRes _res;

  call({
    String? translatedValue,
    String? $__typename,
  }) =>
      _res;
}

class Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership
    implements
        Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships {
  Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership({
    this.industry,
    required this.soughtExpertises,
    this.$__typename = 'MenteesGroupMembership',
    required this.groupIdent,
  });

  factory Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership.fromJson(
      Map<String, dynamic> json) {
    final l$industry = json['industry'];
    final l$soughtExpertises = json['soughtExpertises'];
    final l$$__typename = json['__typename'];
    final l$groupIdent = json['groupIdent'];
    return Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership(
      industry: l$industry == null
          ? null
          : Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership$industry
              .fromJson((l$industry as Map<String, dynamic>)),
      soughtExpertises: (l$soughtExpertises as List<dynamic>)
          .map((e) =>
              Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership$soughtExpertises
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
      groupIdent: (l$groupIdent as String),
    );
  }

  final Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership$industry?
      industry;

  final List<
          Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership$soughtExpertises>
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
            is Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership) ||
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

extension UtilityExtension$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership
    on Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership {
  CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership<
          Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership>
      get copyWith =>
          CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership<
    TRes> {
  factory CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership(
    Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership
        instance,
    TRes Function(
            Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership)
        then,
  ) = _CopyWithImpl$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership;

  factory CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership;

  TRes call({
    Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership$industry?
        industry,
    List<Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership$soughtExpertises>?
        soughtExpertises,
    String? $__typename,
    String? groupIdent,
  });
  CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership$industry<
      TRes> get industry;
  TRes soughtExpertises(
      Iterable<Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership$soughtExpertises> Function(
              Iterable<
                  CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership$soughtExpertises<
                      Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership$soughtExpertises>>)
          _fn);
}

class _CopyWithImpl$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership<
        TRes>
    implements
        CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership<
            TRes> {
  _CopyWithImpl$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership(
    this._instance,
    this._then,
  );

  final Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership
      _instance;

  final TRes Function(
          Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? industry = _undefined,
    Object? soughtExpertises = _undefined,
    Object? $__typename = _undefined,
    Object? groupIdent = _undefined,
  }) =>
      _then(
          Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership(
        industry: industry == _undefined
            ? _instance.industry
            : (industry
                as Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership$industry?),
        soughtExpertises: soughtExpertises == _undefined ||
                soughtExpertises == null
            ? _instance.soughtExpertises
            : (soughtExpertises as List<
                Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership$soughtExpertises>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        groupIdent: groupIdent == _undefined || groupIdent == null
            ? _instance.groupIdent
            : (groupIdent as String),
      ));

  CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership$industry<
      TRes> get industry {
    final local$industry = _instance.industry;
    return local$industry == null
        ? CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership$industry
            .stub(_then(_instance))
        : CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership$industry(
            local$industry, (e) => call(industry: e));
  }

  TRes soughtExpertises(
          Iterable<Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership$soughtExpertises> Function(
                  Iterable<
                      CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership$soughtExpertises<
                          Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership$soughtExpertises>>)
              _fn) =>
      call(
          soughtExpertises: _fn(_instance.soughtExpertises.map((e) =>
              CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership$soughtExpertises(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership<
        TRes>
    implements
        CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership<
            TRes> {
  _CopyWithStubImpl$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership(
      this._res);

  TRes _res;

  call({
    Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership$industry?
        industry,
    List<Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership$soughtExpertises>?
        soughtExpertises,
    String? $__typename,
    String? groupIdent,
  }) =>
      _res;

  CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership$industry<
          TRes>
      get industry =>
          CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership$industry
              .stub(_res);

  soughtExpertises(_fn) => _res;
}

class Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership$industry {
  Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership$industry({
    this.translatedValue,
    this.$__typename = 'Industry',
  });

  factory Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership$industry.fromJson(
      Map<String, dynamic> json) {
    final l$translatedValue = json['translatedValue'];
    final l$$__typename = json['__typename'];
    return Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership$industry(
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
            is Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership$industry) ||
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

extension UtilityExtension$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership$industry
    on Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership$industry {
  CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership$industry<
          Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership$industry>
      get copyWith =>
          CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership$industry(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership$industry<
    TRes> {
  factory CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership$industry(
    Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership$industry
        instance,
    TRes Function(
            Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership$industry)
        then,
  ) = _CopyWithImpl$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership$industry;

  factory CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership$industry.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership$industry;

  TRes call({
    String? translatedValue,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership$industry<
        TRes>
    implements
        CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership$industry<
            TRes> {
  _CopyWithImpl$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership$industry(
    this._instance,
    this._then,
  );

  final Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership$industry
      _instance;

  final TRes Function(
          Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership$industry)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? translatedValue = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership$industry(
        translatedValue: translatedValue == _undefined
            ? _instance.translatedValue
            : (translatedValue as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership$industry<
        TRes>
    implements
        CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership$industry<
            TRes> {
  _CopyWithStubImpl$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership$industry(
      this._res);

  TRes _res;

  call({
    String? translatedValue,
    String? $__typename,
  }) =>
      _res;
}

class Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership$soughtExpertises {
  Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership$soughtExpertises({
    this.translatedValue,
    this.$__typename = 'Expertise',
  });

  factory Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership$soughtExpertises.fromJson(
      Map<String, dynamic> json) {
    final l$translatedValue = json['translatedValue'];
    final l$$__typename = json['__typename'];
    return Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership$soughtExpertises(
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
            is Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership$soughtExpertises) ||
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

extension UtilityExtension$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership$soughtExpertises
    on Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership$soughtExpertises {
  CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership$soughtExpertises<
          Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership$soughtExpertises>
      get copyWith =>
          CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership$soughtExpertises(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership$soughtExpertises<
    TRes> {
  factory CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership$soughtExpertises(
    Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership$soughtExpertises
        instance,
    TRes Function(
            Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership$soughtExpertises)
        then,
  ) = _CopyWithImpl$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership$soughtExpertises;

  factory CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership$soughtExpertises.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership$soughtExpertises;

  TRes call({
    String? translatedValue,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership$soughtExpertises<
        TRes>
    implements
        CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership$soughtExpertises<
            TRes> {
  _CopyWithImpl$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership$soughtExpertises(
    this._instance,
    this._then,
  );

  final Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership$soughtExpertises
      _instance;

  final TRes Function(
          Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership$soughtExpertises)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? translatedValue = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership$soughtExpertises(
        translatedValue: translatedValue == _undefined
            ? _instance.translatedValue
            : (translatedValue as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership$soughtExpertises<
        TRes>
    implements
        CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership$soughtExpertises<
            TRes> {
  _CopyWithStubImpl$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$MenteesGroupMembership$soughtExpertises(
      this._res);

  TRes _res;

  call({
    String? translatedValue,
    String? $__typename,
  }) =>
      _res;
}

class Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$GroupMembership
    implements
        Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships {
  Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$GroupMembership({
    required this.groupIdent,
    this.$__typename = 'GroupMembership',
  });

  factory Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$GroupMembership.fromJson(
      Map<String, dynamic> json) {
    final l$groupIdent = json['groupIdent'];
    final l$$__typename = json['__typename'];
    return Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$GroupMembership(
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
            is Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$GroupMembership) ||
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

extension UtilityExtension$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$GroupMembership
    on Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$GroupMembership {
  CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$GroupMembership<
          Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$GroupMembership>
      get copyWith =>
          CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$GroupMembership(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$GroupMembership<
    TRes> {
  factory CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$GroupMembership(
    Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$GroupMembership
        instance,
    TRes Function(
            Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$GroupMembership)
        then,
  ) = _CopyWithImpl$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$GroupMembership;

  factory CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$GroupMembership.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$GroupMembership;

  TRes call({
    String? groupIdent,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$GroupMembership<
        TRes>
    implements
        CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$GroupMembership<
            TRes> {
  _CopyWithImpl$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$GroupMembership(
    this._instance,
    this._then,
  );

  final Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$GroupMembership
      _instance;

  final TRes Function(
          Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$GroupMembership)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? groupIdent = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$GroupMembership(
        groupIdent: groupIdent == _undefined || groupIdent == null
            ? _instance.groupIdent
            : (groupIdent as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$GroupMembership<
        TRes>
    implements
        CopyWith$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$GroupMembership<
            TRes> {
  _CopyWithStubImpl$Query$FindChannelInvitationById$findChannelInvitationById$recipient$groupMemberships$$GroupMembership(
      this._res);

  TRes _res;

  call({
    String? groupIdent,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$MyReceivedChannelInvitations {
  factory Variables$Query$MyReceivedChannelInvitations({
    Enum$ChannelInvitationDirection? direction,
    bool? onlyPending,
  }) =>
      Variables$Query$MyReceivedChannelInvitations._({
        if (direction != null) r'direction': direction,
        if (onlyPending != null) r'onlyPending': onlyPending,
      });

  Variables$Query$MyReceivedChannelInvitations._(this._$data);

  factory Variables$Query$MyReceivedChannelInvitations.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('direction')) {
      final l$direction = data['direction'];
      result$data['direction'] = l$direction == null
          ? null
          : fromJson$Enum$ChannelInvitationDirection((l$direction as String));
    }
    if (data.containsKey('onlyPending')) {
      final l$onlyPending = data['onlyPending'];
      result$data['onlyPending'] = (l$onlyPending as bool?);
    }
    return Variables$Query$MyReceivedChannelInvitations._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$ChannelInvitationDirection? get direction =>
      (_$data['direction'] as Enum$ChannelInvitationDirection?);

  bool? get onlyPending => (_$data['onlyPending'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('direction')) {
      final l$direction = direction;
      result$data['direction'] = l$direction == null
          ? null
          : toJson$Enum$ChannelInvitationDirection(l$direction);
    }
    if (_$data.containsKey('onlyPending')) {
      final l$onlyPending = onlyPending;
      result$data['onlyPending'] = l$onlyPending;
    }
    return result$data;
  }

  CopyWith$Variables$Query$MyReceivedChannelInvitations<
          Variables$Query$MyReceivedChannelInvitations>
      get copyWith => CopyWith$Variables$Query$MyReceivedChannelInvitations(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$MyReceivedChannelInvitations) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$direction = direction;
    final lOther$direction = other.direction;
    if (_$data.containsKey('direction') !=
        other._$data.containsKey('direction')) {
      return false;
    }
    if (l$direction != lOther$direction) {
      return false;
    }
    final l$onlyPending = onlyPending;
    final lOther$onlyPending = other.onlyPending;
    if (_$data.containsKey('onlyPending') !=
        other._$data.containsKey('onlyPending')) {
      return false;
    }
    if (l$onlyPending != lOther$onlyPending) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$direction = direction;
    final l$onlyPending = onlyPending;
    return Object.hashAll([
      _$data.containsKey('direction') ? l$direction : const {},
      _$data.containsKey('onlyPending') ? l$onlyPending : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$MyReceivedChannelInvitations<TRes> {
  factory CopyWith$Variables$Query$MyReceivedChannelInvitations(
    Variables$Query$MyReceivedChannelInvitations instance,
    TRes Function(Variables$Query$MyReceivedChannelInvitations) then,
  ) = _CopyWithImpl$Variables$Query$MyReceivedChannelInvitations;

  factory CopyWith$Variables$Query$MyReceivedChannelInvitations.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$MyReceivedChannelInvitations;

  TRes call({
    Enum$ChannelInvitationDirection? direction,
    bool? onlyPending,
  });
}

class _CopyWithImpl$Variables$Query$MyReceivedChannelInvitations<TRes>
    implements CopyWith$Variables$Query$MyReceivedChannelInvitations<TRes> {
  _CopyWithImpl$Variables$Query$MyReceivedChannelInvitations(
    this._instance,
    this._then,
  );

  final Variables$Query$MyReceivedChannelInvitations _instance;

  final TRes Function(Variables$Query$MyReceivedChannelInvitations) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? direction = _undefined,
    Object? onlyPending = _undefined,
  }) =>
      _then(Variables$Query$MyReceivedChannelInvitations._({
        ..._instance._$data,
        if (direction != _undefined)
          'direction': (direction as Enum$ChannelInvitationDirection?),
        if (onlyPending != _undefined) 'onlyPending': (onlyPending as bool?),
      }));
}

class _CopyWithStubImpl$Variables$Query$MyReceivedChannelInvitations<TRes>
    implements CopyWith$Variables$Query$MyReceivedChannelInvitations<TRes> {
  _CopyWithStubImpl$Variables$Query$MyReceivedChannelInvitations(this._res);

  TRes _res;

  call({
    Enum$ChannelInvitationDirection? direction,
    bool? onlyPending,
  }) =>
      _res;
}

class Query$MyReceivedChannelInvitations {
  Query$MyReceivedChannelInvitations({
    required this.myChannelInvitations,
    this.$__typename = 'Query',
  });

  factory Query$MyReceivedChannelInvitations.fromJson(
      Map<String, dynamic> json) {
    final l$myChannelInvitations = json['myChannelInvitations'];
    final l$$__typename = json['__typename'];
    return Query$MyReceivedChannelInvitations(
      myChannelInvitations: (l$myChannelInvitations as List<dynamic>)
          .map((e) =>
              Query$MyReceivedChannelInvitations$myChannelInvitations.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$MyReceivedChannelInvitations$myChannelInvitations>
      myChannelInvitations;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$myChannelInvitations = myChannelInvitations;
    _resultData['myChannelInvitations'] =
        l$myChannelInvitations.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$myChannelInvitations = myChannelInvitations;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$myChannelInvitations.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$MyReceivedChannelInvitations) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$myChannelInvitations = myChannelInvitations;
    final lOther$myChannelInvitations = other.myChannelInvitations;
    if (l$myChannelInvitations.length != lOther$myChannelInvitations.length) {
      return false;
    }
    for (int i = 0; i < l$myChannelInvitations.length; i++) {
      final l$myChannelInvitations$entry = l$myChannelInvitations[i];
      final lOther$myChannelInvitations$entry = lOther$myChannelInvitations[i];
      if (l$myChannelInvitations$entry != lOther$myChannelInvitations$entry) {
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

extension UtilityExtension$Query$MyReceivedChannelInvitations
    on Query$MyReceivedChannelInvitations {
  CopyWith$Query$MyReceivedChannelInvitations<
          Query$MyReceivedChannelInvitations>
      get copyWith => CopyWith$Query$MyReceivedChannelInvitations(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$MyReceivedChannelInvitations<TRes> {
  factory CopyWith$Query$MyReceivedChannelInvitations(
    Query$MyReceivedChannelInvitations instance,
    TRes Function(Query$MyReceivedChannelInvitations) then,
  ) = _CopyWithImpl$Query$MyReceivedChannelInvitations;

  factory CopyWith$Query$MyReceivedChannelInvitations.stub(TRes res) =
      _CopyWithStubImpl$Query$MyReceivedChannelInvitations;

  TRes call({
    List<Query$MyReceivedChannelInvitations$myChannelInvitations>?
        myChannelInvitations,
    String? $__typename,
  });
  TRes myChannelInvitations(
      Iterable<Query$MyReceivedChannelInvitations$myChannelInvitations> Function(
              Iterable<
                  CopyWith$Query$MyReceivedChannelInvitations$myChannelInvitations<
                      Query$MyReceivedChannelInvitations$myChannelInvitations>>)
          _fn);
}

class _CopyWithImpl$Query$MyReceivedChannelInvitations<TRes>
    implements CopyWith$Query$MyReceivedChannelInvitations<TRes> {
  _CopyWithImpl$Query$MyReceivedChannelInvitations(
    this._instance,
    this._then,
  );

  final Query$MyReceivedChannelInvitations _instance;

  final TRes Function(Query$MyReceivedChannelInvitations) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? myChannelInvitations = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MyReceivedChannelInvitations(
        myChannelInvitations:
            myChannelInvitations == _undefined || myChannelInvitations == null
                ? _instance.myChannelInvitations
                : (myChannelInvitations as List<
                    Query$MyReceivedChannelInvitations$myChannelInvitations>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes myChannelInvitations(
          Iterable<Query$MyReceivedChannelInvitations$myChannelInvitations> Function(
                  Iterable<
                      CopyWith$Query$MyReceivedChannelInvitations$myChannelInvitations<
                          Query$MyReceivedChannelInvitations$myChannelInvitations>>)
              _fn) =>
      call(
          myChannelInvitations: _fn(_instance.myChannelInvitations.map((e) =>
              CopyWith$Query$MyReceivedChannelInvitations$myChannelInvitations(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$MyReceivedChannelInvitations<TRes>
    implements CopyWith$Query$MyReceivedChannelInvitations<TRes> {
  _CopyWithStubImpl$Query$MyReceivedChannelInvitations(this._res);

  TRes _res;

  call({
    List<Query$MyReceivedChannelInvitations$myChannelInvitations>?
        myChannelInvitations,
    String? $__typename,
  }) =>
      _res;

  myChannelInvitations(_fn) => _res;
}

const documentNodeQueryMyReceivedChannelInvitations =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'MyReceivedChannelInvitations'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'direction')),
        type: NamedTypeNode(
          name: NameNode(value: 'ChannelInvitationDirection'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'onlyPending')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'myChannelInvitations'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'direction'),
            value: VariableNode(name: NameNode(value: 'direction')),
          ),
          ArgumentNode(
            name: NameNode(value: 'onlyPending'),
            value: VariableNode(name: NameNode(value: 'onlyPending')),
          ),
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
            name: NameNode(value: 'createdAt'),
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
            name: NameNode(value: 'readByRecipientAt'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'sender'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
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
                name: NameNode(value: 'jobTitle'),
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

class Query$MyReceivedChannelInvitations$myChannelInvitations {
  Query$MyReceivedChannelInvitations$myChannelInvitations({
    this.channelId,
    required this.createdAt,
    required this.id,
    this.messageText,
    required this.status,
    this.readByRecipientAt,
    required this.sender,
    this.$__typename = 'ChannelInvitation',
  });

  factory Query$MyReceivedChannelInvitations$myChannelInvitations.fromJson(
      Map<String, dynamic> json) {
    final l$channelId = json['channelId'];
    final l$createdAt = json['createdAt'];
    final l$id = json['id'];
    final l$messageText = json['messageText'];
    final l$status = json['status'];
    final l$readByRecipientAt = json['readByRecipientAt'];
    final l$sender = json['sender'];
    final l$$__typename = json['__typename'];
    return Query$MyReceivedChannelInvitations$myChannelInvitations(
      channelId: (l$channelId as String?),
      createdAt: DateTime.parse((l$createdAt as String)),
      id: (l$id as String),
      messageText: (l$messageText as String?),
      status: fromJson$Enum$ChannelInvitationStatus((l$status as String)),
      readByRecipientAt: l$readByRecipientAt == null
          ? null
          : DateTime.parse((l$readByRecipientAt as String)),
      sender: Query$MyReceivedChannelInvitations$myChannelInvitations$sender
          .fromJson((l$sender as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String? channelId;

  final DateTime createdAt;

  final String id;

  final String? messageText;

  final Enum$ChannelInvitationStatus status;

  final DateTime? readByRecipientAt;

  final Query$MyReceivedChannelInvitations$myChannelInvitations$sender sender;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$channelId = channelId;
    _resultData['channelId'] = l$channelId;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt.toIso8601String();
    final l$id = id;
    _resultData['id'] = l$id;
    final l$messageText = messageText;
    _resultData['messageText'] = l$messageText;
    final l$status = status;
    _resultData['status'] = toJson$Enum$ChannelInvitationStatus(l$status);
    final l$readByRecipientAt = readByRecipientAt;
    _resultData['readByRecipientAt'] = l$readByRecipientAt?.toIso8601String();
    final l$sender = sender;
    _resultData['sender'] = l$sender.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$channelId = channelId;
    final l$createdAt = createdAt;
    final l$id = id;
    final l$messageText = messageText;
    final l$status = status;
    final l$readByRecipientAt = readByRecipientAt;
    final l$sender = sender;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$channelId,
      l$createdAt,
      l$id,
      l$messageText,
      l$status,
      l$readByRecipientAt,
      l$sender,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$MyReceivedChannelInvitations$myChannelInvitations) ||
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
    final l$readByRecipientAt = readByRecipientAt;
    final lOther$readByRecipientAt = other.readByRecipientAt;
    if (l$readByRecipientAt != lOther$readByRecipientAt) {
      return false;
    }
    final l$sender = sender;
    final lOther$sender = other.sender;
    if (l$sender != lOther$sender) {
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

extension UtilityExtension$Query$MyReceivedChannelInvitations$myChannelInvitations
    on Query$MyReceivedChannelInvitations$myChannelInvitations {
  CopyWith$Query$MyReceivedChannelInvitations$myChannelInvitations<
          Query$MyReceivedChannelInvitations$myChannelInvitations>
      get copyWith =>
          CopyWith$Query$MyReceivedChannelInvitations$myChannelInvitations(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$MyReceivedChannelInvitations$myChannelInvitations<
    TRes> {
  factory CopyWith$Query$MyReceivedChannelInvitations$myChannelInvitations(
    Query$MyReceivedChannelInvitations$myChannelInvitations instance,
    TRes Function(Query$MyReceivedChannelInvitations$myChannelInvitations) then,
  ) = _CopyWithImpl$Query$MyReceivedChannelInvitations$myChannelInvitations;

  factory CopyWith$Query$MyReceivedChannelInvitations$myChannelInvitations.stub(
          TRes res) =
      _CopyWithStubImpl$Query$MyReceivedChannelInvitations$myChannelInvitations;

  TRes call({
    String? channelId,
    DateTime? createdAt,
    String? id,
    String? messageText,
    Enum$ChannelInvitationStatus? status,
    DateTime? readByRecipientAt,
    Query$MyReceivedChannelInvitations$myChannelInvitations$sender? sender,
    String? $__typename,
  });
  CopyWith$Query$MyReceivedChannelInvitations$myChannelInvitations$sender<TRes>
      get sender;
}

class _CopyWithImpl$Query$MyReceivedChannelInvitations$myChannelInvitations<
        TRes>
    implements
        CopyWith$Query$MyReceivedChannelInvitations$myChannelInvitations<TRes> {
  _CopyWithImpl$Query$MyReceivedChannelInvitations$myChannelInvitations(
    this._instance,
    this._then,
  );

  final Query$MyReceivedChannelInvitations$myChannelInvitations _instance;

  final TRes Function(Query$MyReceivedChannelInvitations$myChannelInvitations)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? channelId = _undefined,
    Object? createdAt = _undefined,
    Object? id = _undefined,
    Object? messageText = _undefined,
    Object? status = _undefined,
    Object? readByRecipientAt = _undefined,
    Object? sender = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MyReceivedChannelInvitations$myChannelInvitations(
        channelId: channelId == _undefined
            ? _instance.channelId
            : (channelId as String?),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as DateTime),
        id: id == _undefined || id == null ? _instance.id : (id as String),
        messageText: messageText == _undefined
            ? _instance.messageText
            : (messageText as String?),
        status: status == _undefined || status == null
            ? _instance.status
            : (status as Enum$ChannelInvitationStatus),
        readByRecipientAt: readByRecipientAt == _undefined
            ? _instance.readByRecipientAt
            : (readByRecipientAt as DateTime?),
        sender: sender == _undefined || sender == null
            ? _instance.sender
            : (sender
                as Query$MyReceivedChannelInvitations$myChannelInvitations$sender),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$MyReceivedChannelInvitations$myChannelInvitations$sender<TRes>
      get sender {
    final local$sender = _instance.sender;
    return CopyWith$Query$MyReceivedChannelInvitations$myChannelInvitations$sender(
        local$sender, (e) => call(sender: e));
  }
}

class _CopyWithStubImpl$Query$MyReceivedChannelInvitations$myChannelInvitations<
        TRes>
    implements
        CopyWith$Query$MyReceivedChannelInvitations$myChannelInvitations<TRes> {
  _CopyWithStubImpl$Query$MyReceivedChannelInvitations$myChannelInvitations(
      this._res);

  TRes _res;

  call({
    String? channelId,
    DateTime? createdAt,
    String? id,
    String? messageText,
    Enum$ChannelInvitationStatus? status,
    DateTime? readByRecipientAt,
    Query$MyReceivedChannelInvitations$myChannelInvitations$sender? sender,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$MyReceivedChannelInvitations$myChannelInvitations$sender<TRes>
      get sender =>
          CopyWith$Query$MyReceivedChannelInvitations$myChannelInvitations$sender
              .stub(_res);
}

class Query$MyReceivedChannelInvitations$myChannelInvitations$sender {
  Query$MyReceivedChannelInvitations$myChannelInvitations$sender({
    this.avatarUrl,
    this.fullName,
    this.jobTitle,
    required this.id,
    this.$__typename = 'User',
  });

  factory Query$MyReceivedChannelInvitations$myChannelInvitations$sender.fromJson(
      Map<String, dynamic> json) {
    final l$avatarUrl = json['avatarUrl'];
    final l$fullName = json['fullName'];
    final l$jobTitle = json['jobTitle'];
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$MyReceivedChannelInvitations$myChannelInvitations$sender(
      avatarUrl: (l$avatarUrl as String?),
      fullName: (l$fullName as String?),
      jobTitle: (l$jobTitle as String?),
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String? avatarUrl;

  final String? fullName;

  final String? jobTitle;

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$avatarUrl = avatarUrl;
    _resultData['avatarUrl'] = l$avatarUrl;
    final l$fullName = fullName;
    _resultData['fullName'] = l$fullName;
    final l$jobTitle = jobTitle;
    _resultData['jobTitle'] = l$jobTitle;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$avatarUrl = avatarUrl;
    final l$fullName = fullName;
    final l$jobTitle = jobTitle;
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$avatarUrl,
      l$fullName,
      l$jobTitle,
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
            is Query$MyReceivedChannelInvitations$myChannelInvitations$sender) ||
        runtimeType != other.runtimeType) {
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
    final l$jobTitle = jobTitle;
    final lOther$jobTitle = other.jobTitle;
    if (l$jobTitle != lOther$jobTitle) {
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

extension UtilityExtension$Query$MyReceivedChannelInvitations$myChannelInvitations$sender
    on Query$MyReceivedChannelInvitations$myChannelInvitations$sender {
  CopyWith$Query$MyReceivedChannelInvitations$myChannelInvitations$sender<
          Query$MyReceivedChannelInvitations$myChannelInvitations$sender>
      get copyWith =>
          CopyWith$Query$MyReceivedChannelInvitations$myChannelInvitations$sender(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$MyReceivedChannelInvitations$myChannelInvitations$sender<
    TRes> {
  factory CopyWith$Query$MyReceivedChannelInvitations$myChannelInvitations$sender(
    Query$MyReceivedChannelInvitations$myChannelInvitations$sender instance,
    TRes Function(
            Query$MyReceivedChannelInvitations$myChannelInvitations$sender)
        then,
  ) = _CopyWithImpl$Query$MyReceivedChannelInvitations$myChannelInvitations$sender;

  factory CopyWith$Query$MyReceivedChannelInvitations$myChannelInvitations$sender.stub(
          TRes res) =
      _CopyWithStubImpl$Query$MyReceivedChannelInvitations$myChannelInvitations$sender;

  TRes call({
    String? avatarUrl,
    String? fullName,
    String? jobTitle,
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$MyReceivedChannelInvitations$myChannelInvitations$sender<
        TRes>
    implements
        CopyWith$Query$MyReceivedChannelInvitations$myChannelInvitations$sender<
            TRes> {
  _CopyWithImpl$Query$MyReceivedChannelInvitations$myChannelInvitations$sender(
    this._instance,
    this._then,
  );

  final Query$MyReceivedChannelInvitations$myChannelInvitations$sender
      _instance;

  final TRes Function(
      Query$MyReceivedChannelInvitations$myChannelInvitations$sender) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? avatarUrl = _undefined,
    Object? fullName = _undefined,
    Object? jobTitle = _undefined,
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MyReceivedChannelInvitations$myChannelInvitations$sender(
        avatarUrl: avatarUrl == _undefined
            ? _instance.avatarUrl
            : (avatarUrl as String?),
        fullName:
            fullName == _undefined ? _instance.fullName : (fullName as String?),
        jobTitle:
            jobTitle == _undefined ? _instance.jobTitle : (jobTitle as String?),
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$MyReceivedChannelInvitations$myChannelInvitations$sender<
        TRes>
    implements
        CopyWith$Query$MyReceivedChannelInvitations$myChannelInvitations$sender<
            TRes> {
  _CopyWithStubImpl$Query$MyReceivedChannelInvitations$myChannelInvitations$sender(
      this._res);

  TRes _res;

  call({
    String? avatarUrl,
    String? fullName,
    String? jobTitle,
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$MySentChannelInvitations {
  factory Variables$Query$MySentChannelInvitations({
    Enum$ChannelInvitationDirection? direction,
    bool? onlyPending,
  }) =>
      Variables$Query$MySentChannelInvitations._({
        if (direction != null) r'direction': direction,
        if (onlyPending != null) r'onlyPending': onlyPending,
      });

  Variables$Query$MySentChannelInvitations._(this._$data);

  factory Variables$Query$MySentChannelInvitations.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('direction')) {
      final l$direction = data['direction'];
      result$data['direction'] = l$direction == null
          ? null
          : fromJson$Enum$ChannelInvitationDirection((l$direction as String));
    }
    if (data.containsKey('onlyPending')) {
      final l$onlyPending = data['onlyPending'];
      result$data['onlyPending'] = (l$onlyPending as bool?);
    }
    return Variables$Query$MySentChannelInvitations._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$ChannelInvitationDirection? get direction =>
      (_$data['direction'] as Enum$ChannelInvitationDirection?);

  bool? get onlyPending => (_$data['onlyPending'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('direction')) {
      final l$direction = direction;
      result$data['direction'] = l$direction == null
          ? null
          : toJson$Enum$ChannelInvitationDirection(l$direction);
    }
    if (_$data.containsKey('onlyPending')) {
      final l$onlyPending = onlyPending;
      result$data['onlyPending'] = l$onlyPending;
    }
    return result$data;
  }

  CopyWith$Variables$Query$MySentChannelInvitations<
          Variables$Query$MySentChannelInvitations>
      get copyWith => CopyWith$Variables$Query$MySentChannelInvitations(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$MySentChannelInvitations) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$direction = direction;
    final lOther$direction = other.direction;
    if (_$data.containsKey('direction') !=
        other._$data.containsKey('direction')) {
      return false;
    }
    if (l$direction != lOther$direction) {
      return false;
    }
    final l$onlyPending = onlyPending;
    final lOther$onlyPending = other.onlyPending;
    if (_$data.containsKey('onlyPending') !=
        other._$data.containsKey('onlyPending')) {
      return false;
    }
    if (l$onlyPending != lOther$onlyPending) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$direction = direction;
    final l$onlyPending = onlyPending;
    return Object.hashAll([
      _$data.containsKey('direction') ? l$direction : const {},
      _$data.containsKey('onlyPending') ? l$onlyPending : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$MySentChannelInvitations<TRes> {
  factory CopyWith$Variables$Query$MySentChannelInvitations(
    Variables$Query$MySentChannelInvitations instance,
    TRes Function(Variables$Query$MySentChannelInvitations) then,
  ) = _CopyWithImpl$Variables$Query$MySentChannelInvitations;

  factory CopyWith$Variables$Query$MySentChannelInvitations.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$MySentChannelInvitations;

  TRes call({
    Enum$ChannelInvitationDirection? direction,
    bool? onlyPending,
  });
}

class _CopyWithImpl$Variables$Query$MySentChannelInvitations<TRes>
    implements CopyWith$Variables$Query$MySentChannelInvitations<TRes> {
  _CopyWithImpl$Variables$Query$MySentChannelInvitations(
    this._instance,
    this._then,
  );

  final Variables$Query$MySentChannelInvitations _instance;

  final TRes Function(Variables$Query$MySentChannelInvitations) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? direction = _undefined,
    Object? onlyPending = _undefined,
  }) =>
      _then(Variables$Query$MySentChannelInvitations._({
        ..._instance._$data,
        if (direction != _undefined)
          'direction': (direction as Enum$ChannelInvitationDirection?),
        if (onlyPending != _undefined) 'onlyPending': (onlyPending as bool?),
      }));
}

class _CopyWithStubImpl$Variables$Query$MySentChannelInvitations<TRes>
    implements CopyWith$Variables$Query$MySentChannelInvitations<TRes> {
  _CopyWithStubImpl$Variables$Query$MySentChannelInvitations(this._res);

  TRes _res;

  call({
    Enum$ChannelInvitationDirection? direction,
    bool? onlyPending,
  }) =>
      _res;
}

class Query$MySentChannelInvitations {
  Query$MySentChannelInvitations({
    required this.myChannelInvitations,
    this.$__typename = 'Query',
  });

  factory Query$MySentChannelInvitations.fromJson(Map<String, dynamic> json) {
    final l$myChannelInvitations = json['myChannelInvitations'];
    final l$$__typename = json['__typename'];
    return Query$MySentChannelInvitations(
      myChannelInvitations: (l$myChannelInvitations as List<dynamic>)
          .map((e) =>
              Query$MySentChannelInvitations$myChannelInvitations.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$MySentChannelInvitations$myChannelInvitations>
      myChannelInvitations;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$myChannelInvitations = myChannelInvitations;
    _resultData['myChannelInvitations'] =
        l$myChannelInvitations.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$myChannelInvitations = myChannelInvitations;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$myChannelInvitations.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$MySentChannelInvitations) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$myChannelInvitations = myChannelInvitations;
    final lOther$myChannelInvitations = other.myChannelInvitations;
    if (l$myChannelInvitations.length != lOther$myChannelInvitations.length) {
      return false;
    }
    for (int i = 0; i < l$myChannelInvitations.length; i++) {
      final l$myChannelInvitations$entry = l$myChannelInvitations[i];
      final lOther$myChannelInvitations$entry = lOther$myChannelInvitations[i];
      if (l$myChannelInvitations$entry != lOther$myChannelInvitations$entry) {
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

extension UtilityExtension$Query$MySentChannelInvitations
    on Query$MySentChannelInvitations {
  CopyWith$Query$MySentChannelInvitations<Query$MySentChannelInvitations>
      get copyWith => CopyWith$Query$MySentChannelInvitations(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$MySentChannelInvitations<TRes> {
  factory CopyWith$Query$MySentChannelInvitations(
    Query$MySentChannelInvitations instance,
    TRes Function(Query$MySentChannelInvitations) then,
  ) = _CopyWithImpl$Query$MySentChannelInvitations;

  factory CopyWith$Query$MySentChannelInvitations.stub(TRes res) =
      _CopyWithStubImpl$Query$MySentChannelInvitations;

  TRes call({
    List<Query$MySentChannelInvitations$myChannelInvitations>?
        myChannelInvitations,
    String? $__typename,
  });
  TRes myChannelInvitations(
      Iterable<Query$MySentChannelInvitations$myChannelInvitations> Function(
              Iterable<
                  CopyWith$Query$MySentChannelInvitations$myChannelInvitations<
                      Query$MySentChannelInvitations$myChannelInvitations>>)
          _fn);
}

class _CopyWithImpl$Query$MySentChannelInvitations<TRes>
    implements CopyWith$Query$MySentChannelInvitations<TRes> {
  _CopyWithImpl$Query$MySentChannelInvitations(
    this._instance,
    this._then,
  );

  final Query$MySentChannelInvitations _instance;

  final TRes Function(Query$MySentChannelInvitations) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? myChannelInvitations = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MySentChannelInvitations(
        myChannelInvitations: myChannelInvitations == _undefined ||
                myChannelInvitations == null
            ? _instance.myChannelInvitations
            : (myChannelInvitations
                as List<Query$MySentChannelInvitations$myChannelInvitations>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes myChannelInvitations(
          Iterable<Query$MySentChannelInvitations$myChannelInvitations> Function(
                  Iterable<
                      CopyWith$Query$MySentChannelInvitations$myChannelInvitations<
                          Query$MySentChannelInvitations$myChannelInvitations>>)
              _fn) =>
      call(
          myChannelInvitations: _fn(_instance.myChannelInvitations.map((e) =>
              CopyWith$Query$MySentChannelInvitations$myChannelInvitations(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$MySentChannelInvitations<TRes>
    implements CopyWith$Query$MySentChannelInvitations<TRes> {
  _CopyWithStubImpl$Query$MySentChannelInvitations(this._res);

  TRes _res;

  call({
    List<Query$MySentChannelInvitations$myChannelInvitations>?
        myChannelInvitations,
    String? $__typename,
  }) =>
      _res;

  myChannelInvitations(_fn) => _res;
}

const documentNodeQueryMySentChannelInvitations = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'MySentChannelInvitations'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'direction')),
        type: NamedTypeNode(
          name: NameNode(value: 'ChannelInvitationDirection'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'onlyPending')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'myChannelInvitations'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'direction'),
            value: VariableNode(name: NameNode(value: 'direction')),
          ),
          ArgumentNode(
            name: NameNode(value: 'onlyPending'),
            value: VariableNode(name: NameNode(value: 'onlyPending')),
          ),
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
            name: NameNode(value: 'createdAt'),
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
            name: NameNode(value: 'recipient'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
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
                name: NameNode(value: 'jobTitle'),
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

class Query$MySentChannelInvitations$myChannelInvitations {
  Query$MySentChannelInvitations$myChannelInvitations({
    this.channelId,
    required this.createdAt,
    required this.id,
    this.messageText,
    required this.status,
    required this.recipient,
    this.$__typename = 'ChannelInvitation',
  });

  factory Query$MySentChannelInvitations$myChannelInvitations.fromJson(
      Map<String, dynamic> json) {
    final l$channelId = json['channelId'];
    final l$createdAt = json['createdAt'];
    final l$id = json['id'];
    final l$messageText = json['messageText'];
    final l$status = json['status'];
    final l$recipient = json['recipient'];
    final l$$__typename = json['__typename'];
    return Query$MySentChannelInvitations$myChannelInvitations(
      channelId: (l$channelId as String?),
      createdAt: DateTime.parse((l$createdAt as String)),
      id: (l$id as String),
      messageText: (l$messageText as String?),
      status: fromJson$Enum$ChannelInvitationStatus((l$status as String)),
      recipient: Query$MySentChannelInvitations$myChannelInvitations$recipient
          .fromJson((l$recipient as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String? channelId;

  final DateTime createdAt;

  final String id;

  final String? messageText;

  final Enum$ChannelInvitationStatus status;

  final Query$MySentChannelInvitations$myChannelInvitations$recipient recipient;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$channelId = channelId;
    _resultData['channelId'] = l$channelId;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt.toIso8601String();
    final l$id = id;
    _resultData['id'] = l$id;
    final l$messageText = messageText;
    _resultData['messageText'] = l$messageText;
    final l$status = status;
    _resultData['status'] = toJson$Enum$ChannelInvitationStatus(l$status);
    final l$recipient = recipient;
    _resultData['recipient'] = l$recipient.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$channelId = channelId;
    final l$createdAt = createdAt;
    final l$id = id;
    final l$messageText = messageText;
    final l$status = status;
    final l$recipient = recipient;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$channelId,
      l$createdAt,
      l$id,
      l$messageText,
      l$status,
      l$recipient,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$MySentChannelInvitations$myChannelInvitations) ||
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
    final l$recipient = recipient;
    final lOther$recipient = other.recipient;
    if (l$recipient != lOther$recipient) {
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

extension UtilityExtension$Query$MySentChannelInvitations$myChannelInvitations
    on Query$MySentChannelInvitations$myChannelInvitations {
  CopyWith$Query$MySentChannelInvitations$myChannelInvitations<
          Query$MySentChannelInvitations$myChannelInvitations>
      get copyWith =>
          CopyWith$Query$MySentChannelInvitations$myChannelInvitations(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$MySentChannelInvitations$myChannelInvitations<
    TRes> {
  factory CopyWith$Query$MySentChannelInvitations$myChannelInvitations(
    Query$MySentChannelInvitations$myChannelInvitations instance,
    TRes Function(Query$MySentChannelInvitations$myChannelInvitations) then,
  ) = _CopyWithImpl$Query$MySentChannelInvitations$myChannelInvitations;

  factory CopyWith$Query$MySentChannelInvitations$myChannelInvitations.stub(
          TRes res) =
      _CopyWithStubImpl$Query$MySentChannelInvitations$myChannelInvitations;

  TRes call({
    String? channelId,
    DateTime? createdAt,
    String? id,
    String? messageText,
    Enum$ChannelInvitationStatus? status,
    Query$MySentChannelInvitations$myChannelInvitations$recipient? recipient,
    String? $__typename,
  });
  CopyWith$Query$MySentChannelInvitations$myChannelInvitations$recipient<TRes>
      get recipient;
}

class _CopyWithImpl$Query$MySentChannelInvitations$myChannelInvitations<TRes>
    implements
        CopyWith$Query$MySentChannelInvitations$myChannelInvitations<TRes> {
  _CopyWithImpl$Query$MySentChannelInvitations$myChannelInvitations(
    this._instance,
    this._then,
  );

  final Query$MySentChannelInvitations$myChannelInvitations _instance;

  final TRes Function(Query$MySentChannelInvitations$myChannelInvitations)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? channelId = _undefined,
    Object? createdAt = _undefined,
    Object? id = _undefined,
    Object? messageText = _undefined,
    Object? status = _undefined,
    Object? recipient = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MySentChannelInvitations$myChannelInvitations(
        channelId: channelId == _undefined
            ? _instance.channelId
            : (channelId as String?),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as DateTime),
        id: id == _undefined || id == null ? _instance.id : (id as String),
        messageText: messageText == _undefined
            ? _instance.messageText
            : (messageText as String?),
        status: status == _undefined || status == null
            ? _instance.status
            : (status as Enum$ChannelInvitationStatus),
        recipient: recipient == _undefined || recipient == null
            ? _instance.recipient
            : (recipient
                as Query$MySentChannelInvitations$myChannelInvitations$recipient),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$MySentChannelInvitations$myChannelInvitations$recipient<TRes>
      get recipient {
    final local$recipient = _instance.recipient;
    return CopyWith$Query$MySentChannelInvitations$myChannelInvitations$recipient(
        local$recipient, (e) => call(recipient: e));
  }
}

class _CopyWithStubImpl$Query$MySentChannelInvitations$myChannelInvitations<
        TRes>
    implements
        CopyWith$Query$MySentChannelInvitations$myChannelInvitations<TRes> {
  _CopyWithStubImpl$Query$MySentChannelInvitations$myChannelInvitations(
      this._res);

  TRes _res;

  call({
    String? channelId,
    DateTime? createdAt,
    String? id,
    String? messageText,
    Enum$ChannelInvitationStatus? status,
    Query$MySentChannelInvitations$myChannelInvitations$recipient? recipient,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$MySentChannelInvitations$myChannelInvitations$recipient<TRes>
      get recipient =>
          CopyWith$Query$MySentChannelInvitations$myChannelInvitations$recipient
              .stub(_res);
}

class Query$MySentChannelInvitations$myChannelInvitations$recipient {
  Query$MySentChannelInvitations$myChannelInvitations$recipient({
    this.avatarUrl,
    this.fullName,
    this.jobTitle,
    required this.id,
    this.$__typename = 'User',
  });

  factory Query$MySentChannelInvitations$myChannelInvitations$recipient.fromJson(
      Map<String, dynamic> json) {
    final l$avatarUrl = json['avatarUrl'];
    final l$fullName = json['fullName'];
    final l$jobTitle = json['jobTitle'];
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$MySentChannelInvitations$myChannelInvitations$recipient(
      avatarUrl: (l$avatarUrl as String?),
      fullName: (l$fullName as String?),
      jobTitle: (l$jobTitle as String?),
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String? avatarUrl;

  final String? fullName;

  final String? jobTitle;

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$avatarUrl = avatarUrl;
    _resultData['avatarUrl'] = l$avatarUrl;
    final l$fullName = fullName;
    _resultData['fullName'] = l$fullName;
    final l$jobTitle = jobTitle;
    _resultData['jobTitle'] = l$jobTitle;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$avatarUrl = avatarUrl;
    final l$fullName = fullName;
    final l$jobTitle = jobTitle;
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$avatarUrl,
      l$fullName,
      l$jobTitle,
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
            is Query$MySentChannelInvitations$myChannelInvitations$recipient) ||
        runtimeType != other.runtimeType) {
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
    final l$jobTitle = jobTitle;
    final lOther$jobTitle = other.jobTitle;
    if (l$jobTitle != lOther$jobTitle) {
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

extension UtilityExtension$Query$MySentChannelInvitations$myChannelInvitations$recipient
    on Query$MySentChannelInvitations$myChannelInvitations$recipient {
  CopyWith$Query$MySentChannelInvitations$myChannelInvitations$recipient<
          Query$MySentChannelInvitations$myChannelInvitations$recipient>
      get copyWith =>
          CopyWith$Query$MySentChannelInvitations$myChannelInvitations$recipient(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$MySentChannelInvitations$myChannelInvitations$recipient<
    TRes> {
  factory CopyWith$Query$MySentChannelInvitations$myChannelInvitations$recipient(
    Query$MySentChannelInvitations$myChannelInvitations$recipient instance,
    TRes Function(Query$MySentChannelInvitations$myChannelInvitations$recipient)
        then,
  ) = _CopyWithImpl$Query$MySentChannelInvitations$myChannelInvitations$recipient;

  factory CopyWith$Query$MySentChannelInvitations$myChannelInvitations$recipient.stub(
          TRes res) =
      _CopyWithStubImpl$Query$MySentChannelInvitations$myChannelInvitations$recipient;

  TRes call({
    String? avatarUrl,
    String? fullName,
    String? jobTitle,
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$MySentChannelInvitations$myChannelInvitations$recipient<
        TRes>
    implements
        CopyWith$Query$MySentChannelInvitations$myChannelInvitations$recipient<
            TRes> {
  _CopyWithImpl$Query$MySentChannelInvitations$myChannelInvitations$recipient(
    this._instance,
    this._then,
  );

  final Query$MySentChannelInvitations$myChannelInvitations$recipient _instance;

  final TRes Function(
      Query$MySentChannelInvitations$myChannelInvitations$recipient) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? avatarUrl = _undefined,
    Object? fullName = _undefined,
    Object? jobTitle = _undefined,
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MySentChannelInvitations$myChannelInvitations$recipient(
        avatarUrl: avatarUrl == _undefined
            ? _instance.avatarUrl
            : (avatarUrl as String?),
        fullName:
            fullName == _undefined ? _instance.fullName : (fullName as String?),
        jobTitle:
            jobTitle == _undefined ? _instance.jobTitle : (jobTitle as String?),
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$MySentChannelInvitations$myChannelInvitations$recipient<
        TRes>
    implements
        CopyWith$Query$MySentChannelInvitations$myChannelInvitations$recipient<
            TRes> {
  _CopyWithStubImpl$Query$MySentChannelInvitations$myChannelInvitations$recipient(
      this._res);

  TRes _res;

  call({
    String? avatarUrl,
    String? fullName,
    String? jobTitle,
    String? id,
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

class Variables$Mutation$CreateChannelInvitation {
  factory Variables$Mutation$CreateChannelInvitation(
          {required Input$ChannelInvitationInput channelInvitationInput}) =>
      Variables$Mutation$CreateChannelInvitation._({
        r'channelInvitationInput': channelInvitationInput,
      });

  Variables$Mutation$CreateChannelInvitation._(this._$data);

  factory Variables$Mutation$CreateChannelInvitation.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$channelInvitationInput = data['channelInvitationInput'];
    result$data['channelInvitationInput'] =
        Input$ChannelInvitationInput.fromJson(
            (l$channelInvitationInput as Map<String, dynamic>));
    return Variables$Mutation$CreateChannelInvitation._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$ChannelInvitationInput get channelInvitationInput =>
      (_$data['channelInvitationInput'] as Input$ChannelInvitationInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$channelInvitationInput = channelInvitationInput;
    result$data['channelInvitationInput'] = l$channelInvitationInput.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$CreateChannelInvitation<
          Variables$Mutation$CreateChannelInvitation>
      get copyWith => CopyWith$Variables$Mutation$CreateChannelInvitation(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$CreateChannelInvitation) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$channelInvitationInput = channelInvitationInput;
    final lOther$channelInvitationInput = other.channelInvitationInput;
    if (l$channelInvitationInput != lOther$channelInvitationInput) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$channelInvitationInput = channelInvitationInput;
    return Object.hashAll([l$channelInvitationInput]);
  }
}

abstract class CopyWith$Variables$Mutation$CreateChannelInvitation<TRes> {
  factory CopyWith$Variables$Mutation$CreateChannelInvitation(
    Variables$Mutation$CreateChannelInvitation instance,
    TRes Function(Variables$Mutation$CreateChannelInvitation) then,
  ) = _CopyWithImpl$Variables$Mutation$CreateChannelInvitation;

  factory CopyWith$Variables$Mutation$CreateChannelInvitation.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CreateChannelInvitation;

  TRes call({Input$ChannelInvitationInput? channelInvitationInput});
}

class _CopyWithImpl$Variables$Mutation$CreateChannelInvitation<TRes>
    implements CopyWith$Variables$Mutation$CreateChannelInvitation<TRes> {
  _CopyWithImpl$Variables$Mutation$CreateChannelInvitation(
    this._instance,
    this._then,
  );

  final Variables$Mutation$CreateChannelInvitation _instance;

  final TRes Function(Variables$Mutation$CreateChannelInvitation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? channelInvitationInput = _undefined}) =>
      _then(Variables$Mutation$CreateChannelInvitation._({
        ..._instance._$data,
        if (channelInvitationInput != _undefined &&
            channelInvitationInput != null)
          'channelInvitationInput':
              (channelInvitationInput as Input$ChannelInvitationInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$CreateChannelInvitation<TRes>
    implements CopyWith$Variables$Mutation$CreateChannelInvitation<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreateChannelInvitation(this._res);

  TRes _res;

  call({Input$ChannelInvitationInput? channelInvitationInput}) => _res;
}

class Mutation$CreateChannelInvitation {
  Mutation$CreateChannelInvitation({
    required this.createChannelInvitation,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CreateChannelInvitation.fromJson(Map<String, dynamic> json) {
    final l$createChannelInvitation = json['createChannelInvitation'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateChannelInvitation(
      createChannelInvitation:
          Mutation$CreateChannelInvitation$createChannelInvitation.fromJson(
              (l$createChannelInvitation as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CreateChannelInvitation$createChannelInvitation
      createChannelInvitation;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createChannelInvitation = createChannelInvitation;
    _resultData['createChannelInvitation'] = l$createChannelInvitation.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createChannelInvitation = createChannelInvitation;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$createChannelInvitation,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CreateChannelInvitation) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$createChannelInvitation = createChannelInvitation;
    final lOther$createChannelInvitation = other.createChannelInvitation;
    if (l$createChannelInvitation != lOther$createChannelInvitation) {
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

extension UtilityExtension$Mutation$CreateChannelInvitation
    on Mutation$CreateChannelInvitation {
  CopyWith$Mutation$CreateChannelInvitation<Mutation$CreateChannelInvitation>
      get copyWith => CopyWith$Mutation$CreateChannelInvitation(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateChannelInvitation<TRes> {
  factory CopyWith$Mutation$CreateChannelInvitation(
    Mutation$CreateChannelInvitation instance,
    TRes Function(Mutation$CreateChannelInvitation) then,
  ) = _CopyWithImpl$Mutation$CreateChannelInvitation;

  factory CopyWith$Mutation$CreateChannelInvitation.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateChannelInvitation;

  TRes call({
    Mutation$CreateChannelInvitation$createChannelInvitation?
        createChannelInvitation,
    String? $__typename,
  });
  CopyWith$Mutation$CreateChannelInvitation$createChannelInvitation<TRes>
      get createChannelInvitation;
}

class _CopyWithImpl$Mutation$CreateChannelInvitation<TRes>
    implements CopyWith$Mutation$CreateChannelInvitation<TRes> {
  _CopyWithImpl$Mutation$CreateChannelInvitation(
    this._instance,
    this._then,
  );

  final Mutation$CreateChannelInvitation _instance;

  final TRes Function(Mutation$CreateChannelInvitation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createChannelInvitation = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateChannelInvitation(
        createChannelInvitation: createChannelInvitation == _undefined ||
                createChannelInvitation == null
            ? _instance.createChannelInvitation
            : (createChannelInvitation
                as Mutation$CreateChannelInvitation$createChannelInvitation),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$CreateChannelInvitation$createChannelInvitation<TRes>
      get createChannelInvitation {
    final local$createChannelInvitation = _instance.createChannelInvitation;
    return CopyWith$Mutation$CreateChannelInvitation$createChannelInvitation(
        local$createChannelInvitation, (e) => call(createChannelInvitation: e));
  }
}

class _CopyWithStubImpl$Mutation$CreateChannelInvitation<TRes>
    implements CopyWith$Mutation$CreateChannelInvitation<TRes> {
  _CopyWithStubImpl$Mutation$CreateChannelInvitation(this._res);

  TRes _res;

  call({
    Mutation$CreateChannelInvitation$createChannelInvitation?
        createChannelInvitation,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$CreateChannelInvitation$createChannelInvitation<TRes>
      get createChannelInvitation =>
          CopyWith$Mutation$CreateChannelInvitation$createChannelInvitation
              .stub(_res);
}

const documentNodeMutationCreateChannelInvitation = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'CreateChannelInvitation'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'channelInvitationInput')),
        type: NamedTypeNode(
          name: NameNode(value: 'ChannelInvitationInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'createChannelInvitation'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value:
                VariableNode(name: NameNode(value: 'channelInvitationInput')),
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

class Mutation$CreateChannelInvitation$createChannelInvitation {
  Mutation$CreateChannelInvitation$createChannelInvitation({
    required this.id,
    this.$__typename = 'ChannelInvitation',
  });

  factory Mutation$CreateChannelInvitation$createChannelInvitation.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateChannelInvitation$createChannelInvitation(
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
    if (!(other is Mutation$CreateChannelInvitation$createChannelInvitation) ||
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

extension UtilityExtension$Mutation$CreateChannelInvitation$createChannelInvitation
    on Mutation$CreateChannelInvitation$createChannelInvitation {
  CopyWith$Mutation$CreateChannelInvitation$createChannelInvitation<
          Mutation$CreateChannelInvitation$createChannelInvitation>
      get copyWith =>
          CopyWith$Mutation$CreateChannelInvitation$createChannelInvitation(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateChannelInvitation$createChannelInvitation<
    TRes> {
  factory CopyWith$Mutation$CreateChannelInvitation$createChannelInvitation(
    Mutation$CreateChannelInvitation$createChannelInvitation instance,
    TRes Function(Mutation$CreateChannelInvitation$createChannelInvitation)
        then,
  ) = _CopyWithImpl$Mutation$CreateChannelInvitation$createChannelInvitation;

  factory CopyWith$Mutation$CreateChannelInvitation$createChannelInvitation.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$CreateChannelInvitation$createChannelInvitation;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$CreateChannelInvitation$createChannelInvitation<
        TRes>
    implements
        CopyWith$Mutation$CreateChannelInvitation$createChannelInvitation<
            TRes> {
  _CopyWithImpl$Mutation$CreateChannelInvitation$createChannelInvitation(
    this._instance,
    this._then,
  );

  final Mutation$CreateChannelInvitation$createChannelInvitation _instance;

  final TRes Function(Mutation$CreateChannelInvitation$createChannelInvitation)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateChannelInvitation$createChannelInvitation(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$CreateChannelInvitation$createChannelInvitation<
        TRes>
    implements
        CopyWith$Mutation$CreateChannelInvitation$createChannelInvitation<
            TRes> {
  _CopyWithStubImpl$Mutation$CreateChannelInvitation$createChannelInvitation(
      this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

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

class Variables$Mutation$DeleteChannelInvitation {
  factory Variables$Mutation$DeleteChannelInvitation({
    required bool deletePhysically,
    required String channelInvitationId,
  }) =>
      Variables$Mutation$DeleteChannelInvitation._({
        r'deletePhysically': deletePhysically,
        r'channelInvitationId': channelInvitationId,
      });

  Variables$Mutation$DeleteChannelInvitation._(this._$data);

  factory Variables$Mutation$DeleteChannelInvitation.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$deletePhysically = data['deletePhysically'];
    result$data['deletePhysically'] = (l$deletePhysically as bool);
    final l$channelInvitationId = data['channelInvitationId'];
    result$data['channelInvitationId'] = (l$channelInvitationId as String);
    return Variables$Mutation$DeleteChannelInvitation._(result$data);
  }

  Map<String, dynamic> _$data;

  bool get deletePhysically => (_$data['deletePhysically'] as bool);

  String get channelInvitationId => (_$data['channelInvitationId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$deletePhysically = deletePhysically;
    result$data['deletePhysically'] = l$deletePhysically;
    final l$channelInvitationId = channelInvitationId;
    result$data['channelInvitationId'] = l$channelInvitationId;
    return result$data;
  }

  CopyWith$Variables$Mutation$DeleteChannelInvitation<
          Variables$Mutation$DeleteChannelInvitation>
      get copyWith => CopyWith$Variables$Mutation$DeleteChannelInvitation(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$DeleteChannelInvitation) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deletePhysically = deletePhysically;
    final lOther$deletePhysically = other.deletePhysically;
    if (l$deletePhysically != lOther$deletePhysically) {
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
    final l$deletePhysically = deletePhysically;
    final l$channelInvitationId = channelInvitationId;
    return Object.hashAll([
      l$deletePhysically,
      l$channelInvitationId,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$DeleteChannelInvitation<TRes> {
  factory CopyWith$Variables$Mutation$DeleteChannelInvitation(
    Variables$Mutation$DeleteChannelInvitation instance,
    TRes Function(Variables$Mutation$DeleteChannelInvitation) then,
  ) = _CopyWithImpl$Variables$Mutation$DeleteChannelInvitation;

  factory CopyWith$Variables$Mutation$DeleteChannelInvitation.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$DeleteChannelInvitation;

  TRes call({
    bool? deletePhysically,
    String? channelInvitationId,
  });
}

class _CopyWithImpl$Variables$Mutation$DeleteChannelInvitation<TRes>
    implements CopyWith$Variables$Mutation$DeleteChannelInvitation<TRes> {
  _CopyWithImpl$Variables$Mutation$DeleteChannelInvitation(
    this._instance,
    this._then,
  );

  final Variables$Mutation$DeleteChannelInvitation _instance;

  final TRes Function(Variables$Mutation$DeleteChannelInvitation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deletePhysically = _undefined,
    Object? channelInvitationId = _undefined,
  }) =>
      _then(Variables$Mutation$DeleteChannelInvitation._({
        ..._instance._$data,
        if (deletePhysically != _undefined && deletePhysically != null)
          'deletePhysically': (deletePhysically as bool),
        if (channelInvitationId != _undefined && channelInvitationId != null)
          'channelInvitationId': (channelInvitationId as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$DeleteChannelInvitation<TRes>
    implements CopyWith$Variables$Mutation$DeleteChannelInvitation<TRes> {
  _CopyWithStubImpl$Variables$Mutation$DeleteChannelInvitation(this._res);

  TRes _res;

  call({
    bool? deletePhysically,
    String? channelInvitationId,
  }) =>
      _res;
}

class Mutation$DeleteChannelInvitation {
  Mutation$DeleteChannelInvitation({
    required this.deleteChannelInvitation,
    this.$__typename = 'Mutation',
  });

  factory Mutation$DeleteChannelInvitation.fromJson(Map<String, dynamic> json) {
    final l$deleteChannelInvitation = json['deleteChannelInvitation'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteChannelInvitation(
      deleteChannelInvitation: (l$deleteChannelInvitation as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String deleteChannelInvitation;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteChannelInvitation = deleteChannelInvitation;
    _resultData['deleteChannelInvitation'] = l$deleteChannelInvitation;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteChannelInvitation = deleteChannelInvitation;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$deleteChannelInvitation,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$DeleteChannelInvitation) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteChannelInvitation = deleteChannelInvitation;
    final lOther$deleteChannelInvitation = other.deleteChannelInvitation;
    if (l$deleteChannelInvitation != lOther$deleteChannelInvitation) {
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

extension UtilityExtension$Mutation$DeleteChannelInvitation
    on Mutation$DeleteChannelInvitation {
  CopyWith$Mutation$DeleteChannelInvitation<Mutation$DeleteChannelInvitation>
      get copyWith => CopyWith$Mutation$DeleteChannelInvitation(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$DeleteChannelInvitation<TRes> {
  factory CopyWith$Mutation$DeleteChannelInvitation(
    Mutation$DeleteChannelInvitation instance,
    TRes Function(Mutation$DeleteChannelInvitation) then,
  ) = _CopyWithImpl$Mutation$DeleteChannelInvitation;

  factory CopyWith$Mutation$DeleteChannelInvitation.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteChannelInvitation;

  TRes call({
    String? deleteChannelInvitation,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$DeleteChannelInvitation<TRes>
    implements CopyWith$Mutation$DeleteChannelInvitation<TRes> {
  _CopyWithImpl$Mutation$DeleteChannelInvitation(
    this._instance,
    this._then,
  );

  final Mutation$DeleteChannelInvitation _instance;

  final TRes Function(Mutation$DeleteChannelInvitation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleteChannelInvitation = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteChannelInvitation(
        deleteChannelInvitation: deleteChannelInvitation == _undefined ||
                deleteChannelInvitation == null
            ? _instance.deleteChannelInvitation
            : (deleteChannelInvitation as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$DeleteChannelInvitation<TRes>
    implements CopyWith$Mutation$DeleteChannelInvitation<TRes> {
  _CopyWithStubImpl$Mutation$DeleteChannelInvitation(this._res);

  TRes _res;

  call({
    String? deleteChannelInvitation,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeMutationDeleteChannelInvitation = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'DeleteChannelInvitation'),
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
        variable: VariableNode(name: NameNode(value: 'channelInvitationId')),
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
        name: NameNode(value: 'deleteChannelInvitation'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'deletePhysically'),
            value: VariableNode(name: NameNode(value: 'deletePhysically')),
          ),
          ArgumentNode(
            name: NameNode(value: 'channelInvitationId'),
            value: VariableNode(name: NameNode(value: 'channelInvitationId')),
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

class Variables$Mutation$MarkChannelInvitationAsSeenByMe {
  factory Variables$Mutation$MarkChannelInvitationAsSeenByMe(
          {required Input$ChannelInvitationInput channelInvitationInput}) =>
      Variables$Mutation$MarkChannelInvitationAsSeenByMe._({
        r'channelInvitationInput': channelInvitationInput,
      });

  Variables$Mutation$MarkChannelInvitationAsSeenByMe._(this._$data);

  factory Variables$Mutation$MarkChannelInvitationAsSeenByMe.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$channelInvitationInput = data['channelInvitationInput'];
    result$data['channelInvitationInput'] =
        Input$ChannelInvitationInput.fromJson(
            (l$channelInvitationInput as Map<String, dynamic>));
    return Variables$Mutation$MarkChannelInvitationAsSeenByMe._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$ChannelInvitationInput get channelInvitationInput =>
      (_$data['channelInvitationInput'] as Input$ChannelInvitationInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$channelInvitationInput = channelInvitationInput;
    result$data['channelInvitationInput'] = l$channelInvitationInput.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$MarkChannelInvitationAsSeenByMe<
          Variables$Mutation$MarkChannelInvitationAsSeenByMe>
      get copyWith =>
          CopyWith$Variables$Mutation$MarkChannelInvitationAsSeenByMe(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$MarkChannelInvitationAsSeenByMe) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$channelInvitationInput = channelInvitationInput;
    final lOther$channelInvitationInput = other.channelInvitationInput;
    if (l$channelInvitationInput != lOther$channelInvitationInput) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$channelInvitationInput = channelInvitationInput;
    return Object.hashAll([l$channelInvitationInput]);
  }
}

abstract class CopyWith$Variables$Mutation$MarkChannelInvitationAsSeenByMe<
    TRes> {
  factory CopyWith$Variables$Mutation$MarkChannelInvitationAsSeenByMe(
    Variables$Mutation$MarkChannelInvitationAsSeenByMe instance,
    TRes Function(Variables$Mutation$MarkChannelInvitationAsSeenByMe) then,
  ) = _CopyWithImpl$Variables$Mutation$MarkChannelInvitationAsSeenByMe;

  factory CopyWith$Variables$Mutation$MarkChannelInvitationAsSeenByMe.stub(
          TRes res) =
      _CopyWithStubImpl$Variables$Mutation$MarkChannelInvitationAsSeenByMe;

  TRes call({Input$ChannelInvitationInput? channelInvitationInput});
}

class _CopyWithImpl$Variables$Mutation$MarkChannelInvitationAsSeenByMe<TRes>
    implements
        CopyWith$Variables$Mutation$MarkChannelInvitationAsSeenByMe<TRes> {
  _CopyWithImpl$Variables$Mutation$MarkChannelInvitationAsSeenByMe(
    this._instance,
    this._then,
  );

  final Variables$Mutation$MarkChannelInvitationAsSeenByMe _instance;

  final TRes Function(Variables$Mutation$MarkChannelInvitationAsSeenByMe) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? channelInvitationInput = _undefined}) =>
      _then(Variables$Mutation$MarkChannelInvitationAsSeenByMe._({
        ..._instance._$data,
        if (channelInvitationInput != _undefined &&
            channelInvitationInput != null)
          'channelInvitationInput':
              (channelInvitationInput as Input$ChannelInvitationInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$MarkChannelInvitationAsSeenByMe<TRes>
    implements
        CopyWith$Variables$Mutation$MarkChannelInvitationAsSeenByMe<TRes> {
  _CopyWithStubImpl$Variables$Mutation$MarkChannelInvitationAsSeenByMe(
      this._res);

  TRes _res;

  call({Input$ChannelInvitationInput? channelInvitationInput}) => _res;
}

class Mutation$MarkChannelInvitationAsSeenByMe {
  Mutation$MarkChannelInvitationAsSeenByMe({
    required this.updateChannelInvitation,
    this.$__typename = 'Mutation',
  });

  factory Mutation$MarkChannelInvitationAsSeenByMe.fromJson(
      Map<String, dynamic> json) {
    final l$updateChannelInvitation = json['updateChannelInvitation'];
    final l$$__typename = json['__typename'];
    return Mutation$MarkChannelInvitationAsSeenByMe(
      updateChannelInvitation: (l$updateChannelInvitation as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String updateChannelInvitation;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateChannelInvitation = updateChannelInvitation;
    _resultData['updateChannelInvitation'] = l$updateChannelInvitation;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateChannelInvitation = updateChannelInvitation;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateChannelInvitation,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$MarkChannelInvitationAsSeenByMe) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateChannelInvitation = updateChannelInvitation;
    final lOther$updateChannelInvitation = other.updateChannelInvitation;
    if (l$updateChannelInvitation != lOther$updateChannelInvitation) {
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

extension UtilityExtension$Mutation$MarkChannelInvitationAsSeenByMe
    on Mutation$MarkChannelInvitationAsSeenByMe {
  CopyWith$Mutation$MarkChannelInvitationAsSeenByMe<
          Mutation$MarkChannelInvitationAsSeenByMe>
      get copyWith => CopyWith$Mutation$MarkChannelInvitationAsSeenByMe(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$MarkChannelInvitationAsSeenByMe<TRes> {
  factory CopyWith$Mutation$MarkChannelInvitationAsSeenByMe(
    Mutation$MarkChannelInvitationAsSeenByMe instance,
    TRes Function(Mutation$MarkChannelInvitationAsSeenByMe) then,
  ) = _CopyWithImpl$Mutation$MarkChannelInvitationAsSeenByMe;

  factory CopyWith$Mutation$MarkChannelInvitationAsSeenByMe.stub(TRes res) =
      _CopyWithStubImpl$Mutation$MarkChannelInvitationAsSeenByMe;

  TRes call({
    String? updateChannelInvitation,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$MarkChannelInvitationAsSeenByMe<TRes>
    implements CopyWith$Mutation$MarkChannelInvitationAsSeenByMe<TRes> {
  _CopyWithImpl$Mutation$MarkChannelInvitationAsSeenByMe(
    this._instance,
    this._then,
  );

  final Mutation$MarkChannelInvitationAsSeenByMe _instance;

  final TRes Function(Mutation$MarkChannelInvitationAsSeenByMe) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateChannelInvitation = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$MarkChannelInvitationAsSeenByMe(
        updateChannelInvitation: updateChannelInvitation == _undefined ||
                updateChannelInvitation == null
            ? _instance.updateChannelInvitation
            : (updateChannelInvitation as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$MarkChannelInvitationAsSeenByMe<TRes>
    implements CopyWith$Mutation$MarkChannelInvitationAsSeenByMe<TRes> {
  _CopyWithStubImpl$Mutation$MarkChannelInvitationAsSeenByMe(this._res);

  TRes _res;

  call({
    String? updateChannelInvitation,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeMutationMarkChannelInvitationAsSeenByMe =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'MarkChannelInvitationAsSeenByMe'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'channelInvitationInput')),
        type: NamedTypeNode(
          name: NameNode(value: 'ChannelInvitationInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updateChannelInvitation'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value:
                VariableNode(name: NameNode(value: 'channelInvitationInput')),
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
