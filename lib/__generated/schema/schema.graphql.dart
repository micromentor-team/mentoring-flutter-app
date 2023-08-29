// GENERATED WITH GRAPHQL_CODEGEN
// DO NOT MODIFY
// ignore_for_file: type=lint

class Input$FindUserByIdentOptions {
  factory Input$FindUserByIdentOptions({
    bool? includeDeleted,
    List<String>? includeGroupProfiles,
  }) =>
      Input$FindUserByIdentOptions._({
        if (includeDeleted != null) r'includeDeleted': includeDeleted,
        if (includeGroupProfiles != null)
          r'includeGroupProfiles': includeGroupProfiles,
      });

  Input$FindUserByIdentOptions._(this._$data);

  factory Input$FindUserByIdentOptions.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('includeDeleted')) {
      final l$includeDeleted = data['includeDeleted'];
      result$data['includeDeleted'] = (l$includeDeleted as bool?);
    }
    if (data.containsKey('includeGroupProfiles')) {
      final l$includeGroupProfiles = data['includeGroupProfiles'];
      result$data['includeGroupProfiles'] =
          (l$includeGroupProfiles as List<dynamic>?)
              ?.map((e) => (e as String))
              .toList();
    }
    return Input$FindUserByIdentOptions._(result$data);
  }

  Map<String, dynamic> _$data;

  bool? get includeDeleted => (_$data['includeDeleted'] as bool?);
  List<String>? get includeGroupProfiles =>
      (_$data['includeGroupProfiles'] as List<String>?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('includeDeleted')) {
      final l$includeDeleted = includeDeleted;
      result$data['includeDeleted'] = l$includeDeleted;
    }
    if (_$data.containsKey('includeGroupProfiles')) {
      final l$includeGroupProfiles = includeGroupProfiles;
      result$data['includeGroupProfiles'] =
          l$includeGroupProfiles?.map((e) => e).toList();
    }
    return result$data;
  }

  CopyWith$Input$FindUserByIdentOptions<Input$FindUserByIdentOptions>
      get copyWith => CopyWith$Input$FindUserByIdentOptions(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$FindUserByIdentOptions) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$includeDeleted = includeDeleted;
    final lOther$includeDeleted = other.includeDeleted;
    if (_$data.containsKey('includeDeleted') !=
        other._$data.containsKey('includeDeleted')) {
      return false;
    }
    if (l$includeDeleted != lOther$includeDeleted) {
      return false;
    }
    final l$includeGroupProfiles = includeGroupProfiles;
    final lOther$includeGroupProfiles = other.includeGroupProfiles;
    if (_$data.containsKey('includeGroupProfiles') !=
        other._$data.containsKey('includeGroupProfiles')) {
      return false;
    }
    if (l$includeGroupProfiles != null && lOther$includeGroupProfiles != null) {
      if (l$includeGroupProfiles.length != lOther$includeGroupProfiles.length) {
        return false;
      }
      for (int i = 0; i < l$includeGroupProfiles.length; i++) {
        final l$includeGroupProfiles$entry = l$includeGroupProfiles[i];
        final lOther$includeGroupProfiles$entry =
            lOther$includeGroupProfiles[i];
        if (l$includeGroupProfiles$entry != lOther$includeGroupProfiles$entry) {
          return false;
        }
      }
    } else if (l$includeGroupProfiles != lOther$includeGroupProfiles) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$includeDeleted = includeDeleted;
    final l$includeGroupProfiles = includeGroupProfiles;
    return Object.hashAll([
      _$data.containsKey('includeDeleted') ? l$includeDeleted : const {},
      _$data.containsKey('includeGroupProfiles')
          ? l$includeGroupProfiles == null
              ? null
              : Object.hashAll(l$includeGroupProfiles.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$FindUserByIdentOptions<TRes> {
  factory CopyWith$Input$FindUserByIdentOptions(
    Input$FindUserByIdentOptions instance,
    TRes Function(Input$FindUserByIdentOptions) then,
  ) = _CopyWithImpl$Input$FindUserByIdentOptions;

  factory CopyWith$Input$FindUserByIdentOptions.stub(TRes res) =
      _CopyWithStubImpl$Input$FindUserByIdentOptions;

  TRes call({
    bool? includeDeleted,
    List<String>? includeGroupProfiles,
  });
}

class _CopyWithImpl$Input$FindUserByIdentOptions<TRes>
    implements CopyWith$Input$FindUserByIdentOptions<TRes> {
  _CopyWithImpl$Input$FindUserByIdentOptions(
    this._instance,
    this._then,
  );

  final Input$FindUserByIdentOptions _instance;

  final TRes Function(Input$FindUserByIdentOptions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? includeDeleted = _undefined,
    Object? includeGroupProfiles = _undefined,
  }) =>
      _then(Input$FindUserByIdentOptions._({
        ..._instance._$data,
        if (includeDeleted != _undefined)
          'includeDeleted': (includeDeleted as bool?),
        if (includeGroupProfiles != _undefined)
          'includeGroupProfiles': (includeGroupProfiles as List<String>?),
      }));
}

class _CopyWithStubImpl$Input$FindUserByIdentOptions<TRes>
    implements CopyWith$Input$FindUserByIdentOptions<TRes> {
  _CopyWithStubImpl$Input$FindUserByIdentOptions(this._res);

  TRes _res;

  call({
    bool? includeDeleted,
    List<String>? includeGroupProfiles,
  }) =>
      _res;
}

class Input$FindObjectsOptions {
  factory Input$FindObjectsOptions({
    int? limit,
    List<Input$SortItem>? sort,
    int? skip,
    bool? timeout,
    bool? tailable,
    bool? awaitData,
    int? batchSize,
    bool? returnKey,
    int? maxTimeMS,
    int? maxAwaitTimeMS,
    bool? noCursorTimeout,
    bool? singleBatch,
    bool? allowPartialResults,
    bool? showRecordId,
    bool? includeDeleted,
    bool? includeArchived,
  }) =>
      Input$FindObjectsOptions._({
        if (limit != null) r'limit': limit,
        if (sort != null) r'sort': sort,
        if (skip != null) r'skip': skip,
        if (timeout != null) r'timeout': timeout,
        if (tailable != null) r'tailable': tailable,
        if (awaitData != null) r'awaitData': awaitData,
        if (batchSize != null) r'batchSize': batchSize,
        if (returnKey != null) r'returnKey': returnKey,
        if (maxTimeMS != null) r'maxTimeMS': maxTimeMS,
        if (maxAwaitTimeMS != null) r'maxAwaitTimeMS': maxAwaitTimeMS,
        if (noCursorTimeout != null) r'noCursorTimeout': noCursorTimeout,
        if (singleBatch != null) r'singleBatch': singleBatch,
        if (allowPartialResults != null)
          r'allowPartialResults': allowPartialResults,
        if (showRecordId != null) r'showRecordId': showRecordId,
        if (includeDeleted != null) r'includeDeleted': includeDeleted,
        if (includeArchived != null) r'includeArchived': includeArchived,
      });

  Input$FindObjectsOptions._(this._$data);

  factory Input$FindObjectsOptions.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int?);
    }
    if (data.containsKey('sort')) {
      final l$sort = data['sort'];
      result$data['sort'] = (l$sort as List<dynamic>?)
          ?.map((e) => Input$SortItem.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('skip')) {
      final l$skip = data['skip'];
      result$data['skip'] = (l$skip as int?);
    }
    if (data.containsKey('timeout')) {
      final l$timeout = data['timeout'];
      result$data['timeout'] = (l$timeout as bool?);
    }
    if (data.containsKey('tailable')) {
      final l$tailable = data['tailable'];
      result$data['tailable'] = (l$tailable as bool?);
    }
    if (data.containsKey('awaitData')) {
      final l$awaitData = data['awaitData'];
      result$data['awaitData'] = (l$awaitData as bool?);
    }
    if (data.containsKey('batchSize')) {
      final l$batchSize = data['batchSize'];
      result$data['batchSize'] = (l$batchSize as int?);
    }
    if (data.containsKey('returnKey')) {
      final l$returnKey = data['returnKey'];
      result$data['returnKey'] = (l$returnKey as bool?);
    }
    if (data.containsKey('maxTimeMS')) {
      final l$maxTimeMS = data['maxTimeMS'];
      result$data['maxTimeMS'] = (l$maxTimeMS as int?);
    }
    if (data.containsKey('maxAwaitTimeMS')) {
      final l$maxAwaitTimeMS = data['maxAwaitTimeMS'];
      result$data['maxAwaitTimeMS'] = (l$maxAwaitTimeMS as int?);
    }
    if (data.containsKey('noCursorTimeout')) {
      final l$noCursorTimeout = data['noCursorTimeout'];
      result$data['noCursorTimeout'] = (l$noCursorTimeout as bool?);
    }
    if (data.containsKey('singleBatch')) {
      final l$singleBatch = data['singleBatch'];
      result$data['singleBatch'] = (l$singleBatch as bool?);
    }
    if (data.containsKey('allowPartialResults')) {
      final l$allowPartialResults = data['allowPartialResults'];
      result$data['allowPartialResults'] = (l$allowPartialResults as bool?);
    }
    if (data.containsKey('showRecordId')) {
      final l$showRecordId = data['showRecordId'];
      result$data['showRecordId'] = (l$showRecordId as bool?);
    }
    if (data.containsKey('includeDeleted')) {
      final l$includeDeleted = data['includeDeleted'];
      result$data['includeDeleted'] = (l$includeDeleted as bool?);
    }
    if (data.containsKey('includeArchived')) {
      final l$includeArchived = data['includeArchived'];
      result$data['includeArchived'] = (l$includeArchived as bool?);
    }
    return Input$FindObjectsOptions._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get limit => (_$data['limit'] as int?);
  List<Input$SortItem>? get sort => (_$data['sort'] as List<Input$SortItem>?);
  int? get skip => (_$data['skip'] as int?);
  bool? get timeout => (_$data['timeout'] as bool?);
  bool? get tailable => (_$data['tailable'] as bool?);
  bool? get awaitData => (_$data['awaitData'] as bool?);
  int? get batchSize => (_$data['batchSize'] as int?);
  bool? get returnKey => (_$data['returnKey'] as bool?);
  int? get maxTimeMS => (_$data['maxTimeMS'] as int?);
  int? get maxAwaitTimeMS => (_$data['maxAwaitTimeMS'] as int?);
  bool? get noCursorTimeout => (_$data['noCursorTimeout'] as bool?);
  bool? get singleBatch => (_$data['singleBatch'] as bool?);
  bool? get allowPartialResults => (_$data['allowPartialResults'] as bool?);
  bool? get showRecordId => (_$data['showRecordId'] as bool?);
  bool? get includeDeleted => (_$data['includeDeleted'] as bool?);
  bool? get includeArchived => (_$data['includeArchived'] as bool?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('limit')) {
      final l$limit = limit;
      result$data['limit'] = l$limit;
    }
    if (_$data.containsKey('sort')) {
      final l$sort = sort;
      result$data['sort'] = l$sort?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('skip')) {
      final l$skip = skip;
      result$data['skip'] = l$skip;
    }
    if (_$data.containsKey('timeout')) {
      final l$timeout = timeout;
      result$data['timeout'] = l$timeout;
    }
    if (_$data.containsKey('tailable')) {
      final l$tailable = tailable;
      result$data['tailable'] = l$tailable;
    }
    if (_$data.containsKey('awaitData')) {
      final l$awaitData = awaitData;
      result$data['awaitData'] = l$awaitData;
    }
    if (_$data.containsKey('batchSize')) {
      final l$batchSize = batchSize;
      result$data['batchSize'] = l$batchSize;
    }
    if (_$data.containsKey('returnKey')) {
      final l$returnKey = returnKey;
      result$data['returnKey'] = l$returnKey;
    }
    if (_$data.containsKey('maxTimeMS')) {
      final l$maxTimeMS = maxTimeMS;
      result$data['maxTimeMS'] = l$maxTimeMS;
    }
    if (_$data.containsKey('maxAwaitTimeMS')) {
      final l$maxAwaitTimeMS = maxAwaitTimeMS;
      result$data['maxAwaitTimeMS'] = l$maxAwaitTimeMS;
    }
    if (_$data.containsKey('noCursorTimeout')) {
      final l$noCursorTimeout = noCursorTimeout;
      result$data['noCursorTimeout'] = l$noCursorTimeout;
    }
    if (_$data.containsKey('singleBatch')) {
      final l$singleBatch = singleBatch;
      result$data['singleBatch'] = l$singleBatch;
    }
    if (_$data.containsKey('allowPartialResults')) {
      final l$allowPartialResults = allowPartialResults;
      result$data['allowPartialResults'] = l$allowPartialResults;
    }
    if (_$data.containsKey('showRecordId')) {
      final l$showRecordId = showRecordId;
      result$data['showRecordId'] = l$showRecordId;
    }
    if (_$data.containsKey('includeDeleted')) {
      final l$includeDeleted = includeDeleted;
      result$data['includeDeleted'] = l$includeDeleted;
    }
    if (_$data.containsKey('includeArchived')) {
      final l$includeArchived = includeArchived;
      result$data['includeArchived'] = l$includeArchived;
    }
    return result$data;
  }

  CopyWith$Input$FindObjectsOptions<Input$FindObjectsOptions> get copyWith =>
      CopyWith$Input$FindObjectsOptions(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$FindObjectsOptions) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$limit = limit;
    final lOther$limit = other.limit;
    if (_$data.containsKey('limit') != other._$data.containsKey('limit')) {
      return false;
    }
    if (l$limit != lOther$limit) {
      return false;
    }
    final l$sort = sort;
    final lOther$sort = other.sort;
    if (_$data.containsKey('sort') != other._$data.containsKey('sort')) {
      return false;
    }
    if (l$sort != null && lOther$sort != null) {
      if (l$sort.length != lOther$sort.length) {
        return false;
      }
      for (int i = 0; i < l$sort.length; i++) {
        final l$sort$entry = l$sort[i];
        final lOther$sort$entry = lOther$sort[i];
        if (l$sort$entry != lOther$sort$entry) {
          return false;
        }
      }
    } else if (l$sort != lOther$sort) {
      return false;
    }
    final l$skip = skip;
    final lOther$skip = other.skip;
    if (_$data.containsKey('skip') != other._$data.containsKey('skip')) {
      return false;
    }
    if (l$skip != lOther$skip) {
      return false;
    }
    final l$timeout = timeout;
    final lOther$timeout = other.timeout;
    if (_$data.containsKey('timeout') != other._$data.containsKey('timeout')) {
      return false;
    }
    if (l$timeout != lOther$timeout) {
      return false;
    }
    final l$tailable = tailable;
    final lOther$tailable = other.tailable;
    if (_$data.containsKey('tailable') !=
        other._$data.containsKey('tailable')) {
      return false;
    }
    if (l$tailable != lOther$tailable) {
      return false;
    }
    final l$awaitData = awaitData;
    final lOther$awaitData = other.awaitData;
    if (_$data.containsKey('awaitData') !=
        other._$data.containsKey('awaitData')) {
      return false;
    }
    if (l$awaitData != lOther$awaitData) {
      return false;
    }
    final l$batchSize = batchSize;
    final lOther$batchSize = other.batchSize;
    if (_$data.containsKey('batchSize') !=
        other._$data.containsKey('batchSize')) {
      return false;
    }
    if (l$batchSize != lOther$batchSize) {
      return false;
    }
    final l$returnKey = returnKey;
    final lOther$returnKey = other.returnKey;
    if (_$data.containsKey('returnKey') !=
        other._$data.containsKey('returnKey')) {
      return false;
    }
    if (l$returnKey != lOther$returnKey) {
      return false;
    }
    final l$maxTimeMS = maxTimeMS;
    final lOther$maxTimeMS = other.maxTimeMS;
    if (_$data.containsKey('maxTimeMS') !=
        other._$data.containsKey('maxTimeMS')) {
      return false;
    }
    if (l$maxTimeMS != lOther$maxTimeMS) {
      return false;
    }
    final l$maxAwaitTimeMS = maxAwaitTimeMS;
    final lOther$maxAwaitTimeMS = other.maxAwaitTimeMS;
    if (_$data.containsKey('maxAwaitTimeMS') !=
        other._$data.containsKey('maxAwaitTimeMS')) {
      return false;
    }
    if (l$maxAwaitTimeMS != lOther$maxAwaitTimeMS) {
      return false;
    }
    final l$noCursorTimeout = noCursorTimeout;
    final lOther$noCursorTimeout = other.noCursorTimeout;
    if (_$data.containsKey('noCursorTimeout') !=
        other._$data.containsKey('noCursorTimeout')) {
      return false;
    }
    if (l$noCursorTimeout != lOther$noCursorTimeout) {
      return false;
    }
    final l$singleBatch = singleBatch;
    final lOther$singleBatch = other.singleBatch;
    if (_$data.containsKey('singleBatch') !=
        other._$data.containsKey('singleBatch')) {
      return false;
    }
    if (l$singleBatch != lOther$singleBatch) {
      return false;
    }
    final l$allowPartialResults = allowPartialResults;
    final lOther$allowPartialResults = other.allowPartialResults;
    if (_$data.containsKey('allowPartialResults') !=
        other._$data.containsKey('allowPartialResults')) {
      return false;
    }
    if (l$allowPartialResults != lOther$allowPartialResults) {
      return false;
    }
    final l$showRecordId = showRecordId;
    final lOther$showRecordId = other.showRecordId;
    if (_$data.containsKey('showRecordId') !=
        other._$data.containsKey('showRecordId')) {
      return false;
    }
    if (l$showRecordId != lOther$showRecordId) {
      return false;
    }
    final l$includeDeleted = includeDeleted;
    final lOther$includeDeleted = other.includeDeleted;
    if (_$data.containsKey('includeDeleted') !=
        other._$data.containsKey('includeDeleted')) {
      return false;
    }
    if (l$includeDeleted != lOther$includeDeleted) {
      return false;
    }
    final l$includeArchived = includeArchived;
    final lOther$includeArchived = other.includeArchived;
    if (_$data.containsKey('includeArchived') !=
        other._$data.containsKey('includeArchived')) {
      return false;
    }
    if (l$includeArchived != lOther$includeArchived) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$limit = limit;
    final l$sort = sort;
    final l$skip = skip;
    final l$timeout = timeout;
    final l$tailable = tailable;
    final l$awaitData = awaitData;
    final l$batchSize = batchSize;
    final l$returnKey = returnKey;
    final l$maxTimeMS = maxTimeMS;
    final l$maxAwaitTimeMS = maxAwaitTimeMS;
    final l$noCursorTimeout = noCursorTimeout;
    final l$singleBatch = singleBatch;
    final l$allowPartialResults = allowPartialResults;
    final l$showRecordId = showRecordId;
    final l$includeDeleted = includeDeleted;
    final l$includeArchived = includeArchived;
    return Object.hashAll([
      _$data.containsKey('limit') ? l$limit : const {},
      _$data.containsKey('sort')
          ? l$sort == null
              ? null
              : Object.hashAll(l$sort.map((v) => v))
          : const {},
      _$data.containsKey('skip') ? l$skip : const {},
      _$data.containsKey('timeout') ? l$timeout : const {},
      _$data.containsKey('tailable') ? l$tailable : const {},
      _$data.containsKey('awaitData') ? l$awaitData : const {},
      _$data.containsKey('batchSize') ? l$batchSize : const {},
      _$data.containsKey('returnKey') ? l$returnKey : const {},
      _$data.containsKey('maxTimeMS') ? l$maxTimeMS : const {},
      _$data.containsKey('maxAwaitTimeMS') ? l$maxAwaitTimeMS : const {},
      _$data.containsKey('noCursorTimeout') ? l$noCursorTimeout : const {},
      _$data.containsKey('singleBatch') ? l$singleBatch : const {},
      _$data.containsKey('allowPartialResults')
          ? l$allowPartialResults
          : const {},
      _$data.containsKey('showRecordId') ? l$showRecordId : const {},
      _$data.containsKey('includeDeleted') ? l$includeDeleted : const {},
      _$data.containsKey('includeArchived') ? l$includeArchived : const {},
    ]);
  }
}

abstract class CopyWith$Input$FindObjectsOptions<TRes> {
  factory CopyWith$Input$FindObjectsOptions(
    Input$FindObjectsOptions instance,
    TRes Function(Input$FindObjectsOptions) then,
  ) = _CopyWithImpl$Input$FindObjectsOptions;

  factory CopyWith$Input$FindObjectsOptions.stub(TRes res) =
      _CopyWithStubImpl$Input$FindObjectsOptions;

  TRes call({
    int? limit,
    List<Input$SortItem>? sort,
    int? skip,
    bool? timeout,
    bool? tailable,
    bool? awaitData,
    int? batchSize,
    bool? returnKey,
    int? maxTimeMS,
    int? maxAwaitTimeMS,
    bool? noCursorTimeout,
    bool? singleBatch,
    bool? allowPartialResults,
    bool? showRecordId,
    bool? includeDeleted,
    bool? includeArchived,
  });
  TRes sort(
      Iterable<Input$SortItem>? Function(
              Iterable<CopyWith$Input$SortItem<Input$SortItem>>?)
          _fn);
}

class _CopyWithImpl$Input$FindObjectsOptions<TRes>
    implements CopyWith$Input$FindObjectsOptions<TRes> {
  _CopyWithImpl$Input$FindObjectsOptions(
    this._instance,
    this._then,
  );

  final Input$FindObjectsOptions _instance;

  final TRes Function(Input$FindObjectsOptions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? limit = _undefined,
    Object? sort = _undefined,
    Object? skip = _undefined,
    Object? timeout = _undefined,
    Object? tailable = _undefined,
    Object? awaitData = _undefined,
    Object? batchSize = _undefined,
    Object? returnKey = _undefined,
    Object? maxTimeMS = _undefined,
    Object? maxAwaitTimeMS = _undefined,
    Object? noCursorTimeout = _undefined,
    Object? singleBatch = _undefined,
    Object? allowPartialResults = _undefined,
    Object? showRecordId = _undefined,
    Object? includeDeleted = _undefined,
    Object? includeArchived = _undefined,
  }) =>
      _then(Input$FindObjectsOptions._({
        ..._instance._$data,
        if (limit != _undefined) 'limit': (limit as int?),
        if (sort != _undefined) 'sort': (sort as List<Input$SortItem>?),
        if (skip != _undefined) 'skip': (skip as int?),
        if (timeout != _undefined) 'timeout': (timeout as bool?),
        if (tailable != _undefined) 'tailable': (tailable as bool?),
        if (awaitData != _undefined) 'awaitData': (awaitData as bool?),
        if (batchSize != _undefined) 'batchSize': (batchSize as int?),
        if (returnKey != _undefined) 'returnKey': (returnKey as bool?),
        if (maxTimeMS != _undefined) 'maxTimeMS': (maxTimeMS as int?),
        if (maxAwaitTimeMS != _undefined)
          'maxAwaitTimeMS': (maxAwaitTimeMS as int?),
        if (noCursorTimeout != _undefined)
          'noCursorTimeout': (noCursorTimeout as bool?),
        if (singleBatch != _undefined) 'singleBatch': (singleBatch as bool?),
        if (allowPartialResults != _undefined)
          'allowPartialResults': (allowPartialResults as bool?),
        if (showRecordId != _undefined) 'showRecordId': (showRecordId as bool?),
        if (includeDeleted != _undefined)
          'includeDeleted': (includeDeleted as bool?),
        if (includeArchived != _undefined)
          'includeArchived': (includeArchived as bool?),
      }));
  TRes sort(
          Iterable<Input$SortItem>? Function(
                  Iterable<CopyWith$Input$SortItem<Input$SortItem>>?)
              _fn) =>
      call(
          sort: _fn(_instance.sort?.map((e) => CopyWith$Input$SortItem(
                e,
                (i) => i,
              )))?.toList());
}

class _CopyWithStubImpl$Input$FindObjectsOptions<TRes>
    implements CopyWith$Input$FindObjectsOptions<TRes> {
  _CopyWithStubImpl$Input$FindObjectsOptions(this._res);

  TRes _res;

  call({
    int? limit,
    List<Input$SortItem>? sort,
    int? skip,
    bool? timeout,
    bool? tailable,
    bool? awaitData,
    int? batchSize,
    bool? returnKey,
    int? maxTimeMS,
    int? maxAwaitTimeMS,
    bool? noCursorTimeout,
    bool? singleBatch,
    bool? allowPartialResults,
    bool? showRecordId,
    bool? includeDeleted,
    bool? includeArchived,
  }) =>
      _res;
  sort(_fn) => _res;
}

class Input$SortItem {
  factory Input$SortItem({
    String? field,
    Enum$SortDirection? direction,
  }) =>
      Input$SortItem._({
        if (field != null) r'field': field,
        if (direction != null) r'direction': direction,
      });

  Input$SortItem._(this._$data);

  factory Input$SortItem.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('field')) {
      final l$field = data['field'];
      result$data['field'] = (l$field as String);
    }
    if (data.containsKey('direction')) {
      final l$direction = data['direction'];
      result$data['direction'] = l$direction == null
          ? null
          : fromJson$Enum$SortDirection((l$direction as String));
    }
    return Input$SortItem._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get field => (_$data['field'] as String?);
  Enum$SortDirection? get direction =>
      (_$data['direction'] as Enum$SortDirection?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('field')) {
      final l$field = field;
      result$data['field'] = (l$field as String);
    }
    if (_$data.containsKey('direction')) {
      final l$direction = direction;
      result$data['direction'] =
          l$direction == null ? null : toJson$Enum$SortDirection(l$direction);
    }
    return result$data;
  }

  CopyWith$Input$SortItem<Input$SortItem> get copyWith =>
      CopyWith$Input$SortItem(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$SortItem) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$field = field;
    final lOther$field = other.field;
    if (_$data.containsKey('field') != other._$data.containsKey('field')) {
      return false;
    }
    if (l$field != lOther$field) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$field = field;
    final l$direction = direction;
    return Object.hashAll([
      _$data.containsKey('field') ? l$field : const {},
      _$data.containsKey('direction') ? l$direction : const {},
    ]);
  }
}

abstract class CopyWith$Input$SortItem<TRes> {
  factory CopyWith$Input$SortItem(
    Input$SortItem instance,
    TRes Function(Input$SortItem) then,
  ) = _CopyWithImpl$Input$SortItem;

  factory CopyWith$Input$SortItem.stub(TRes res) =
      _CopyWithStubImpl$Input$SortItem;

  TRes call({
    String? field,
    Enum$SortDirection? direction,
  });
}

class _CopyWithImpl$Input$SortItem<TRes>
    implements CopyWith$Input$SortItem<TRes> {
  _CopyWithImpl$Input$SortItem(
    this._instance,
    this._then,
  );

  final Input$SortItem _instance;

  final TRes Function(Input$SortItem) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? field = _undefined,
    Object? direction = _undefined,
  }) =>
      _then(Input$SortItem._({
        ..._instance._$data,
        if (field != _undefined && field != null) 'field': (field as String),
        if (direction != _undefined)
          'direction': (direction as Enum$SortDirection?),
      }));
}

class _CopyWithStubImpl$Input$SortItem<TRes>
    implements CopyWith$Input$SortItem<TRes> {
  _CopyWithStubImpl$Input$SortItem(this._res);

  TRes _res;

  call({
    String? field,
    Enum$SortDirection? direction,
  }) =>
      _res;
}

class Input$UserInput {
  factory Input$UserInput({
    String? id,
    String? adminNotes,
    List<Input$ModelEventInput>? events,
    Input$BaseModelMetadataInput? metadata,
    DateTime? createdAt,
    String? createdBy,
    DateTime? updatedAt,
    String? updatedBy,
    DateTime? deletedAt,
    String? deletedBy,
    String? firstName,
    String? lastName,
    String? fullName,
    String? userHandle,
    String? phoneNumber,
    DateTime? phoneNumberUpdatedAt,
    bool? isPhoneNumberVerified,
    String? email,
    DateTime? emailUpdatedAt,
    bool? isEmailVerified,
    String? genderTextId,
    String? cityOfResidence,
    String? regionOfResidence,
    String? countryOfResidenceTextId,
    String? postalCode,
    String? avatarUrl,
    String? jobTitle,
    List<Input$LabeledStringValueInput>? websites,
    Enum$AuthType? authType,
    String? currentPassword,
    String? newPassword,
    String? preferredLanguageTextId,
    List<String>? spokenLanguagesTextIds,
    Enum$UiLanguage? selectedUiLanguageTextId,
    Enum$UiLanguage? fallbackUiLanguageTextId,
    List<Enum$UserRole>? roles,
    List<Enum$AppFeature>? appFeatures,
    String? source,
    String? timezone,
    Input$UserPreferencesInput? preferences,
    int? trustLevel,
    DateTime? signedInAt,
    DateTime? signedOutAt,
    DateTime? latestActivityAt,
    DateTime? inactivatedAt,
    String? inactivatedBy,
    List<String>? companyIds,
    List<String>? groupIds,
    List<String>? parentGroupIds,
    List<String>? externalGroupIds,
    List<Input$GroupMembershipInput>? groupMemberships,
    List<String>? addToGroupIds,
    List<String>? removeFromGroupIds,
    bool? seeksHelp,
    bool? offersHelp,
    int? birthYear,
    String? genderSelfDescribed,
    String? ethnicity,
    String? educationLevelTextId,
    String? professionalBackground,
    int? yearsManagementExperience,
    int? yearsOwnershipExperience,
    String? ssoIdp,
    String? oneLiner,
    Input$CompanyInput? company,
  }) =>
      Input$UserInput._({
        if (id != null) r'id': id,
        if (adminNotes != null) r'adminNotes': adminNotes,
        if (events != null) r'events': events,
        if (metadata != null) r'metadata': metadata,
        if (createdAt != null) r'createdAt': createdAt,
        if (createdBy != null) r'createdBy': createdBy,
        if (updatedAt != null) r'updatedAt': updatedAt,
        if (updatedBy != null) r'updatedBy': updatedBy,
        if (deletedAt != null) r'deletedAt': deletedAt,
        if (deletedBy != null) r'deletedBy': deletedBy,
        if (firstName != null) r'firstName': firstName,
        if (lastName != null) r'lastName': lastName,
        if (fullName != null) r'fullName': fullName,
        if (userHandle != null) r'userHandle': userHandle,
        if (phoneNumber != null) r'phoneNumber': phoneNumber,
        if (phoneNumberUpdatedAt != null)
          r'phoneNumberUpdatedAt': phoneNumberUpdatedAt,
        if (isPhoneNumberVerified != null)
          r'isPhoneNumberVerified': isPhoneNumberVerified,
        if (email != null) r'email': email,
        if (emailUpdatedAt != null) r'emailUpdatedAt': emailUpdatedAt,
        if (isEmailVerified != null) r'isEmailVerified': isEmailVerified,
        if (genderTextId != null) r'genderTextId': genderTextId,
        if (cityOfResidence != null) r'cityOfResidence': cityOfResidence,
        if (regionOfResidence != null) r'regionOfResidence': regionOfResidence,
        if (countryOfResidenceTextId != null)
          r'countryOfResidenceTextId': countryOfResidenceTextId,
        if (postalCode != null) r'postalCode': postalCode,
        if (avatarUrl != null) r'avatarUrl': avatarUrl,
        if (jobTitle != null) r'jobTitle': jobTitle,
        if (websites != null) r'websites': websites,
        if (authType != null) r'authType': authType,
        if (currentPassword != null) r'currentPassword': currentPassword,
        if (newPassword != null) r'newPassword': newPassword,
        if (preferredLanguageTextId != null)
          r'preferredLanguageTextId': preferredLanguageTextId,
        if (spokenLanguagesTextIds != null)
          r'spokenLanguagesTextIds': spokenLanguagesTextIds,
        if (selectedUiLanguageTextId != null)
          r'selectedUiLanguageTextId': selectedUiLanguageTextId,
        if (fallbackUiLanguageTextId != null)
          r'fallbackUiLanguageTextId': fallbackUiLanguageTextId,
        if (roles != null) r'roles': roles,
        if (appFeatures != null) r'appFeatures': appFeatures,
        if (source != null) r'source': source,
        if (timezone != null) r'timezone': timezone,
        if (preferences != null) r'preferences': preferences,
        if (trustLevel != null) r'trustLevel': trustLevel,
        if (signedInAt != null) r'signedInAt': signedInAt,
        if (signedOutAt != null) r'signedOutAt': signedOutAt,
        if (latestActivityAt != null) r'latestActivityAt': latestActivityAt,
        if (inactivatedAt != null) r'inactivatedAt': inactivatedAt,
        if (inactivatedBy != null) r'inactivatedBy': inactivatedBy,
        if (companyIds != null) r'companyIds': companyIds,
        if (groupIds != null) r'groupIds': groupIds,
        if (parentGroupIds != null) r'parentGroupIds': parentGroupIds,
        if (externalGroupIds != null) r'externalGroupIds': externalGroupIds,
        if (groupMemberships != null) r'groupMemberships': groupMemberships,
        if (addToGroupIds != null) r'addToGroupIds': addToGroupIds,
        if (removeFromGroupIds != null)
          r'removeFromGroupIds': removeFromGroupIds,
        if (seeksHelp != null) r'seeksHelp': seeksHelp,
        if (offersHelp != null) r'offersHelp': offersHelp,
        if (birthYear != null) r'birthYear': birthYear,
        if (genderSelfDescribed != null)
          r'genderSelfDescribed': genderSelfDescribed,
        if (ethnicity != null) r'ethnicity': ethnicity,
        if (educationLevelTextId != null)
          r'educationLevelTextId': educationLevelTextId,
        if (professionalBackground != null)
          r'professionalBackground': professionalBackground,
        if (yearsManagementExperience != null)
          r'yearsManagementExperience': yearsManagementExperience,
        if (yearsOwnershipExperience != null)
          r'yearsOwnershipExperience': yearsOwnershipExperience,
        if (ssoIdp != null) r'ssoIdp': ssoIdp,
        if (oneLiner != null) r'oneLiner': oneLiner,
        if (company != null) r'company': company,
      });

  Input$UserInput._(this._$data);

  factory Input$UserInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as String?);
    }
    if (data.containsKey('adminNotes')) {
      final l$adminNotes = data['adminNotes'];
      result$data['adminNotes'] = (l$adminNotes as String?);
    }
    if (data.containsKey('events')) {
      final l$events = data['events'];
      result$data['events'] = (l$events as List<dynamic>?)
          ?.map((e) =>
              Input$ModelEventInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('metadata')) {
      final l$metadata = data['metadata'];
      result$data['metadata'] = l$metadata == null
          ? null
          : Input$BaseModelMetadataInput.fromJson(
              (l$metadata as Map<String, dynamic>));
    }
    if (data.containsKey('createdAt')) {
      final l$createdAt = data['createdAt'];
      result$data['createdAt'] =
          l$createdAt == null ? null : DateTime.parse((l$createdAt as String));
    }
    if (data.containsKey('createdBy')) {
      final l$createdBy = data['createdBy'];
      result$data['createdBy'] = (l$createdBy as String?);
    }
    if (data.containsKey('updatedAt')) {
      final l$updatedAt = data['updatedAt'];
      result$data['updatedAt'] =
          l$updatedAt == null ? null : DateTime.parse((l$updatedAt as String));
    }
    if (data.containsKey('updatedBy')) {
      final l$updatedBy = data['updatedBy'];
      result$data['updatedBy'] = (l$updatedBy as String?);
    }
    if (data.containsKey('deletedAt')) {
      final l$deletedAt = data['deletedAt'];
      result$data['deletedAt'] =
          l$deletedAt == null ? null : DateTime.parse((l$deletedAt as String));
    }
    if (data.containsKey('deletedBy')) {
      final l$deletedBy = data['deletedBy'];
      result$data['deletedBy'] = (l$deletedBy as String?);
    }
    if (data.containsKey('firstName')) {
      final l$firstName = data['firstName'];
      result$data['firstName'] = (l$firstName as String?);
    }
    if (data.containsKey('lastName')) {
      final l$lastName = data['lastName'];
      result$data['lastName'] = (l$lastName as String?);
    }
    if (data.containsKey('fullName')) {
      final l$fullName = data['fullName'];
      result$data['fullName'] = (l$fullName as String?);
    }
    if (data.containsKey('userHandle')) {
      final l$userHandle = data['userHandle'];
      result$data['userHandle'] = (l$userHandle as String?);
    }
    if (data.containsKey('phoneNumber')) {
      final l$phoneNumber = data['phoneNumber'];
      result$data['phoneNumber'] = (l$phoneNumber as String?);
    }
    if (data.containsKey('phoneNumberUpdatedAt')) {
      final l$phoneNumberUpdatedAt = data['phoneNumberUpdatedAt'];
      result$data['phoneNumberUpdatedAt'] = l$phoneNumberUpdatedAt == null
          ? null
          : DateTime.parse((l$phoneNumberUpdatedAt as String));
    }
    if (data.containsKey('isPhoneNumberVerified')) {
      final l$isPhoneNumberVerified = data['isPhoneNumberVerified'];
      result$data['isPhoneNumberVerified'] = (l$isPhoneNumberVerified as bool?);
    }
    if (data.containsKey('email')) {
      final l$email = data['email'];
      result$data['email'] = (l$email as String?);
    }
    if (data.containsKey('emailUpdatedAt')) {
      final l$emailUpdatedAt = data['emailUpdatedAt'];
      result$data['emailUpdatedAt'] = l$emailUpdatedAt == null
          ? null
          : DateTime.parse((l$emailUpdatedAt as String));
    }
    if (data.containsKey('isEmailVerified')) {
      final l$isEmailVerified = data['isEmailVerified'];
      result$data['isEmailVerified'] = (l$isEmailVerified as bool?);
    }
    if (data.containsKey('genderTextId')) {
      final l$genderTextId = data['genderTextId'];
      result$data['genderTextId'] = (l$genderTextId as String?);
    }
    if (data.containsKey('cityOfResidence')) {
      final l$cityOfResidence = data['cityOfResidence'];
      result$data['cityOfResidence'] = (l$cityOfResidence as String?);
    }
    if (data.containsKey('regionOfResidence')) {
      final l$regionOfResidence = data['regionOfResidence'];
      result$data['regionOfResidence'] = (l$regionOfResidence as String?);
    }
    if (data.containsKey('countryOfResidenceTextId')) {
      final l$countryOfResidenceTextId = data['countryOfResidenceTextId'];
      result$data['countryOfResidenceTextId'] =
          (l$countryOfResidenceTextId as String?);
    }
    if (data.containsKey('postalCode')) {
      final l$postalCode = data['postalCode'];
      result$data['postalCode'] = (l$postalCode as String?);
    }
    if (data.containsKey('avatarUrl')) {
      final l$avatarUrl = data['avatarUrl'];
      result$data['avatarUrl'] = (l$avatarUrl as String?);
    }
    if (data.containsKey('jobTitle')) {
      final l$jobTitle = data['jobTitle'];
      result$data['jobTitle'] = (l$jobTitle as String?);
    }
    if (data.containsKey('websites')) {
      final l$websites = data['websites'];
      result$data['websites'] = (l$websites as List<dynamic>?)
          ?.map((e) => Input$LabeledStringValueInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('authType')) {
      final l$authType = data['authType'];
      result$data['authType'] = l$authType == null
          ? null
          : fromJson$Enum$AuthType((l$authType as String));
    }
    if (data.containsKey('currentPassword')) {
      final l$currentPassword = data['currentPassword'];
      result$data['currentPassword'] = (l$currentPassword as String?);
    }
    if (data.containsKey('newPassword')) {
      final l$newPassword = data['newPassword'];
      result$data['newPassword'] = (l$newPassword as String?);
    }
    if (data.containsKey('preferredLanguageTextId')) {
      final l$preferredLanguageTextId = data['preferredLanguageTextId'];
      result$data['preferredLanguageTextId'] =
          (l$preferredLanguageTextId as String?);
    }
    if (data.containsKey('spokenLanguagesTextIds')) {
      final l$spokenLanguagesTextIds = data['spokenLanguagesTextIds'];
      result$data['spokenLanguagesTextIds'] =
          (l$spokenLanguagesTextIds as List<dynamic>?)
              ?.map((e) => (e as String))
              .toList();
    }
    if (data.containsKey('selectedUiLanguageTextId')) {
      final l$selectedUiLanguageTextId = data['selectedUiLanguageTextId'];
      result$data['selectedUiLanguageTextId'] = l$selectedUiLanguageTextId ==
              null
          ? null
          : fromJson$Enum$UiLanguage((l$selectedUiLanguageTextId as String));
    }
    if (data.containsKey('fallbackUiLanguageTextId')) {
      final l$fallbackUiLanguageTextId = data['fallbackUiLanguageTextId'];
      result$data['fallbackUiLanguageTextId'] = l$fallbackUiLanguageTextId ==
              null
          ? null
          : fromJson$Enum$UiLanguage((l$fallbackUiLanguageTextId as String));
    }
    if (data.containsKey('roles')) {
      final l$roles = data['roles'];
      result$data['roles'] = (l$roles as List<dynamic>?)
          ?.map((e) => fromJson$Enum$UserRole((e as String)))
          .toList();
    }
    if (data.containsKey('appFeatures')) {
      final l$appFeatures = data['appFeatures'];
      result$data['appFeatures'] = (l$appFeatures as List<dynamic>?)
          ?.map((e) => fromJson$Enum$AppFeature((e as String)))
          .toList();
    }
    if (data.containsKey('source')) {
      final l$source = data['source'];
      result$data['source'] = (l$source as String?);
    }
    if (data.containsKey('timezone')) {
      final l$timezone = data['timezone'];
      result$data['timezone'] = (l$timezone as String?);
    }
    if (data.containsKey('preferences')) {
      final l$preferences = data['preferences'];
      result$data['preferences'] = l$preferences == null
          ? null
          : Input$UserPreferencesInput.fromJson(
              (l$preferences as Map<String, dynamic>));
    }
    if (data.containsKey('trustLevel')) {
      final l$trustLevel = data['trustLevel'];
      result$data['trustLevel'] = (l$trustLevel as int?);
    }
    if (data.containsKey('signedInAt')) {
      final l$signedInAt = data['signedInAt'];
      result$data['signedInAt'] = l$signedInAt == null
          ? null
          : DateTime.parse((l$signedInAt as String));
    }
    if (data.containsKey('signedOutAt')) {
      final l$signedOutAt = data['signedOutAt'];
      result$data['signedOutAt'] = l$signedOutAt == null
          ? null
          : DateTime.parse((l$signedOutAt as String));
    }
    if (data.containsKey('latestActivityAt')) {
      final l$latestActivityAt = data['latestActivityAt'];
      result$data['latestActivityAt'] = l$latestActivityAt == null
          ? null
          : DateTime.parse((l$latestActivityAt as String));
    }
    if (data.containsKey('inactivatedAt')) {
      final l$inactivatedAt = data['inactivatedAt'];
      result$data['inactivatedAt'] = l$inactivatedAt == null
          ? null
          : DateTime.parse((l$inactivatedAt as String));
    }
    if (data.containsKey('inactivatedBy')) {
      final l$inactivatedBy = data['inactivatedBy'];
      result$data['inactivatedBy'] = (l$inactivatedBy as String?);
    }
    if (data.containsKey('companyIds')) {
      final l$companyIds = data['companyIds'];
      result$data['companyIds'] =
          (l$companyIds as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    if (data.containsKey('groupIds')) {
      final l$groupIds = data['groupIds'];
      result$data['groupIds'] =
          (l$groupIds as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    if (data.containsKey('parentGroupIds')) {
      final l$parentGroupIds = data['parentGroupIds'];
      result$data['parentGroupIds'] = (l$parentGroupIds as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    if (data.containsKey('externalGroupIds')) {
      final l$externalGroupIds = data['externalGroupIds'];
      result$data['externalGroupIds'] = (l$externalGroupIds as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    if (data.containsKey('groupMemberships')) {
      final l$groupMemberships = data['groupMemberships'];
      result$data['groupMemberships'] = (l$groupMemberships as List<dynamic>?)
          ?.map((e) =>
              Input$GroupMembershipInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('addToGroupIds')) {
      final l$addToGroupIds = data['addToGroupIds'];
      result$data['addToGroupIds'] = (l$addToGroupIds as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    if (data.containsKey('removeFromGroupIds')) {
      final l$removeFromGroupIds = data['removeFromGroupIds'];
      result$data['removeFromGroupIds'] =
          (l$removeFromGroupIds as List<dynamic>?)
              ?.map((e) => (e as String))
              .toList();
    }
    if (data.containsKey('seeksHelp')) {
      final l$seeksHelp = data['seeksHelp'];
      result$data['seeksHelp'] = (l$seeksHelp as bool?);
    }
    if (data.containsKey('offersHelp')) {
      final l$offersHelp = data['offersHelp'];
      result$data['offersHelp'] = (l$offersHelp as bool?);
    }
    if (data.containsKey('birthYear')) {
      final l$birthYear = data['birthYear'];
      result$data['birthYear'] = (l$birthYear as int?);
    }
    if (data.containsKey('genderSelfDescribed')) {
      final l$genderSelfDescribed = data['genderSelfDescribed'];
      result$data['genderSelfDescribed'] = (l$genderSelfDescribed as String?);
    }
    if (data.containsKey('ethnicity')) {
      final l$ethnicity = data['ethnicity'];
      result$data['ethnicity'] = (l$ethnicity as String?);
    }
    if (data.containsKey('educationLevelTextId')) {
      final l$educationLevelTextId = data['educationLevelTextId'];
      result$data['educationLevelTextId'] = (l$educationLevelTextId as String?);
    }
    if (data.containsKey('professionalBackground')) {
      final l$professionalBackground = data['professionalBackground'];
      result$data['professionalBackground'] =
          (l$professionalBackground as String?);
    }
    if (data.containsKey('yearsManagementExperience')) {
      final l$yearsManagementExperience = data['yearsManagementExperience'];
      result$data['yearsManagementExperience'] =
          (l$yearsManagementExperience as int?);
    }
    if (data.containsKey('yearsOwnershipExperience')) {
      final l$yearsOwnershipExperience = data['yearsOwnershipExperience'];
      result$data['yearsOwnershipExperience'] =
          (l$yearsOwnershipExperience as int?);
    }
    if (data.containsKey('ssoIdp')) {
      final l$ssoIdp = data['ssoIdp'];
      result$data['ssoIdp'] = (l$ssoIdp as String?);
    }
    if (data.containsKey('oneLiner')) {
      final l$oneLiner = data['oneLiner'];
      result$data['oneLiner'] = (l$oneLiner as String?);
    }
    if (data.containsKey('company')) {
      final l$company = data['company'];
      result$data['company'] = l$company == null
          ? null
          : Input$CompanyInput.fromJson((l$company as Map<String, dynamic>));
    }
    return Input$UserInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get id => (_$data['id'] as String?);
  String? get adminNotes => (_$data['adminNotes'] as String?);
  List<Input$ModelEventInput>? get events =>
      (_$data['events'] as List<Input$ModelEventInput>?);
  Input$BaseModelMetadataInput? get metadata =>
      (_$data['metadata'] as Input$BaseModelMetadataInput?);
  DateTime? get createdAt => (_$data['createdAt'] as DateTime?);
  String? get createdBy => (_$data['createdBy'] as String?);
  DateTime? get updatedAt => (_$data['updatedAt'] as DateTime?);
  String? get updatedBy => (_$data['updatedBy'] as String?);
  DateTime? get deletedAt => (_$data['deletedAt'] as DateTime?);
  String? get deletedBy => (_$data['deletedBy'] as String?);
  String? get firstName => (_$data['firstName'] as String?);
  String? get lastName => (_$data['lastName'] as String?);
  String? get fullName => (_$data['fullName'] as String?);
  String? get userHandle => (_$data['userHandle'] as String?);
  String? get phoneNumber => (_$data['phoneNumber'] as String?);
  DateTime? get phoneNumberUpdatedAt =>
      (_$data['phoneNumberUpdatedAt'] as DateTime?);
  bool? get isPhoneNumberVerified => (_$data['isPhoneNumberVerified'] as bool?);
  String? get email => (_$data['email'] as String?);
  DateTime? get emailUpdatedAt => (_$data['emailUpdatedAt'] as DateTime?);
  bool? get isEmailVerified => (_$data['isEmailVerified'] as bool?);
  String? get genderTextId => (_$data['genderTextId'] as String?);
  String? get cityOfResidence => (_$data['cityOfResidence'] as String?);
  String? get regionOfResidence => (_$data['regionOfResidence'] as String?);
  String? get countryOfResidenceTextId =>
      (_$data['countryOfResidenceTextId'] as String?);
  String? get postalCode => (_$data['postalCode'] as String?);
  String? get avatarUrl => (_$data['avatarUrl'] as String?);
  String? get jobTitle => (_$data['jobTitle'] as String?);
  List<Input$LabeledStringValueInput>? get websites =>
      (_$data['websites'] as List<Input$LabeledStringValueInput>?);
  Enum$AuthType? get authType => (_$data['authType'] as Enum$AuthType?);
  String? get currentPassword => (_$data['currentPassword'] as String?);
  String? get newPassword => (_$data['newPassword'] as String?);
  String? get preferredLanguageTextId =>
      (_$data['preferredLanguageTextId'] as String?);
  List<String>? get spokenLanguagesTextIds =>
      (_$data['spokenLanguagesTextIds'] as List<String>?);
  Enum$UiLanguage? get selectedUiLanguageTextId =>
      (_$data['selectedUiLanguageTextId'] as Enum$UiLanguage?);
  Enum$UiLanguage? get fallbackUiLanguageTextId =>
      (_$data['fallbackUiLanguageTextId'] as Enum$UiLanguage?);
  List<Enum$UserRole>? get roles => (_$data['roles'] as List<Enum$UserRole>?);
  List<Enum$AppFeature>? get appFeatures =>
      (_$data['appFeatures'] as List<Enum$AppFeature>?);
  String? get source => (_$data['source'] as String?);
  String? get timezone => (_$data['timezone'] as String?);
  Input$UserPreferencesInput? get preferences =>
      (_$data['preferences'] as Input$UserPreferencesInput?);
  int? get trustLevel => (_$data['trustLevel'] as int?);
  DateTime? get signedInAt => (_$data['signedInAt'] as DateTime?);
  DateTime? get signedOutAt => (_$data['signedOutAt'] as DateTime?);
  DateTime? get latestActivityAt => (_$data['latestActivityAt'] as DateTime?);
  DateTime? get inactivatedAt => (_$data['inactivatedAt'] as DateTime?);
  String? get inactivatedBy => (_$data['inactivatedBy'] as String?);
  List<String>? get companyIds => (_$data['companyIds'] as List<String>?);
  List<String>? get groupIds => (_$data['groupIds'] as List<String>?);
  List<String>? get parentGroupIds =>
      (_$data['parentGroupIds'] as List<String>?);
  List<String>? get externalGroupIds =>
      (_$data['externalGroupIds'] as List<String>?);
  List<Input$GroupMembershipInput>? get groupMemberships =>
      (_$data['groupMemberships'] as List<Input$GroupMembershipInput>?);
  List<String>? get addToGroupIds => (_$data['addToGroupIds'] as List<String>?);
  List<String>? get removeFromGroupIds =>
      (_$data['removeFromGroupIds'] as List<String>?);
  bool? get seeksHelp => (_$data['seeksHelp'] as bool?);
  bool? get offersHelp => (_$data['offersHelp'] as bool?);
  int? get birthYear => (_$data['birthYear'] as int?);
  String? get genderSelfDescribed => (_$data['genderSelfDescribed'] as String?);
  String? get ethnicity => (_$data['ethnicity'] as String?);
  String? get educationLevelTextId =>
      (_$data['educationLevelTextId'] as String?);
  String? get professionalBackground =>
      (_$data['professionalBackground'] as String?);
  int? get yearsManagementExperience =>
      (_$data['yearsManagementExperience'] as int?);
  int? get yearsOwnershipExperience =>
      (_$data['yearsOwnershipExperience'] as int?);
  String? get ssoIdp => (_$data['ssoIdp'] as String?);
  String? get oneLiner => (_$data['oneLiner'] as String?);
  Input$CompanyInput? get company => (_$data['company'] as Input$CompanyInput?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('adminNotes')) {
      final l$adminNotes = adminNotes;
      result$data['adminNotes'] = l$adminNotes;
    }
    if (_$data.containsKey('events')) {
      final l$events = events;
      result$data['events'] = l$events?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('metadata')) {
      final l$metadata = metadata;
      result$data['metadata'] = l$metadata?.toJson();
    }
    if (_$data.containsKey('createdAt')) {
      final l$createdAt = createdAt;
      result$data['createdAt'] = l$createdAt?.toIso8601String();
    }
    if (_$data.containsKey('createdBy')) {
      final l$createdBy = createdBy;
      result$data['createdBy'] = l$createdBy;
    }
    if (_$data.containsKey('updatedAt')) {
      final l$updatedAt = updatedAt;
      result$data['updatedAt'] = l$updatedAt?.toIso8601String();
    }
    if (_$data.containsKey('updatedBy')) {
      final l$updatedBy = updatedBy;
      result$data['updatedBy'] = l$updatedBy;
    }
    if (_$data.containsKey('deletedAt')) {
      final l$deletedAt = deletedAt;
      result$data['deletedAt'] = l$deletedAt?.toIso8601String();
    }
    if (_$data.containsKey('deletedBy')) {
      final l$deletedBy = deletedBy;
      result$data['deletedBy'] = l$deletedBy;
    }
    if (_$data.containsKey('firstName')) {
      final l$firstName = firstName;
      result$data['firstName'] = l$firstName;
    }
    if (_$data.containsKey('lastName')) {
      final l$lastName = lastName;
      result$data['lastName'] = l$lastName;
    }
    if (_$data.containsKey('fullName')) {
      final l$fullName = fullName;
      result$data['fullName'] = l$fullName;
    }
    if (_$data.containsKey('userHandle')) {
      final l$userHandle = userHandle;
      result$data['userHandle'] = l$userHandle;
    }
    if (_$data.containsKey('phoneNumber')) {
      final l$phoneNumber = phoneNumber;
      result$data['phoneNumber'] = l$phoneNumber;
    }
    if (_$data.containsKey('phoneNumberUpdatedAt')) {
      final l$phoneNumberUpdatedAt = phoneNumberUpdatedAt;
      result$data['phoneNumberUpdatedAt'] =
          l$phoneNumberUpdatedAt?.toIso8601String();
    }
    if (_$data.containsKey('isPhoneNumberVerified')) {
      final l$isPhoneNumberVerified = isPhoneNumberVerified;
      result$data['isPhoneNumberVerified'] = l$isPhoneNumberVerified;
    }
    if (_$data.containsKey('email')) {
      final l$email = email;
      result$data['email'] = l$email;
    }
    if (_$data.containsKey('emailUpdatedAt')) {
      final l$emailUpdatedAt = emailUpdatedAt;
      result$data['emailUpdatedAt'] = l$emailUpdatedAt?.toIso8601String();
    }
    if (_$data.containsKey('isEmailVerified')) {
      final l$isEmailVerified = isEmailVerified;
      result$data['isEmailVerified'] = l$isEmailVerified;
    }
    if (_$data.containsKey('genderTextId')) {
      final l$genderTextId = genderTextId;
      result$data['genderTextId'] = l$genderTextId;
    }
    if (_$data.containsKey('cityOfResidence')) {
      final l$cityOfResidence = cityOfResidence;
      result$data['cityOfResidence'] = l$cityOfResidence;
    }
    if (_$data.containsKey('regionOfResidence')) {
      final l$regionOfResidence = regionOfResidence;
      result$data['regionOfResidence'] = l$regionOfResidence;
    }
    if (_$data.containsKey('countryOfResidenceTextId')) {
      final l$countryOfResidenceTextId = countryOfResidenceTextId;
      result$data['countryOfResidenceTextId'] = l$countryOfResidenceTextId;
    }
    if (_$data.containsKey('postalCode')) {
      final l$postalCode = postalCode;
      result$data['postalCode'] = l$postalCode;
    }
    if (_$data.containsKey('avatarUrl')) {
      final l$avatarUrl = avatarUrl;
      result$data['avatarUrl'] = l$avatarUrl;
    }
    if (_$data.containsKey('jobTitle')) {
      final l$jobTitle = jobTitle;
      result$data['jobTitle'] = l$jobTitle;
    }
    if (_$data.containsKey('websites')) {
      final l$websites = websites;
      result$data['websites'] = l$websites?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('authType')) {
      final l$authType = authType;
      result$data['authType'] =
          l$authType == null ? null : toJson$Enum$AuthType(l$authType);
    }
    if (_$data.containsKey('currentPassword')) {
      final l$currentPassword = currentPassword;
      result$data['currentPassword'] = l$currentPassword;
    }
    if (_$data.containsKey('newPassword')) {
      final l$newPassword = newPassword;
      result$data['newPassword'] = l$newPassword;
    }
    if (_$data.containsKey('preferredLanguageTextId')) {
      final l$preferredLanguageTextId = preferredLanguageTextId;
      result$data['preferredLanguageTextId'] = l$preferredLanguageTextId;
    }
    if (_$data.containsKey('spokenLanguagesTextIds')) {
      final l$spokenLanguagesTextIds = spokenLanguagesTextIds;
      result$data['spokenLanguagesTextIds'] =
          l$spokenLanguagesTextIds?.map((e) => e).toList();
    }
    if (_$data.containsKey('selectedUiLanguageTextId')) {
      final l$selectedUiLanguageTextId = selectedUiLanguageTextId;
      result$data['selectedUiLanguageTextId'] =
          l$selectedUiLanguageTextId == null
              ? null
              : toJson$Enum$UiLanguage(l$selectedUiLanguageTextId);
    }
    if (_$data.containsKey('fallbackUiLanguageTextId')) {
      final l$fallbackUiLanguageTextId = fallbackUiLanguageTextId;
      result$data['fallbackUiLanguageTextId'] =
          l$fallbackUiLanguageTextId == null
              ? null
              : toJson$Enum$UiLanguage(l$fallbackUiLanguageTextId);
    }
    if (_$data.containsKey('roles')) {
      final l$roles = roles;
      result$data['roles'] =
          l$roles?.map((e) => toJson$Enum$UserRole(e)).toList();
    }
    if (_$data.containsKey('appFeatures')) {
      final l$appFeatures = appFeatures;
      result$data['appFeatures'] =
          l$appFeatures?.map((e) => toJson$Enum$AppFeature(e)).toList();
    }
    if (_$data.containsKey('source')) {
      final l$source = source;
      result$data['source'] = l$source;
    }
    if (_$data.containsKey('timezone')) {
      final l$timezone = timezone;
      result$data['timezone'] = l$timezone;
    }
    if (_$data.containsKey('preferences')) {
      final l$preferences = preferences;
      result$data['preferences'] = l$preferences?.toJson();
    }
    if (_$data.containsKey('trustLevel')) {
      final l$trustLevel = trustLevel;
      result$data['trustLevel'] = l$trustLevel;
    }
    if (_$data.containsKey('signedInAt')) {
      final l$signedInAt = signedInAt;
      result$data['signedInAt'] = l$signedInAt?.toIso8601String();
    }
    if (_$data.containsKey('signedOutAt')) {
      final l$signedOutAt = signedOutAt;
      result$data['signedOutAt'] = l$signedOutAt?.toIso8601String();
    }
    if (_$data.containsKey('latestActivityAt')) {
      final l$latestActivityAt = latestActivityAt;
      result$data['latestActivityAt'] = l$latestActivityAt?.toIso8601String();
    }
    if (_$data.containsKey('inactivatedAt')) {
      final l$inactivatedAt = inactivatedAt;
      result$data['inactivatedAt'] = l$inactivatedAt?.toIso8601String();
    }
    if (_$data.containsKey('inactivatedBy')) {
      final l$inactivatedBy = inactivatedBy;
      result$data['inactivatedBy'] = l$inactivatedBy;
    }
    if (_$data.containsKey('companyIds')) {
      final l$companyIds = companyIds;
      result$data['companyIds'] = l$companyIds?.map((e) => e).toList();
    }
    if (_$data.containsKey('groupIds')) {
      final l$groupIds = groupIds;
      result$data['groupIds'] = l$groupIds?.map((e) => e).toList();
    }
    if (_$data.containsKey('parentGroupIds')) {
      final l$parentGroupIds = parentGroupIds;
      result$data['parentGroupIds'] = l$parentGroupIds?.map((e) => e).toList();
    }
    if (_$data.containsKey('externalGroupIds')) {
      final l$externalGroupIds = externalGroupIds;
      result$data['externalGroupIds'] =
          l$externalGroupIds?.map((e) => e).toList();
    }
    if (_$data.containsKey('groupMemberships')) {
      final l$groupMemberships = groupMemberships;
      result$data['groupMemberships'] =
          l$groupMemberships?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('addToGroupIds')) {
      final l$addToGroupIds = addToGroupIds;
      result$data['addToGroupIds'] = l$addToGroupIds?.map((e) => e).toList();
    }
    if (_$data.containsKey('removeFromGroupIds')) {
      final l$removeFromGroupIds = removeFromGroupIds;
      result$data['removeFromGroupIds'] =
          l$removeFromGroupIds?.map((e) => e).toList();
    }
    if (_$data.containsKey('seeksHelp')) {
      final l$seeksHelp = seeksHelp;
      result$data['seeksHelp'] = l$seeksHelp;
    }
    if (_$data.containsKey('offersHelp')) {
      final l$offersHelp = offersHelp;
      result$data['offersHelp'] = l$offersHelp;
    }
    if (_$data.containsKey('birthYear')) {
      final l$birthYear = birthYear;
      result$data['birthYear'] = l$birthYear;
    }
    if (_$data.containsKey('genderSelfDescribed')) {
      final l$genderSelfDescribed = genderSelfDescribed;
      result$data['genderSelfDescribed'] = l$genderSelfDescribed;
    }
    if (_$data.containsKey('ethnicity')) {
      final l$ethnicity = ethnicity;
      result$data['ethnicity'] = l$ethnicity;
    }
    if (_$data.containsKey('educationLevelTextId')) {
      final l$educationLevelTextId = educationLevelTextId;
      result$data['educationLevelTextId'] = l$educationLevelTextId;
    }
    if (_$data.containsKey('professionalBackground')) {
      final l$professionalBackground = professionalBackground;
      result$data['professionalBackground'] = l$professionalBackground;
    }
    if (_$data.containsKey('yearsManagementExperience')) {
      final l$yearsManagementExperience = yearsManagementExperience;
      result$data['yearsManagementExperience'] = l$yearsManagementExperience;
    }
    if (_$data.containsKey('yearsOwnershipExperience')) {
      final l$yearsOwnershipExperience = yearsOwnershipExperience;
      result$data['yearsOwnershipExperience'] = l$yearsOwnershipExperience;
    }
    if (_$data.containsKey('ssoIdp')) {
      final l$ssoIdp = ssoIdp;
      result$data['ssoIdp'] = l$ssoIdp;
    }
    if (_$data.containsKey('oneLiner')) {
      final l$oneLiner = oneLiner;
      result$data['oneLiner'] = l$oneLiner;
    }
    if (_$data.containsKey('company')) {
      final l$company = company;
      result$data['company'] = l$company?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$UserInput<Input$UserInput> get copyWith =>
      CopyWith$Input$UserInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$UserInput) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$adminNotes = adminNotes;
    final lOther$adminNotes = other.adminNotes;
    if (_$data.containsKey('adminNotes') !=
        other._$data.containsKey('adminNotes')) {
      return false;
    }
    if (l$adminNotes != lOther$adminNotes) {
      return false;
    }
    final l$events = events;
    final lOther$events = other.events;
    if (_$data.containsKey('events') != other._$data.containsKey('events')) {
      return false;
    }
    if (l$events != null && lOther$events != null) {
      if (l$events.length != lOther$events.length) {
        return false;
      }
      for (int i = 0; i < l$events.length; i++) {
        final l$events$entry = l$events[i];
        final lOther$events$entry = lOther$events[i];
        if (l$events$entry != lOther$events$entry) {
          return false;
        }
      }
    } else if (l$events != lOther$events) {
      return false;
    }
    final l$metadata = metadata;
    final lOther$metadata = other.metadata;
    if (_$data.containsKey('metadata') !=
        other._$data.containsKey('metadata')) {
      return false;
    }
    if (l$metadata != lOther$metadata) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (_$data.containsKey('createdAt') !=
        other._$data.containsKey('createdAt')) {
      return false;
    }
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$createdBy = createdBy;
    final lOther$createdBy = other.createdBy;
    if (_$data.containsKey('createdBy') !=
        other._$data.containsKey('createdBy')) {
      return false;
    }
    if (l$createdBy != lOther$createdBy) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (_$data.containsKey('updatedAt') !=
        other._$data.containsKey('updatedAt')) {
      return false;
    }
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    final l$updatedBy = updatedBy;
    final lOther$updatedBy = other.updatedBy;
    if (_$data.containsKey('updatedBy') !=
        other._$data.containsKey('updatedBy')) {
      return false;
    }
    if (l$updatedBy != lOther$updatedBy) {
      return false;
    }
    final l$deletedAt = deletedAt;
    final lOther$deletedAt = other.deletedAt;
    if (_$data.containsKey('deletedAt') !=
        other._$data.containsKey('deletedAt')) {
      return false;
    }
    if (l$deletedAt != lOther$deletedAt) {
      return false;
    }
    final l$deletedBy = deletedBy;
    final lOther$deletedBy = other.deletedBy;
    if (_$data.containsKey('deletedBy') !=
        other._$data.containsKey('deletedBy')) {
      return false;
    }
    if (l$deletedBy != lOther$deletedBy) {
      return false;
    }
    final l$firstName = firstName;
    final lOther$firstName = other.firstName;
    if (_$data.containsKey('firstName') !=
        other._$data.containsKey('firstName')) {
      return false;
    }
    if (l$firstName != lOther$firstName) {
      return false;
    }
    final l$lastName = lastName;
    final lOther$lastName = other.lastName;
    if (_$data.containsKey('lastName') !=
        other._$data.containsKey('lastName')) {
      return false;
    }
    if (l$lastName != lOther$lastName) {
      return false;
    }
    final l$fullName = fullName;
    final lOther$fullName = other.fullName;
    if (_$data.containsKey('fullName') !=
        other._$data.containsKey('fullName')) {
      return false;
    }
    if (l$fullName != lOther$fullName) {
      return false;
    }
    final l$userHandle = userHandle;
    final lOther$userHandle = other.userHandle;
    if (_$data.containsKey('userHandle') !=
        other._$data.containsKey('userHandle')) {
      return false;
    }
    if (l$userHandle != lOther$userHandle) {
      return false;
    }
    final l$phoneNumber = phoneNumber;
    final lOther$phoneNumber = other.phoneNumber;
    if (_$data.containsKey('phoneNumber') !=
        other._$data.containsKey('phoneNumber')) {
      return false;
    }
    if (l$phoneNumber != lOther$phoneNumber) {
      return false;
    }
    final l$phoneNumberUpdatedAt = phoneNumberUpdatedAt;
    final lOther$phoneNumberUpdatedAt = other.phoneNumberUpdatedAt;
    if (_$data.containsKey('phoneNumberUpdatedAt') !=
        other._$data.containsKey('phoneNumberUpdatedAt')) {
      return false;
    }
    if (l$phoneNumberUpdatedAt != lOther$phoneNumberUpdatedAt) {
      return false;
    }
    final l$isPhoneNumberVerified = isPhoneNumberVerified;
    final lOther$isPhoneNumberVerified = other.isPhoneNumberVerified;
    if (_$data.containsKey('isPhoneNumberVerified') !=
        other._$data.containsKey('isPhoneNumberVerified')) {
      return false;
    }
    if (l$isPhoneNumberVerified != lOther$isPhoneNumberVerified) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (_$data.containsKey('email') != other._$data.containsKey('email')) {
      return false;
    }
    if (l$email != lOther$email) {
      return false;
    }
    final l$emailUpdatedAt = emailUpdatedAt;
    final lOther$emailUpdatedAt = other.emailUpdatedAt;
    if (_$data.containsKey('emailUpdatedAt') !=
        other._$data.containsKey('emailUpdatedAt')) {
      return false;
    }
    if (l$emailUpdatedAt != lOther$emailUpdatedAt) {
      return false;
    }
    final l$isEmailVerified = isEmailVerified;
    final lOther$isEmailVerified = other.isEmailVerified;
    if (_$data.containsKey('isEmailVerified') !=
        other._$data.containsKey('isEmailVerified')) {
      return false;
    }
    if (l$isEmailVerified != lOther$isEmailVerified) {
      return false;
    }
    final l$genderTextId = genderTextId;
    final lOther$genderTextId = other.genderTextId;
    if (_$data.containsKey('genderTextId') !=
        other._$data.containsKey('genderTextId')) {
      return false;
    }
    if (l$genderTextId != lOther$genderTextId) {
      return false;
    }
    final l$cityOfResidence = cityOfResidence;
    final lOther$cityOfResidence = other.cityOfResidence;
    if (_$data.containsKey('cityOfResidence') !=
        other._$data.containsKey('cityOfResidence')) {
      return false;
    }
    if (l$cityOfResidence != lOther$cityOfResidence) {
      return false;
    }
    final l$regionOfResidence = regionOfResidence;
    final lOther$regionOfResidence = other.regionOfResidence;
    if (_$data.containsKey('regionOfResidence') !=
        other._$data.containsKey('regionOfResidence')) {
      return false;
    }
    if (l$regionOfResidence != lOther$regionOfResidence) {
      return false;
    }
    final l$countryOfResidenceTextId = countryOfResidenceTextId;
    final lOther$countryOfResidenceTextId = other.countryOfResidenceTextId;
    if (_$data.containsKey('countryOfResidenceTextId') !=
        other._$data.containsKey('countryOfResidenceTextId')) {
      return false;
    }
    if (l$countryOfResidenceTextId != lOther$countryOfResidenceTextId) {
      return false;
    }
    final l$postalCode = postalCode;
    final lOther$postalCode = other.postalCode;
    if (_$data.containsKey('postalCode') !=
        other._$data.containsKey('postalCode')) {
      return false;
    }
    if (l$postalCode != lOther$postalCode) {
      return false;
    }
    final l$avatarUrl = avatarUrl;
    final lOther$avatarUrl = other.avatarUrl;
    if (_$data.containsKey('avatarUrl') !=
        other._$data.containsKey('avatarUrl')) {
      return false;
    }
    if (l$avatarUrl != lOther$avatarUrl) {
      return false;
    }
    final l$jobTitle = jobTitle;
    final lOther$jobTitle = other.jobTitle;
    if (_$data.containsKey('jobTitle') !=
        other._$data.containsKey('jobTitle')) {
      return false;
    }
    if (l$jobTitle != lOther$jobTitle) {
      return false;
    }
    final l$websites = websites;
    final lOther$websites = other.websites;
    if (_$data.containsKey('websites') !=
        other._$data.containsKey('websites')) {
      return false;
    }
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
    final l$authType = authType;
    final lOther$authType = other.authType;
    if (_$data.containsKey('authType') !=
        other._$data.containsKey('authType')) {
      return false;
    }
    if (l$authType != lOther$authType) {
      return false;
    }
    final l$currentPassword = currentPassword;
    final lOther$currentPassword = other.currentPassword;
    if (_$data.containsKey('currentPassword') !=
        other._$data.containsKey('currentPassword')) {
      return false;
    }
    if (l$currentPassword != lOther$currentPassword) {
      return false;
    }
    final l$newPassword = newPassword;
    final lOther$newPassword = other.newPassword;
    if (_$data.containsKey('newPassword') !=
        other._$data.containsKey('newPassword')) {
      return false;
    }
    if (l$newPassword != lOther$newPassword) {
      return false;
    }
    final l$preferredLanguageTextId = preferredLanguageTextId;
    final lOther$preferredLanguageTextId = other.preferredLanguageTextId;
    if (_$data.containsKey('preferredLanguageTextId') !=
        other._$data.containsKey('preferredLanguageTextId')) {
      return false;
    }
    if (l$preferredLanguageTextId != lOther$preferredLanguageTextId) {
      return false;
    }
    final l$spokenLanguagesTextIds = spokenLanguagesTextIds;
    final lOther$spokenLanguagesTextIds = other.spokenLanguagesTextIds;
    if (_$data.containsKey('spokenLanguagesTextIds') !=
        other._$data.containsKey('spokenLanguagesTextIds')) {
      return false;
    }
    if (l$spokenLanguagesTextIds != null &&
        lOther$spokenLanguagesTextIds != null) {
      if (l$spokenLanguagesTextIds.length !=
          lOther$spokenLanguagesTextIds.length) {
        return false;
      }
      for (int i = 0; i < l$spokenLanguagesTextIds.length; i++) {
        final l$spokenLanguagesTextIds$entry = l$spokenLanguagesTextIds[i];
        final lOther$spokenLanguagesTextIds$entry =
            lOther$spokenLanguagesTextIds[i];
        if (l$spokenLanguagesTextIds$entry !=
            lOther$spokenLanguagesTextIds$entry) {
          return false;
        }
      }
    } else if (l$spokenLanguagesTextIds != lOther$spokenLanguagesTextIds) {
      return false;
    }
    final l$selectedUiLanguageTextId = selectedUiLanguageTextId;
    final lOther$selectedUiLanguageTextId = other.selectedUiLanguageTextId;
    if (_$data.containsKey('selectedUiLanguageTextId') !=
        other._$data.containsKey('selectedUiLanguageTextId')) {
      return false;
    }
    if (l$selectedUiLanguageTextId != lOther$selectedUiLanguageTextId) {
      return false;
    }
    final l$fallbackUiLanguageTextId = fallbackUiLanguageTextId;
    final lOther$fallbackUiLanguageTextId = other.fallbackUiLanguageTextId;
    if (_$data.containsKey('fallbackUiLanguageTextId') !=
        other._$data.containsKey('fallbackUiLanguageTextId')) {
      return false;
    }
    if (l$fallbackUiLanguageTextId != lOther$fallbackUiLanguageTextId) {
      return false;
    }
    final l$roles = roles;
    final lOther$roles = other.roles;
    if (_$data.containsKey('roles') != other._$data.containsKey('roles')) {
      return false;
    }
    if (l$roles != null && lOther$roles != null) {
      if (l$roles.length != lOther$roles.length) {
        return false;
      }
      for (int i = 0; i < l$roles.length; i++) {
        final l$roles$entry = l$roles[i];
        final lOther$roles$entry = lOther$roles[i];
        if (l$roles$entry != lOther$roles$entry) {
          return false;
        }
      }
    } else if (l$roles != lOther$roles) {
      return false;
    }
    final l$appFeatures = appFeatures;
    final lOther$appFeatures = other.appFeatures;
    if (_$data.containsKey('appFeatures') !=
        other._$data.containsKey('appFeatures')) {
      return false;
    }
    if (l$appFeatures != null && lOther$appFeatures != null) {
      if (l$appFeatures.length != lOther$appFeatures.length) {
        return false;
      }
      for (int i = 0; i < l$appFeatures.length; i++) {
        final l$appFeatures$entry = l$appFeatures[i];
        final lOther$appFeatures$entry = lOther$appFeatures[i];
        if (l$appFeatures$entry != lOther$appFeatures$entry) {
          return false;
        }
      }
    } else if (l$appFeatures != lOther$appFeatures) {
      return false;
    }
    final l$source = source;
    final lOther$source = other.source;
    if (_$data.containsKey('source') != other._$data.containsKey('source')) {
      return false;
    }
    if (l$source != lOther$source) {
      return false;
    }
    final l$timezone = timezone;
    final lOther$timezone = other.timezone;
    if (_$data.containsKey('timezone') !=
        other._$data.containsKey('timezone')) {
      return false;
    }
    if (l$timezone != lOther$timezone) {
      return false;
    }
    final l$preferences = preferences;
    final lOther$preferences = other.preferences;
    if (_$data.containsKey('preferences') !=
        other._$data.containsKey('preferences')) {
      return false;
    }
    if (l$preferences != lOther$preferences) {
      return false;
    }
    final l$trustLevel = trustLevel;
    final lOther$trustLevel = other.trustLevel;
    if (_$data.containsKey('trustLevel') !=
        other._$data.containsKey('trustLevel')) {
      return false;
    }
    if (l$trustLevel != lOther$trustLevel) {
      return false;
    }
    final l$signedInAt = signedInAt;
    final lOther$signedInAt = other.signedInAt;
    if (_$data.containsKey('signedInAt') !=
        other._$data.containsKey('signedInAt')) {
      return false;
    }
    if (l$signedInAt != lOther$signedInAt) {
      return false;
    }
    final l$signedOutAt = signedOutAt;
    final lOther$signedOutAt = other.signedOutAt;
    if (_$data.containsKey('signedOutAt') !=
        other._$data.containsKey('signedOutAt')) {
      return false;
    }
    if (l$signedOutAt != lOther$signedOutAt) {
      return false;
    }
    final l$latestActivityAt = latestActivityAt;
    final lOther$latestActivityAt = other.latestActivityAt;
    if (_$data.containsKey('latestActivityAt') !=
        other._$data.containsKey('latestActivityAt')) {
      return false;
    }
    if (l$latestActivityAt != lOther$latestActivityAt) {
      return false;
    }
    final l$inactivatedAt = inactivatedAt;
    final lOther$inactivatedAt = other.inactivatedAt;
    if (_$data.containsKey('inactivatedAt') !=
        other._$data.containsKey('inactivatedAt')) {
      return false;
    }
    if (l$inactivatedAt != lOther$inactivatedAt) {
      return false;
    }
    final l$inactivatedBy = inactivatedBy;
    final lOther$inactivatedBy = other.inactivatedBy;
    if (_$data.containsKey('inactivatedBy') !=
        other._$data.containsKey('inactivatedBy')) {
      return false;
    }
    if (l$inactivatedBy != lOther$inactivatedBy) {
      return false;
    }
    final l$companyIds = companyIds;
    final lOther$companyIds = other.companyIds;
    if (_$data.containsKey('companyIds') !=
        other._$data.containsKey('companyIds')) {
      return false;
    }
    if (l$companyIds != null && lOther$companyIds != null) {
      if (l$companyIds.length != lOther$companyIds.length) {
        return false;
      }
      for (int i = 0; i < l$companyIds.length; i++) {
        final l$companyIds$entry = l$companyIds[i];
        final lOther$companyIds$entry = lOther$companyIds[i];
        if (l$companyIds$entry != lOther$companyIds$entry) {
          return false;
        }
      }
    } else if (l$companyIds != lOther$companyIds) {
      return false;
    }
    final l$groupIds = groupIds;
    final lOther$groupIds = other.groupIds;
    if (_$data.containsKey('groupIds') !=
        other._$data.containsKey('groupIds')) {
      return false;
    }
    if (l$groupIds != null && lOther$groupIds != null) {
      if (l$groupIds.length != lOther$groupIds.length) {
        return false;
      }
      for (int i = 0; i < l$groupIds.length; i++) {
        final l$groupIds$entry = l$groupIds[i];
        final lOther$groupIds$entry = lOther$groupIds[i];
        if (l$groupIds$entry != lOther$groupIds$entry) {
          return false;
        }
      }
    } else if (l$groupIds != lOther$groupIds) {
      return false;
    }
    final l$parentGroupIds = parentGroupIds;
    final lOther$parentGroupIds = other.parentGroupIds;
    if (_$data.containsKey('parentGroupIds') !=
        other._$data.containsKey('parentGroupIds')) {
      return false;
    }
    if (l$parentGroupIds != null && lOther$parentGroupIds != null) {
      if (l$parentGroupIds.length != lOther$parentGroupIds.length) {
        return false;
      }
      for (int i = 0; i < l$parentGroupIds.length; i++) {
        final l$parentGroupIds$entry = l$parentGroupIds[i];
        final lOther$parentGroupIds$entry = lOther$parentGroupIds[i];
        if (l$parentGroupIds$entry != lOther$parentGroupIds$entry) {
          return false;
        }
      }
    } else if (l$parentGroupIds != lOther$parentGroupIds) {
      return false;
    }
    final l$externalGroupIds = externalGroupIds;
    final lOther$externalGroupIds = other.externalGroupIds;
    if (_$data.containsKey('externalGroupIds') !=
        other._$data.containsKey('externalGroupIds')) {
      return false;
    }
    if (l$externalGroupIds != null && lOther$externalGroupIds != null) {
      if (l$externalGroupIds.length != lOther$externalGroupIds.length) {
        return false;
      }
      for (int i = 0; i < l$externalGroupIds.length; i++) {
        final l$externalGroupIds$entry = l$externalGroupIds[i];
        final lOther$externalGroupIds$entry = lOther$externalGroupIds[i];
        if (l$externalGroupIds$entry != lOther$externalGroupIds$entry) {
          return false;
        }
      }
    } else if (l$externalGroupIds != lOther$externalGroupIds) {
      return false;
    }
    final l$groupMemberships = groupMemberships;
    final lOther$groupMemberships = other.groupMemberships;
    if (_$data.containsKey('groupMemberships') !=
        other._$data.containsKey('groupMemberships')) {
      return false;
    }
    if (l$groupMemberships != null && lOther$groupMemberships != null) {
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
    } else if (l$groupMemberships != lOther$groupMemberships) {
      return false;
    }
    final l$addToGroupIds = addToGroupIds;
    final lOther$addToGroupIds = other.addToGroupIds;
    if (_$data.containsKey('addToGroupIds') !=
        other._$data.containsKey('addToGroupIds')) {
      return false;
    }
    if (l$addToGroupIds != null && lOther$addToGroupIds != null) {
      if (l$addToGroupIds.length != lOther$addToGroupIds.length) {
        return false;
      }
      for (int i = 0; i < l$addToGroupIds.length; i++) {
        final l$addToGroupIds$entry = l$addToGroupIds[i];
        final lOther$addToGroupIds$entry = lOther$addToGroupIds[i];
        if (l$addToGroupIds$entry != lOther$addToGroupIds$entry) {
          return false;
        }
      }
    } else if (l$addToGroupIds != lOther$addToGroupIds) {
      return false;
    }
    final l$removeFromGroupIds = removeFromGroupIds;
    final lOther$removeFromGroupIds = other.removeFromGroupIds;
    if (_$data.containsKey('removeFromGroupIds') !=
        other._$data.containsKey('removeFromGroupIds')) {
      return false;
    }
    if (l$removeFromGroupIds != null && lOther$removeFromGroupIds != null) {
      if (l$removeFromGroupIds.length != lOther$removeFromGroupIds.length) {
        return false;
      }
      for (int i = 0; i < l$removeFromGroupIds.length; i++) {
        final l$removeFromGroupIds$entry = l$removeFromGroupIds[i];
        final lOther$removeFromGroupIds$entry = lOther$removeFromGroupIds[i];
        if (l$removeFromGroupIds$entry != lOther$removeFromGroupIds$entry) {
          return false;
        }
      }
    } else if (l$removeFromGroupIds != lOther$removeFromGroupIds) {
      return false;
    }
    final l$seeksHelp = seeksHelp;
    final lOther$seeksHelp = other.seeksHelp;
    if (_$data.containsKey('seeksHelp') !=
        other._$data.containsKey('seeksHelp')) {
      return false;
    }
    if (l$seeksHelp != lOther$seeksHelp) {
      return false;
    }
    final l$offersHelp = offersHelp;
    final lOther$offersHelp = other.offersHelp;
    if (_$data.containsKey('offersHelp') !=
        other._$data.containsKey('offersHelp')) {
      return false;
    }
    if (l$offersHelp != lOther$offersHelp) {
      return false;
    }
    final l$birthYear = birthYear;
    final lOther$birthYear = other.birthYear;
    if (_$data.containsKey('birthYear') !=
        other._$data.containsKey('birthYear')) {
      return false;
    }
    if (l$birthYear != lOther$birthYear) {
      return false;
    }
    final l$genderSelfDescribed = genderSelfDescribed;
    final lOther$genderSelfDescribed = other.genderSelfDescribed;
    if (_$data.containsKey('genderSelfDescribed') !=
        other._$data.containsKey('genderSelfDescribed')) {
      return false;
    }
    if (l$genderSelfDescribed != lOther$genderSelfDescribed) {
      return false;
    }
    final l$ethnicity = ethnicity;
    final lOther$ethnicity = other.ethnicity;
    if (_$data.containsKey('ethnicity') !=
        other._$data.containsKey('ethnicity')) {
      return false;
    }
    if (l$ethnicity != lOther$ethnicity) {
      return false;
    }
    final l$educationLevelTextId = educationLevelTextId;
    final lOther$educationLevelTextId = other.educationLevelTextId;
    if (_$data.containsKey('educationLevelTextId') !=
        other._$data.containsKey('educationLevelTextId')) {
      return false;
    }
    if (l$educationLevelTextId != lOther$educationLevelTextId) {
      return false;
    }
    final l$professionalBackground = professionalBackground;
    final lOther$professionalBackground = other.professionalBackground;
    if (_$data.containsKey('professionalBackground') !=
        other._$data.containsKey('professionalBackground')) {
      return false;
    }
    if (l$professionalBackground != lOther$professionalBackground) {
      return false;
    }
    final l$yearsManagementExperience = yearsManagementExperience;
    final lOther$yearsManagementExperience = other.yearsManagementExperience;
    if (_$data.containsKey('yearsManagementExperience') !=
        other._$data.containsKey('yearsManagementExperience')) {
      return false;
    }
    if (l$yearsManagementExperience != lOther$yearsManagementExperience) {
      return false;
    }
    final l$yearsOwnershipExperience = yearsOwnershipExperience;
    final lOther$yearsOwnershipExperience = other.yearsOwnershipExperience;
    if (_$data.containsKey('yearsOwnershipExperience') !=
        other._$data.containsKey('yearsOwnershipExperience')) {
      return false;
    }
    if (l$yearsOwnershipExperience != lOther$yearsOwnershipExperience) {
      return false;
    }
    final l$ssoIdp = ssoIdp;
    final lOther$ssoIdp = other.ssoIdp;
    if (_$data.containsKey('ssoIdp') != other._$data.containsKey('ssoIdp')) {
      return false;
    }
    if (l$ssoIdp != lOther$ssoIdp) {
      return false;
    }
    final l$oneLiner = oneLiner;
    final lOther$oneLiner = other.oneLiner;
    if (_$data.containsKey('oneLiner') !=
        other._$data.containsKey('oneLiner')) {
      return false;
    }
    if (l$oneLiner != lOther$oneLiner) {
      return false;
    }
    final l$company = company;
    final lOther$company = other.company;
    if (_$data.containsKey('company') != other._$data.containsKey('company')) {
      return false;
    }
    if (l$company != lOther$company) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$adminNotes = adminNotes;
    final l$events = events;
    final l$metadata = metadata;
    final l$createdAt = createdAt;
    final l$createdBy = createdBy;
    final l$updatedAt = updatedAt;
    final l$updatedBy = updatedBy;
    final l$deletedAt = deletedAt;
    final l$deletedBy = deletedBy;
    final l$firstName = firstName;
    final l$lastName = lastName;
    final l$fullName = fullName;
    final l$userHandle = userHandle;
    final l$phoneNumber = phoneNumber;
    final l$phoneNumberUpdatedAt = phoneNumberUpdatedAt;
    final l$isPhoneNumberVerified = isPhoneNumberVerified;
    final l$email = email;
    final l$emailUpdatedAt = emailUpdatedAt;
    final l$isEmailVerified = isEmailVerified;
    final l$genderTextId = genderTextId;
    final l$cityOfResidence = cityOfResidence;
    final l$regionOfResidence = regionOfResidence;
    final l$countryOfResidenceTextId = countryOfResidenceTextId;
    final l$postalCode = postalCode;
    final l$avatarUrl = avatarUrl;
    final l$jobTitle = jobTitle;
    final l$websites = websites;
    final l$authType = authType;
    final l$currentPassword = currentPassword;
    final l$newPassword = newPassword;
    final l$preferredLanguageTextId = preferredLanguageTextId;
    final l$spokenLanguagesTextIds = spokenLanguagesTextIds;
    final l$selectedUiLanguageTextId = selectedUiLanguageTextId;
    final l$fallbackUiLanguageTextId = fallbackUiLanguageTextId;
    final l$roles = roles;
    final l$appFeatures = appFeatures;
    final l$source = source;
    final l$timezone = timezone;
    final l$preferences = preferences;
    final l$trustLevel = trustLevel;
    final l$signedInAt = signedInAt;
    final l$signedOutAt = signedOutAt;
    final l$latestActivityAt = latestActivityAt;
    final l$inactivatedAt = inactivatedAt;
    final l$inactivatedBy = inactivatedBy;
    final l$companyIds = companyIds;
    final l$groupIds = groupIds;
    final l$parentGroupIds = parentGroupIds;
    final l$externalGroupIds = externalGroupIds;
    final l$groupMemberships = groupMemberships;
    final l$addToGroupIds = addToGroupIds;
    final l$removeFromGroupIds = removeFromGroupIds;
    final l$seeksHelp = seeksHelp;
    final l$offersHelp = offersHelp;
    final l$birthYear = birthYear;
    final l$genderSelfDescribed = genderSelfDescribed;
    final l$ethnicity = ethnicity;
    final l$educationLevelTextId = educationLevelTextId;
    final l$professionalBackground = professionalBackground;
    final l$yearsManagementExperience = yearsManagementExperience;
    final l$yearsOwnershipExperience = yearsOwnershipExperience;
    final l$ssoIdp = ssoIdp;
    final l$oneLiner = oneLiner;
    final l$company = company;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('adminNotes') ? l$adminNotes : const {},
      _$data.containsKey('events')
          ? l$events == null
              ? null
              : Object.hashAll(l$events.map((v) => v))
          : const {},
      _$data.containsKey('metadata') ? l$metadata : const {},
      _$data.containsKey('createdAt') ? l$createdAt : const {},
      _$data.containsKey('createdBy') ? l$createdBy : const {},
      _$data.containsKey('updatedAt') ? l$updatedAt : const {},
      _$data.containsKey('updatedBy') ? l$updatedBy : const {},
      _$data.containsKey('deletedAt') ? l$deletedAt : const {},
      _$data.containsKey('deletedBy') ? l$deletedBy : const {},
      _$data.containsKey('firstName') ? l$firstName : const {},
      _$data.containsKey('lastName') ? l$lastName : const {},
      _$data.containsKey('fullName') ? l$fullName : const {},
      _$data.containsKey('userHandle') ? l$userHandle : const {},
      _$data.containsKey('phoneNumber') ? l$phoneNumber : const {},
      _$data.containsKey('phoneNumberUpdatedAt')
          ? l$phoneNumberUpdatedAt
          : const {},
      _$data.containsKey('isPhoneNumberVerified')
          ? l$isPhoneNumberVerified
          : const {},
      _$data.containsKey('email') ? l$email : const {},
      _$data.containsKey('emailUpdatedAt') ? l$emailUpdatedAt : const {},
      _$data.containsKey('isEmailVerified') ? l$isEmailVerified : const {},
      _$data.containsKey('genderTextId') ? l$genderTextId : const {},
      _$data.containsKey('cityOfResidence') ? l$cityOfResidence : const {},
      _$data.containsKey('regionOfResidence') ? l$regionOfResidence : const {},
      _$data.containsKey('countryOfResidenceTextId')
          ? l$countryOfResidenceTextId
          : const {},
      _$data.containsKey('postalCode') ? l$postalCode : const {},
      _$data.containsKey('avatarUrl') ? l$avatarUrl : const {},
      _$data.containsKey('jobTitle') ? l$jobTitle : const {},
      _$data.containsKey('websites')
          ? l$websites == null
              ? null
              : Object.hashAll(l$websites.map((v) => v))
          : const {},
      _$data.containsKey('authType') ? l$authType : const {},
      _$data.containsKey('currentPassword') ? l$currentPassword : const {},
      _$data.containsKey('newPassword') ? l$newPassword : const {},
      _$data.containsKey('preferredLanguageTextId')
          ? l$preferredLanguageTextId
          : const {},
      _$data.containsKey('spokenLanguagesTextIds')
          ? l$spokenLanguagesTextIds == null
              ? null
              : Object.hashAll(l$spokenLanguagesTextIds.map((v) => v))
          : const {},
      _$data.containsKey('selectedUiLanguageTextId')
          ? l$selectedUiLanguageTextId
          : const {},
      _$data.containsKey('fallbackUiLanguageTextId')
          ? l$fallbackUiLanguageTextId
          : const {},
      _$data.containsKey('roles')
          ? l$roles == null
              ? null
              : Object.hashAll(l$roles.map((v) => v))
          : const {},
      _$data.containsKey('appFeatures')
          ? l$appFeatures == null
              ? null
              : Object.hashAll(l$appFeatures.map((v) => v))
          : const {},
      _$data.containsKey('source') ? l$source : const {},
      _$data.containsKey('timezone') ? l$timezone : const {},
      _$data.containsKey('preferences') ? l$preferences : const {},
      _$data.containsKey('trustLevel') ? l$trustLevel : const {},
      _$data.containsKey('signedInAt') ? l$signedInAt : const {},
      _$data.containsKey('signedOutAt') ? l$signedOutAt : const {},
      _$data.containsKey('latestActivityAt') ? l$latestActivityAt : const {},
      _$data.containsKey('inactivatedAt') ? l$inactivatedAt : const {},
      _$data.containsKey('inactivatedBy') ? l$inactivatedBy : const {},
      _$data.containsKey('companyIds')
          ? l$companyIds == null
              ? null
              : Object.hashAll(l$companyIds.map((v) => v))
          : const {},
      _$data.containsKey('groupIds')
          ? l$groupIds == null
              ? null
              : Object.hashAll(l$groupIds.map((v) => v))
          : const {},
      _$data.containsKey('parentGroupIds')
          ? l$parentGroupIds == null
              ? null
              : Object.hashAll(l$parentGroupIds.map((v) => v))
          : const {},
      _$data.containsKey('externalGroupIds')
          ? l$externalGroupIds == null
              ? null
              : Object.hashAll(l$externalGroupIds.map((v) => v))
          : const {},
      _$data.containsKey('groupMemberships')
          ? l$groupMemberships == null
              ? null
              : Object.hashAll(l$groupMemberships.map((v) => v))
          : const {},
      _$data.containsKey('addToGroupIds')
          ? l$addToGroupIds == null
              ? null
              : Object.hashAll(l$addToGroupIds.map((v) => v))
          : const {},
      _$data.containsKey('removeFromGroupIds')
          ? l$removeFromGroupIds == null
              ? null
              : Object.hashAll(l$removeFromGroupIds.map((v) => v))
          : const {},
      _$data.containsKey('seeksHelp') ? l$seeksHelp : const {},
      _$data.containsKey('offersHelp') ? l$offersHelp : const {},
      _$data.containsKey('birthYear') ? l$birthYear : const {},
      _$data.containsKey('genderSelfDescribed')
          ? l$genderSelfDescribed
          : const {},
      _$data.containsKey('ethnicity') ? l$ethnicity : const {},
      _$data.containsKey('educationLevelTextId')
          ? l$educationLevelTextId
          : const {},
      _$data.containsKey('professionalBackground')
          ? l$professionalBackground
          : const {},
      _$data.containsKey('yearsManagementExperience')
          ? l$yearsManagementExperience
          : const {},
      _$data.containsKey('yearsOwnershipExperience')
          ? l$yearsOwnershipExperience
          : const {},
      _$data.containsKey('ssoIdp') ? l$ssoIdp : const {},
      _$data.containsKey('oneLiner') ? l$oneLiner : const {},
      _$data.containsKey('company') ? l$company : const {},
    ]);
  }
}

abstract class CopyWith$Input$UserInput<TRes> {
  factory CopyWith$Input$UserInput(
    Input$UserInput instance,
    TRes Function(Input$UserInput) then,
  ) = _CopyWithImpl$Input$UserInput;

  factory CopyWith$Input$UserInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UserInput;

  TRes call({
    String? id,
    String? adminNotes,
    List<Input$ModelEventInput>? events,
    Input$BaseModelMetadataInput? metadata,
    DateTime? createdAt,
    String? createdBy,
    DateTime? updatedAt,
    String? updatedBy,
    DateTime? deletedAt,
    String? deletedBy,
    String? firstName,
    String? lastName,
    String? fullName,
    String? userHandle,
    String? phoneNumber,
    DateTime? phoneNumberUpdatedAt,
    bool? isPhoneNumberVerified,
    String? email,
    DateTime? emailUpdatedAt,
    bool? isEmailVerified,
    String? genderTextId,
    String? cityOfResidence,
    String? regionOfResidence,
    String? countryOfResidenceTextId,
    String? postalCode,
    String? avatarUrl,
    String? jobTitle,
    List<Input$LabeledStringValueInput>? websites,
    Enum$AuthType? authType,
    String? currentPassword,
    String? newPassword,
    String? preferredLanguageTextId,
    List<String>? spokenLanguagesTextIds,
    Enum$UiLanguage? selectedUiLanguageTextId,
    Enum$UiLanguage? fallbackUiLanguageTextId,
    List<Enum$UserRole>? roles,
    List<Enum$AppFeature>? appFeatures,
    String? source,
    String? timezone,
    Input$UserPreferencesInput? preferences,
    int? trustLevel,
    DateTime? signedInAt,
    DateTime? signedOutAt,
    DateTime? latestActivityAt,
    DateTime? inactivatedAt,
    String? inactivatedBy,
    List<String>? companyIds,
    List<String>? groupIds,
    List<String>? parentGroupIds,
    List<String>? externalGroupIds,
    List<Input$GroupMembershipInput>? groupMemberships,
    List<String>? addToGroupIds,
    List<String>? removeFromGroupIds,
    bool? seeksHelp,
    bool? offersHelp,
    int? birthYear,
    String? genderSelfDescribed,
    String? ethnicity,
    String? educationLevelTextId,
    String? professionalBackground,
    int? yearsManagementExperience,
    int? yearsOwnershipExperience,
    String? ssoIdp,
    String? oneLiner,
    Input$CompanyInput? company,
  });
  TRes events(
      Iterable<Input$ModelEventInput>? Function(
              Iterable<CopyWith$Input$ModelEventInput<Input$ModelEventInput>>?)
          _fn);
  CopyWith$Input$BaseModelMetadataInput<TRes> get metadata;
  TRes websites(
      Iterable<Input$LabeledStringValueInput>? Function(
              Iterable<
                  CopyWith$Input$LabeledStringValueInput<
                      Input$LabeledStringValueInput>>?)
          _fn);
  CopyWith$Input$UserPreferencesInput<TRes> get preferences;
  TRes groupMemberships(
      Iterable<Input$GroupMembershipInput>? Function(
              Iterable<
                  CopyWith$Input$GroupMembershipInput<
                      Input$GroupMembershipInput>>?)
          _fn);
  CopyWith$Input$CompanyInput<TRes> get company;
}

class _CopyWithImpl$Input$UserInput<TRes>
    implements CopyWith$Input$UserInput<TRes> {
  _CopyWithImpl$Input$UserInput(
    this._instance,
    this._then,
  );

  final Input$UserInput _instance;

  final TRes Function(Input$UserInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? adminNotes = _undefined,
    Object? events = _undefined,
    Object? metadata = _undefined,
    Object? createdAt = _undefined,
    Object? createdBy = _undefined,
    Object? updatedAt = _undefined,
    Object? updatedBy = _undefined,
    Object? deletedAt = _undefined,
    Object? deletedBy = _undefined,
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? fullName = _undefined,
    Object? userHandle = _undefined,
    Object? phoneNumber = _undefined,
    Object? phoneNumberUpdatedAt = _undefined,
    Object? isPhoneNumberVerified = _undefined,
    Object? email = _undefined,
    Object? emailUpdatedAt = _undefined,
    Object? isEmailVerified = _undefined,
    Object? genderTextId = _undefined,
    Object? cityOfResidence = _undefined,
    Object? regionOfResidence = _undefined,
    Object? countryOfResidenceTextId = _undefined,
    Object? postalCode = _undefined,
    Object? avatarUrl = _undefined,
    Object? jobTitle = _undefined,
    Object? websites = _undefined,
    Object? authType = _undefined,
    Object? currentPassword = _undefined,
    Object? newPassword = _undefined,
    Object? preferredLanguageTextId = _undefined,
    Object? spokenLanguagesTextIds = _undefined,
    Object? selectedUiLanguageTextId = _undefined,
    Object? fallbackUiLanguageTextId = _undefined,
    Object? roles = _undefined,
    Object? appFeatures = _undefined,
    Object? source = _undefined,
    Object? timezone = _undefined,
    Object? preferences = _undefined,
    Object? trustLevel = _undefined,
    Object? signedInAt = _undefined,
    Object? signedOutAt = _undefined,
    Object? latestActivityAt = _undefined,
    Object? inactivatedAt = _undefined,
    Object? inactivatedBy = _undefined,
    Object? companyIds = _undefined,
    Object? groupIds = _undefined,
    Object? parentGroupIds = _undefined,
    Object? externalGroupIds = _undefined,
    Object? groupMemberships = _undefined,
    Object? addToGroupIds = _undefined,
    Object? removeFromGroupIds = _undefined,
    Object? seeksHelp = _undefined,
    Object? offersHelp = _undefined,
    Object? birthYear = _undefined,
    Object? genderSelfDescribed = _undefined,
    Object? ethnicity = _undefined,
    Object? educationLevelTextId = _undefined,
    Object? professionalBackground = _undefined,
    Object? yearsManagementExperience = _undefined,
    Object? yearsOwnershipExperience = _undefined,
    Object? ssoIdp = _undefined,
    Object? oneLiner = _undefined,
    Object? company = _undefined,
  }) =>
      _then(Input$UserInput._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as String?),
        if (adminNotes != _undefined) 'adminNotes': (adminNotes as String?),
        if (events != _undefined)
          'events': (events as List<Input$ModelEventInput>?),
        if (metadata != _undefined)
          'metadata': (metadata as Input$BaseModelMetadataInput?),
        if (createdAt != _undefined) 'createdAt': (createdAt as DateTime?),
        if (createdBy != _undefined) 'createdBy': (createdBy as String?),
        if (updatedAt != _undefined) 'updatedAt': (updatedAt as DateTime?),
        if (updatedBy != _undefined) 'updatedBy': (updatedBy as String?),
        if (deletedAt != _undefined) 'deletedAt': (deletedAt as DateTime?),
        if (deletedBy != _undefined) 'deletedBy': (deletedBy as String?),
        if (firstName != _undefined) 'firstName': (firstName as String?),
        if (lastName != _undefined) 'lastName': (lastName as String?),
        if (fullName != _undefined) 'fullName': (fullName as String?),
        if (userHandle != _undefined) 'userHandle': (userHandle as String?),
        if (phoneNumber != _undefined) 'phoneNumber': (phoneNumber as String?),
        if (phoneNumberUpdatedAt != _undefined)
          'phoneNumberUpdatedAt': (phoneNumberUpdatedAt as DateTime?),
        if (isPhoneNumberVerified != _undefined)
          'isPhoneNumberVerified': (isPhoneNumberVerified as bool?),
        if (email != _undefined) 'email': (email as String?),
        if (emailUpdatedAt != _undefined)
          'emailUpdatedAt': (emailUpdatedAt as DateTime?),
        if (isEmailVerified != _undefined)
          'isEmailVerified': (isEmailVerified as bool?),
        if (genderTextId != _undefined)
          'genderTextId': (genderTextId as String?),
        if (cityOfResidence != _undefined)
          'cityOfResidence': (cityOfResidence as String?),
        if (regionOfResidence != _undefined)
          'regionOfResidence': (regionOfResidence as String?),
        if (countryOfResidenceTextId != _undefined)
          'countryOfResidenceTextId': (countryOfResidenceTextId as String?),
        if (postalCode != _undefined) 'postalCode': (postalCode as String?),
        if (avatarUrl != _undefined) 'avatarUrl': (avatarUrl as String?),
        if (jobTitle != _undefined) 'jobTitle': (jobTitle as String?),
        if (websites != _undefined)
          'websites': (websites as List<Input$LabeledStringValueInput>?),
        if (authType != _undefined) 'authType': (authType as Enum$AuthType?),
        if (currentPassword != _undefined)
          'currentPassword': (currentPassword as String?),
        if (newPassword != _undefined) 'newPassword': (newPassword as String?),
        if (preferredLanguageTextId != _undefined)
          'preferredLanguageTextId': (preferredLanguageTextId as String?),
        if (spokenLanguagesTextIds != _undefined)
          'spokenLanguagesTextIds': (spokenLanguagesTextIds as List<String>?),
        if (selectedUiLanguageTextId != _undefined)
          'selectedUiLanguageTextId':
              (selectedUiLanguageTextId as Enum$UiLanguage?),
        if (fallbackUiLanguageTextId != _undefined)
          'fallbackUiLanguageTextId':
              (fallbackUiLanguageTextId as Enum$UiLanguage?),
        if (roles != _undefined) 'roles': (roles as List<Enum$UserRole>?),
        if (appFeatures != _undefined)
          'appFeatures': (appFeatures as List<Enum$AppFeature>?),
        if (source != _undefined) 'source': (source as String?),
        if (timezone != _undefined) 'timezone': (timezone as String?),
        if (preferences != _undefined)
          'preferences': (preferences as Input$UserPreferencesInput?),
        if (trustLevel != _undefined) 'trustLevel': (trustLevel as int?),
        if (signedInAt != _undefined) 'signedInAt': (signedInAt as DateTime?),
        if (signedOutAt != _undefined)
          'signedOutAt': (signedOutAt as DateTime?),
        if (latestActivityAt != _undefined)
          'latestActivityAt': (latestActivityAt as DateTime?),
        if (inactivatedAt != _undefined)
          'inactivatedAt': (inactivatedAt as DateTime?),
        if (inactivatedBy != _undefined)
          'inactivatedBy': (inactivatedBy as String?),
        if (companyIds != _undefined)
          'companyIds': (companyIds as List<String>?),
        if (groupIds != _undefined) 'groupIds': (groupIds as List<String>?),
        if (parentGroupIds != _undefined)
          'parentGroupIds': (parentGroupIds as List<String>?),
        if (externalGroupIds != _undefined)
          'externalGroupIds': (externalGroupIds as List<String>?),
        if (groupMemberships != _undefined)
          'groupMemberships':
              (groupMemberships as List<Input$GroupMembershipInput>?),
        if (addToGroupIds != _undefined)
          'addToGroupIds': (addToGroupIds as List<String>?),
        if (removeFromGroupIds != _undefined)
          'removeFromGroupIds': (removeFromGroupIds as List<String>?),
        if (seeksHelp != _undefined) 'seeksHelp': (seeksHelp as bool?),
        if (offersHelp != _undefined) 'offersHelp': (offersHelp as bool?),
        if (birthYear != _undefined) 'birthYear': (birthYear as int?),
        if (genderSelfDescribed != _undefined)
          'genderSelfDescribed': (genderSelfDescribed as String?),
        if (ethnicity != _undefined) 'ethnicity': (ethnicity as String?),
        if (educationLevelTextId != _undefined)
          'educationLevelTextId': (educationLevelTextId as String?),
        if (professionalBackground != _undefined)
          'professionalBackground': (professionalBackground as String?),
        if (yearsManagementExperience != _undefined)
          'yearsManagementExperience': (yearsManagementExperience as int?),
        if (yearsOwnershipExperience != _undefined)
          'yearsOwnershipExperience': (yearsOwnershipExperience as int?),
        if (ssoIdp != _undefined) 'ssoIdp': (ssoIdp as String?),
        if (oneLiner != _undefined) 'oneLiner': (oneLiner as String?),
        if (company != _undefined) 'company': (company as Input$CompanyInput?),
      }));
  TRes events(
          Iterable<Input$ModelEventInput>? Function(
                  Iterable<
                      CopyWith$Input$ModelEventInput<Input$ModelEventInput>>?)
              _fn) =>
      call(
          events:
              _fn(_instance.events?.map((e) => CopyWith$Input$ModelEventInput(
                    e,
                    (i) => i,
                  )))?.toList());
  CopyWith$Input$BaseModelMetadataInput<TRes> get metadata {
    final local$metadata = _instance.metadata;
    return local$metadata == null
        ? CopyWith$Input$BaseModelMetadataInput.stub(_then(_instance))
        : CopyWith$Input$BaseModelMetadataInput(
            local$metadata, (e) => call(metadata: e));
  }

  TRes websites(
          Iterable<Input$LabeledStringValueInput>? Function(
                  Iterable<
                      CopyWith$Input$LabeledStringValueInput<
                          Input$LabeledStringValueInput>>?)
              _fn) =>
      call(
          websites: _fn(_instance.websites
              ?.map((e) => CopyWith$Input$LabeledStringValueInput(
                    e,
                    (i) => i,
                  )))?.toList());
  CopyWith$Input$UserPreferencesInput<TRes> get preferences {
    final local$preferences = _instance.preferences;
    return local$preferences == null
        ? CopyWith$Input$UserPreferencesInput.stub(_then(_instance))
        : CopyWith$Input$UserPreferencesInput(
            local$preferences, (e) => call(preferences: e));
  }

  TRes groupMemberships(
          Iterable<Input$GroupMembershipInput>? Function(
                  Iterable<
                      CopyWith$Input$GroupMembershipInput<
                          Input$GroupMembershipInput>>?)
              _fn) =>
      call(
          groupMemberships: _fn(_instance.groupMemberships
              ?.map((e) => CopyWith$Input$GroupMembershipInput(
                    e,
                    (i) => i,
                  )))?.toList());
  CopyWith$Input$CompanyInput<TRes> get company {
    final local$company = _instance.company;
    return local$company == null
        ? CopyWith$Input$CompanyInput.stub(_then(_instance))
        : CopyWith$Input$CompanyInput(local$company, (e) => call(company: e));
  }
}

class _CopyWithStubImpl$Input$UserInput<TRes>
    implements CopyWith$Input$UserInput<TRes> {
  _CopyWithStubImpl$Input$UserInput(this._res);

  TRes _res;

  call({
    String? id,
    String? adminNotes,
    List<Input$ModelEventInput>? events,
    Input$BaseModelMetadataInput? metadata,
    DateTime? createdAt,
    String? createdBy,
    DateTime? updatedAt,
    String? updatedBy,
    DateTime? deletedAt,
    String? deletedBy,
    String? firstName,
    String? lastName,
    String? fullName,
    String? userHandle,
    String? phoneNumber,
    DateTime? phoneNumberUpdatedAt,
    bool? isPhoneNumberVerified,
    String? email,
    DateTime? emailUpdatedAt,
    bool? isEmailVerified,
    String? genderTextId,
    String? cityOfResidence,
    String? regionOfResidence,
    String? countryOfResidenceTextId,
    String? postalCode,
    String? avatarUrl,
    String? jobTitle,
    List<Input$LabeledStringValueInput>? websites,
    Enum$AuthType? authType,
    String? currentPassword,
    String? newPassword,
    String? preferredLanguageTextId,
    List<String>? spokenLanguagesTextIds,
    Enum$UiLanguage? selectedUiLanguageTextId,
    Enum$UiLanguage? fallbackUiLanguageTextId,
    List<Enum$UserRole>? roles,
    List<Enum$AppFeature>? appFeatures,
    String? source,
    String? timezone,
    Input$UserPreferencesInput? preferences,
    int? trustLevel,
    DateTime? signedInAt,
    DateTime? signedOutAt,
    DateTime? latestActivityAt,
    DateTime? inactivatedAt,
    String? inactivatedBy,
    List<String>? companyIds,
    List<String>? groupIds,
    List<String>? parentGroupIds,
    List<String>? externalGroupIds,
    List<Input$GroupMembershipInput>? groupMemberships,
    List<String>? addToGroupIds,
    List<String>? removeFromGroupIds,
    bool? seeksHelp,
    bool? offersHelp,
    int? birthYear,
    String? genderSelfDescribed,
    String? ethnicity,
    String? educationLevelTextId,
    String? professionalBackground,
    int? yearsManagementExperience,
    int? yearsOwnershipExperience,
    String? ssoIdp,
    String? oneLiner,
    Input$CompanyInput? company,
  }) =>
      _res;
  events(_fn) => _res;
  CopyWith$Input$BaseModelMetadataInput<TRes> get metadata =>
      CopyWith$Input$BaseModelMetadataInput.stub(_res);
  websites(_fn) => _res;
  CopyWith$Input$UserPreferencesInput<TRes> get preferences =>
      CopyWith$Input$UserPreferencesInput.stub(_res);
  groupMemberships(_fn) => _res;
  CopyWith$Input$CompanyInput<TRes> get company =>
      CopyWith$Input$CompanyInput.stub(_res);
}

class Input$ModelEventInput {
  factory Input$ModelEventInput({
    DateTime? time,
    Enum$ModelEventType? modelEventType,
    String? message,
  }) =>
      Input$ModelEventInput._({
        if (time != null) r'time': time,
        if (modelEventType != null) r'modelEventType': modelEventType,
        if (message != null) r'message': message,
      });

  Input$ModelEventInput._(this._$data);

  factory Input$ModelEventInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('time')) {
      final l$time = data['time'];
      result$data['time'] = DateTime.parse((l$time as String));
    }
    if (data.containsKey('modelEventType')) {
      final l$modelEventType = data['modelEventType'];
      result$data['modelEventType'] =
          fromJson$Enum$ModelEventType((l$modelEventType as String));
    }
    if (data.containsKey('message')) {
      final l$message = data['message'];
      result$data['message'] = (l$message as String);
    }
    return Input$ModelEventInput._(result$data);
  }

  Map<String, dynamic> _$data;

  DateTime? get time => (_$data['time'] as DateTime?);
  Enum$ModelEventType? get modelEventType =>
      (_$data['modelEventType'] as Enum$ModelEventType?);
  String? get message => (_$data['message'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('time')) {
      final l$time = time;
      result$data['time'] = (l$time as DateTime).toIso8601String();
    }
    if (_$data.containsKey('modelEventType')) {
      final l$modelEventType = modelEventType;
      result$data['modelEventType'] =
          toJson$Enum$ModelEventType((l$modelEventType as Enum$ModelEventType));
    }
    if (_$data.containsKey('message')) {
      final l$message = message;
      result$data['message'] = (l$message as String);
    }
    return result$data;
  }

  CopyWith$Input$ModelEventInput<Input$ModelEventInput> get copyWith =>
      CopyWith$Input$ModelEventInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ModelEventInput) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$time = time;
    final lOther$time = other.time;
    if (_$data.containsKey('time') != other._$data.containsKey('time')) {
      return false;
    }
    if (l$time != lOther$time) {
      return false;
    }
    final l$modelEventType = modelEventType;
    final lOther$modelEventType = other.modelEventType;
    if (_$data.containsKey('modelEventType') !=
        other._$data.containsKey('modelEventType')) {
      return false;
    }
    if (l$modelEventType != lOther$modelEventType) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (_$data.containsKey('message') != other._$data.containsKey('message')) {
      return false;
    }
    if (l$message != lOther$message) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$time = time;
    final l$modelEventType = modelEventType;
    final l$message = message;
    return Object.hashAll([
      _$data.containsKey('time') ? l$time : const {},
      _$data.containsKey('modelEventType') ? l$modelEventType : const {},
      _$data.containsKey('message') ? l$message : const {},
    ]);
  }
}

abstract class CopyWith$Input$ModelEventInput<TRes> {
  factory CopyWith$Input$ModelEventInput(
    Input$ModelEventInput instance,
    TRes Function(Input$ModelEventInput) then,
  ) = _CopyWithImpl$Input$ModelEventInput;

  factory CopyWith$Input$ModelEventInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ModelEventInput;

  TRes call({
    DateTime? time,
    Enum$ModelEventType? modelEventType,
    String? message,
  });
}

class _CopyWithImpl$Input$ModelEventInput<TRes>
    implements CopyWith$Input$ModelEventInput<TRes> {
  _CopyWithImpl$Input$ModelEventInput(
    this._instance,
    this._then,
  );

  final Input$ModelEventInput _instance;

  final TRes Function(Input$ModelEventInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? time = _undefined,
    Object? modelEventType = _undefined,
    Object? message = _undefined,
  }) =>
      _then(Input$ModelEventInput._({
        ..._instance._$data,
        if (time != _undefined && time != null) 'time': (time as DateTime),
        if (modelEventType != _undefined && modelEventType != null)
          'modelEventType': (modelEventType as Enum$ModelEventType),
        if (message != _undefined && message != null)
          'message': (message as String),
      }));
}

class _CopyWithStubImpl$Input$ModelEventInput<TRes>
    implements CopyWith$Input$ModelEventInput<TRes> {
  _CopyWithStubImpl$Input$ModelEventInput(this._res);

  TRes _res;

  call({
    DateTime? time,
    Enum$ModelEventType? modelEventType,
    String? message,
  }) =>
      _res;
}

class Input$BaseModelMetadataInput {
  factory Input$BaseModelMetadataInput({DateTime? updatedAt}) =>
      Input$BaseModelMetadataInput._({
        if (updatedAt != null) r'updatedAt': updatedAt,
      });

  Input$BaseModelMetadataInput._(this._$data);

  factory Input$BaseModelMetadataInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('updatedAt')) {
      final l$updatedAt = data['updatedAt'];
      result$data['updatedAt'] =
          l$updatedAt == null ? null : DateTime.parse((l$updatedAt as String));
    }
    return Input$BaseModelMetadataInput._(result$data);
  }

  Map<String, dynamic> _$data;

  DateTime? get updatedAt => (_$data['updatedAt'] as DateTime?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('updatedAt')) {
      final l$updatedAt = updatedAt;
      result$data['updatedAt'] = l$updatedAt?.toIso8601String();
    }
    return result$data;
  }

  CopyWith$Input$BaseModelMetadataInput<Input$BaseModelMetadataInput>
      get copyWith => CopyWith$Input$BaseModelMetadataInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$BaseModelMetadataInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (_$data.containsKey('updatedAt') !=
        other._$data.containsKey('updatedAt')) {
      return false;
    }
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$updatedAt = updatedAt;
    return Object.hashAll(
        [_$data.containsKey('updatedAt') ? l$updatedAt : const {}]);
  }
}

abstract class CopyWith$Input$BaseModelMetadataInput<TRes> {
  factory CopyWith$Input$BaseModelMetadataInput(
    Input$BaseModelMetadataInput instance,
    TRes Function(Input$BaseModelMetadataInput) then,
  ) = _CopyWithImpl$Input$BaseModelMetadataInput;

  factory CopyWith$Input$BaseModelMetadataInput.stub(TRes res) =
      _CopyWithStubImpl$Input$BaseModelMetadataInput;

  TRes call({DateTime? updatedAt});
}

class _CopyWithImpl$Input$BaseModelMetadataInput<TRes>
    implements CopyWith$Input$BaseModelMetadataInput<TRes> {
  _CopyWithImpl$Input$BaseModelMetadataInput(
    this._instance,
    this._then,
  );

  final Input$BaseModelMetadataInput _instance;

  final TRes Function(Input$BaseModelMetadataInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? updatedAt = _undefined}) =>
      _then(Input$BaseModelMetadataInput._({
        ..._instance._$data,
        if (updatedAt != _undefined) 'updatedAt': (updatedAt as DateTime?),
      }));
}

class _CopyWithStubImpl$Input$BaseModelMetadataInput<TRes>
    implements CopyWith$Input$BaseModelMetadataInput<TRes> {
  _CopyWithStubImpl$Input$BaseModelMetadataInput(this._res);

  TRes _res;

  call({DateTime? updatedAt}) => _res;
}

class Input$LabeledStringValueInput {
  factory Input$LabeledStringValueInput({
    String? label,
    String? value,
    List<String>? tags,
  }) =>
      Input$LabeledStringValueInput._({
        if (label != null) r'label': label,
        if (value != null) r'value': value,
        if (tags != null) r'tags': tags,
      });

  Input$LabeledStringValueInput._(this._$data);

  factory Input$LabeledStringValueInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('label')) {
      final l$label = data['label'];
      result$data['label'] = (l$label as String?);
    }
    if (data.containsKey('value')) {
      final l$value = data['value'];
      result$data['value'] = (l$value as String?);
    }
    if (data.containsKey('tags')) {
      final l$tags = data['tags'];
      result$data['tags'] =
          (l$tags as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    return Input$LabeledStringValueInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get label => (_$data['label'] as String?);
  String? get value => (_$data['value'] as String?);
  List<String>? get tags => (_$data['tags'] as List<String>?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('label')) {
      final l$label = label;
      result$data['label'] = l$label;
    }
    if (_$data.containsKey('value')) {
      final l$value = value;
      result$data['value'] = l$value;
    }
    if (_$data.containsKey('tags')) {
      final l$tags = tags;
      result$data['tags'] = l$tags?.map((e) => e).toList();
    }
    return result$data;
  }

  CopyWith$Input$LabeledStringValueInput<Input$LabeledStringValueInput>
      get copyWith => CopyWith$Input$LabeledStringValueInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$LabeledStringValueInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$label = label;
    final lOther$label = other.label;
    if (_$data.containsKey('label') != other._$data.containsKey('label')) {
      return false;
    }
    if (l$label != lOther$label) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (_$data.containsKey('value') != other._$data.containsKey('value')) {
      return false;
    }
    if (l$value != lOther$value) {
      return false;
    }
    final l$tags = tags;
    final lOther$tags = other.tags;
    if (_$data.containsKey('tags') != other._$data.containsKey('tags')) {
      return false;
    }
    if (l$tags != null && lOther$tags != null) {
      if (l$tags.length != lOther$tags.length) {
        return false;
      }
      for (int i = 0; i < l$tags.length; i++) {
        final l$tags$entry = l$tags[i];
        final lOther$tags$entry = lOther$tags[i];
        if (l$tags$entry != lOther$tags$entry) {
          return false;
        }
      }
    } else if (l$tags != lOther$tags) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$label = label;
    final l$value = value;
    final l$tags = tags;
    return Object.hashAll([
      _$data.containsKey('label') ? l$label : const {},
      _$data.containsKey('value') ? l$value : const {},
      _$data.containsKey('tags')
          ? l$tags == null
              ? null
              : Object.hashAll(l$tags.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$LabeledStringValueInput<TRes> {
  factory CopyWith$Input$LabeledStringValueInput(
    Input$LabeledStringValueInput instance,
    TRes Function(Input$LabeledStringValueInput) then,
  ) = _CopyWithImpl$Input$LabeledStringValueInput;

  factory CopyWith$Input$LabeledStringValueInput.stub(TRes res) =
      _CopyWithStubImpl$Input$LabeledStringValueInput;

  TRes call({
    String? label,
    String? value,
    List<String>? tags,
  });
}

class _CopyWithImpl$Input$LabeledStringValueInput<TRes>
    implements CopyWith$Input$LabeledStringValueInput<TRes> {
  _CopyWithImpl$Input$LabeledStringValueInput(
    this._instance,
    this._then,
  );

  final Input$LabeledStringValueInput _instance;

  final TRes Function(Input$LabeledStringValueInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? label = _undefined,
    Object? value = _undefined,
    Object? tags = _undefined,
  }) =>
      _then(Input$LabeledStringValueInput._({
        ..._instance._$data,
        if (label != _undefined) 'label': (label as String?),
        if (value != _undefined) 'value': (value as String?),
        if (tags != _undefined) 'tags': (tags as List<String>?),
      }));
}

class _CopyWithStubImpl$Input$LabeledStringValueInput<TRes>
    implements CopyWith$Input$LabeledStringValueInput<TRes> {
  _CopyWithStubImpl$Input$LabeledStringValueInput(this._res);

  TRes _res;

  call({
    String? label,
    String? value,
    List<String>? tags,
  }) =>
      _res;
}

class Input$UserPreferencesInput {
  factory Input$UserPreferencesInput({
    String? id,
    String? adminNotes,
    List<Input$ModelEventInput>? events,
    Input$BaseModelMetadataInput? metadata,
    DateTime? createdAt,
    String? createdBy,
    DateTime? updatedAt,
    String? updatedBy,
    DateTime? deletedAt,
    String? deletedBy,
    bool? shareEmail,
    bool? sharePhoneNumber,
    bool? showWelcomeMessage,
  }) =>
      Input$UserPreferencesInput._({
        if (id != null) r'id': id,
        if (adminNotes != null) r'adminNotes': adminNotes,
        if (events != null) r'events': events,
        if (metadata != null) r'metadata': metadata,
        if (createdAt != null) r'createdAt': createdAt,
        if (createdBy != null) r'createdBy': createdBy,
        if (updatedAt != null) r'updatedAt': updatedAt,
        if (updatedBy != null) r'updatedBy': updatedBy,
        if (deletedAt != null) r'deletedAt': deletedAt,
        if (deletedBy != null) r'deletedBy': deletedBy,
        if (shareEmail != null) r'shareEmail': shareEmail,
        if (sharePhoneNumber != null) r'sharePhoneNumber': sharePhoneNumber,
        if (showWelcomeMessage != null)
          r'showWelcomeMessage': showWelcomeMessage,
      });

  Input$UserPreferencesInput._(this._$data);

  factory Input$UserPreferencesInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as String?);
    }
    if (data.containsKey('adminNotes')) {
      final l$adminNotes = data['adminNotes'];
      result$data['adminNotes'] = (l$adminNotes as String?);
    }
    if (data.containsKey('events')) {
      final l$events = data['events'];
      result$data['events'] = (l$events as List<dynamic>?)
          ?.map((e) =>
              Input$ModelEventInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('metadata')) {
      final l$metadata = data['metadata'];
      result$data['metadata'] = l$metadata == null
          ? null
          : Input$BaseModelMetadataInput.fromJson(
              (l$metadata as Map<String, dynamic>));
    }
    if (data.containsKey('createdAt')) {
      final l$createdAt = data['createdAt'];
      result$data['createdAt'] =
          l$createdAt == null ? null : DateTime.parse((l$createdAt as String));
    }
    if (data.containsKey('createdBy')) {
      final l$createdBy = data['createdBy'];
      result$data['createdBy'] = (l$createdBy as String?);
    }
    if (data.containsKey('updatedAt')) {
      final l$updatedAt = data['updatedAt'];
      result$data['updatedAt'] =
          l$updatedAt == null ? null : DateTime.parse((l$updatedAt as String));
    }
    if (data.containsKey('updatedBy')) {
      final l$updatedBy = data['updatedBy'];
      result$data['updatedBy'] = (l$updatedBy as String?);
    }
    if (data.containsKey('deletedAt')) {
      final l$deletedAt = data['deletedAt'];
      result$data['deletedAt'] =
          l$deletedAt == null ? null : DateTime.parse((l$deletedAt as String));
    }
    if (data.containsKey('deletedBy')) {
      final l$deletedBy = data['deletedBy'];
      result$data['deletedBy'] = (l$deletedBy as String?);
    }
    if (data.containsKey('shareEmail')) {
      final l$shareEmail = data['shareEmail'];
      result$data['shareEmail'] = (l$shareEmail as bool?);
    }
    if (data.containsKey('sharePhoneNumber')) {
      final l$sharePhoneNumber = data['sharePhoneNumber'];
      result$data['sharePhoneNumber'] = (l$sharePhoneNumber as bool?);
    }
    if (data.containsKey('showWelcomeMessage')) {
      final l$showWelcomeMessage = data['showWelcomeMessage'];
      result$data['showWelcomeMessage'] = (l$showWelcomeMessage as bool?);
    }
    return Input$UserPreferencesInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get id => (_$data['id'] as String?);
  String? get adminNotes => (_$data['adminNotes'] as String?);
  List<Input$ModelEventInput>? get events =>
      (_$data['events'] as List<Input$ModelEventInput>?);
  Input$BaseModelMetadataInput? get metadata =>
      (_$data['metadata'] as Input$BaseModelMetadataInput?);
  DateTime? get createdAt => (_$data['createdAt'] as DateTime?);
  String? get createdBy => (_$data['createdBy'] as String?);
  DateTime? get updatedAt => (_$data['updatedAt'] as DateTime?);
  String? get updatedBy => (_$data['updatedBy'] as String?);
  DateTime? get deletedAt => (_$data['deletedAt'] as DateTime?);
  String? get deletedBy => (_$data['deletedBy'] as String?);
  bool? get shareEmail => (_$data['shareEmail'] as bool?);
  bool? get sharePhoneNumber => (_$data['sharePhoneNumber'] as bool?);
  bool? get showWelcomeMessage => (_$data['showWelcomeMessage'] as bool?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('adminNotes')) {
      final l$adminNotes = adminNotes;
      result$data['adminNotes'] = l$adminNotes;
    }
    if (_$data.containsKey('events')) {
      final l$events = events;
      result$data['events'] = l$events?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('metadata')) {
      final l$metadata = metadata;
      result$data['metadata'] = l$metadata?.toJson();
    }
    if (_$data.containsKey('createdAt')) {
      final l$createdAt = createdAt;
      result$data['createdAt'] = l$createdAt?.toIso8601String();
    }
    if (_$data.containsKey('createdBy')) {
      final l$createdBy = createdBy;
      result$data['createdBy'] = l$createdBy;
    }
    if (_$data.containsKey('updatedAt')) {
      final l$updatedAt = updatedAt;
      result$data['updatedAt'] = l$updatedAt?.toIso8601String();
    }
    if (_$data.containsKey('updatedBy')) {
      final l$updatedBy = updatedBy;
      result$data['updatedBy'] = l$updatedBy;
    }
    if (_$data.containsKey('deletedAt')) {
      final l$deletedAt = deletedAt;
      result$data['deletedAt'] = l$deletedAt?.toIso8601String();
    }
    if (_$data.containsKey('deletedBy')) {
      final l$deletedBy = deletedBy;
      result$data['deletedBy'] = l$deletedBy;
    }
    if (_$data.containsKey('shareEmail')) {
      final l$shareEmail = shareEmail;
      result$data['shareEmail'] = l$shareEmail;
    }
    if (_$data.containsKey('sharePhoneNumber')) {
      final l$sharePhoneNumber = sharePhoneNumber;
      result$data['sharePhoneNumber'] = l$sharePhoneNumber;
    }
    if (_$data.containsKey('showWelcomeMessage')) {
      final l$showWelcomeMessage = showWelcomeMessage;
      result$data['showWelcomeMessage'] = l$showWelcomeMessage;
    }
    return result$data;
  }

  CopyWith$Input$UserPreferencesInput<Input$UserPreferencesInput>
      get copyWith => CopyWith$Input$UserPreferencesInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$UserPreferencesInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$adminNotes = adminNotes;
    final lOther$adminNotes = other.adminNotes;
    if (_$data.containsKey('adminNotes') !=
        other._$data.containsKey('adminNotes')) {
      return false;
    }
    if (l$adminNotes != lOther$adminNotes) {
      return false;
    }
    final l$events = events;
    final lOther$events = other.events;
    if (_$data.containsKey('events') != other._$data.containsKey('events')) {
      return false;
    }
    if (l$events != null && lOther$events != null) {
      if (l$events.length != lOther$events.length) {
        return false;
      }
      for (int i = 0; i < l$events.length; i++) {
        final l$events$entry = l$events[i];
        final lOther$events$entry = lOther$events[i];
        if (l$events$entry != lOther$events$entry) {
          return false;
        }
      }
    } else if (l$events != lOther$events) {
      return false;
    }
    final l$metadata = metadata;
    final lOther$metadata = other.metadata;
    if (_$data.containsKey('metadata') !=
        other._$data.containsKey('metadata')) {
      return false;
    }
    if (l$metadata != lOther$metadata) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (_$data.containsKey('createdAt') !=
        other._$data.containsKey('createdAt')) {
      return false;
    }
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$createdBy = createdBy;
    final lOther$createdBy = other.createdBy;
    if (_$data.containsKey('createdBy') !=
        other._$data.containsKey('createdBy')) {
      return false;
    }
    if (l$createdBy != lOther$createdBy) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (_$data.containsKey('updatedAt') !=
        other._$data.containsKey('updatedAt')) {
      return false;
    }
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    final l$updatedBy = updatedBy;
    final lOther$updatedBy = other.updatedBy;
    if (_$data.containsKey('updatedBy') !=
        other._$data.containsKey('updatedBy')) {
      return false;
    }
    if (l$updatedBy != lOther$updatedBy) {
      return false;
    }
    final l$deletedAt = deletedAt;
    final lOther$deletedAt = other.deletedAt;
    if (_$data.containsKey('deletedAt') !=
        other._$data.containsKey('deletedAt')) {
      return false;
    }
    if (l$deletedAt != lOther$deletedAt) {
      return false;
    }
    final l$deletedBy = deletedBy;
    final lOther$deletedBy = other.deletedBy;
    if (_$data.containsKey('deletedBy') !=
        other._$data.containsKey('deletedBy')) {
      return false;
    }
    if (l$deletedBy != lOther$deletedBy) {
      return false;
    }
    final l$shareEmail = shareEmail;
    final lOther$shareEmail = other.shareEmail;
    if (_$data.containsKey('shareEmail') !=
        other._$data.containsKey('shareEmail')) {
      return false;
    }
    if (l$shareEmail != lOther$shareEmail) {
      return false;
    }
    final l$sharePhoneNumber = sharePhoneNumber;
    final lOther$sharePhoneNumber = other.sharePhoneNumber;
    if (_$data.containsKey('sharePhoneNumber') !=
        other._$data.containsKey('sharePhoneNumber')) {
      return false;
    }
    if (l$sharePhoneNumber != lOther$sharePhoneNumber) {
      return false;
    }
    final l$showWelcomeMessage = showWelcomeMessage;
    final lOther$showWelcomeMessage = other.showWelcomeMessage;
    if (_$data.containsKey('showWelcomeMessage') !=
        other._$data.containsKey('showWelcomeMessage')) {
      return false;
    }
    if (l$showWelcomeMessage != lOther$showWelcomeMessage) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$adminNotes = adminNotes;
    final l$events = events;
    final l$metadata = metadata;
    final l$createdAt = createdAt;
    final l$createdBy = createdBy;
    final l$updatedAt = updatedAt;
    final l$updatedBy = updatedBy;
    final l$deletedAt = deletedAt;
    final l$deletedBy = deletedBy;
    final l$shareEmail = shareEmail;
    final l$sharePhoneNumber = sharePhoneNumber;
    final l$showWelcomeMessage = showWelcomeMessage;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('adminNotes') ? l$adminNotes : const {},
      _$data.containsKey('events')
          ? l$events == null
              ? null
              : Object.hashAll(l$events.map((v) => v))
          : const {},
      _$data.containsKey('metadata') ? l$metadata : const {},
      _$data.containsKey('createdAt') ? l$createdAt : const {},
      _$data.containsKey('createdBy') ? l$createdBy : const {},
      _$data.containsKey('updatedAt') ? l$updatedAt : const {},
      _$data.containsKey('updatedBy') ? l$updatedBy : const {},
      _$data.containsKey('deletedAt') ? l$deletedAt : const {},
      _$data.containsKey('deletedBy') ? l$deletedBy : const {},
      _$data.containsKey('shareEmail') ? l$shareEmail : const {},
      _$data.containsKey('sharePhoneNumber') ? l$sharePhoneNumber : const {},
      _$data.containsKey('showWelcomeMessage')
          ? l$showWelcomeMessage
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$UserPreferencesInput<TRes> {
  factory CopyWith$Input$UserPreferencesInput(
    Input$UserPreferencesInput instance,
    TRes Function(Input$UserPreferencesInput) then,
  ) = _CopyWithImpl$Input$UserPreferencesInput;

  factory CopyWith$Input$UserPreferencesInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UserPreferencesInput;

  TRes call({
    String? id,
    String? adminNotes,
    List<Input$ModelEventInput>? events,
    Input$BaseModelMetadataInput? metadata,
    DateTime? createdAt,
    String? createdBy,
    DateTime? updatedAt,
    String? updatedBy,
    DateTime? deletedAt,
    String? deletedBy,
    bool? shareEmail,
    bool? sharePhoneNumber,
    bool? showWelcomeMessage,
  });
  TRes events(
      Iterable<Input$ModelEventInput>? Function(
              Iterable<CopyWith$Input$ModelEventInput<Input$ModelEventInput>>?)
          _fn);
  CopyWith$Input$BaseModelMetadataInput<TRes> get metadata;
}

class _CopyWithImpl$Input$UserPreferencesInput<TRes>
    implements CopyWith$Input$UserPreferencesInput<TRes> {
  _CopyWithImpl$Input$UserPreferencesInput(
    this._instance,
    this._then,
  );

  final Input$UserPreferencesInput _instance;

  final TRes Function(Input$UserPreferencesInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? adminNotes = _undefined,
    Object? events = _undefined,
    Object? metadata = _undefined,
    Object? createdAt = _undefined,
    Object? createdBy = _undefined,
    Object? updatedAt = _undefined,
    Object? updatedBy = _undefined,
    Object? deletedAt = _undefined,
    Object? deletedBy = _undefined,
    Object? shareEmail = _undefined,
    Object? sharePhoneNumber = _undefined,
    Object? showWelcomeMessage = _undefined,
  }) =>
      _then(Input$UserPreferencesInput._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as String?),
        if (adminNotes != _undefined) 'adminNotes': (adminNotes as String?),
        if (events != _undefined)
          'events': (events as List<Input$ModelEventInput>?),
        if (metadata != _undefined)
          'metadata': (metadata as Input$BaseModelMetadataInput?),
        if (createdAt != _undefined) 'createdAt': (createdAt as DateTime?),
        if (createdBy != _undefined) 'createdBy': (createdBy as String?),
        if (updatedAt != _undefined) 'updatedAt': (updatedAt as DateTime?),
        if (updatedBy != _undefined) 'updatedBy': (updatedBy as String?),
        if (deletedAt != _undefined) 'deletedAt': (deletedAt as DateTime?),
        if (deletedBy != _undefined) 'deletedBy': (deletedBy as String?),
        if (shareEmail != _undefined) 'shareEmail': (shareEmail as bool?),
        if (sharePhoneNumber != _undefined)
          'sharePhoneNumber': (sharePhoneNumber as bool?),
        if (showWelcomeMessage != _undefined)
          'showWelcomeMessage': (showWelcomeMessage as bool?),
      }));
  TRes events(
          Iterable<Input$ModelEventInput>? Function(
                  Iterable<
                      CopyWith$Input$ModelEventInput<Input$ModelEventInput>>?)
              _fn) =>
      call(
          events:
              _fn(_instance.events?.map((e) => CopyWith$Input$ModelEventInput(
                    e,
                    (i) => i,
                  )))?.toList());
  CopyWith$Input$BaseModelMetadataInput<TRes> get metadata {
    final local$metadata = _instance.metadata;
    return local$metadata == null
        ? CopyWith$Input$BaseModelMetadataInput.stub(_then(_instance))
        : CopyWith$Input$BaseModelMetadataInput(
            local$metadata, (e) => call(metadata: e));
  }
}

class _CopyWithStubImpl$Input$UserPreferencesInput<TRes>
    implements CopyWith$Input$UserPreferencesInput<TRes> {
  _CopyWithStubImpl$Input$UserPreferencesInput(this._res);

  TRes _res;

  call({
    String? id,
    String? adminNotes,
    List<Input$ModelEventInput>? events,
    Input$BaseModelMetadataInput? metadata,
    DateTime? createdAt,
    String? createdBy,
    DateTime? updatedAt,
    String? updatedBy,
    DateTime? deletedAt,
    String? deletedBy,
    bool? shareEmail,
    bool? sharePhoneNumber,
    bool? showWelcomeMessage,
  }) =>
      _res;
  events(_fn) => _res;
  CopyWith$Input$BaseModelMetadataInput<TRes> get metadata =>
      CopyWith$Input$BaseModelMetadataInput.stub(_res);
}

class Input$GroupMembershipInput {
  factory Input$GroupMembershipInput({
    String? id,
    String? adminNotes,
    List<Input$ModelEventInput>? events,
    Input$BaseModelMetadataInput? metadata,
    DateTime? createdAt,
    String? createdBy,
    DateTime? updatedAt,
    String? updatedBy,
    DateTime? deletedAt,
    String? deletedBy,
    String? groupId,
    String? groupIdent,
    String? userId,
    List<Enum$GroupMembershipRole>? roles,
  }) =>
      Input$GroupMembershipInput._({
        if (id != null) r'id': id,
        if (adminNotes != null) r'adminNotes': adminNotes,
        if (events != null) r'events': events,
        if (metadata != null) r'metadata': metadata,
        if (createdAt != null) r'createdAt': createdAt,
        if (createdBy != null) r'createdBy': createdBy,
        if (updatedAt != null) r'updatedAt': updatedAt,
        if (updatedBy != null) r'updatedBy': updatedBy,
        if (deletedAt != null) r'deletedAt': deletedAt,
        if (deletedBy != null) r'deletedBy': deletedBy,
        if (groupId != null) r'groupId': groupId,
        if (groupIdent != null) r'groupIdent': groupIdent,
        if (userId != null) r'userId': userId,
        if (roles != null) r'roles': roles,
      });

  Input$GroupMembershipInput._(this._$data);

  factory Input$GroupMembershipInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as String?);
    }
    if (data.containsKey('adminNotes')) {
      final l$adminNotes = data['adminNotes'];
      result$data['adminNotes'] = (l$adminNotes as String?);
    }
    if (data.containsKey('events')) {
      final l$events = data['events'];
      result$data['events'] = (l$events as List<dynamic>?)
          ?.map((e) =>
              Input$ModelEventInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('metadata')) {
      final l$metadata = data['metadata'];
      result$data['metadata'] = l$metadata == null
          ? null
          : Input$BaseModelMetadataInput.fromJson(
              (l$metadata as Map<String, dynamic>));
    }
    if (data.containsKey('createdAt')) {
      final l$createdAt = data['createdAt'];
      result$data['createdAt'] =
          l$createdAt == null ? null : DateTime.parse((l$createdAt as String));
    }
    if (data.containsKey('createdBy')) {
      final l$createdBy = data['createdBy'];
      result$data['createdBy'] = (l$createdBy as String?);
    }
    if (data.containsKey('updatedAt')) {
      final l$updatedAt = data['updatedAt'];
      result$data['updatedAt'] =
          l$updatedAt == null ? null : DateTime.parse((l$updatedAt as String));
    }
    if (data.containsKey('updatedBy')) {
      final l$updatedBy = data['updatedBy'];
      result$data['updatedBy'] = (l$updatedBy as String?);
    }
    if (data.containsKey('deletedAt')) {
      final l$deletedAt = data['deletedAt'];
      result$data['deletedAt'] =
          l$deletedAt == null ? null : DateTime.parse((l$deletedAt as String));
    }
    if (data.containsKey('deletedBy')) {
      final l$deletedBy = data['deletedBy'];
      result$data['deletedBy'] = (l$deletedBy as String?);
    }
    if (data.containsKey('groupId')) {
      final l$groupId = data['groupId'];
      result$data['groupId'] = (l$groupId as String?);
    }
    if (data.containsKey('groupIdent')) {
      final l$groupIdent = data['groupIdent'];
      result$data['groupIdent'] = (l$groupIdent as String?);
    }
    if (data.containsKey('userId')) {
      final l$userId = data['userId'];
      result$data['userId'] = (l$userId as String?);
    }
    if (data.containsKey('roles')) {
      final l$roles = data['roles'];
      result$data['roles'] = (l$roles as List<dynamic>?)
          ?.map((e) => fromJson$Enum$GroupMembershipRole((e as String)))
          .toList();
    }
    return Input$GroupMembershipInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get id => (_$data['id'] as String?);
  String? get adminNotes => (_$data['adminNotes'] as String?);
  List<Input$ModelEventInput>? get events =>
      (_$data['events'] as List<Input$ModelEventInput>?);
  Input$BaseModelMetadataInput? get metadata =>
      (_$data['metadata'] as Input$BaseModelMetadataInput?);
  DateTime? get createdAt => (_$data['createdAt'] as DateTime?);
  String? get createdBy => (_$data['createdBy'] as String?);
  DateTime? get updatedAt => (_$data['updatedAt'] as DateTime?);
  String? get updatedBy => (_$data['updatedBy'] as String?);
  DateTime? get deletedAt => (_$data['deletedAt'] as DateTime?);
  String? get deletedBy => (_$data['deletedBy'] as String?);
  String? get groupId => (_$data['groupId'] as String?);
  String? get groupIdent => (_$data['groupIdent'] as String?);
  String? get userId => (_$data['userId'] as String?);
  List<Enum$GroupMembershipRole>? get roles =>
      (_$data['roles'] as List<Enum$GroupMembershipRole>?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('adminNotes')) {
      final l$adminNotes = adminNotes;
      result$data['adminNotes'] = l$adminNotes;
    }
    if (_$data.containsKey('events')) {
      final l$events = events;
      result$data['events'] = l$events?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('metadata')) {
      final l$metadata = metadata;
      result$data['metadata'] = l$metadata?.toJson();
    }
    if (_$data.containsKey('createdAt')) {
      final l$createdAt = createdAt;
      result$data['createdAt'] = l$createdAt?.toIso8601String();
    }
    if (_$data.containsKey('createdBy')) {
      final l$createdBy = createdBy;
      result$data['createdBy'] = l$createdBy;
    }
    if (_$data.containsKey('updatedAt')) {
      final l$updatedAt = updatedAt;
      result$data['updatedAt'] = l$updatedAt?.toIso8601String();
    }
    if (_$data.containsKey('updatedBy')) {
      final l$updatedBy = updatedBy;
      result$data['updatedBy'] = l$updatedBy;
    }
    if (_$data.containsKey('deletedAt')) {
      final l$deletedAt = deletedAt;
      result$data['deletedAt'] = l$deletedAt?.toIso8601String();
    }
    if (_$data.containsKey('deletedBy')) {
      final l$deletedBy = deletedBy;
      result$data['deletedBy'] = l$deletedBy;
    }
    if (_$data.containsKey('groupId')) {
      final l$groupId = groupId;
      result$data['groupId'] = l$groupId;
    }
    if (_$data.containsKey('groupIdent')) {
      final l$groupIdent = groupIdent;
      result$data['groupIdent'] = l$groupIdent;
    }
    if (_$data.containsKey('userId')) {
      final l$userId = userId;
      result$data['userId'] = l$userId;
    }
    if (_$data.containsKey('roles')) {
      final l$roles = roles;
      result$data['roles'] =
          l$roles?.map((e) => toJson$Enum$GroupMembershipRole(e)).toList();
    }
    return result$data;
  }

  CopyWith$Input$GroupMembershipInput<Input$GroupMembershipInput>
      get copyWith => CopyWith$Input$GroupMembershipInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$GroupMembershipInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$adminNotes = adminNotes;
    final lOther$adminNotes = other.adminNotes;
    if (_$data.containsKey('adminNotes') !=
        other._$data.containsKey('adminNotes')) {
      return false;
    }
    if (l$adminNotes != lOther$adminNotes) {
      return false;
    }
    final l$events = events;
    final lOther$events = other.events;
    if (_$data.containsKey('events') != other._$data.containsKey('events')) {
      return false;
    }
    if (l$events != null && lOther$events != null) {
      if (l$events.length != lOther$events.length) {
        return false;
      }
      for (int i = 0; i < l$events.length; i++) {
        final l$events$entry = l$events[i];
        final lOther$events$entry = lOther$events[i];
        if (l$events$entry != lOther$events$entry) {
          return false;
        }
      }
    } else if (l$events != lOther$events) {
      return false;
    }
    final l$metadata = metadata;
    final lOther$metadata = other.metadata;
    if (_$data.containsKey('metadata') !=
        other._$data.containsKey('metadata')) {
      return false;
    }
    if (l$metadata != lOther$metadata) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (_$data.containsKey('createdAt') !=
        other._$data.containsKey('createdAt')) {
      return false;
    }
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$createdBy = createdBy;
    final lOther$createdBy = other.createdBy;
    if (_$data.containsKey('createdBy') !=
        other._$data.containsKey('createdBy')) {
      return false;
    }
    if (l$createdBy != lOther$createdBy) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (_$data.containsKey('updatedAt') !=
        other._$data.containsKey('updatedAt')) {
      return false;
    }
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    final l$updatedBy = updatedBy;
    final lOther$updatedBy = other.updatedBy;
    if (_$data.containsKey('updatedBy') !=
        other._$data.containsKey('updatedBy')) {
      return false;
    }
    if (l$updatedBy != lOther$updatedBy) {
      return false;
    }
    final l$deletedAt = deletedAt;
    final lOther$deletedAt = other.deletedAt;
    if (_$data.containsKey('deletedAt') !=
        other._$data.containsKey('deletedAt')) {
      return false;
    }
    if (l$deletedAt != lOther$deletedAt) {
      return false;
    }
    final l$deletedBy = deletedBy;
    final lOther$deletedBy = other.deletedBy;
    if (_$data.containsKey('deletedBy') !=
        other._$data.containsKey('deletedBy')) {
      return false;
    }
    if (l$deletedBy != lOther$deletedBy) {
      return false;
    }
    final l$groupId = groupId;
    final lOther$groupId = other.groupId;
    if (_$data.containsKey('groupId') != other._$data.containsKey('groupId')) {
      return false;
    }
    if (l$groupId != lOther$groupId) {
      return false;
    }
    final l$groupIdent = groupIdent;
    final lOther$groupIdent = other.groupIdent;
    if (_$data.containsKey('groupIdent') !=
        other._$data.containsKey('groupIdent')) {
      return false;
    }
    if (l$groupIdent != lOther$groupIdent) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (_$data.containsKey('userId') != other._$data.containsKey('userId')) {
      return false;
    }
    if (l$userId != lOther$userId) {
      return false;
    }
    final l$roles = roles;
    final lOther$roles = other.roles;
    if (_$data.containsKey('roles') != other._$data.containsKey('roles')) {
      return false;
    }
    if (l$roles != null && lOther$roles != null) {
      if (l$roles.length != lOther$roles.length) {
        return false;
      }
      for (int i = 0; i < l$roles.length; i++) {
        final l$roles$entry = l$roles[i];
        final lOther$roles$entry = lOther$roles[i];
        if (l$roles$entry != lOther$roles$entry) {
          return false;
        }
      }
    } else if (l$roles != lOther$roles) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$adminNotes = adminNotes;
    final l$events = events;
    final l$metadata = metadata;
    final l$createdAt = createdAt;
    final l$createdBy = createdBy;
    final l$updatedAt = updatedAt;
    final l$updatedBy = updatedBy;
    final l$deletedAt = deletedAt;
    final l$deletedBy = deletedBy;
    final l$groupId = groupId;
    final l$groupIdent = groupIdent;
    final l$userId = userId;
    final l$roles = roles;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('adminNotes') ? l$adminNotes : const {},
      _$data.containsKey('events')
          ? l$events == null
              ? null
              : Object.hashAll(l$events.map((v) => v))
          : const {},
      _$data.containsKey('metadata') ? l$metadata : const {},
      _$data.containsKey('createdAt') ? l$createdAt : const {},
      _$data.containsKey('createdBy') ? l$createdBy : const {},
      _$data.containsKey('updatedAt') ? l$updatedAt : const {},
      _$data.containsKey('updatedBy') ? l$updatedBy : const {},
      _$data.containsKey('deletedAt') ? l$deletedAt : const {},
      _$data.containsKey('deletedBy') ? l$deletedBy : const {},
      _$data.containsKey('groupId') ? l$groupId : const {},
      _$data.containsKey('groupIdent') ? l$groupIdent : const {},
      _$data.containsKey('userId') ? l$userId : const {},
      _$data.containsKey('roles')
          ? l$roles == null
              ? null
              : Object.hashAll(l$roles.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$GroupMembershipInput<TRes> {
  factory CopyWith$Input$GroupMembershipInput(
    Input$GroupMembershipInput instance,
    TRes Function(Input$GroupMembershipInput) then,
  ) = _CopyWithImpl$Input$GroupMembershipInput;

  factory CopyWith$Input$GroupMembershipInput.stub(TRes res) =
      _CopyWithStubImpl$Input$GroupMembershipInput;

  TRes call({
    String? id,
    String? adminNotes,
    List<Input$ModelEventInput>? events,
    Input$BaseModelMetadataInput? metadata,
    DateTime? createdAt,
    String? createdBy,
    DateTime? updatedAt,
    String? updatedBy,
    DateTime? deletedAt,
    String? deletedBy,
    String? groupId,
    String? groupIdent,
    String? userId,
    List<Enum$GroupMembershipRole>? roles,
  });
  TRes events(
      Iterable<Input$ModelEventInput>? Function(
              Iterable<CopyWith$Input$ModelEventInput<Input$ModelEventInput>>?)
          _fn);
  CopyWith$Input$BaseModelMetadataInput<TRes> get metadata;
}

class _CopyWithImpl$Input$GroupMembershipInput<TRes>
    implements CopyWith$Input$GroupMembershipInput<TRes> {
  _CopyWithImpl$Input$GroupMembershipInput(
    this._instance,
    this._then,
  );

  final Input$GroupMembershipInput _instance;

  final TRes Function(Input$GroupMembershipInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? adminNotes = _undefined,
    Object? events = _undefined,
    Object? metadata = _undefined,
    Object? createdAt = _undefined,
    Object? createdBy = _undefined,
    Object? updatedAt = _undefined,
    Object? updatedBy = _undefined,
    Object? deletedAt = _undefined,
    Object? deletedBy = _undefined,
    Object? groupId = _undefined,
    Object? groupIdent = _undefined,
    Object? userId = _undefined,
    Object? roles = _undefined,
  }) =>
      _then(Input$GroupMembershipInput._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as String?),
        if (adminNotes != _undefined) 'adminNotes': (adminNotes as String?),
        if (events != _undefined)
          'events': (events as List<Input$ModelEventInput>?),
        if (metadata != _undefined)
          'metadata': (metadata as Input$BaseModelMetadataInput?),
        if (createdAt != _undefined) 'createdAt': (createdAt as DateTime?),
        if (createdBy != _undefined) 'createdBy': (createdBy as String?),
        if (updatedAt != _undefined) 'updatedAt': (updatedAt as DateTime?),
        if (updatedBy != _undefined) 'updatedBy': (updatedBy as String?),
        if (deletedAt != _undefined) 'deletedAt': (deletedAt as DateTime?),
        if (deletedBy != _undefined) 'deletedBy': (deletedBy as String?),
        if (groupId != _undefined) 'groupId': (groupId as String?),
        if (groupIdent != _undefined) 'groupIdent': (groupIdent as String?),
        if (userId != _undefined) 'userId': (userId as String?),
        if (roles != _undefined)
          'roles': (roles as List<Enum$GroupMembershipRole>?),
      }));
  TRes events(
          Iterable<Input$ModelEventInput>? Function(
                  Iterable<
                      CopyWith$Input$ModelEventInput<Input$ModelEventInput>>?)
              _fn) =>
      call(
          events:
              _fn(_instance.events?.map((e) => CopyWith$Input$ModelEventInput(
                    e,
                    (i) => i,
                  )))?.toList());
  CopyWith$Input$BaseModelMetadataInput<TRes> get metadata {
    final local$metadata = _instance.metadata;
    return local$metadata == null
        ? CopyWith$Input$BaseModelMetadataInput.stub(_then(_instance))
        : CopyWith$Input$BaseModelMetadataInput(
            local$metadata, (e) => call(metadata: e));
  }
}

class _CopyWithStubImpl$Input$GroupMembershipInput<TRes>
    implements CopyWith$Input$GroupMembershipInput<TRes> {
  _CopyWithStubImpl$Input$GroupMembershipInput(this._res);

  TRes _res;

  call({
    String? id,
    String? adminNotes,
    List<Input$ModelEventInput>? events,
    Input$BaseModelMetadataInput? metadata,
    DateTime? createdAt,
    String? createdBy,
    DateTime? updatedAt,
    String? updatedBy,
    DateTime? deletedAt,
    String? deletedBy,
    String? groupId,
    String? groupIdent,
    String? userId,
    List<Enum$GroupMembershipRole>? roles,
  }) =>
      _res;
  events(_fn) => _res;
  CopyWith$Input$BaseModelMetadataInput<TRes> get metadata =>
      CopyWith$Input$BaseModelMetadataInput.stub(_res);
}

class Input$CompanyInput {
  factory Input$CompanyInput({
    String? id,
    String? adminNotes,
    List<Input$ModelEventInput>? events,
    Input$BaseModelMetadataInput? metadata,
    DateTime? createdAt,
    String? createdBy,
    DateTime? updatedAt,
    String? updatedBy,
    DateTime? deletedAt,
    String? deletedBy,
    String? name,
    String? description,
    String? companyTypeTextId,
    String? companyStageTextId,
    List<Input$LabeledStringValueInput>? websites,
    List<String>? industries,
    bool? isOperational,
    bool? isFundraising,
    int? annualRevenue,
    int? employeeCount,
    DateTime? foundedAt,
    List<String>? addUserIds,
  }) =>
      Input$CompanyInput._({
        if (id != null) r'id': id,
        if (adminNotes != null) r'adminNotes': adminNotes,
        if (events != null) r'events': events,
        if (metadata != null) r'metadata': metadata,
        if (createdAt != null) r'createdAt': createdAt,
        if (createdBy != null) r'createdBy': createdBy,
        if (updatedAt != null) r'updatedAt': updatedAt,
        if (updatedBy != null) r'updatedBy': updatedBy,
        if (deletedAt != null) r'deletedAt': deletedAt,
        if (deletedBy != null) r'deletedBy': deletedBy,
        if (name != null) r'name': name,
        if (description != null) r'description': description,
        if (companyTypeTextId != null) r'companyTypeTextId': companyTypeTextId,
        if (companyStageTextId != null)
          r'companyStageTextId': companyStageTextId,
        if (websites != null) r'websites': websites,
        if (industries != null) r'industries': industries,
        if (isOperational != null) r'isOperational': isOperational,
        if (isFundraising != null) r'isFundraising': isFundraising,
        if (annualRevenue != null) r'annualRevenue': annualRevenue,
        if (employeeCount != null) r'employeeCount': employeeCount,
        if (foundedAt != null) r'foundedAt': foundedAt,
        if (addUserIds != null) r'addUserIds': addUserIds,
      });

  Input$CompanyInput._(this._$data);

  factory Input$CompanyInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as String?);
    }
    if (data.containsKey('adminNotes')) {
      final l$adminNotes = data['adminNotes'];
      result$data['adminNotes'] = (l$adminNotes as String?);
    }
    if (data.containsKey('events')) {
      final l$events = data['events'];
      result$data['events'] = (l$events as List<dynamic>?)
          ?.map((e) =>
              Input$ModelEventInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('metadata')) {
      final l$metadata = data['metadata'];
      result$data['metadata'] = l$metadata == null
          ? null
          : Input$BaseModelMetadataInput.fromJson(
              (l$metadata as Map<String, dynamic>));
    }
    if (data.containsKey('createdAt')) {
      final l$createdAt = data['createdAt'];
      result$data['createdAt'] =
          l$createdAt == null ? null : DateTime.parse((l$createdAt as String));
    }
    if (data.containsKey('createdBy')) {
      final l$createdBy = data['createdBy'];
      result$data['createdBy'] = (l$createdBy as String?);
    }
    if (data.containsKey('updatedAt')) {
      final l$updatedAt = data['updatedAt'];
      result$data['updatedAt'] =
          l$updatedAt == null ? null : DateTime.parse((l$updatedAt as String));
    }
    if (data.containsKey('updatedBy')) {
      final l$updatedBy = data['updatedBy'];
      result$data['updatedBy'] = (l$updatedBy as String?);
    }
    if (data.containsKey('deletedAt')) {
      final l$deletedAt = data['deletedAt'];
      result$data['deletedAt'] =
          l$deletedAt == null ? null : DateTime.parse((l$deletedAt as String));
    }
    if (data.containsKey('deletedBy')) {
      final l$deletedBy = data['deletedBy'];
      result$data['deletedBy'] = (l$deletedBy as String?);
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('description')) {
      final l$description = data['description'];
      result$data['description'] = (l$description as String?);
    }
    if (data.containsKey('companyTypeTextId')) {
      final l$companyTypeTextId = data['companyTypeTextId'];
      result$data['companyTypeTextId'] = (l$companyTypeTextId as String?);
    }
    if (data.containsKey('companyStageTextId')) {
      final l$companyStageTextId = data['companyStageTextId'];
      result$data['companyStageTextId'] = (l$companyStageTextId as String?);
    }
    if (data.containsKey('websites')) {
      final l$websites = data['websites'];
      result$data['websites'] = (l$websites as List<dynamic>?)
          ?.map((e) => Input$LabeledStringValueInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('industries')) {
      final l$industries = data['industries'];
      result$data['industries'] =
          (l$industries as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    if (data.containsKey('isOperational')) {
      final l$isOperational = data['isOperational'];
      result$data['isOperational'] = (l$isOperational as bool?);
    }
    if (data.containsKey('isFundraising')) {
      final l$isFundraising = data['isFundraising'];
      result$data['isFundraising'] = (l$isFundraising as bool?);
    }
    if (data.containsKey('annualRevenue')) {
      final l$annualRevenue = data['annualRevenue'];
      result$data['annualRevenue'] = (l$annualRevenue as int?);
    }
    if (data.containsKey('employeeCount')) {
      final l$employeeCount = data['employeeCount'];
      result$data['employeeCount'] = (l$employeeCount as int?);
    }
    if (data.containsKey('foundedAt')) {
      final l$foundedAt = data['foundedAt'];
      result$data['foundedAt'] =
          l$foundedAt == null ? null : DateTime.parse((l$foundedAt as String));
    }
    if (data.containsKey('addUserIds')) {
      final l$addUserIds = data['addUserIds'];
      result$data['addUserIds'] =
          (l$addUserIds as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    return Input$CompanyInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get id => (_$data['id'] as String?);
  String? get adminNotes => (_$data['adminNotes'] as String?);
  List<Input$ModelEventInput>? get events =>
      (_$data['events'] as List<Input$ModelEventInput>?);
  Input$BaseModelMetadataInput? get metadata =>
      (_$data['metadata'] as Input$BaseModelMetadataInput?);
  DateTime? get createdAt => (_$data['createdAt'] as DateTime?);
  String? get createdBy => (_$data['createdBy'] as String?);
  DateTime? get updatedAt => (_$data['updatedAt'] as DateTime?);
  String? get updatedBy => (_$data['updatedBy'] as String?);
  DateTime? get deletedAt => (_$data['deletedAt'] as DateTime?);
  String? get deletedBy => (_$data['deletedBy'] as String?);
  String? get name => (_$data['name'] as String?);
  String? get description => (_$data['description'] as String?);
  String? get companyTypeTextId => (_$data['companyTypeTextId'] as String?);
  String? get companyStageTextId => (_$data['companyStageTextId'] as String?);
  List<Input$LabeledStringValueInput>? get websites =>
      (_$data['websites'] as List<Input$LabeledStringValueInput>?);
  List<String>? get industries => (_$data['industries'] as List<String>?);
  bool? get isOperational => (_$data['isOperational'] as bool?);
  bool? get isFundraising => (_$data['isFundraising'] as bool?);
  int? get annualRevenue => (_$data['annualRevenue'] as int?);
  int? get employeeCount => (_$data['employeeCount'] as int?);
  DateTime? get foundedAt => (_$data['foundedAt'] as DateTime?);
  List<String>? get addUserIds => (_$data['addUserIds'] as List<String>?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('adminNotes')) {
      final l$adminNotes = adminNotes;
      result$data['adminNotes'] = l$adminNotes;
    }
    if (_$data.containsKey('events')) {
      final l$events = events;
      result$data['events'] = l$events?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('metadata')) {
      final l$metadata = metadata;
      result$data['metadata'] = l$metadata?.toJson();
    }
    if (_$data.containsKey('createdAt')) {
      final l$createdAt = createdAt;
      result$data['createdAt'] = l$createdAt?.toIso8601String();
    }
    if (_$data.containsKey('createdBy')) {
      final l$createdBy = createdBy;
      result$data['createdBy'] = l$createdBy;
    }
    if (_$data.containsKey('updatedAt')) {
      final l$updatedAt = updatedAt;
      result$data['updatedAt'] = l$updatedAt?.toIso8601String();
    }
    if (_$data.containsKey('updatedBy')) {
      final l$updatedBy = updatedBy;
      result$data['updatedBy'] = l$updatedBy;
    }
    if (_$data.containsKey('deletedAt')) {
      final l$deletedAt = deletedAt;
      result$data['deletedAt'] = l$deletedAt?.toIso8601String();
    }
    if (_$data.containsKey('deletedBy')) {
      final l$deletedBy = deletedBy;
      result$data['deletedBy'] = l$deletedBy;
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('description')) {
      final l$description = description;
      result$data['description'] = l$description;
    }
    if (_$data.containsKey('companyTypeTextId')) {
      final l$companyTypeTextId = companyTypeTextId;
      result$data['companyTypeTextId'] = l$companyTypeTextId;
    }
    if (_$data.containsKey('companyStageTextId')) {
      final l$companyStageTextId = companyStageTextId;
      result$data['companyStageTextId'] = l$companyStageTextId;
    }
    if (_$data.containsKey('websites')) {
      final l$websites = websites;
      result$data['websites'] = l$websites?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('industries')) {
      final l$industries = industries;
      result$data['industries'] = l$industries?.map((e) => e).toList();
    }
    if (_$data.containsKey('isOperational')) {
      final l$isOperational = isOperational;
      result$data['isOperational'] = l$isOperational;
    }
    if (_$data.containsKey('isFundraising')) {
      final l$isFundraising = isFundraising;
      result$data['isFundraising'] = l$isFundraising;
    }
    if (_$data.containsKey('annualRevenue')) {
      final l$annualRevenue = annualRevenue;
      result$data['annualRevenue'] = l$annualRevenue;
    }
    if (_$data.containsKey('employeeCount')) {
      final l$employeeCount = employeeCount;
      result$data['employeeCount'] = l$employeeCount;
    }
    if (_$data.containsKey('foundedAt')) {
      final l$foundedAt = foundedAt;
      result$data['foundedAt'] = l$foundedAt?.toIso8601String();
    }
    if (_$data.containsKey('addUserIds')) {
      final l$addUserIds = addUserIds;
      result$data['addUserIds'] = l$addUserIds?.map((e) => e).toList();
    }
    return result$data;
  }

  CopyWith$Input$CompanyInput<Input$CompanyInput> get copyWith =>
      CopyWith$Input$CompanyInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$CompanyInput) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$adminNotes = adminNotes;
    final lOther$adminNotes = other.adminNotes;
    if (_$data.containsKey('adminNotes') !=
        other._$data.containsKey('adminNotes')) {
      return false;
    }
    if (l$adminNotes != lOther$adminNotes) {
      return false;
    }
    final l$events = events;
    final lOther$events = other.events;
    if (_$data.containsKey('events') != other._$data.containsKey('events')) {
      return false;
    }
    if (l$events != null && lOther$events != null) {
      if (l$events.length != lOther$events.length) {
        return false;
      }
      for (int i = 0; i < l$events.length; i++) {
        final l$events$entry = l$events[i];
        final lOther$events$entry = lOther$events[i];
        if (l$events$entry != lOther$events$entry) {
          return false;
        }
      }
    } else if (l$events != lOther$events) {
      return false;
    }
    final l$metadata = metadata;
    final lOther$metadata = other.metadata;
    if (_$data.containsKey('metadata') !=
        other._$data.containsKey('metadata')) {
      return false;
    }
    if (l$metadata != lOther$metadata) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (_$data.containsKey('createdAt') !=
        other._$data.containsKey('createdAt')) {
      return false;
    }
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$createdBy = createdBy;
    final lOther$createdBy = other.createdBy;
    if (_$data.containsKey('createdBy') !=
        other._$data.containsKey('createdBy')) {
      return false;
    }
    if (l$createdBy != lOther$createdBy) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (_$data.containsKey('updatedAt') !=
        other._$data.containsKey('updatedAt')) {
      return false;
    }
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    final l$updatedBy = updatedBy;
    final lOther$updatedBy = other.updatedBy;
    if (_$data.containsKey('updatedBy') !=
        other._$data.containsKey('updatedBy')) {
      return false;
    }
    if (l$updatedBy != lOther$updatedBy) {
      return false;
    }
    final l$deletedAt = deletedAt;
    final lOther$deletedAt = other.deletedAt;
    if (_$data.containsKey('deletedAt') !=
        other._$data.containsKey('deletedAt')) {
      return false;
    }
    if (l$deletedAt != lOther$deletedAt) {
      return false;
    }
    final l$deletedBy = deletedBy;
    final lOther$deletedBy = other.deletedBy;
    if (_$data.containsKey('deletedBy') !=
        other._$data.containsKey('deletedBy')) {
      return false;
    }
    if (l$deletedBy != lOther$deletedBy) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (_$data.containsKey('description') !=
        other._$data.containsKey('description')) {
      return false;
    }
    if (l$description != lOther$description) {
      return false;
    }
    final l$companyTypeTextId = companyTypeTextId;
    final lOther$companyTypeTextId = other.companyTypeTextId;
    if (_$data.containsKey('companyTypeTextId') !=
        other._$data.containsKey('companyTypeTextId')) {
      return false;
    }
    if (l$companyTypeTextId != lOther$companyTypeTextId) {
      return false;
    }
    final l$companyStageTextId = companyStageTextId;
    final lOther$companyStageTextId = other.companyStageTextId;
    if (_$data.containsKey('companyStageTextId') !=
        other._$data.containsKey('companyStageTextId')) {
      return false;
    }
    if (l$companyStageTextId != lOther$companyStageTextId) {
      return false;
    }
    final l$websites = websites;
    final lOther$websites = other.websites;
    if (_$data.containsKey('websites') !=
        other._$data.containsKey('websites')) {
      return false;
    }
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
    final l$industries = industries;
    final lOther$industries = other.industries;
    if (_$data.containsKey('industries') !=
        other._$data.containsKey('industries')) {
      return false;
    }
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
    final l$isOperational = isOperational;
    final lOther$isOperational = other.isOperational;
    if (_$data.containsKey('isOperational') !=
        other._$data.containsKey('isOperational')) {
      return false;
    }
    if (l$isOperational != lOther$isOperational) {
      return false;
    }
    final l$isFundraising = isFundraising;
    final lOther$isFundraising = other.isFundraising;
    if (_$data.containsKey('isFundraising') !=
        other._$data.containsKey('isFundraising')) {
      return false;
    }
    if (l$isFundraising != lOther$isFundraising) {
      return false;
    }
    final l$annualRevenue = annualRevenue;
    final lOther$annualRevenue = other.annualRevenue;
    if (_$data.containsKey('annualRevenue') !=
        other._$data.containsKey('annualRevenue')) {
      return false;
    }
    if (l$annualRevenue != lOther$annualRevenue) {
      return false;
    }
    final l$employeeCount = employeeCount;
    final lOther$employeeCount = other.employeeCount;
    if (_$data.containsKey('employeeCount') !=
        other._$data.containsKey('employeeCount')) {
      return false;
    }
    if (l$employeeCount != lOther$employeeCount) {
      return false;
    }
    final l$foundedAt = foundedAt;
    final lOther$foundedAt = other.foundedAt;
    if (_$data.containsKey('foundedAt') !=
        other._$data.containsKey('foundedAt')) {
      return false;
    }
    if (l$foundedAt != lOther$foundedAt) {
      return false;
    }
    final l$addUserIds = addUserIds;
    final lOther$addUserIds = other.addUserIds;
    if (_$data.containsKey('addUserIds') !=
        other._$data.containsKey('addUserIds')) {
      return false;
    }
    if (l$addUserIds != null && lOther$addUserIds != null) {
      if (l$addUserIds.length != lOther$addUserIds.length) {
        return false;
      }
      for (int i = 0; i < l$addUserIds.length; i++) {
        final l$addUserIds$entry = l$addUserIds[i];
        final lOther$addUserIds$entry = lOther$addUserIds[i];
        if (l$addUserIds$entry != lOther$addUserIds$entry) {
          return false;
        }
      }
    } else if (l$addUserIds != lOther$addUserIds) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$adminNotes = adminNotes;
    final l$events = events;
    final l$metadata = metadata;
    final l$createdAt = createdAt;
    final l$createdBy = createdBy;
    final l$updatedAt = updatedAt;
    final l$updatedBy = updatedBy;
    final l$deletedAt = deletedAt;
    final l$deletedBy = deletedBy;
    final l$name = name;
    final l$description = description;
    final l$companyTypeTextId = companyTypeTextId;
    final l$companyStageTextId = companyStageTextId;
    final l$websites = websites;
    final l$industries = industries;
    final l$isOperational = isOperational;
    final l$isFundraising = isFundraising;
    final l$annualRevenue = annualRevenue;
    final l$employeeCount = employeeCount;
    final l$foundedAt = foundedAt;
    final l$addUserIds = addUserIds;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('adminNotes') ? l$adminNotes : const {},
      _$data.containsKey('events')
          ? l$events == null
              ? null
              : Object.hashAll(l$events.map((v) => v))
          : const {},
      _$data.containsKey('metadata') ? l$metadata : const {},
      _$data.containsKey('createdAt') ? l$createdAt : const {},
      _$data.containsKey('createdBy') ? l$createdBy : const {},
      _$data.containsKey('updatedAt') ? l$updatedAt : const {},
      _$data.containsKey('updatedBy') ? l$updatedBy : const {},
      _$data.containsKey('deletedAt') ? l$deletedAt : const {},
      _$data.containsKey('deletedBy') ? l$deletedBy : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('description') ? l$description : const {},
      _$data.containsKey('companyTypeTextId') ? l$companyTypeTextId : const {},
      _$data.containsKey('companyStageTextId')
          ? l$companyStageTextId
          : const {},
      _$data.containsKey('websites')
          ? l$websites == null
              ? null
              : Object.hashAll(l$websites.map((v) => v))
          : const {},
      _$data.containsKey('industries')
          ? l$industries == null
              ? null
              : Object.hashAll(l$industries.map((v) => v))
          : const {},
      _$data.containsKey('isOperational') ? l$isOperational : const {},
      _$data.containsKey('isFundraising') ? l$isFundraising : const {},
      _$data.containsKey('annualRevenue') ? l$annualRevenue : const {},
      _$data.containsKey('employeeCount') ? l$employeeCount : const {},
      _$data.containsKey('foundedAt') ? l$foundedAt : const {},
      _$data.containsKey('addUserIds')
          ? l$addUserIds == null
              ? null
              : Object.hashAll(l$addUserIds.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$CompanyInput<TRes> {
  factory CopyWith$Input$CompanyInput(
    Input$CompanyInput instance,
    TRes Function(Input$CompanyInput) then,
  ) = _CopyWithImpl$Input$CompanyInput;

  factory CopyWith$Input$CompanyInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CompanyInput;

  TRes call({
    String? id,
    String? adminNotes,
    List<Input$ModelEventInput>? events,
    Input$BaseModelMetadataInput? metadata,
    DateTime? createdAt,
    String? createdBy,
    DateTime? updatedAt,
    String? updatedBy,
    DateTime? deletedAt,
    String? deletedBy,
    String? name,
    String? description,
    String? companyTypeTextId,
    String? companyStageTextId,
    List<Input$LabeledStringValueInput>? websites,
    List<String>? industries,
    bool? isOperational,
    bool? isFundraising,
    int? annualRevenue,
    int? employeeCount,
    DateTime? foundedAt,
    List<String>? addUserIds,
  });
  TRes events(
      Iterable<Input$ModelEventInput>? Function(
              Iterable<CopyWith$Input$ModelEventInput<Input$ModelEventInput>>?)
          _fn);
  CopyWith$Input$BaseModelMetadataInput<TRes> get metadata;
  TRes websites(
      Iterable<Input$LabeledStringValueInput>? Function(
              Iterable<
                  CopyWith$Input$LabeledStringValueInput<
                      Input$LabeledStringValueInput>>?)
          _fn);
}

class _CopyWithImpl$Input$CompanyInput<TRes>
    implements CopyWith$Input$CompanyInput<TRes> {
  _CopyWithImpl$Input$CompanyInput(
    this._instance,
    this._then,
  );

  final Input$CompanyInput _instance;

  final TRes Function(Input$CompanyInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? adminNotes = _undefined,
    Object? events = _undefined,
    Object? metadata = _undefined,
    Object? createdAt = _undefined,
    Object? createdBy = _undefined,
    Object? updatedAt = _undefined,
    Object? updatedBy = _undefined,
    Object? deletedAt = _undefined,
    Object? deletedBy = _undefined,
    Object? name = _undefined,
    Object? description = _undefined,
    Object? companyTypeTextId = _undefined,
    Object? companyStageTextId = _undefined,
    Object? websites = _undefined,
    Object? industries = _undefined,
    Object? isOperational = _undefined,
    Object? isFundraising = _undefined,
    Object? annualRevenue = _undefined,
    Object? employeeCount = _undefined,
    Object? foundedAt = _undefined,
    Object? addUserIds = _undefined,
  }) =>
      _then(Input$CompanyInput._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as String?),
        if (adminNotes != _undefined) 'adminNotes': (adminNotes as String?),
        if (events != _undefined)
          'events': (events as List<Input$ModelEventInput>?),
        if (metadata != _undefined)
          'metadata': (metadata as Input$BaseModelMetadataInput?),
        if (createdAt != _undefined) 'createdAt': (createdAt as DateTime?),
        if (createdBy != _undefined) 'createdBy': (createdBy as String?),
        if (updatedAt != _undefined) 'updatedAt': (updatedAt as DateTime?),
        if (updatedBy != _undefined) 'updatedBy': (updatedBy as String?),
        if (deletedAt != _undefined) 'deletedAt': (deletedAt as DateTime?),
        if (deletedBy != _undefined) 'deletedBy': (deletedBy as String?),
        if (name != _undefined) 'name': (name as String?),
        if (description != _undefined) 'description': (description as String?),
        if (companyTypeTextId != _undefined)
          'companyTypeTextId': (companyTypeTextId as String?),
        if (companyStageTextId != _undefined)
          'companyStageTextId': (companyStageTextId as String?),
        if (websites != _undefined)
          'websites': (websites as List<Input$LabeledStringValueInput>?),
        if (industries != _undefined)
          'industries': (industries as List<String>?),
        if (isOperational != _undefined)
          'isOperational': (isOperational as bool?),
        if (isFundraising != _undefined)
          'isFundraising': (isFundraising as bool?),
        if (annualRevenue != _undefined)
          'annualRevenue': (annualRevenue as int?),
        if (employeeCount != _undefined)
          'employeeCount': (employeeCount as int?),
        if (foundedAt != _undefined) 'foundedAt': (foundedAt as DateTime?),
        if (addUserIds != _undefined)
          'addUserIds': (addUserIds as List<String>?),
      }));
  TRes events(
          Iterable<Input$ModelEventInput>? Function(
                  Iterable<
                      CopyWith$Input$ModelEventInput<Input$ModelEventInput>>?)
              _fn) =>
      call(
          events:
              _fn(_instance.events?.map((e) => CopyWith$Input$ModelEventInput(
                    e,
                    (i) => i,
                  )))?.toList());
  CopyWith$Input$BaseModelMetadataInput<TRes> get metadata {
    final local$metadata = _instance.metadata;
    return local$metadata == null
        ? CopyWith$Input$BaseModelMetadataInput.stub(_then(_instance))
        : CopyWith$Input$BaseModelMetadataInput(
            local$metadata, (e) => call(metadata: e));
  }

  TRes websites(
          Iterable<Input$LabeledStringValueInput>? Function(
                  Iterable<
                      CopyWith$Input$LabeledStringValueInput<
                          Input$LabeledStringValueInput>>?)
              _fn) =>
      call(
          websites: _fn(_instance.websites
              ?.map((e) => CopyWith$Input$LabeledStringValueInput(
                    e,
                    (i) => i,
                  )))?.toList());
}

class _CopyWithStubImpl$Input$CompanyInput<TRes>
    implements CopyWith$Input$CompanyInput<TRes> {
  _CopyWithStubImpl$Input$CompanyInput(this._res);

  TRes _res;

  call({
    String? id,
    String? adminNotes,
    List<Input$ModelEventInput>? events,
    Input$BaseModelMetadataInput? metadata,
    DateTime? createdAt,
    String? createdBy,
    DateTime? updatedAt,
    String? updatedBy,
    DateTime? deletedAt,
    String? deletedBy,
    String? name,
    String? description,
    String? companyTypeTextId,
    String? companyStageTextId,
    List<Input$LabeledStringValueInput>? websites,
    List<String>? industries,
    bool? isOperational,
    bool? isFundraising,
    int? annualRevenue,
    int? employeeCount,
    DateTime? foundedAt,
    List<String>? addUserIds,
  }) =>
      _res;
  events(_fn) => _res;
  CopyWith$Input$BaseModelMetadataInput<TRes> get metadata =>
      CopyWith$Input$BaseModelMetadataInput.stub(_res);
  websites(_fn) => _res;
}

class Input$UserListFilter {
  factory Input$UserListFilter({
    List<String>? ids,
    String? searchText,
    bool? caseSensitive,
    List<String>? textSearchFields,
    DateTime? createdAtFrom,
    DateTime? createdAtUntil,
    DateTime? updatedAtFrom,
    DateTime? updatedAtUntil,
    List<Enum$UserRole>? rolesIn,
    String? companyId,
    bool? syncedWithMm2,
  }) =>
      Input$UserListFilter._({
        if (ids != null) r'ids': ids,
        if (searchText != null) r'searchText': searchText,
        if (caseSensitive != null) r'caseSensitive': caseSensitive,
        if (textSearchFields != null) r'textSearchFields': textSearchFields,
        if (createdAtFrom != null) r'createdAtFrom': createdAtFrom,
        if (createdAtUntil != null) r'createdAtUntil': createdAtUntil,
        if (updatedAtFrom != null) r'updatedAtFrom': updatedAtFrom,
        if (updatedAtUntil != null) r'updatedAtUntil': updatedAtUntil,
        if (rolesIn != null) r'rolesIn': rolesIn,
        if (companyId != null) r'companyId': companyId,
        if (syncedWithMm2 != null) r'syncedWithMm2': syncedWithMm2,
      });

  Input$UserListFilter._(this._$data);

  factory Input$UserListFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('ids')) {
      final l$ids = data['ids'];
      result$data['ids'] =
          (l$ids as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    if (data.containsKey('searchText')) {
      final l$searchText = data['searchText'];
      result$data['searchText'] = (l$searchText as String?);
    }
    if (data.containsKey('caseSensitive')) {
      final l$caseSensitive = data['caseSensitive'];
      result$data['caseSensitive'] = (l$caseSensitive as bool?);
    }
    if (data.containsKey('textSearchFields')) {
      final l$textSearchFields = data['textSearchFields'];
      result$data['textSearchFields'] = (l$textSearchFields as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    if (data.containsKey('createdAtFrom')) {
      final l$createdAtFrom = data['createdAtFrom'];
      result$data['createdAtFrom'] = l$createdAtFrom == null
          ? null
          : DateTime.parse((l$createdAtFrom as String));
    }
    if (data.containsKey('createdAtUntil')) {
      final l$createdAtUntil = data['createdAtUntil'];
      result$data['createdAtUntil'] = l$createdAtUntil == null
          ? null
          : DateTime.parse((l$createdAtUntil as String));
    }
    if (data.containsKey('updatedAtFrom')) {
      final l$updatedAtFrom = data['updatedAtFrom'];
      result$data['updatedAtFrom'] = l$updatedAtFrom == null
          ? null
          : DateTime.parse((l$updatedAtFrom as String));
    }
    if (data.containsKey('updatedAtUntil')) {
      final l$updatedAtUntil = data['updatedAtUntil'];
      result$data['updatedAtUntil'] = l$updatedAtUntil == null
          ? null
          : DateTime.parse((l$updatedAtUntil as String));
    }
    if (data.containsKey('rolesIn')) {
      final l$rolesIn = data['rolesIn'];
      result$data['rolesIn'] = (l$rolesIn as List<dynamic>?)
          ?.map((e) => fromJson$Enum$UserRole((e as String)))
          .toList();
    }
    if (data.containsKey('companyId')) {
      final l$companyId = data['companyId'];
      result$data['companyId'] = (l$companyId as String?);
    }
    if (data.containsKey('syncedWithMm2')) {
      final l$syncedWithMm2 = data['syncedWithMm2'];
      result$data['syncedWithMm2'] = (l$syncedWithMm2 as bool?);
    }
    return Input$UserListFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  List<String>? get ids => (_$data['ids'] as List<String>?);
  String? get searchText => (_$data['searchText'] as String?);
  bool? get caseSensitive => (_$data['caseSensitive'] as bool?);
  List<String>? get textSearchFields =>
      (_$data['textSearchFields'] as List<String>?);
  DateTime? get createdAtFrom => (_$data['createdAtFrom'] as DateTime?);
  DateTime? get createdAtUntil => (_$data['createdAtUntil'] as DateTime?);
  DateTime? get updatedAtFrom => (_$data['updatedAtFrom'] as DateTime?);
  DateTime? get updatedAtUntil => (_$data['updatedAtUntil'] as DateTime?);
  List<Enum$UserRole>? get rolesIn =>
      (_$data['rolesIn'] as List<Enum$UserRole>?);
  String? get companyId => (_$data['companyId'] as String?);
  bool? get syncedWithMm2 => (_$data['syncedWithMm2'] as bool?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('ids')) {
      final l$ids = ids;
      result$data['ids'] = l$ids?.map((e) => e).toList();
    }
    if (_$data.containsKey('searchText')) {
      final l$searchText = searchText;
      result$data['searchText'] = l$searchText;
    }
    if (_$data.containsKey('caseSensitive')) {
      final l$caseSensitive = caseSensitive;
      result$data['caseSensitive'] = l$caseSensitive;
    }
    if (_$data.containsKey('textSearchFields')) {
      final l$textSearchFields = textSearchFields;
      result$data['textSearchFields'] =
          l$textSearchFields?.map((e) => e).toList();
    }
    if (_$data.containsKey('createdAtFrom')) {
      final l$createdAtFrom = createdAtFrom;
      result$data['createdAtFrom'] = l$createdAtFrom?.toIso8601String();
    }
    if (_$data.containsKey('createdAtUntil')) {
      final l$createdAtUntil = createdAtUntil;
      result$data['createdAtUntil'] = l$createdAtUntil?.toIso8601String();
    }
    if (_$data.containsKey('updatedAtFrom')) {
      final l$updatedAtFrom = updatedAtFrom;
      result$data['updatedAtFrom'] = l$updatedAtFrom?.toIso8601String();
    }
    if (_$data.containsKey('updatedAtUntil')) {
      final l$updatedAtUntil = updatedAtUntil;
      result$data['updatedAtUntil'] = l$updatedAtUntil?.toIso8601String();
    }
    if (_$data.containsKey('rolesIn')) {
      final l$rolesIn = rolesIn;
      result$data['rolesIn'] =
          l$rolesIn?.map((e) => toJson$Enum$UserRole(e)).toList();
    }
    if (_$data.containsKey('companyId')) {
      final l$companyId = companyId;
      result$data['companyId'] = l$companyId;
    }
    if (_$data.containsKey('syncedWithMm2')) {
      final l$syncedWithMm2 = syncedWithMm2;
      result$data['syncedWithMm2'] = l$syncedWithMm2;
    }
    return result$data;
  }

  CopyWith$Input$UserListFilter<Input$UserListFilter> get copyWith =>
      CopyWith$Input$UserListFilter(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$UserListFilter) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$ids = ids;
    final lOther$ids = other.ids;
    if (_$data.containsKey('ids') != other._$data.containsKey('ids')) {
      return false;
    }
    if (l$ids != null && lOther$ids != null) {
      if (l$ids.length != lOther$ids.length) {
        return false;
      }
      for (int i = 0; i < l$ids.length; i++) {
        final l$ids$entry = l$ids[i];
        final lOther$ids$entry = lOther$ids[i];
        if (l$ids$entry != lOther$ids$entry) {
          return false;
        }
      }
    } else if (l$ids != lOther$ids) {
      return false;
    }
    final l$searchText = searchText;
    final lOther$searchText = other.searchText;
    if (_$data.containsKey('searchText') !=
        other._$data.containsKey('searchText')) {
      return false;
    }
    if (l$searchText != lOther$searchText) {
      return false;
    }
    final l$caseSensitive = caseSensitive;
    final lOther$caseSensitive = other.caseSensitive;
    if (_$data.containsKey('caseSensitive') !=
        other._$data.containsKey('caseSensitive')) {
      return false;
    }
    if (l$caseSensitive != lOther$caseSensitive) {
      return false;
    }
    final l$textSearchFields = textSearchFields;
    final lOther$textSearchFields = other.textSearchFields;
    if (_$data.containsKey('textSearchFields') !=
        other._$data.containsKey('textSearchFields')) {
      return false;
    }
    if (l$textSearchFields != null && lOther$textSearchFields != null) {
      if (l$textSearchFields.length != lOther$textSearchFields.length) {
        return false;
      }
      for (int i = 0; i < l$textSearchFields.length; i++) {
        final l$textSearchFields$entry = l$textSearchFields[i];
        final lOther$textSearchFields$entry = lOther$textSearchFields[i];
        if (l$textSearchFields$entry != lOther$textSearchFields$entry) {
          return false;
        }
      }
    } else if (l$textSearchFields != lOther$textSearchFields) {
      return false;
    }
    final l$createdAtFrom = createdAtFrom;
    final lOther$createdAtFrom = other.createdAtFrom;
    if (_$data.containsKey('createdAtFrom') !=
        other._$data.containsKey('createdAtFrom')) {
      return false;
    }
    if (l$createdAtFrom != lOther$createdAtFrom) {
      return false;
    }
    final l$createdAtUntil = createdAtUntil;
    final lOther$createdAtUntil = other.createdAtUntil;
    if (_$data.containsKey('createdAtUntil') !=
        other._$data.containsKey('createdAtUntil')) {
      return false;
    }
    if (l$createdAtUntil != lOther$createdAtUntil) {
      return false;
    }
    final l$updatedAtFrom = updatedAtFrom;
    final lOther$updatedAtFrom = other.updatedAtFrom;
    if (_$data.containsKey('updatedAtFrom') !=
        other._$data.containsKey('updatedAtFrom')) {
      return false;
    }
    if (l$updatedAtFrom != lOther$updatedAtFrom) {
      return false;
    }
    final l$updatedAtUntil = updatedAtUntil;
    final lOther$updatedAtUntil = other.updatedAtUntil;
    if (_$data.containsKey('updatedAtUntil') !=
        other._$data.containsKey('updatedAtUntil')) {
      return false;
    }
    if (l$updatedAtUntil != lOther$updatedAtUntil) {
      return false;
    }
    final l$rolesIn = rolesIn;
    final lOther$rolesIn = other.rolesIn;
    if (_$data.containsKey('rolesIn') != other._$data.containsKey('rolesIn')) {
      return false;
    }
    if (l$rolesIn != null && lOther$rolesIn != null) {
      if (l$rolesIn.length != lOther$rolesIn.length) {
        return false;
      }
      for (int i = 0; i < l$rolesIn.length; i++) {
        final l$rolesIn$entry = l$rolesIn[i];
        final lOther$rolesIn$entry = lOther$rolesIn[i];
        if (l$rolesIn$entry != lOther$rolesIn$entry) {
          return false;
        }
      }
    } else if (l$rolesIn != lOther$rolesIn) {
      return false;
    }
    final l$companyId = companyId;
    final lOther$companyId = other.companyId;
    if (_$data.containsKey('companyId') !=
        other._$data.containsKey('companyId')) {
      return false;
    }
    if (l$companyId != lOther$companyId) {
      return false;
    }
    final l$syncedWithMm2 = syncedWithMm2;
    final lOther$syncedWithMm2 = other.syncedWithMm2;
    if (_$data.containsKey('syncedWithMm2') !=
        other._$data.containsKey('syncedWithMm2')) {
      return false;
    }
    if (l$syncedWithMm2 != lOther$syncedWithMm2) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$ids = ids;
    final l$searchText = searchText;
    final l$caseSensitive = caseSensitive;
    final l$textSearchFields = textSearchFields;
    final l$createdAtFrom = createdAtFrom;
    final l$createdAtUntil = createdAtUntil;
    final l$updatedAtFrom = updatedAtFrom;
    final l$updatedAtUntil = updatedAtUntil;
    final l$rolesIn = rolesIn;
    final l$companyId = companyId;
    final l$syncedWithMm2 = syncedWithMm2;
    return Object.hashAll([
      _$data.containsKey('ids')
          ? l$ids == null
              ? null
              : Object.hashAll(l$ids.map((v) => v))
          : const {},
      _$data.containsKey('searchText') ? l$searchText : const {},
      _$data.containsKey('caseSensitive') ? l$caseSensitive : const {},
      _$data.containsKey('textSearchFields')
          ? l$textSearchFields == null
              ? null
              : Object.hashAll(l$textSearchFields.map((v) => v))
          : const {},
      _$data.containsKey('createdAtFrom') ? l$createdAtFrom : const {},
      _$data.containsKey('createdAtUntil') ? l$createdAtUntil : const {},
      _$data.containsKey('updatedAtFrom') ? l$updatedAtFrom : const {},
      _$data.containsKey('updatedAtUntil') ? l$updatedAtUntil : const {},
      _$data.containsKey('rolesIn')
          ? l$rolesIn == null
              ? null
              : Object.hashAll(l$rolesIn.map((v) => v))
          : const {},
      _$data.containsKey('companyId') ? l$companyId : const {},
      _$data.containsKey('syncedWithMm2') ? l$syncedWithMm2 : const {},
    ]);
  }
}

abstract class CopyWith$Input$UserListFilter<TRes> {
  factory CopyWith$Input$UserListFilter(
    Input$UserListFilter instance,
    TRes Function(Input$UserListFilter) then,
  ) = _CopyWithImpl$Input$UserListFilter;

  factory CopyWith$Input$UserListFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$UserListFilter;

  TRes call({
    List<String>? ids,
    String? searchText,
    bool? caseSensitive,
    List<String>? textSearchFields,
    DateTime? createdAtFrom,
    DateTime? createdAtUntil,
    DateTime? updatedAtFrom,
    DateTime? updatedAtUntil,
    List<Enum$UserRole>? rolesIn,
    String? companyId,
    bool? syncedWithMm2,
  });
}

class _CopyWithImpl$Input$UserListFilter<TRes>
    implements CopyWith$Input$UserListFilter<TRes> {
  _CopyWithImpl$Input$UserListFilter(
    this._instance,
    this._then,
  );

  final Input$UserListFilter _instance;

  final TRes Function(Input$UserListFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ids = _undefined,
    Object? searchText = _undefined,
    Object? caseSensitive = _undefined,
    Object? textSearchFields = _undefined,
    Object? createdAtFrom = _undefined,
    Object? createdAtUntil = _undefined,
    Object? updatedAtFrom = _undefined,
    Object? updatedAtUntil = _undefined,
    Object? rolesIn = _undefined,
    Object? companyId = _undefined,
    Object? syncedWithMm2 = _undefined,
  }) =>
      _then(Input$UserListFilter._({
        ..._instance._$data,
        if (ids != _undefined) 'ids': (ids as List<String>?),
        if (searchText != _undefined) 'searchText': (searchText as String?),
        if (caseSensitive != _undefined)
          'caseSensitive': (caseSensitive as bool?),
        if (textSearchFields != _undefined)
          'textSearchFields': (textSearchFields as List<String>?),
        if (createdAtFrom != _undefined)
          'createdAtFrom': (createdAtFrom as DateTime?),
        if (createdAtUntil != _undefined)
          'createdAtUntil': (createdAtUntil as DateTime?),
        if (updatedAtFrom != _undefined)
          'updatedAtFrom': (updatedAtFrom as DateTime?),
        if (updatedAtUntil != _undefined)
          'updatedAtUntil': (updatedAtUntil as DateTime?),
        if (rolesIn != _undefined) 'rolesIn': (rolesIn as List<Enum$UserRole>?),
        if (companyId != _undefined) 'companyId': (companyId as String?),
        if (syncedWithMm2 != _undefined)
          'syncedWithMm2': (syncedWithMm2 as bool?),
      }));
}

class _CopyWithStubImpl$Input$UserListFilter<TRes>
    implements CopyWith$Input$UserListFilter<TRes> {
  _CopyWithStubImpl$Input$UserListFilter(this._res);

  TRes _res;

  call({
    List<String>? ids,
    String? searchText,
    bool? caseSensitive,
    List<String>? textSearchFields,
    DateTime? createdAtFrom,
    DateTime? createdAtUntil,
    DateTime? updatedAtFrom,
    DateTime? updatedAtUntil,
    List<Enum$UserRole>? rolesIn,
    String? companyId,
    bool? syncedWithMm2,
  }) =>
      _res;
}

class Input$UserDeviceInput {
  factory Input$UserDeviceInput({
    String? id,
    String? adminNotes,
    List<Input$ModelEventInput>? events,
    Input$BaseModelMetadataInput? metadata,
    DateTime? createdAt,
    String? createdBy,
    DateTime? updatedAt,
    String? updatedBy,
    DateTime? deletedAt,
    String? deletedBy,
    String? userId,
    String? deviceUuid,
    String? deviceType,
    bool? trusted,
    String? phoneNumber,
    DateTime? phoneNumberUpdatedAt,
    bool? isPhoneNumberVerified,
    String? brand,
    String? model,
    bool? isTablet,
    int? screenWidth,
    int? screenHeight,
    String? os,
    String? osVersion,
    String? timezone,
    String? ipAddress,
    String? locale,
    String? countryCode,
    String? appVersion,
    DateTime? signedInAt,
    DateTime? signedOutAt,
    DateTime? sessionStartedAt,
    DateTime? sessionEndedAt,
    String? authToken,
    DateTime? authTokenCreatedAt,
    DateTime? authTokenExperiesAt,
    String? oAuthToken,
    DateTime? oAuthTokenExpiresAt,
    String? oAuthProvider,
    String? oAuthRefreshToken,
    String? pushNotificationToken,
    DateTime? trustedAt,
  }) =>
      Input$UserDeviceInput._({
        if (id != null) r'id': id,
        if (adminNotes != null) r'adminNotes': adminNotes,
        if (events != null) r'events': events,
        if (metadata != null) r'metadata': metadata,
        if (createdAt != null) r'createdAt': createdAt,
        if (createdBy != null) r'createdBy': createdBy,
        if (updatedAt != null) r'updatedAt': updatedAt,
        if (updatedBy != null) r'updatedBy': updatedBy,
        if (deletedAt != null) r'deletedAt': deletedAt,
        if (deletedBy != null) r'deletedBy': deletedBy,
        if (userId != null) r'userId': userId,
        if (deviceUuid != null) r'deviceUuid': deviceUuid,
        if (deviceType != null) r'deviceType': deviceType,
        if (trusted != null) r'trusted': trusted,
        if (phoneNumber != null) r'phoneNumber': phoneNumber,
        if (phoneNumberUpdatedAt != null)
          r'phoneNumberUpdatedAt': phoneNumberUpdatedAt,
        if (isPhoneNumberVerified != null)
          r'isPhoneNumberVerified': isPhoneNumberVerified,
        if (brand != null) r'brand': brand,
        if (model != null) r'model': model,
        if (isTablet != null) r'isTablet': isTablet,
        if (screenWidth != null) r'screenWidth': screenWidth,
        if (screenHeight != null) r'screenHeight': screenHeight,
        if (os != null) r'os': os,
        if (osVersion != null) r'osVersion': osVersion,
        if (timezone != null) r'timezone': timezone,
        if (ipAddress != null) r'ipAddress': ipAddress,
        if (locale != null) r'locale': locale,
        if (countryCode != null) r'countryCode': countryCode,
        if (appVersion != null) r'appVersion': appVersion,
        if (signedInAt != null) r'signedInAt': signedInAt,
        if (signedOutAt != null) r'signedOutAt': signedOutAt,
        if (sessionStartedAt != null) r'sessionStartedAt': sessionStartedAt,
        if (sessionEndedAt != null) r'sessionEndedAt': sessionEndedAt,
        if (authToken != null) r'authToken': authToken,
        if (authTokenCreatedAt != null)
          r'authTokenCreatedAt': authTokenCreatedAt,
        if (authTokenExperiesAt != null)
          r'authTokenExperiesAt': authTokenExperiesAt,
        if (oAuthToken != null) r'oAuthToken': oAuthToken,
        if (oAuthTokenExpiresAt != null)
          r'oAuthTokenExpiresAt': oAuthTokenExpiresAt,
        if (oAuthProvider != null) r'oAuthProvider': oAuthProvider,
        if (oAuthRefreshToken != null) r'oAuthRefreshToken': oAuthRefreshToken,
        if (pushNotificationToken != null)
          r'pushNotificationToken': pushNotificationToken,
        if (trustedAt != null) r'trustedAt': trustedAt,
      });

  Input$UserDeviceInput._(this._$data);

  factory Input$UserDeviceInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as String?);
    }
    if (data.containsKey('adminNotes')) {
      final l$adminNotes = data['adminNotes'];
      result$data['adminNotes'] = (l$adminNotes as String?);
    }
    if (data.containsKey('events')) {
      final l$events = data['events'];
      result$data['events'] = (l$events as List<dynamic>?)
          ?.map((e) =>
              Input$ModelEventInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('metadata')) {
      final l$metadata = data['metadata'];
      result$data['metadata'] = l$metadata == null
          ? null
          : Input$BaseModelMetadataInput.fromJson(
              (l$metadata as Map<String, dynamic>));
    }
    if (data.containsKey('createdAt')) {
      final l$createdAt = data['createdAt'];
      result$data['createdAt'] =
          l$createdAt == null ? null : DateTime.parse((l$createdAt as String));
    }
    if (data.containsKey('createdBy')) {
      final l$createdBy = data['createdBy'];
      result$data['createdBy'] = (l$createdBy as String?);
    }
    if (data.containsKey('updatedAt')) {
      final l$updatedAt = data['updatedAt'];
      result$data['updatedAt'] =
          l$updatedAt == null ? null : DateTime.parse((l$updatedAt as String));
    }
    if (data.containsKey('updatedBy')) {
      final l$updatedBy = data['updatedBy'];
      result$data['updatedBy'] = (l$updatedBy as String?);
    }
    if (data.containsKey('deletedAt')) {
      final l$deletedAt = data['deletedAt'];
      result$data['deletedAt'] =
          l$deletedAt == null ? null : DateTime.parse((l$deletedAt as String));
    }
    if (data.containsKey('deletedBy')) {
      final l$deletedBy = data['deletedBy'];
      result$data['deletedBy'] = (l$deletedBy as String?);
    }
    if (data.containsKey('userId')) {
      final l$userId = data['userId'];
      result$data['userId'] = (l$userId as String?);
    }
    if (data.containsKey('deviceUuid')) {
      final l$deviceUuid = data['deviceUuid'];
      result$data['deviceUuid'] = (l$deviceUuid as String?);
    }
    if (data.containsKey('deviceType')) {
      final l$deviceType = data['deviceType'];
      result$data['deviceType'] = (l$deviceType as String?);
    }
    if (data.containsKey('trusted')) {
      final l$trusted = data['trusted'];
      result$data['trusted'] = (l$trusted as bool?);
    }
    if (data.containsKey('phoneNumber')) {
      final l$phoneNumber = data['phoneNumber'];
      result$data['phoneNumber'] = (l$phoneNumber as String?);
    }
    if (data.containsKey('phoneNumberUpdatedAt')) {
      final l$phoneNumberUpdatedAt = data['phoneNumberUpdatedAt'];
      result$data['phoneNumberUpdatedAt'] = l$phoneNumberUpdatedAt == null
          ? null
          : DateTime.parse((l$phoneNumberUpdatedAt as String));
    }
    if (data.containsKey('isPhoneNumberVerified')) {
      final l$isPhoneNumberVerified = data['isPhoneNumberVerified'];
      result$data['isPhoneNumberVerified'] = (l$isPhoneNumberVerified as bool?);
    }
    if (data.containsKey('brand')) {
      final l$brand = data['brand'];
      result$data['brand'] = (l$brand as String?);
    }
    if (data.containsKey('model')) {
      final l$model = data['model'];
      result$data['model'] = (l$model as String?);
    }
    if (data.containsKey('isTablet')) {
      final l$isTablet = data['isTablet'];
      result$data['isTablet'] = (l$isTablet as bool?);
    }
    if (data.containsKey('screenWidth')) {
      final l$screenWidth = data['screenWidth'];
      result$data['screenWidth'] = (l$screenWidth as int?);
    }
    if (data.containsKey('screenHeight')) {
      final l$screenHeight = data['screenHeight'];
      result$data['screenHeight'] = (l$screenHeight as int?);
    }
    if (data.containsKey('os')) {
      final l$os = data['os'];
      result$data['os'] = (l$os as String?);
    }
    if (data.containsKey('osVersion')) {
      final l$osVersion = data['osVersion'];
      result$data['osVersion'] = (l$osVersion as String?);
    }
    if (data.containsKey('timezone')) {
      final l$timezone = data['timezone'];
      result$data['timezone'] = (l$timezone as String?);
    }
    if (data.containsKey('ipAddress')) {
      final l$ipAddress = data['ipAddress'];
      result$data['ipAddress'] = (l$ipAddress as String?);
    }
    if (data.containsKey('locale')) {
      final l$locale = data['locale'];
      result$data['locale'] = (l$locale as String?);
    }
    if (data.containsKey('countryCode')) {
      final l$countryCode = data['countryCode'];
      result$data['countryCode'] = (l$countryCode as String?);
    }
    if (data.containsKey('appVersion')) {
      final l$appVersion = data['appVersion'];
      result$data['appVersion'] = (l$appVersion as String?);
    }
    if (data.containsKey('signedInAt')) {
      final l$signedInAt = data['signedInAt'];
      result$data['signedInAt'] = l$signedInAt == null
          ? null
          : DateTime.parse((l$signedInAt as String));
    }
    if (data.containsKey('signedOutAt')) {
      final l$signedOutAt = data['signedOutAt'];
      result$data['signedOutAt'] = l$signedOutAt == null
          ? null
          : DateTime.parse((l$signedOutAt as String));
    }
    if (data.containsKey('sessionStartedAt')) {
      final l$sessionStartedAt = data['sessionStartedAt'];
      result$data['sessionStartedAt'] = l$sessionStartedAt == null
          ? null
          : DateTime.parse((l$sessionStartedAt as String));
    }
    if (data.containsKey('sessionEndedAt')) {
      final l$sessionEndedAt = data['sessionEndedAt'];
      result$data['sessionEndedAt'] = l$sessionEndedAt == null
          ? null
          : DateTime.parse((l$sessionEndedAt as String));
    }
    if (data.containsKey('authToken')) {
      final l$authToken = data['authToken'];
      result$data['authToken'] = (l$authToken as String?);
    }
    if (data.containsKey('authTokenCreatedAt')) {
      final l$authTokenCreatedAt = data['authTokenCreatedAt'];
      result$data['authTokenCreatedAt'] = l$authTokenCreatedAt == null
          ? null
          : DateTime.parse((l$authTokenCreatedAt as String));
    }
    if (data.containsKey('authTokenExperiesAt')) {
      final l$authTokenExperiesAt = data['authTokenExperiesAt'];
      result$data['authTokenExperiesAt'] = l$authTokenExperiesAt == null
          ? null
          : DateTime.parse((l$authTokenExperiesAt as String));
    }
    if (data.containsKey('oAuthToken')) {
      final l$oAuthToken = data['oAuthToken'];
      result$data['oAuthToken'] = (l$oAuthToken as String?);
    }
    if (data.containsKey('oAuthTokenExpiresAt')) {
      final l$oAuthTokenExpiresAt = data['oAuthTokenExpiresAt'];
      result$data['oAuthTokenExpiresAt'] = l$oAuthTokenExpiresAt == null
          ? null
          : DateTime.parse((l$oAuthTokenExpiresAt as String));
    }
    if (data.containsKey('oAuthProvider')) {
      final l$oAuthProvider = data['oAuthProvider'];
      result$data['oAuthProvider'] = (l$oAuthProvider as String?);
    }
    if (data.containsKey('oAuthRefreshToken')) {
      final l$oAuthRefreshToken = data['oAuthRefreshToken'];
      result$data['oAuthRefreshToken'] = (l$oAuthRefreshToken as String?);
    }
    if (data.containsKey('pushNotificationToken')) {
      final l$pushNotificationToken = data['pushNotificationToken'];
      result$data['pushNotificationToken'] =
          (l$pushNotificationToken as String?);
    }
    if (data.containsKey('trustedAt')) {
      final l$trustedAt = data['trustedAt'];
      result$data['trustedAt'] =
          l$trustedAt == null ? null : DateTime.parse((l$trustedAt as String));
    }
    return Input$UserDeviceInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get id => (_$data['id'] as String?);
  String? get adminNotes => (_$data['adminNotes'] as String?);
  List<Input$ModelEventInput>? get events =>
      (_$data['events'] as List<Input$ModelEventInput>?);
  Input$BaseModelMetadataInput? get metadata =>
      (_$data['metadata'] as Input$BaseModelMetadataInput?);
  DateTime? get createdAt => (_$data['createdAt'] as DateTime?);
  String? get createdBy => (_$data['createdBy'] as String?);
  DateTime? get updatedAt => (_$data['updatedAt'] as DateTime?);
  String? get updatedBy => (_$data['updatedBy'] as String?);
  DateTime? get deletedAt => (_$data['deletedAt'] as DateTime?);
  String? get deletedBy => (_$data['deletedBy'] as String?);
  String? get userId => (_$data['userId'] as String?);
  String? get deviceUuid => (_$data['deviceUuid'] as String?);
  String? get deviceType => (_$data['deviceType'] as String?);
  bool? get trusted => (_$data['trusted'] as bool?);
  String? get phoneNumber => (_$data['phoneNumber'] as String?);
  DateTime? get phoneNumberUpdatedAt =>
      (_$data['phoneNumberUpdatedAt'] as DateTime?);
  bool? get isPhoneNumberVerified => (_$data['isPhoneNumberVerified'] as bool?);
  String? get brand => (_$data['brand'] as String?);
  String? get model => (_$data['model'] as String?);
  bool? get isTablet => (_$data['isTablet'] as bool?);
  int? get screenWidth => (_$data['screenWidth'] as int?);
  int? get screenHeight => (_$data['screenHeight'] as int?);
  String? get os => (_$data['os'] as String?);
  String? get osVersion => (_$data['osVersion'] as String?);
  String? get timezone => (_$data['timezone'] as String?);
  String? get ipAddress => (_$data['ipAddress'] as String?);
  String? get locale => (_$data['locale'] as String?);
  String? get countryCode => (_$data['countryCode'] as String?);
  String? get appVersion => (_$data['appVersion'] as String?);
  DateTime? get signedInAt => (_$data['signedInAt'] as DateTime?);
  DateTime? get signedOutAt => (_$data['signedOutAt'] as DateTime?);
  DateTime? get sessionStartedAt => (_$data['sessionStartedAt'] as DateTime?);
  DateTime? get sessionEndedAt => (_$data['sessionEndedAt'] as DateTime?);
  String? get authToken => (_$data['authToken'] as String?);
  DateTime? get authTokenCreatedAt =>
      (_$data['authTokenCreatedAt'] as DateTime?);
  DateTime? get authTokenExperiesAt =>
      (_$data['authTokenExperiesAt'] as DateTime?);
  String? get oAuthToken => (_$data['oAuthToken'] as String?);
  DateTime? get oAuthTokenExpiresAt =>
      (_$data['oAuthTokenExpiresAt'] as DateTime?);
  String? get oAuthProvider => (_$data['oAuthProvider'] as String?);
  String? get oAuthRefreshToken => (_$data['oAuthRefreshToken'] as String?);
  String? get pushNotificationToken =>
      (_$data['pushNotificationToken'] as String?);
  DateTime? get trustedAt => (_$data['trustedAt'] as DateTime?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('adminNotes')) {
      final l$adminNotes = adminNotes;
      result$data['adminNotes'] = l$adminNotes;
    }
    if (_$data.containsKey('events')) {
      final l$events = events;
      result$data['events'] = l$events?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('metadata')) {
      final l$metadata = metadata;
      result$data['metadata'] = l$metadata?.toJson();
    }
    if (_$data.containsKey('createdAt')) {
      final l$createdAt = createdAt;
      result$data['createdAt'] = l$createdAt?.toIso8601String();
    }
    if (_$data.containsKey('createdBy')) {
      final l$createdBy = createdBy;
      result$data['createdBy'] = l$createdBy;
    }
    if (_$data.containsKey('updatedAt')) {
      final l$updatedAt = updatedAt;
      result$data['updatedAt'] = l$updatedAt?.toIso8601String();
    }
    if (_$data.containsKey('updatedBy')) {
      final l$updatedBy = updatedBy;
      result$data['updatedBy'] = l$updatedBy;
    }
    if (_$data.containsKey('deletedAt')) {
      final l$deletedAt = deletedAt;
      result$data['deletedAt'] = l$deletedAt?.toIso8601String();
    }
    if (_$data.containsKey('deletedBy')) {
      final l$deletedBy = deletedBy;
      result$data['deletedBy'] = l$deletedBy;
    }
    if (_$data.containsKey('userId')) {
      final l$userId = userId;
      result$data['userId'] = l$userId;
    }
    if (_$data.containsKey('deviceUuid')) {
      final l$deviceUuid = deviceUuid;
      result$data['deviceUuid'] = l$deviceUuid;
    }
    if (_$data.containsKey('deviceType')) {
      final l$deviceType = deviceType;
      result$data['deviceType'] = l$deviceType;
    }
    if (_$data.containsKey('trusted')) {
      final l$trusted = trusted;
      result$data['trusted'] = l$trusted;
    }
    if (_$data.containsKey('phoneNumber')) {
      final l$phoneNumber = phoneNumber;
      result$data['phoneNumber'] = l$phoneNumber;
    }
    if (_$data.containsKey('phoneNumberUpdatedAt')) {
      final l$phoneNumberUpdatedAt = phoneNumberUpdatedAt;
      result$data['phoneNumberUpdatedAt'] =
          l$phoneNumberUpdatedAt?.toIso8601String();
    }
    if (_$data.containsKey('isPhoneNumberVerified')) {
      final l$isPhoneNumberVerified = isPhoneNumberVerified;
      result$data['isPhoneNumberVerified'] = l$isPhoneNumberVerified;
    }
    if (_$data.containsKey('brand')) {
      final l$brand = brand;
      result$data['brand'] = l$brand;
    }
    if (_$data.containsKey('model')) {
      final l$model = model;
      result$data['model'] = l$model;
    }
    if (_$data.containsKey('isTablet')) {
      final l$isTablet = isTablet;
      result$data['isTablet'] = l$isTablet;
    }
    if (_$data.containsKey('screenWidth')) {
      final l$screenWidth = screenWidth;
      result$data['screenWidth'] = l$screenWidth;
    }
    if (_$data.containsKey('screenHeight')) {
      final l$screenHeight = screenHeight;
      result$data['screenHeight'] = l$screenHeight;
    }
    if (_$data.containsKey('os')) {
      final l$os = os;
      result$data['os'] = l$os;
    }
    if (_$data.containsKey('osVersion')) {
      final l$osVersion = osVersion;
      result$data['osVersion'] = l$osVersion;
    }
    if (_$data.containsKey('timezone')) {
      final l$timezone = timezone;
      result$data['timezone'] = l$timezone;
    }
    if (_$data.containsKey('ipAddress')) {
      final l$ipAddress = ipAddress;
      result$data['ipAddress'] = l$ipAddress;
    }
    if (_$data.containsKey('locale')) {
      final l$locale = locale;
      result$data['locale'] = l$locale;
    }
    if (_$data.containsKey('countryCode')) {
      final l$countryCode = countryCode;
      result$data['countryCode'] = l$countryCode;
    }
    if (_$data.containsKey('appVersion')) {
      final l$appVersion = appVersion;
      result$data['appVersion'] = l$appVersion;
    }
    if (_$data.containsKey('signedInAt')) {
      final l$signedInAt = signedInAt;
      result$data['signedInAt'] = l$signedInAt?.toIso8601String();
    }
    if (_$data.containsKey('signedOutAt')) {
      final l$signedOutAt = signedOutAt;
      result$data['signedOutAt'] = l$signedOutAt?.toIso8601String();
    }
    if (_$data.containsKey('sessionStartedAt')) {
      final l$sessionStartedAt = sessionStartedAt;
      result$data['sessionStartedAt'] = l$sessionStartedAt?.toIso8601String();
    }
    if (_$data.containsKey('sessionEndedAt')) {
      final l$sessionEndedAt = sessionEndedAt;
      result$data['sessionEndedAt'] = l$sessionEndedAt?.toIso8601String();
    }
    if (_$data.containsKey('authToken')) {
      final l$authToken = authToken;
      result$data['authToken'] = l$authToken;
    }
    if (_$data.containsKey('authTokenCreatedAt')) {
      final l$authTokenCreatedAt = authTokenCreatedAt;
      result$data['authTokenCreatedAt'] =
          l$authTokenCreatedAt?.toIso8601String();
    }
    if (_$data.containsKey('authTokenExperiesAt')) {
      final l$authTokenExperiesAt = authTokenExperiesAt;
      result$data['authTokenExperiesAt'] =
          l$authTokenExperiesAt?.toIso8601String();
    }
    if (_$data.containsKey('oAuthToken')) {
      final l$oAuthToken = oAuthToken;
      result$data['oAuthToken'] = l$oAuthToken;
    }
    if (_$data.containsKey('oAuthTokenExpiresAt')) {
      final l$oAuthTokenExpiresAt = oAuthTokenExpiresAt;
      result$data['oAuthTokenExpiresAt'] =
          l$oAuthTokenExpiresAt?.toIso8601String();
    }
    if (_$data.containsKey('oAuthProvider')) {
      final l$oAuthProvider = oAuthProvider;
      result$data['oAuthProvider'] = l$oAuthProvider;
    }
    if (_$data.containsKey('oAuthRefreshToken')) {
      final l$oAuthRefreshToken = oAuthRefreshToken;
      result$data['oAuthRefreshToken'] = l$oAuthRefreshToken;
    }
    if (_$data.containsKey('pushNotificationToken')) {
      final l$pushNotificationToken = pushNotificationToken;
      result$data['pushNotificationToken'] = l$pushNotificationToken;
    }
    if (_$data.containsKey('trustedAt')) {
      final l$trustedAt = trustedAt;
      result$data['trustedAt'] = l$trustedAt?.toIso8601String();
    }
    return result$data;
  }

  CopyWith$Input$UserDeviceInput<Input$UserDeviceInput> get copyWith =>
      CopyWith$Input$UserDeviceInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$UserDeviceInput) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$adminNotes = adminNotes;
    final lOther$adminNotes = other.adminNotes;
    if (_$data.containsKey('adminNotes') !=
        other._$data.containsKey('adminNotes')) {
      return false;
    }
    if (l$adminNotes != lOther$adminNotes) {
      return false;
    }
    final l$events = events;
    final lOther$events = other.events;
    if (_$data.containsKey('events') != other._$data.containsKey('events')) {
      return false;
    }
    if (l$events != null && lOther$events != null) {
      if (l$events.length != lOther$events.length) {
        return false;
      }
      for (int i = 0; i < l$events.length; i++) {
        final l$events$entry = l$events[i];
        final lOther$events$entry = lOther$events[i];
        if (l$events$entry != lOther$events$entry) {
          return false;
        }
      }
    } else if (l$events != lOther$events) {
      return false;
    }
    final l$metadata = metadata;
    final lOther$metadata = other.metadata;
    if (_$data.containsKey('metadata') !=
        other._$data.containsKey('metadata')) {
      return false;
    }
    if (l$metadata != lOther$metadata) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (_$data.containsKey('createdAt') !=
        other._$data.containsKey('createdAt')) {
      return false;
    }
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$createdBy = createdBy;
    final lOther$createdBy = other.createdBy;
    if (_$data.containsKey('createdBy') !=
        other._$data.containsKey('createdBy')) {
      return false;
    }
    if (l$createdBy != lOther$createdBy) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (_$data.containsKey('updatedAt') !=
        other._$data.containsKey('updatedAt')) {
      return false;
    }
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    final l$updatedBy = updatedBy;
    final lOther$updatedBy = other.updatedBy;
    if (_$data.containsKey('updatedBy') !=
        other._$data.containsKey('updatedBy')) {
      return false;
    }
    if (l$updatedBy != lOther$updatedBy) {
      return false;
    }
    final l$deletedAt = deletedAt;
    final lOther$deletedAt = other.deletedAt;
    if (_$data.containsKey('deletedAt') !=
        other._$data.containsKey('deletedAt')) {
      return false;
    }
    if (l$deletedAt != lOther$deletedAt) {
      return false;
    }
    final l$deletedBy = deletedBy;
    final lOther$deletedBy = other.deletedBy;
    if (_$data.containsKey('deletedBy') !=
        other._$data.containsKey('deletedBy')) {
      return false;
    }
    if (l$deletedBy != lOther$deletedBy) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (_$data.containsKey('userId') != other._$data.containsKey('userId')) {
      return false;
    }
    if (l$userId != lOther$userId) {
      return false;
    }
    final l$deviceUuid = deviceUuid;
    final lOther$deviceUuid = other.deviceUuid;
    if (_$data.containsKey('deviceUuid') !=
        other._$data.containsKey('deviceUuid')) {
      return false;
    }
    if (l$deviceUuid != lOther$deviceUuid) {
      return false;
    }
    final l$deviceType = deviceType;
    final lOther$deviceType = other.deviceType;
    if (_$data.containsKey('deviceType') !=
        other._$data.containsKey('deviceType')) {
      return false;
    }
    if (l$deviceType != lOther$deviceType) {
      return false;
    }
    final l$trusted = trusted;
    final lOther$trusted = other.trusted;
    if (_$data.containsKey('trusted') != other._$data.containsKey('trusted')) {
      return false;
    }
    if (l$trusted != lOther$trusted) {
      return false;
    }
    final l$phoneNumber = phoneNumber;
    final lOther$phoneNumber = other.phoneNumber;
    if (_$data.containsKey('phoneNumber') !=
        other._$data.containsKey('phoneNumber')) {
      return false;
    }
    if (l$phoneNumber != lOther$phoneNumber) {
      return false;
    }
    final l$phoneNumberUpdatedAt = phoneNumberUpdatedAt;
    final lOther$phoneNumberUpdatedAt = other.phoneNumberUpdatedAt;
    if (_$data.containsKey('phoneNumberUpdatedAt') !=
        other._$data.containsKey('phoneNumberUpdatedAt')) {
      return false;
    }
    if (l$phoneNumberUpdatedAt != lOther$phoneNumberUpdatedAt) {
      return false;
    }
    final l$isPhoneNumberVerified = isPhoneNumberVerified;
    final lOther$isPhoneNumberVerified = other.isPhoneNumberVerified;
    if (_$data.containsKey('isPhoneNumberVerified') !=
        other._$data.containsKey('isPhoneNumberVerified')) {
      return false;
    }
    if (l$isPhoneNumberVerified != lOther$isPhoneNumberVerified) {
      return false;
    }
    final l$brand = brand;
    final lOther$brand = other.brand;
    if (_$data.containsKey('brand') != other._$data.containsKey('brand')) {
      return false;
    }
    if (l$brand != lOther$brand) {
      return false;
    }
    final l$model = model;
    final lOther$model = other.model;
    if (_$data.containsKey('model') != other._$data.containsKey('model')) {
      return false;
    }
    if (l$model != lOther$model) {
      return false;
    }
    final l$isTablet = isTablet;
    final lOther$isTablet = other.isTablet;
    if (_$data.containsKey('isTablet') !=
        other._$data.containsKey('isTablet')) {
      return false;
    }
    if (l$isTablet != lOther$isTablet) {
      return false;
    }
    final l$screenWidth = screenWidth;
    final lOther$screenWidth = other.screenWidth;
    if (_$data.containsKey('screenWidth') !=
        other._$data.containsKey('screenWidth')) {
      return false;
    }
    if (l$screenWidth != lOther$screenWidth) {
      return false;
    }
    final l$screenHeight = screenHeight;
    final lOther$screenHeight = other.screenHeight;
    if (_$data.containsKey('screenHeight') !=
        other._$data.containsKey('screenHeight')) {
      return false;
    }
    if (l$screenHeight != lOther$screenHeight) {
      return false;
    }
    final l$os = os;
    final lOther$os = other.os;
    if (_$data.containsKey('os') != other._$data.containsKey('os')) {
      return false;
    }
    if (l$os != lOther$os) {
      return false;
    }
    final l$osVersion = osVersion;
    final lOther$osVersion = other.osVersion;
    if (_$data.containsKey('osVersion') !=
        other._$data.containsKey('osVersion')) {
      return false;
    }
    if (l$osVersion != lOther$osVersion) {
      return false;
    }
    final l$timezone = timezone;
    final lOther$timezone = other.timezone;
    if (_$data.containsKey('timezone') !=
        other._$data.containsKey('timezone')) {
      return false;
    }
    if (l$timezone != lOther$timezone) {
      return false;
    }
    final l$ipAddress = ipAddress;
    final lOther$ipAddress = other.ipAddress;
    if (_$data.containsKey('ipAddress') !=
        other._$data.containsKey('ipAddress')) {
      return false;
    }
    if (l$ipAddress != lOther$ipAddress) {
      return false;
    }
    final l$locale = locale;
    final lOther$locale = other.locale;
    if (_$data.containsKey('locale') != other._$data.containsKey('locale')) {
      return false;
    }
    if (l$locale != lOther$locale) {
      return false;
    }
    final l$countryCode = countryCode;
    final lOther$countryCode = other.countryCode;
    if (_$data.containsKey('countryCode') !=
        other._$data.containsKey('countryCode')) {
      return false;
    }
    if (l$countryCode != lOther$countryCode) {
      return false;
    }
    final l$appVersion = appVersion;
    final lOther$appVersion = other.appVersion;
    if (_$data.containsKey('appVersion') !=
        other._$data.containsKey('appVersion')) {
      return false;
    }
    if (l$appVersion != lOther$appVersion) {
      return false;
    }
    final l$signedInAt = signedInAt;
    final lOther$signedInAt = other.signedInAt;
    if (_$data.containsKey('signedInAt') !=
        other._$data.containsKey('signedInAt')) {
      return false;
    }
    if (l$signedInAt != lOther$signedInAt) {
      return false;
    }
    final l$signedOutAt = signedOutAt;
    final lOther$signedOutAt = other.signedOutAt;
    if (_$data.containsKey('signedOutAt') !=
        other._$data.containsKey('signedOutAt')) {
      return false;
    }
    if (l$signedOutAt != lOther$signedOutAt) {
      return false;
    }
    final l$sessionStartedAt = sessionStartedAt;
    final lOther$sessionStartedAt = other.sessionStartedAt;
    if (_$data.containsKey('sessionStartedAt') !=
        other._$data.containsKey('sessionStartedAt')) {
      return false;
    }
    if (l$sessionStartedAt != lOther$sessionStartedAt) {
      return false;
    }
    final l$sessionEndedAt = sessionEndedAt;
    final lOther$sessionEndedAt = other.sessionEndedAt;
    if (_$data.containsKey('sessionEndedAt') !=
        other._$data.containsKey('sessionEndedAt')) {
      return false;
    }
    if (l$sessionEndedAt != lOther$sessionEndedAt) {
      return false;
    }
    final l$authToken = authToken;
    final lOther$authToken = other.authToken;
    if (_$data.containsKey('authToken') !=
        other._$data.containsKey('authToken')) {
      return false;
    }
    if (l$authToken != lOther$authToken) {
      return false;
    }
    final l$authTokenCreatedAt = authTokenCreatedAt;
    final lOther$authTokenCreatedAt = other.authTokenCreatedAt;
    if (_$data.containsKey('authTokenCreatedAt') !=
        other._$data.containsKey('authTokenCreatedAt')) {
      return false;
    }
    if (l$authTokenCreatedAt != lOther$authTokenCreatedAt) {
      return false;
    }
    final l$authTokenExperiesAt = authTokenExperiesAt;
    final lOther$authTokenExperiesAt = other.authTokenExperiesAt;
    if (_$data.containsKey('authTokenExperiesAt') !=
        other._$data.containsKey('authTokenExperiesAt')) {
      return false;
    }
    if (l$authTokenExperiesAt != lOther$authTokenExperiesAt) {
      return false;
    }
    final l$oAuthToken = oAuthToken;
    final lOther$oAuthToken = other.oAuthToken;
    if (_$data.containsKey('oAuthToken') !=
        other._$data.containsKey('oAuthToken')) {
      return false;
    }
    if (l$oAuthToken != lOther$oAuthToken) {
      return false;
    }
    final l$oAuthTokenExpiresAt = oAuthTokenExpiresAt;
    final lOther$oAuthTokenExpiresAt = other.oAuthTokenExpiresAt;
    if (_$data.containsKey('oAuthTokenExpiresAt') !=
        other._$data.containsKey('oAuthTokenExpiresAt')) {
      return false;
    }
    if (l$oAuthTokenExpiresAt != lOther$oAuthTokenExpiresAt) {
      return false;
    }
    final l$oAuthProvider = oAuthProvider;
    final lOther$oAuthProvider = other.oAuthProvider;
    if (_$data.containsKey('oAuthProvider') !=
        other._$data.containsKey('oAuthProvider')) {
      return false;
    }
    if (l$oAuthProvider != lOther$oAuthProvider) {
      return false;
    }
    final l$oAuthRefreshToken = oAuthRefreshToken;
    final lOther$oAuthRefreshToken = other.oAuthRefreshToken;
    if (_$data.containsKey('oAuthRefreshToken') !=
        other._$data.containsKey('oAuthRefreshToken')) {
      return false;
    }
    if (l$oAuthRefreshToken != lOther$oAuthRefreshToken) {
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
    final l$trustedAt = trustedAt;
    final lOther$trustedAt = other.trustedAt;
    if (_$data.containsKey('trustedAt') !=
        other._$data.containsKey('trustedAt')) {
      return false;
    }
    if (l$trustedAt != lOther$trustedAt) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$adminNotes = adminNotes;
    final l$events = events;
    final l$metadata = metadata;
    final l$createdAt = createdAt;
    final l$createdBy = createdBy;
    final l$updatedAt = updatedAt;
    final l$updatedBy = updatedBy;
    final l$deletedAt = deletedAt;
    final l$deletedBy = deletedBy;
    final l$userId = userId;
    final l$deviceUuid = deviceUuid;
    final l$deviceType = deviceType;
    final l$trusted = trusted;
    final l$phoneNumber = phoneNumber;
    final l$phoneNumberUpdatedAt = phoneNumberUpdatedAt;
    final l$isPhoneNumberVerified = isPhoneNumberVerified;
    final l$brand = brand;
    final l$model = model;
    final l$isTablet = isTablet;
    final l$screenWidth = screenWidth;
    final l$screenHeight = screenHeight;
    final l$os = os;
    final l$osVersion = osVersion;
    final l$timezone = timezone;
    final l$ipAddress = ipAddress;
    final l$locale = locale;
    final l$countryCode = countryCode;
    final l$appVersion = appVersion;
    final l$signedInAt = signedInAt;
    final l$signedOutAt = signedOutAt;
    final l$sessionStartedAt = sessionStartedAt;
    final l$sessionEndedAt = sessionEndedAt;
    final l$authToken = authToken;
    final l$authTokenCreatedAt = authTokenCreatedAt;
    final l$authTokenExperiesAt = authTokenExperiesAt;
    final l$oAuthToken = oAuthToken;
    final l$oAuthTokenExpiresAt = oAuthTokenExpiresAt;
    final l$oAuthProvider = oAuthProvider;
    final l$oAuthRefreshToken = oAuthRefreshToken;
    final l$pushNotificationToken = pushNotificationToken;
    final l$trustedAt = trustedAt;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('adminNotes') ? l$adminNotes : const {},
      _$data.containsKey('events')
          ? l$events == null
              ? null
              : Object.hashAll(l$events.map((v) => v))
          : const {},
      _$data.containsKey('metadata') ? l$metadata : const {},
      _$data.containsKey('createdAt') ? l$createdAt : const {},
      _$data.containsKey('createdBy') ? l$createdBy : const {},
      _$data.containsKey('updatedAt') ? l$updatedAt : const {},
      _$data.containsKey('updatedBy') ? l$updatedBy : const {},
      _$data.containsKey('deletedAt') ? l$deletedAt : const {},
      _$data.containsKey('deletedBy') ? l$deletedBy : const {},
      _$data.containsKey('userId') ? l$userId : const {},
      _$data.containsKey('deviceUuid') ? l$deviceUuid : const {},
      _$data.containsKey('deviceType') ? l$deviceType : const {},
      _$data.containsKey('trusted') ? l$trusted : const {},
      _$data.containsKey('phoneNumber') ? l$phoneNumber : const {},
      _$data.containsKey('phoneNumberUpdatedAt')
          ? l$phoneNumberUpdatedAt
          : const {},
      _$data.containsKey('isPhoneNumberVerified')
          ? l$isPhoneNumberVerified
          : const {},
      _$data.containsKey('brand') ? l$brand : const {},
      _$data.containsKey('model') ? l$model : const {},
      _$data.containsKey('isTablet') ? l$isTablet : const {},
      _$data.containsKey('screenWidth') ? l$screenWidth : const {},
      _$data.containsKey('screenHeight') ? l$screenHeight : const {},
      _$data.containsKey('os') ? l$os : const {},
      _$data.containsKey('osVersion') ? l$osVersion : const {},
      _$data.containsKey('timezone') ? l$timezone : const {},
      _$data.containsKey('ipAddress') ? l$ipAddress : const {},
      _$data.containsKey('locale') ? l$locale : const {},
      _$data.containsKey('countryCode') ? l$countryCode : const {},
      _$data.containsKey('appVersion') ? l$appVersion : const {},
      _$data.containsKey('signedInAt') ? l$signedInAt : const {},
      _$data.containsKey('signedOutAt') ? l$signedOutAt : const {},
      _$data.containsKey('sessionStartedAt') ? l$sessionStartedAt : const {},
      _$data.containsKey('sessionEndedAt') ? l$sessionEndedAt : const {},
      _$data.containsKey('authToken') ? l$authToken : const {},
      _$data.containsKey('authTokenCreatedAt')
          ? l$authTokenCreatedAt
          : const {},
      _$data.containsKey('authTokenExperiesAt')
          ? l$authTokenExperiesAt
          : const {},
      _$data.containsKey('oAuthToken') ? l$oAuthToken : const {},
      _$data.containsKey('oAuthTokenExpiresAt')
          ? l$oAuthTokenExpiresAt
          : const {},
      _$data.containsKey('oAuthProvider') ? l$oAuthProvider : const {},
      _$data.containsKey('oAuthRefreshToken') ? l$oAuthRefreshToken : const {},
      _$data.containsKey('pushNotificationToken')
          ? l$pushNotificationToken
          : const {},
      _$data.containsKey('trustedAt') ? l$trustedAt : const {},
    ]);
  }
}

abstract class CopyWith$Input$UserDeviceInput<TRes> {
  factory CopyWith$Input$UserDeviceInput(
    Input$UserDeviceInput instance,
    TRes Function(Input$UserDeviceInput) then,
  ) = _CopyWithImpl$Input$UserDeviceInput;

  factory CopyWith$Input$UserDeviceInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UserDeviceInput;

  TRes call({
    String? id,
    String? adminNotes,
    List<Input$ModelEventInput>? events,
    Input$BaseModelMetadataInput? metadata,
    DateTime? createdAt,
    String? createdBy,
    DateTime? updatedAt,
    String? updatedBy,
    DateTime? deletedAt,
    String? deletedBy,
    String? userId,
    String? deviceUuid,
    String? deviceType,
    bool? trusted,
    String? phoneNumber,
    DateTime? phoneNumberUpdatedAt,
    bool? isPhoneNumberVerified,
    String? brand,
    String? model,
    bool? isTablet,
    int? screenWidth,
    int? screenHeight,
    String? os,
    String? osVersion,
    String? timezone,
    String? ipAddress,
    String? locale,
    String? countryCode,
    String? appVersion,
    DateTime? signedInAt,
    DateTime? signedOutAt,
    DateTime? sessionStartedAt,
    DateTime? sessionEndedAt,
    String? authToken,
    DateTime? authTokenCreatedAt,
    DateTime? authTokenExperiesAt,
    String? oAuthToken,
    DateTime? oAuthTokenExpiresAt,
    String? oAuthProvider,
    String? oAuthRefreshToken,
    String? pushNotificationToken,
    DateTime? trustedAt,
  });
  TRes events(
      Iterable<Input$ModelEventInput>? Function(
              Iterable<CopyWith$Input$ModelEventInput<Input$ModelEventInput>>?)
          _fn);
  CopyWith$Input$BaseModelMetadataInput<TRes> get metadata;
}

class _CopyWithImpl$Input$UserDeviceInput<TRes>
    implements CopyWith$Input$UserDeviceInput<TRes> {
  _CopyWithImpl$Input$UserDeviceInput(
    this._instance,
    this._then,
  );

  final Input$UserDeviceInput _instance;

  final TRes Function(Input$UserDeviceInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? adminNotes = _undefined,
    Object? events = _undefined,
    Object? metadata = _undefined,
    Object? createdAt = _undefined,
    Object? createdBy = _undefined,
    Object? updatedAt = _undefined,
    Object? updatedBy = _undefined,
    Object? deletedAt = _undefined,
    Object? deletedBy = _undefined,
    Object? userId = _undefined,
    Object? deviceUuid = _undefined,
    Object? deviceType = _undefined,
    Object? trusted = _undefined,
    Object? phoneNumber = _undefined,
    Object? phoneNumberUpdatedAt = _undefined,
    Object? isPhoneNumberVerified = _undefined,
    Object? brand = _undefined,
    Object? model = _undefined,
    Object? isTablet = _undefined,
    Object? screenWidth = _undefined,
    Object? screenHeight = _undefined,
    Object? os = _undefined,
    Object? osVersion = _undefined,
    Object? timezone = _undefined,
    Object? ipAddress = _undefined,
    Object? locale = _undefined,
    Object? countryCode = _undefined,
    Object? appVersion = _undefined,
    Object? signedInAt = _undefined,
    Object? signedOutAt = _undefined,
    Object? sessionStartedAt = _undefined,
    Object? sessionEndedAt = _undefined,
    Object? authToken = _undefined,
    Object? authTokenCreatedAt = _undefined,
    Object? authTokenExperiesAt = _undefined,
    Object? oAuthToken = _undefined,
    Object? oAuthTokenExpiresAt = _undefined,
    Object? oAuthProvider = _undefined,
    Object? oAuthRefreshToken = _undefined,
    Object? pushNotificationToken = _undefined,
    Object? trustedAt = _undefined,
  }) =>
      _then(Input$UserDeviceInput._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as String?),
        if (adminNotes != _undefined) 'adminNotes': (adminNotes as String?),
        if (events != _undefined)
          'events': (events as List<Input$ModelEventInput>?),
        if (metadata != _undefined)
          'metadata': (metadata as Input$BaseModelMetadataInput?),
        if (createdAt != _undefined) 'createdAt': (createdAt as DateTime?),
        if (createdBy != _undefined) 'createdBy': (createdBy as String?),
        if (updatedAt != _undefined) 'updatedAt': (updatedAt as DateTime?),
        if (updatedBy != _undefined) 'updatedBy': (updatedBy as String?),
        if (deletedAt != _undefined) 'deletedAt': (deletedAt as DateTime?),
        if (deletedBy != _undefined) 'deletedBy': (deletedBy as String?),
        if (userId != _undefined) 'userId': (userId as String?),
        if (deviceUuid != _undefined) 'deviceUuid': (deviceUuid as String?),
        if (deviceType != _undefined) 'deviceType': (deviceType as String?),
        if (trusted != _undefined) 'trusted': (trusted as bool?),
        if (phoneNumber != _undefined) 'phoneNumber': (phoneNumber as String?),
        if (phoneNumberUpdatedAt != _undefined)
          'phoneNumberUpdatedAt': (phoneNumberUpdatedAt as DateTime?),
        if (isPhoneNumberVerified != _undefined)
          'isPhoneNumberVerified': (isPhoneNumberVerified as bool?),
        if (brand != _undefined) 'brand': (brand as String?),
        if (model != _undefined) 'model': (model as String?),
        if (isTablet != _undefined) 'isTablet': (isTablet as bool?),
        if (screenWidth != _undefined) 'screenWidth': (screenWidth as int?),
        if (screenHeight != _undefined) 'screenHeight': (screenHeight as int?),
        if (os != _undefined) 'os': (os as String?),
        if (osVersion != _undefined) 'osVersion': (osVersion as String?),
        if (timezone != _undefined) 'timezone': (timezone as String?),
        if (ipAddress != _undefined) 'ipAddress': (ipAddress as String?),
        if (locale != _undefined) 'locale': (locale as String?),
        if (countryCode != _undefined) 'countryCode': (countryCode as String?),
        if (appVersion != _undefined) 'appVersion': (appVersion as String?),
        if (signedInAt != _undefined) 'signedInAt': (signedInAt as DateTime?),
        if (signedOutAt != _undefined)
          'signedOutAt': (signedOutAt as DateTime?),
        if (sessionStartedAt != _undefined)
          'sessionStartedAt': (sessionStartedAt as DateTime?),
        if (sessionEndedAt != _undefined)
          'sessionEndedAt': (sessionEndedAt as DateTime?),
        if (authToken != _undefined) 'authToken': (authToken as String?),
        if (authTokenCreatedAt != _undefined)
          'authTokenCreatedAt': (authTokenCreatedAt as DateTime?),
        if (authTokenExperiesAt != _undefined)
          'authTokenExperiesAt': (authTokenExperiesAt as DateTime?),
        if (oAuthToken != _undefined) 'oAuthToken': (oAuthToken as String?),
        if (oAuthTokenExpiresAt != _undefined)
          'oAuthTokenExpiresAt': (oAuthTokenExpiresAt as DateTime?),
        if (oAuthProvider != _undefined)
          'oAuthProvider': (oAuthProvider as String?),
        if (oAuthRefreshToken != _undefined)
          'oAuthRefreshToken': (oAuthRefreshToken as String?),
        if (pushNotificationToken != _undefined)
          'pushNotificationToken': (pushNotificationToken as String?),
        if (trustedAt != _undefined) 'trustedAt': (trustedAt as DateTime?),
      }));
  TRes events(
          Iterable<Input$ModelEventInput>? Function(
                  Iterable<
                      CopyWith$Input$ModelEventInput<Input$ModelEventInput>>?)
              _fn) =>
      call(
          events:
              _fn(_instance.events?.map((e) => CopyWith$Input$ModelEventInput(
                    e,
                    (i) => i,
                  )))?.toList());
  CopyWith$Input$BaseModelMetadataInput<TRes> get metadata {
    final local$metadata = _instance.metadata;
    return local$metadata == null
        ? CopyWith$Input$BaseModelMetadataInput.stub(_then(_instance))
        : CopyWith$Input$BaseModelMetadataInput(
            local$metadata, (e) => call(metadata: e));
  }
}

class _CopyWithStubImpl$Input$UserDeviceInput<TRes>
    implements CopyWith$Input$UserDeviceInput<TRes> {
  _CopyWithStubImpl$Input$UserDeviceInput(this._res);

  TRes _res;

  call({
    String? id,
    String? adminNotes,
    List<Input$ModelEventInput>? events,
    Input$BaseModelMetadataInput? metadata,
    DateTime? createdAt,
    String? createdBy,
    DateTime? updatedAt,
    String? updatedBy,
    DateTime? deletedAt,
    String? deletedBy,
    String? userId,
    String? deviceUuid,
    String? deviceType,
    bool? trusted,
    String? phoneNumber,
    DateTime? phoneNumberUpdatedAt,
    bool? isPhoneNumberVerified,
    String? brand,
    String? model,
    bool? isTablet,
    int? screenWidth,
    int? screenHeight,
    String? os,
    String? osVersion,
    String? timezone,
    String? ipAddress,
    String? locale,
    String? countryCode,
    String? appVersion,
    DateTime? signedInAt,
    DateTime? signedOutAt,
    DateTime? sessionStartedAt,
    DateTime? sessionEndedAt,
    String? authToken,
    DateTime? authTokenCreatedAt,
    DateTime? authTokenExperiesAt,
    String? oAuthToken,
    DateTime? oAuthTokenExpiresAt,
    String? oAuthProvider,
    String? oAuthRefreshToken,
    String? pushNotificationToken,
    DateTime? trustedAt,
  }) =>
      _res;
  events(_fn) => _res;
  CopyWith$Input$BaseModelMetadataInput<TRes> get metadata =>
      CopyWith$Input$BaseModelMetadataInput.stub(_res);
}

class Input$SidUserDeviceListFilter {
  factory Input$SidUserDeviceListFilter({
    List<String>? ids,
    String? searchText,
    bool? caseSensitive,
    List<String>? textSearchFields,
    DateTime? createdAtFrom,
    DateTime? createdAtUntil,
    DateTime? updatedAtFrom,
    DateTime? updatedAtUntil,
  }) =>
      Input$SidUserDeviceListFilter._({
        if (ids != null) r'ids': ids,
        if (searchText != null) r'searchText': searchText,
        if (caseSensitive != null) r'caseSensitive': caseSensitive,
        if (textSearchFields != null) r'textSearchFields': textSearchFields,
        if (createdAtFrom != null) r'createdAtFrom': createdAtFrom,
        if (createdAtUntil != null) r'createdAtUntil': createdAtUntil,
        if (updatedAtFrom != null) r'updatedAtFrom': updatedAtFrom,
        if (updatedAtUntil != null) r'updatedAtUntil': updatedAtUntil,
      });

  Input$SidUserDeviceListFilter._(this._$data);

  factory Input$SidUserDeviceListFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('ids')) {
      final l$ids = data['ids'];
      result$data['ids'] =
          (l$ids as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    if (data.containsKey('searchText')) {
      final l$searchText = data['searchText'];
      result$data['searchText'] = (l$searchText as String?);
    }
    if (data.containsKey('caseSensitive')) {
      final l$caseSensitive = data['caseSensitive'];
      result$data['caseSensitive'] = (l$caseSensitive as bool?);
    }
    if (data.containsKey('textSearchFields')) {
      final l$textSearchFields = data['textSearchFields'];
      result$data['textSearchFields'] = (l$textSearchFields as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    if (data.containsKey('createdAtFrom')) {
      final l$createdAtFrom = data['createdAtFrom'];
      result$data['createdAtFrom'] = l$createdAtFrom == null
          ? null
          : DateTime.parse((l$createdAtFrom as String));
    }
    if (data.containsKey('createdAtUntil')) {
      final l$createdAtUntil = data['createdAtUntil'];
      result$data['createdAtUntil'] = l$createdAtUntil == null
          ? null
          : DateTime.parse((l$createdAtUntil as String));
    }
    if (data.containsKey('updatedAtFrom')) {
      final l$updatedAtFrom = data['updatedAtFrom'];
      result$data['updatedAtFrom'] = l$updatedAtFrom == null
          ? null
          : DateTime.parse((l$updatedAtFrom as String));
    }
    if (data.containsKey('updatedAtUntil')) {
      final l$updatedAtUntil = data['updatedAtUntil'];
      result$data['updatedAtUntil'] = l$updatedAtUntil == null
          ? null
          : DateTime.parse((l$updatedAtUntil as String));
    }
    return Input$SidUserDeviceListFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  List<String>? get ids => (_$data['ids'] as List<String>?);
  String? get searchText => (_$data['searchText'] as String?);
  bool? get caseSensitive => (_$data['caseSensitive'] as bool?);
  List<String>? get textSearchFields =>
      (_$data['textSearchFields'] as List<String>?);
  DateTime? get createdAtFrom => (_$data['createdAtFrom'] as DateTime?);
  DateTime? get createdAtUntil => (_$data['createdAtUntil'] as DateTime?);
  DateTime? get updatedAtFrom => (_$data['updatedAtFrom'] as DateTime?);
  DateTime? get updatedAtUntil => (_$data['updatedAtUntil'] as DateTime?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('ids')) {
      final l$ids = ids;
      result$data['ids'] = l$ids?.map((e) => e).toList();
    }
    if (_$data.containsKey('searchText')) {
      final l$searchText = searchText;
      result$data['searchText'] = l$searchText;
    }
    if (_$data.containsKey('caseSensitive')) {
      final l$caseSensitive = caseSensitive;
      result$data['caseSensitive'] = l$caseSensitive;
    }
    if (_$data.containsKey('textSearchFields')) {
      final l$textSearchFields = textSearchFields;
      result$data['textSearchFields'] =
          l$textSearchFields?.map((e) => e).toList();
    }
    if (_$data.containsKey('createdAtFrom')) {
      final l$createdAtFrom = createdAtFrom;
      result$data['createdAtFrom'] = l$createdAtFrom?.toIso8601String();
    }
    if (_$data.containsKey('createdAtUntil')) {
      final l$createdAtUntil = createdAtUntil;
      result$data['createdAtUntil'] = l$createdAtUntil?.toIso8601String();
    }
    if (_$data.containsKey('updatedAtFrom')) {
      final l$updatedAtFrom = updatedAtFrom;
      result$data['updatedAtFrom'] = l$updatedAtFrom?.toIso8601String();
    }
    if (_$data.containsKey('updatedAtUntil')) {
      final l$updatedAtUntil = updatedAtUntil;
      result$data['updatedAtUntil'] = l$updatedAtUntil?.toIso8601String();
    }
    return result$data;
  }

  CopyWith$Input$SidUserDeviceListFilter<Input$SidUserDeviceListFilter>
      get copyWith => CopyWith$Input$SidUserDeviceListFilter(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$SidUserDeviceListFilter) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$ids = ids;
    final lOther$ids = other.ids;
    if (_$data.containsKey('ids') != other._$data.containsKey('ids')) {
      return false;
    }
    if (l$ids != null && lOther$ids != null) {
      if (l$ids.length != lOther$ids.length) {
        return false;
      }
      for (int i = 0; i < l$ids.length; i++) {
        final l$ids$entry = l$ids[i];
        final lOther$ids$entry = lOther$ids[i];
        if (l$ids$entry != lOther$ids$entry) {
          return false;
        }
      }
    } else if (l$ids != lOther$ids) {
      return false;
    }
    final l$searchText = searchText;
    final lOther$searchText = other.searchText;
    if (_$data.containsKey('searchText') !=
        other._$data.containsKey('searchText')) {
      return false;
    }
    if (l$searchText != lOther$searchText) {
      return false;
    }
    final l$caseSensitive = caseSensitive;
    final lOther$caseSensitive = other.caseSensitive;
    if (_$data.containsKey('caseSensitive') !=
        other._$data.containsKey('caseSensitive')) {
      return false;
    }
    if (l$caseSensitive != lOther$caseSensitive) {
      return false;
    }
    final l$textSearchFields = textSearchFields;
    final lOther$textSearchFields = other.textSearchFields;
    if (_$data.containsKey('textSearchFields') !=
        other._$data.containsKey('textSearchFields')) {
      return false;
    }
    if (l$textSearchFields != null && lOther$textSearchFields != null) {
      if (l$textSearchFields.length != lOther$textSearchFields.length) {
        return false;
      }
      for (int i = 0; i < l$textSearchFields.length; i++) {
        final l$textSearchFields$entry = l$textSearchFields[i];
        final lOther$textSearchFields$entry = lOther$textSearchFields[i];
        if (l$textSearchFields$entry != lOther$textSearchFields$entry) {
          return false;
        }
      }
    } else if (l$textSearchFields != lOther$textSearchFields) {
      return false;
    }
    final l$createdAtFrom = createdAtFrom;
    final lOther$createdAtFrom = other.createdAtFrom;
    if (_$data.containsKey('createdAtFrom') !=
        other._$data.containsKey('createdAtFrom')) {
      return false;
    }
    if (l$createdAtFrom != lOther$createdAtFrom) {
      return false;
    }
    final l$createdAtUntil = createdAtUntil;
    final lOther$createdAtUntil = other.createdAtUntil;
    if (_$data.containsKey('createdAtUntil') !=
        other._$data.containsKey('createdAtUntil')) {
      return false;
    }
    if (l$createdAtUntil != lOther$createdAtUntil) {
      return false;
    }
    final l$updatedAtFrom = updatedAtFrom;
    final lOther$updatedAtFrom = other.updatedAtFrom;
    if (_$data.containsKey('updatedAtFrom') !=
        other._$data.containsKey('updatedAtFrom')) {
      return false;
    }
    if (l$updatedAtFrom != lOther$updatedAtFrom) {
      return false;
    }
    final l$updatedAtUntil = updatedAtUntil;
    final lOther$updatedAtUntil = other.updatedAtUntil;
    if (_$data.containsKey('updatedAtUntil') !=
        other._$data.containsKey('updatedAtUntil')) {
      return false;
    }
    if (l$updatedAtUntil != lOther$updatedAtUntil) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$ids = ids;
    final l$searchText = searchText;
    final l$caseSensitive = caseSensitive;
    final l$textSearchFields = textSearchFields;
    final l$createdAtFrom = createdAtFrom;
    final l$createdAtUntil = createdAtUntil;
    final l$updatedAtFrom = updatedAtFrom;
    final l$updatedAtUntil = updatedAtUntil;
    return Object.hashAll([
      _$data.containsKey('ids')
          ? l$ids == null
              ? null
              : Object.hashAll(l$ids.map((v) => v))
          : const {},
      _$data.containsKey('searchText') ? l$searchText : const {},
      _$data.containsKey('caseSensitive') ? l$caseSensitive : const {},
      _$data.containsKey('textSearchFields')
          ? l$textSearchFields == null
              ? null
              : Object.hashAll(l$textSearchFields.map((v) => v))
          : const {},
      _$data.containsKey('createdAtFrom') ? l$createdAtFrom : const {},
      _$data.containsKey('createdAtUntil') ? l$createdAtUntil : const {},
      _$data.containsKey('updatedAtFrom') ? l$updatedAtFrom : const {},
      _$data.containsKey('updatedAtUntil') ? l$updatedAtUntil : const {},
    ]);
  }
}

abstract class CopyWith$Input$SidUserDeviceListFilter<TRes> {
  factory CopyWith$Input$SidUserDeviceListFilter(
    Input$SidUserDeviceListFilter instance,
    TRes Function(Input$SidUserDeviceListFilter) then,
  ) = _CopyWithImpl$Input$SidUserDeviceListFilter;

  factory CopyWith$Input$SidUserDeviceListFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$SidUserDeviceListFilter;

  TRes call({
    List<String>? ids,
    String? searchText,
    bool? caseSensitive,
    List<String>? textSearchFields,
    DateTime? createdAtFrom,
    DateTime? createdAtUntil,
    DateTime? updatedAtFrom,
    DateTime? updatedAtUntil,
  });
}

class _CopyWithImpl$Input$SidUserDeviceListFilter<TRes>
    implements CopyWith$Input$SidUserDeviceListFilter<TRes> {
  _CopyWithImpl$Input$SidUserDeviceListFilter(
    this._instance,
    this._then,
  );

  final Input$SidUserDeviceListFilter _instance;

  final TRes Function(Input$SidUserDeviceListFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ids = _undefined,
    Object? searchText = _undefined,
    Object? caseSensitive = _undefined,
    Object? textSearchFields = _undefined,
    Object? createdAtFrom = _undefined,
    Object? createdAtUntil = _undefined,
    Object? updatedAtFrom = _undefined,
    Object? updatedAtUntil = _undefined,
  }) =>
      _then(Input$SidUserDeviceListFilter._({
        ..._instance._$data,
        if (ids != _undefined) 'ids': (ids as List<String>?),
        if (searchText != _undefined) 'searchText': (searchText as String?),
        if (caseSensitive != _undefined)
          'caseSensitive': (caseSensitive as bool?),
        if (textSearchFields != _undefined)
          'textSearchFields': (textSearchFields as List<String>?),
        if (createdAtFrom != _undefined)
          'createdAtFrom': (createdAtFrom as DateTime?),
        if (createdAtUntil != _undefined)
          'createdAtUntil': (createdAtUntil as DateTime?),
        if (updatedAtFrom != _undefined)
          'updatedAtFrom': (updatedAtFrom as DateTime?),
        if (updatedAtUntil != _undefined)
          'updatedAtUntil': (updatedAtUntil as DateTime?),
      }));
}

class _CopyWithStubImpl$Input$SidUserDeviceListFilter<TRes>
    implements CopyWith$Input$SidUserDeviceListFilter<TRes> {
  _CopyWithStubImpl$Input$SidUserDeviceListFilter(this._res);

  TRes _res;

  call({
    List<String>? ids,
    String? searchText,
    bool? caseSensitive,
    List<String>? textSearchFields,
    DateTime? createdAtFrom,
    DateTime? createdAtUntil,
    DateTime? updatedAtFrom,
    DateTime? updatedAtUntil,
  }) =>
      _res;
}

class Input$ChannelInput {
  factory Input$ChannelInput({
    String? id,
    String? adminNotes,
    List<Input$ModelEventInput>? events,
    Input$BaseModelMetadataInput? metadata,
    DateTime? createdAt,
    String? createdBy,
    DateTime? updatedAt,
    String? updatedBy,
    DateTime? deletedAt,
    String? deletedBy,
    String? name,
    String? topic,
    String? description,
    List<String>? tags,
    Enum$ChannelType? channelType,
    List<Input$BgChannelStatusInput>? statuses,
    List<String>? userIds,
    List<String>? inviteUserIds,
    DateTime? pausedAt,
    String? pausedBy,
    DateTime? archivedAt,
    String? archivedBy,
    String? assumedMentorId,
    String? mm2Id,
    DateTime? syncedWithMm2At,
  }) =>
      Input$ChannelInput._({
        if (id != null) r'id': id,
        if (adminNotes != null) r'adminNotes': adminNotes,
        if (events != null) r'events': events,
        if (metadata != null) r'metadata': metadata,
        if (createdAt != null) r'createdAt': createdAt,
        if (createdBy != null) r'createdBy': createdBy,
        if (updatedAt != null) r'updatedAt': updatedAt,
        if (updatedBy != null) r'updatedBy': updatedBy,
        if (deletedAt != null) r'deletedAt': deletedAt,
        if (deletedBy != null) r'deletedBy': deletedBy,
        if (name != null) r'name': name,
        if (topic != null) r'topic': topic,
        if (description != null) r'description': description,
        if (tags != null) r'tags': tags,
        if (channelType != null) r'channelType': channelType,
        if (statuses != null) r'statuses': statuses,
        if (userIds != null) r'userIds': userIds,
        if (inviteUserIds != null) r'inviteUserIds': inviteUserIds,
        if (pausedAt != null) r'pausedAt': pausedAt,
        if (pausedBy != null) r'pausedBy': pausedBy,
        if (archivedAt != null) r'archivedAt': archivedAt,
        if (archivedBy != null) r'archivedBy': archivedBy,
        if (assumedMentorId != null) r'assumedMentorId': assumedMentorId,
        if (mm2Id != null) r'mm2Id': mm2Id,
        if (syncedWithMm2At != null) r'syncedWithMm2At': syncedWithMm2At,
      });

  Input$ChannelInput._(this._$data);

  factory Input$ChannelInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as String?);
    }
    if (data.containsKey('adminNotes')) {
      final l$adminNotes = data['adminNotes'];
      result$data['adminNotes'] = (l$adminNotes as String?);
    }
    if (data.containsKey('events')) {
      final l$events = data['events'];
      result$data['events'] = (l$events as List<dynamic>?)
          ?.map((e) =>
              Input$ModelEventInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('metadata')) {
      final l$metadata = data['metadata'];
      result$data['metadata'] = l$metadata == null
          ? null
          : Input$BaseModelMetadataInput.fromJson(
              (l$metadata as Map<String, dynamic>));
    }
    if (data.containsKey('createdAt')) {
      final l$createdAt = data['createdAt'];
      result$data['createdAt'] =
          l$createdAt == null ? null : DateTime.parse((l$createdAt as String));
    }
    if (data.containsKey('createdBy')) {
      final l$createdBy = data['createdBy'];
      result$data['createdBy'] = (l$createdBy as String?);
    }
    if (data.containsKey('updatedAt')) {
      final l$updatedAt = data['updatedAt'];
      result$data['updatedAt'] =
          l$updatedAt == null ? null : DateTime.parse((l$updatedAt as String));
    }
    if (data.containsKey('updatedBy')) {
      final l$updatedBy = data['updatedBy'];
      result$data['updatedBy'] = (l$updatedBy as String?);
    }
    if (data.containsKey('deletedAt')) {
      final l$deletedAt = data['deletedAt'];
      result$data['deletedAt'] =
          l$deletedAt == null ? null : DateTime.parse((l$deletedAt as String));
    }
    if (data.containsKey('deletedBy')) {
      final l$deletedBy = data['deletedBy'];
      result$data['deletedBy'] = (l$deletedBy as String?);
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('topic')) {
      final l$topic = data['topic'];
      result$data['topic'] = (l$topic as String?);
    }
    if (data.containsKey('description')) {
      final l$description = data['description'];
      result$data['description'] = (l$description as String?);
    }
    if (data.containsKey('tags')) {
      final l$tags = data['tags'];
      result$data['tags'] =
          (l$tags as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    if (data.containsKey('channelType')) {
      final l$channelType = data['channelType'];
      result$data['channelType'] = l$channelType == null
          ? null
          : fromJson$Enum$ChannelType((l$channelType as String));
    }
    if (data.containsKey('statuses')) {
      final l$statuses = data['statuses'];
      result$data['statuses'] = (l$statuses as List<dynamic>?)
          ?.map((e) =>
              Input$BgChannelStatusInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('userIds')) {
      final l$userIds = data['userIds'];
      result$data['userIds'] =
          (l$userIds as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    if (data.containsKey('inviteUserIds')) {
      final l$inviteUserIds = data['inviteUserIds'];
      result$data['inviteUserIds'] = (l$inviteUserIds as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    if (data.containsKey('pausedAt')) {
      final l$pausedAt = data['pausedAt'];
      result$data['pausedAt'] =
          l$pausedAt == null ? null : DateTime.parse((l$pausedAt as String));
    }
    if (data.containsKey('pausedBy')) {
      final l$pausedBy = data['pausedBy'];
      result$data['pausedBy'] = (l$pausedBy as String?);
    }
    if (data.containsKey('archivedAt')) {
      final l$archivedAt = data['archivedAt'];
      result$data['archivedAt'] = l$archivedAt == null
          ? null
          : DateTime.parse((l$archivedAt as String));
    }
    if (data.containsKey('archivedBy')) {
      final l$archivedBy = data['archivedBy'];
      result$data['archivedBy'] = (l$archivedBy as String?);
    }
    if (data.containsKey('assumedMentorId')) {
      final l$assumedMentorId = data['assumedMentorId'];
      result$data['assumedMentorId'] = (l$assumedMentorId as String?);
    }
    if (data.containsKey('mm2Id')) {
      final l$mm2Id = data['mm2Id'];
      result$data['mm2Id'] = (l$mm2Id as String?);
    }
    if (data.containsKey('syncedWithMm2At')) {
      final l$syncedWithMm2At = data['syncedWithMm2At'];
      result$data['syncedWithMm2At'] = l$syncedWithMm2At == null
          ? null
          : DateTime.parse((l$syncedWithMm2At as String));
    }
    return Input$ChannelInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get id => (_$data['id'] as String?);
  String? get adminNotes => (_$data['adminNotes'] as String?);
  List<Input$ModelEventInput>? get events =>
      (_$data['events'] as List<Input$ModelEventInput>?);
  Input$BaseModelMetadataInput? get metadata =>
      (_$data['metadata'] as Input$BaseModelMetadataInput?);
  DateTime? get createdAt => (_$data['createdAt'] as DateTime?);
  String? get createdBy => (_$data['createdBy'] as String?);
  DateTime? get updatedAt => (_$data['updatedAt'] as DateTime?);
  String? get updatedBy => (_$data['updatedBy'] as String?);
  DateTime? get deletedAt => (_$data['deletedAt'] as DateTime?);
  String? get deletedBy => (_$data['deletedBy'] as String?);
  String? get name => (_$data['name'] as String?);
  String? get topic => (_$data['topic'] as String?);
  String? get description => (_$data['description'] as String?);
  List<String>? get tags => (_$data['tags'] as List<String>?);
  Enum$ChannelType? get channelType =>
      (_$data['channelType'] as Enum$ChannelType?);
  List<Input$BgChannelStatusInput>? get statuses =>
      (_$data['statuses'] as List<Input$BgChannelStatusInput>?);
  List<String>? get userIds => (_$data['userIds'] as List<String>?);
  List<String>? get inviteUserIds => (_$data['inviteUserIds'] as List<String>?);
  DateTime? get pausedAt => (_$data['pausedAt'] as DateTime?);
  String? get pausedBy => (_$data['pausedBy'] as String?);
  DateTime? get archivedAt => (_$data['archivedAt'] as DateTime?);
  String? get archivedBy => (_$data['archivedBy'] as String?);
  String? get assumedMentorId => (_$data['assumedMentorId'] as String?);
  String? get mm2Id => (_$data['mm2Id'] as String?);
  DateTime? get syncedWithMm2At => (_$data['syncedWithMm2At'] as DateTime?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('adminNotes')) {
      final l$adminNotes = adminNotes;
      result$data['adminNotes'] = l$adminNotes;
    }
    if (_$data.containsKey('events')) {
      final l$events = events;
      result$data['events'] = l$events?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('metadata')) {
      final l$metadata = metadata;
      result$data['metadata'] = l$metadata?.toJson();
    }
    if (_$data.containsKey('createdAt')) {
      final l$createdAt = createdAt;
      result$data['createdAt'] = l$createdAt?.toIso8601String();
    }
    if (_$data.containsKey('createdBy')) {
      final l$createdBy = createdBy;
      result$data['createdBy'] = l$createdBy;
    }
    if (_$data.containsKey('updatedAt')) {
      final l$updatedAt = updatedAt;
      result$data['updatedAt'] = l$updatedAt?.toIso8601String();
    }
    if (_$data.containsKey('updatedBy')) {
      final l$updatedBy = updatedBy;
      result$data['updatedBy'] = l$updatedBy;
    }
    if (_$data.containsKey('deletedAt')) {
      final l$deletedAt = deletedAt;
      result$data['deletedAt'] = l$deletedAt?.toIso8601String();
    }
    if (_$data.containsKey('deletedBy')) {
      final l$deletedBy = deletedBy;
      result$data['deletedBy'] = l$deletedBy;
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('topic')) {
      final l$topic = topic;
      result$data['topic'] = l$topic;
    }
    if (_$data.containsKey('description')) {
      final l$description = description;
      result$data['description'] = l$description;
    }
    if (_$data.containsKey('tags')) {
      final l$tags = tags;
      result$data['tags'] = l$tags?.map((e) => e).toList();
    }
    if (_$data.containsKey('channelType')) {
      final l$channelType = channelType;
      result$data['channelType'] =
          l$channelType == null ? null : toJson$Enum$ChannelType(l$channelType);
    }
    if (_$data.containsKey('statuses')) {
      final l$statuses = statuses;
      result$data['statuses'] = l$statuses?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('userIds')) {
      final l$userIds = userIds;
      result$data['userIds'] = l$userIds?.map((e) => e).toList();
    }
    if (_$data.containsKey('inviteUserIds')) {
      final l$inviteUserIds = inviteUserIds;
      result$data['inviteUserIds'] = l$inviteUserIds?.map((e) => e).toList();
    }
    if (_$data.containsKey('pausedAt')) {
      final l$pausedAt = pausedAt;
      result$data['pausedAt'] = l$pausedAt?.toIso8601String();
    }
    if (_$data.containsKey('pausedBy')) {
      final l$pausedBy = pausedBy;
      result$data['pausedBy'] = l$pausedBy;
    }
    if (_$data.containsKey('archivedAt')) {
      final l$archivedAt = archivedAt;
      result$data['archivedAt'] = l$archivedAt?.toIso8601String();
    }
    if (_$data.containsKey('archivedBy')) {
      final l$archivedBy = archivedBy;
      result$data['archivedBy'] = l$archivedBy;
    }
    if (_$data.containsKey('assumedMentorId')) {
      final l$assumedMentorId = assumedMentorId;
      result$data['assumedMentorId'] = l$assumedMentorId;
    }
    if (_$data.containsKey('mm2Id')) {
      final l$mm2Id = mm2Id;
      result$data['mm2Id'] = l$mm2Id;
    }
    if (_$data.containsKey('syncedWithMm2At')) {
      final l$syncedWithMm2At = syncedWithMm2At;
      result$data['syncedWithMm2At'] = l$syncedWithMm2At?.toIso8601String();
    }
    return result$data;
  }

  CopyWith$Input$ChannelInput<Input$ChannelInput> get copyWith =>
      CopyWith$Input$ChannelInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ChannelInput) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$adminNotes = adminNotes;
    final lOther$adminNotes = other.adminNotes;
    if (_$data.containsKey('adminNotes') !=
        other._$data.containsKey('adminNotes')) {
      return false;
    }
    if (l$adminNotes != lOther$adminNotes) {
      return false;
    }
    final l$events = events;
    final lOther$events = other.events;
    if (_$data.containsKey('events') != other._$data.containsKey('events')) {
      return false;
    }
    if (l$events != null && lOther$events != null) {
      if (l$events.length != lOther$events.length) {
        return false;
      }
      for (int i = 0; i < l$events.length; i++) {
        final l$events$entry = l$events[i];
        final lOther$events$entry = lOther$events[i];
        if (l$events$entry != lOther$events$entry) {
          return false;
        }
      }
    } else if (l$events != lOther$events) {
      return false;
    }
    final l$metadata = metadata;
    final lOther$metadata = other.metadata;
    if (_$data.containsKey('metadata') !=
        other._$data.containsKey('metadata')) {
      return false;
    }
    if (l$metadata != lOther$metadata) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (_$data.containsKey('createdAt') !=
        other._$data.containsKey('createdAt')) {
      return false;
    }
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$createdBy = createdBy;
    final lOther$createdBy = other.createdBy;
    if (_$data.containsKey('createdBy') !=
        other._$data.containsKey('createdBy')) {
      return false;
    }
    if (l$createdBy != lOther$createdBy) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (_$data.containsKey('updatedAt') !=
        other._$data.containsKey('updatedAt')) {
      return false;
    }
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    final l$updatedBy = updatedBy;
    final lOther$updatedBy = other.updatedBy;
    if (_$data.containsKey('updatedBy') !=
        other._$data.containsKey('updatedBy')) {
      return false;
    }
    if (l$updatedBy != lOther$updatedBy) {
      return false;
    }
    final l$deletedAt = deletedAt;
    final lOther$deletedAt = other.deletedAt;
    if (_$data.containsKey('deletedAt') !=
        other._$data.containsKey('deletedAt')) {
      return false;
    }
    if (l$deletedAt != lOther$deletedAt) {
      return false;
    }
    final l$deletedBy = deletedBy;
    final lOther$deletedBy = other.deletedBy;
    if (_$data.containsKey('deletedBy') !=
        other._$data.containsKey('deletedBy')) {
      return false;
    }
    if (l$deletedBy != lOther$deletedBy) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$topic = topic;
    final lOther$topic = other.topic;
    if (_$data.containsKey('topic') != other._$data.containsKey('topic')) {
      return false;
    }
    if (l$topic != lOther$topic) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (_$data.containsKey('description') !=
        other._$data.containsKey('description')) {
      return false;
    }
    if (l$description != lOther$description) {
      return false;
    }
    final l$tags = tags;
    final lOther$tags = other.tags;
    if (_$data.containsKey('tags') != other._$data.containsKey('tags')) {
      return false;
    }
    if (l$tags != null && lOther$tags != null) {
      if (l$tags.length != lOther$tags.length) {
        return false;
      }
      for (int i = 0; i < l$tags.length; i++) {
        final l$tags$entry = l$tags[i];
        final lOther$tags$entry = lOther$tags[i];
        if (l$tags$entry != lOther$tags$entry) {
          return false;
        }
      }
    } else if (l$tags != lOther$tags) {
      return false;
    }
    final l$channelType = channelType;
    final lOther$channelType = other.channelType;
    if (_$data.containsKey('channelType') !=
        other._$data.containsKey('channelType')) {
      return false;
    }
    if (l$channelType != lOther$channelType) {
      return false;
    }
    final l$statuses = statuses;
    final lOther$statuses = other.statuses;
    if (_$data.containsKey('statuses') !=
        other._$data.containsKey('statuses')) {
      return false;
    }
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
    final l$userIds = userIds;
    final lOther$userIds = other.userIds;
    if (_$data.containsKey('userIds') != other._$data.containsKey('userIds')) {
      return false;
    }
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
    final l$inviteUserIds = inviteUserIds;
    final lOther$inviteUserIds = other.inviteUserIds;
    if (_$data.containsKey('inviteUserIds') !=
        other._$data.containsKey('inviteUserIds')) {
      return false;
    }
    if (l$inviteUserIds != null && lOther$inviteUserIds != null) {
      if (l$inviteUserIds.length != lOther$inviteUserIds.length) {
        return false;
      }
      for (int i = 0; i < l$inviteUserIds.length; i++) {
        final l$inviteUserIds$entry = l$inviteUserIds[i];
        final lOther$inviteUserIds$entry = lOther$inviteUserIds[i];
        if (l$inviteUserIds$entry != lOther$inviteUserIds$entry) {
          return false;
        }
      }
    } else if (l$inviteUserIds != lOther$inviteUserIds) {
      return false;
    }
    final l$pausedAt = pausedAt;
    final lOther$pausedAt = other.pausedAt;
    if (_$data.containsKey('pausedAt') !=
        other._$data.containsKey('pausedAt')) {
      return false;
    }
    if (l$pausedAt != lOther$pausedAt) {
      return false;
    }
    final l$pausedBy = pausedBy;
    final lOther$pausedBy = other.pausedBy;
    if (_$data.containsKey('pausedBy') !=
        other._$data.containsKey('pausedBy')) {
      return false;
    }
    if (l$pausedBy != lOther$pausedBy) {
      return false;
    }
    final l$archivedAt = archivedAt;
    final lOther$archivedAt = other.archivedAt;
    if (_$data.containsKey('archivedAt') !=
        other._$data.containsKey('archivedAt')) {
      return false;
    }
    if (l$archivedAt != lOther$archivedAt) {
      return false;
    }
    final l$archivedBy = archivedBy;
    final lOther$archivedBy = other.archivedBy;
    if (_$data.containsKey('archivedBy') !=
        other._$data.containsKey('archivedBy')) {
      return false;
    }
    if (l$archivedBy != lOther$archivedBy) {
      return false;
    }
    final l$assumedMentorId = assumedMentorId;
    final lOther$assumedMentorId = other.assumedMentorId;
    if (_$data.containsKey('assumedMentorId') !=
        other._$data.containsKey('assumedMentorId')) {
      return false;
    }
    if (l$assumedMentorId != lOther$assumedMentorId) {
      return false;
    }
    final l$mm2Id = mm2Id;
    final lOther$mm2Id = other.mm2Id;
    if (_$data.containsKey('mm2Id') != other._$data.containsKey('mm2Id')) {
      return false;
    }
    if (l$mm2Id != lOther$mm2Id) {
      return false;
    }
    final l$syncedWithMm2At = syncedWithMm2At;
    final lOther$syncedWithMm2At = other.syncedWithMm2At;
    if (_$data.containsKey('syncedWithMm2At') !=
        other._$data.containsKey('syncedWithMm2At')) {
      return false;
    }
    if (l$syncedWithMm2At != lOther$syncedWithMm2At) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$adminNotes = adminNotes;
    final l$events = events;
    final l$metadata = metadata;
    final l$createdAt = createdAt;
    final l$createdBy = createdBy;
    final l$updatedAt = updatedAt;
    final l$updatedBy = updatedBy;
    final l$deletedAt = deletedAt;
    final l$deletedBy = deletedBy;
    final l$name = name;
    final l$topic = topic;
    final l$description = description;
    final l$tags = tags;
    final l$channelType = channelType;
    final l$statuses = statuses;
    final l$userIds = userIds;
    final l$inviteUserIds = inviteUserIds;
    final l$pausedAt = pausedAt;
    final l$pausedBy = pausedBy;
    final l$archivedAt = archivedAt;
    final l$archivedBy = archivedBy;
    final l$assumedMentorId = assumedMentorId;
    final l$mm2Id = mm2Id;
    final l$syncedWithMm2At = syncedWithMm2At;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('adminNotes') ? l$adminNotes : const {},
      _$data.containsKey('events')
          ? l$events == null
              ? null
              : Object.hashAll(l$events.map((v) => v))
          : const {},
      _$data.containsKey('metadata') ? l$metadata : const {},
      _$data.containsKey('createdAt') ? l$createdAt : const {},
      _$data.containsKey('createdBy') ? l$createdBy : const {},
      _$data.containsKey('updatedAt') ? l$updatedAt : const {},
      _$data.containsKey('updatedBy') ? l$updatedBy : const {},
      _$data.containsKey('deletedAt') ? l$deletedAt : const {},
      _$data.containsKey('deletedBy') ? l$deletedBy : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('topic') ? l$topic : const {},
      _$data.containsKey('description') ? l$description : const {},
      _$data.containsKey('tags')
          ? l$tags == null
              ? null
              : Object.hashAll(l$tags.map((v) => v))
          : const {},
      _$data.containsKey('channelType') ? l$channelType : const {},
      _$data.containsKey('statuses')
          ? l$statuses == null
              ? null
              : Object.hashAll(l$statuses.map((v) => v))
          : const {},
      _$data.containsKey('userIds')
          ? l$userIds == null
              ? null
              : Object.hashAll(l$userIds.map((v) => v))
          : const {},
      _$data.containsKey('inviteUserIds')
          ? l$inviteUserIds == null
              ? null
              : Object.hashAll(l$inviteUserIds.map((v) => v))
          : const {},
      _$data.containsKey('pausedAt') ? l$pausedAt : const {},
      _$data.containsKey('pausedBy') ? l$pausedBy : const {},
      _$data.containsKey('archivedAt') ? l$archivedAt : const {},
      _$data.containsKey('archivedBy') ? l$archivedBy : const {},
      _$data.containsKey('assumedMentorId') ? l$assumedMentorId : const {},
      _$data.containsKey('mm2Id') ? l$mm2Id : const {},
      _$data.containsKey('syncedWithMm2At') ? l$syncedWithMm2At : const {},
    ]);
  }
}

abstract class CopyWith$Input$ChannelInput<TRes> {
  factory CopyWith$Input$ChannelInput(
    Input$ChannelInput instance,
    TRes Function(Input$ChannelInput) then,
  ) = _CopyWithImpl$Input$ChannelInput;

  factory CopyWith$Input$ChannelInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ChannelInput;

  TRes call({
    String? id,
    String? adminNotes,
    List<Input$ModelEventInput>? events,
    Input$BaseModelMetadataInput? metadata,
    DateTime? createdAt,
    String? createdBy,
    DateTime? updatedAt,
    String? updatedBy,
    DateTime? deletedAt,
    String? deletedBy,
    String? name,
    String? topic,
    String? description,
    List<String>? tags,
    Enum$ChannelType? channelType,
    List<Input$BgChannelStatusInput>? statuses,
    List<String>? userIds,
    List<String>? inviteUserIds,
    DateTime? pausedAt,
    String? pausedBy,
    DateTime? archivedAt,
    String? archivedBy,
    String? assumedMentorId,
    String? mm2Id,
    DateTime? syncedWithMm2At,
  });
  TRes events(
      Iterable<Input$ModelEventInput>? Function(
              Iterable<CopyWith$Input$ModelEventInput<Input$ModelEventInput>>?)
          _fn);
  CopyWith$Input$BaseModelMetadataInput<TRes> get metadata;
  TRes statuses(
      Iterable<Input$BgChannelStatusInput>? Function(
              Iterable<
                  CopyWith$Input$BgChannelStatusInput<
                      Input$BgChannelStatusInput>>?)
          _fn);
}

class _CopyWithImpl$Input$ChannelInput<TRes>
    implements CopyWith$Input$ChannelInput<TRes> {
  _CopyWithImpl$Input$ChannelInput(
    this._instance,
    this._then,
  );

  final Input$ChannelInput _instance;

  final TRes Function(Input$ChannelInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? adminNotes = _undefined,
    Object? events = _undefined,
    Object? metadata = _undefined,
    Object? createdAt = _undefined,
    Object? createdBy = _undefined,
    Object? updatedAt = _undefined,
    Object? updatedBy = _undefined,
    Object? deletedAt = _undefined,
    Object? deletedBy = _undefined,
    Object? name = _undefined,
    Object? topic = _undefined,
    Object? description = _undefined,
    Object? tags = _undefined,
    Object? channelType = _undefined,
    Object? statuses = _undefined,
    Object? userIds = _undefined,
    Object? inviteUserIds = _undefined,
    Object? pausedAt = _undefined,
    Object? pausedBy = _undefined,
    Object? archivedAt = _undefined,
    Object? archivedBy = _undefined,
    Object? assumedMentorId = _undefined,
    Object? mm2Id = _undefined,
    Object? syncedWithMm2At = _undefined,
  }) =>
      _then(Input$ChannelInput._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as String?),
        if (adminNotes != _undefined) 'adminNotes': (adminNotes as String?),
        if (events != _undefined)
          'events': (events as List<Input$ModelEventInput>?),
        if (metadata != _undefined)
          'metadata': (metadata as Input$BaseModelMetadataInput?),
        if (createdAt != _undefined) 'createdAt': (createdAt as DateTime?),
        if (createdBy != _undefined) 'createdBy': (createdBy as String?),
        if (updatedAt != _undefined) 'updatedAt': (updatedAt as DateTime?),
        if (updatedBy != _undefined) 'updatedBy': (updatedBy as String?),
        if (deletedAt != _undefined) 'deletedAt': (deletedAt as DateTime?),
        if (deletedBy != _undefined) 'deletedBy': (deletedBy as String?),
        if (name != _undefined) 'name': (name as String?),
        if (topic != _undefined) 'topic': (topic as String?),
        if (description != _undefined) 'description': (description as String?),
        if (tags != _undefined) 'tags': (tags as List<String>?),
        if (channelType != _undefined)
          'channelType': (channelType as Enum$ChannelType?),
        if (statuses != _undefined)
          'statuses': (statuses as List<Input$BgChannelStatusInput>?),
        if (userIds != _undefined) 'userIds': (userIds as List<String>?),
        if (inviteUserIds != _undefined)
          'inviteUserIds': (inviteUserIds as List<String>?),
        if (pausedAt != _undefined) 'pausedAt': (pausedAt as DateTime?),
        if (pausedBy != _undefined) 'pausedBy': (pausedBy as String?),
        if (archivedAt != _undefined) 'archivedAt': (archivedAt as DateTime?),
        if (archivedBy != _undefined) 'archivedBy': (archivedBy as String?),
        if (assumedMentorId != _undefined)
          'assumedMentorId': (assumedMentorId as String?),
        if (mm2Id != _undefined) 'mm2Id': (mm2Id as String?),
        if (syncedWithMm2At != _undefined)
          'syncedWithMm2At': (syncedWithMm2At as DateTime?),
      }));
  TRes events(
          Iterable<Input$ModelEventInput>? Function(
                  Iterable<
                      CopyWith$Input$ModelEventInput<Input$ModelEventInput>>?)
              _fn) =>
      call(
          events:
              _fn(_instance.events?.map((e) => CopyWith$Input$ModelEventInput(
                    e,
                    (i) => i,
                  )))?.toList());
  CopyWith$Input$BaseModelMetadataInput<TRes> get metadata {
    final local$metadata = _instance.metadata;
    return local$metadata == null
        ? CopyWith$Input$BaseModelMetadataInput.stub(_then(_instance))
        : CopyWith$Input$BaseModelMetadataInput(
            local$metadata, (e) => call(metadata: e));
  }

  TRes statuses(
          Iterable<Input$BgChannelStatusInput>? Function(
                  Iterable<
                      CopyWith$Input$BgChannelStatusInput<
                          Input$BgChannelStatusInput>>?)
              _fn) =>
      call(
          statuses: _fn(_instance.statuses
              ?.map((e) => CopyWith$Input$BgChannelStatusInput(
                    e,
                    (i) => i,
                  )))?.toList());
}

class _CopyWithStubImpl$Input$ChannelInput<TRes>
    implements CopyWith$Input$ChannelInput<TRes> {
  _CopyWithStubImpl$Input$ChannelInput(this._res);

  TRes _res;

  call({
    String? id,
    String? adminNotes,
    List<Input$ModelEventInput>? events,
    Input$BaseModelMetadataInput? metadata,
    DateTime? createdAt,
    String? createdBy,
    DateTime? updatedAt,
    String? updatedBy,
    DateTime? deletedAt,
    String? deletedBy,
    String? name,
    String? topic,
    String? description,
    List<String>? tags,
    Enum$ChannelType? channelType,
    List<Input$BgChannelStatusInput>? statuses,
    List<String>? userIds,
    List<String>? inviteUserIds,
    DateTime? pausedAt,
    String? pausedBy,
    DateTime? archivedAt,
    String? archivedBy,
    String? assumedMentorId,
    String? mm2Id,
    DateTime? syncedWithMm2At,
  }) =>
      _res;
  events(_fn) => _res;
  CopyWith$Input$BaseModelMetadataInput<TRes> get metadata =>
      CopyWith$Input$BaseModelMetadataInput.stub(_res);
  statuses(_fn) => _res;
}

class Input$BgChannelStatusInput {
  factory Input$BgChannelStatusInput({
    String? userId,
    DateTime? archivedAt,
  }) =>
      Input$BgChannelStatusInput._({
        if (userId != null) r'userId': userId,
        if (archivedAt != null) r'archivedAt': archivedAt,
      });

  Input$BgChannelStatusInput._(this._$data);

  factory Input$BgChannelStatusInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('userId')) {
      final l$userId = data['userId'];
      result$data['userId'] = (l$userId as String?);
    }
    if (data.containsKey('archivedAt')) {
      final l$archivedAt = data['archivedAt'];
      result$data['archivedAt'] = l$archivedAt == null
          ? null
          : DateTime.parse((l$archivedAt as String));
    }
    return Input$BgChannelStatusInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get userId => (_$data['userId'] as String?);
  DateTime? get archivedAt => (_$data['archivedAt'] as DateTime?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('userId')) {
      final l$userId = userId;
      result$data['userId'] = l$userId;
    }
    if (_$data.containsKey('archivedAt')) {
      final l$archivedAt = archivedAt;
      result$data['archivedAt'] = l$archivedAt?.toIso8601String();
    }
    return result$data;
  }

  CopyWith$Input$BgChannelStatusInput<Input$BgChannelStatusInput>
      get copyWith => CopyWith$Input$BgChannelStatusInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$BgChannelStatusInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (_$data.containsKey('userId') != other._$data.containsKey('userId')) {
      return false;
    }
    if (l$userId != lOther$userId) {
      return false;
    }
    final l$archivedAt = archivedAt;
    final lOther$archivedAt = other.archivedAt;
    if (_$data.containsKey('archivedAt') !=
        other._$data.containsKey('archivedAt')) {
      return false;
    }
    if (l$archivedAt != lOther$archivedAt) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$userId = userId;
    final l$archivedAt = archivedAt;
    return Object.hashAll([
      _$data.containsKey('userId') ? l$userId : const {},
      _$data.containsKey('archivedAt') ? l$archivedAt : const {},
    ]);
  }
}

abstract class CopyWith$Input$BgChannelStatusInput<TRes> {
  factory CopyWith$Input$BgChannelStatusInput(
    Input$BgChannelStatusInput instance,
    TRes Function(Input$BgChannelStatusInput) then,
  ) = _CopyWithImpl$Input$BgChannelStatusInput;

  factory CopyWith$Input$BgChannelStatusInput.stub(TRes res) =
      _CopyWithStubImpl$Input$BgChannelStatusInput;

  TRes call({
    String? userId,
    DateTime? archivedAt,
  });
}

class _CopyWithImpl$Input$BgChannelStatusInput<TRes>
    implements CopyWith$Input$BgChannelStatusInput<TRes> {
  _CopyWithImpl$Input$BgChannelStatusInput(
    this._instance,
    this._then,
  );

  final Input$BgChannelStatusInput _instance;

  final TRes Function(Input$BgChannelStatusInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userId = _undefined,
    Object? archivedAt = _undefined,
  }) =>
      _then(Input$BgChannelStatusInput._({
        ..._instance._$data,
        if (userId != _undefined) 'userId': (userId as String?),
        if (archivedAt != _undefined) 'archivedAt': (archivedAt as DateTime?),
      }));
}

class _CopyWithStubImpl$Input$BgChannelStatusInput<TRes>
    implements CopyWith$Input$BgChannelStatusInput<TRes> {
  _CopyWithStubImpl$Input$BgChannelStatusInput(this._res);

  TRes _res;

  call({
    String? userId,
    DateTime? archivedAt,
  }) =>
      _res;
}

class Input$ChannelListFilter {
  factory Input$ChannelListFilter({
    List<String>? ids,
    String? searchText,
    bool? caseSensitive,
    List<String>? textSearchFields,
    DateTime? createdAtFrom,
    DateTime? createdAtUntil,
    DateTime? updatedAtFrom,
    DateTime? updatedAtUntil,
  }) =>
      Input$ChannelListFilter._({
        if (ids != null) r'ids': ids,
        if (searchText != null) r'searchText': searchText,
        if (caseSensitive != null) r'caseSensitive': caseSensitive,
        if (textSearchFields != null) r'textSearchFields': textSearchFields,
        if (createdAtFrom != null) r'createdAtFrom': createdAtFrom,
        if (createdAtUntil != null) r'createdAtUntil': createdAtUntil,
        if (updatedAtFrom != null) r'updatedAtFrom': updatedAtFrom,
        if (updatedAtUntil != null) r'updatedAtUntil': updatedAtUntil,
      });

  Input$ChannelListFilter._(this._$data);

  factory Input$ChannelListFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('ids')) {
      final l$ids = data['ids'];
      result$data['ids'] =
          (l$ids as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    if (data.containsKey('searchText')) {
      final l$searchText = data['searchText'];
      result$data['searchText'] = (l$searchText as String?);
    }
    if (data.containsKey('caseSensitive')) {
      final l$caseSensitive = data['caseSensitive'];
      result$data['caseSensitive'] = (l$caseSensitive as bool?);
    }
    if (data.containsKey('textSearchFields')) {
      final l$textSearchFields = data['textSearchFields'];
      result$data['textSearchFields'] = (l$textSearchFields as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    if (data.containsKey('createdAtFrom')) {
      final l$createdAtFrom = data['createdAtFrom'];
      result$data['createdAtFrom'] = l$createdAtFrom == null
          ? null
          : DateTime.parse((l$createdAtFrom as String));
    }
    if (data.containsKey('createdAtUntil')) {
      final l$createdAtUntil = data['createdAtUntil'];
      result$data['createdAtUntil'] = l$createdAtUntil == null
          ? null
          : DateTime.parse((l$createdAtUntil as String));
    }
    if (data.containsKey('updatedAtFrom')) {
      final l$updatedAtFrom = data['updatedAtFrom'];
      result$data['updatedAtFrom'] = l$updatedAtFrom == null
          ? null
          : DateTime.parse((l$updatedAtFrom as String));
    }
    if (data.containsKey('updatedAtUntil')) {
      final l$updatedAtUntil = data['updatedAtUntil'];
      result$data['updatedAtUntil'] = l$updatedAtUntil == null
          ? null
          : DateTime.parse((l$updatedAtUntil as String));
    }
    return Input$ChannelListFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  List<String>? get ids => (_$data['ids'] as List<String>?);
  String? get searchText => (_$data['searchText'] as String?);
  bool? get caseSensitive => (_$data['caseSensitive'] as bool?);
  List<String>? get textSearchFields =>
      (_$data['textSearchFields'] as List<String>?);
  DateTime? get createdAtFrom => (_$data['createdAtFrom'] as DateTime?);
  DateTime? get createdAtUntil => (_$data['createdAtUntil'] as DateTime?);
  DateTime? get updatedAtFrom => (_$data['updatedAtFrom'] as DateTime?);
  DateTime? get updatedAtUntil => (_$data['updatedAtUntil'] as DateTime?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('ids')) {
      final l$ids = ids;
      result$data['ids'] = l$ids?.map((e) => e).toList();
    }
    if (_$data.containsKey('searchText')) {
      final l$searchText = searchText;
      result$data['searchText'] = l$searchText;
    }
    if (_$data.containsKey('caseSensitive')) {
      final l$caseSensitive = caseSensitive;
      result$data['caseSensitive'] = l$caseSensitive;
    }
    if (_$data.containsKey('textSearchFields')) {
      final l$textSearchFields = textSearchFields;
      result$data['textSearchFields'] =
          l$textSearchFields?.map((e) => e).toList();
    }
    if (_$data.containsKey('createdAtFrom')) {
      final l$createdAtFrom = createdAtFrom;
      result$data['createdAtFrom'] = l$createdAtFrom?.toIso8601String();
    }
    if (_$data.containsKey('createdAtUntil')) {
      final l$createdAtUntil = createdAtUntil;
      result$data['createdAtUntil'] = l$createdAtUntil?.toIso8601String();
    }
    if (_$data.containsKey('updatedAtFrom')) {
      final l$updatedAtFrom = updatedAtFrom;
      result$data['updatedAtFrom'] = l$updatedAtFrom?.toIso8601String();
    }
    if (_$data.containsKey('updatedAtUntil')) {
      final l$updatedAtUntil = updatedAtUntil;
      result$data['updatedAtUntil'] = l$updatedAtUntil?.toIso8601String();
    }
    return result$data;
  }

  CopyWith$Input$ChannelListFilter<Input$ChannelListFilter> get copyWith =>
      CopyWith$Input$ChannelListFilter(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ChannelListFilter) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$ids = ids;
    final lOther$ids = other.ids;
    if (_$data.containsKey('ids') != other._$data.containsKey('ids')) {
      return false;
    }
    if (l$ids != null && lOther$ids != null) {
      if (l$ids.length != lOther$ids.length) {
        return false;
      }
      for (int i = 0; i < l$ids.length; i++) {
        final l$ids$entry = l$ids[i];
        final lOther$ids$entry = lOther$ids[i];
        if (l$ids$entry != lOther$ids$entry) {
          return false;
        }
      }
    } else if (l$ids != lOther$ids) {
      return false;
    }
    final l$searchText = searchText;
    final lOther$searchText = other.searchText;
    if (_$data.containsKey('searchText') !=
        other._$data.containsKey('searchText')) {
      return false;
    }
    if (l$searchText != lOther$searchText) {
      return false;
    }
    final l$caseSensitive = caseSensitive;
    final lOther$caseSensitive = other.caseSensitive;
    if (_$data.containsKey('caseSensitive') !=
        other._$data.containsKey('caseSensitive')) {
      return false;
    }
    if (l$caseSensitive != lOther$caseSensitive) {
      return false;
    }
    final l$textSearchFields = textSearchFields;
    final lOther$textSearchFields = other.textSearchFields;
    if (_$data.containsKey('textSearchFields') !=
        other._$data.containsKey('textSearchFields')) {
      return false;
    }
    if (l$textSearchFields != null && lOther$textSearchFields != null) {
      if (l$textSearchFields.length != lOther$textSearchFields.length) {
        return false;
      }
      for (int i = 0; i < l$textSearchFields.length; i++) {
        final l$textSearchFields$entry = l$textSearchFields[i];
        final lOther$textSearchFields$entry = lOther$textSearchFields[i];
        if (l$textSearchFields$entry != lOther$textSearchFields$entry) {
          return false;
        }
      }
    } else if (l$textSearchFields != lOther$textSearchFields) {
      return false;
    }
    final l$createdAtFrom = createdAtFrom;
    final lOther$createdAtFrom = other.createdAtFrom;
    if (_$data.containsKey('createdAtFrom') !=
        other._$data.containsKey('createdAtFrom')) {
      return false;
    }
    if (l$createdAtFrom != lOther$createdAtFrom) {
      return false;
    }
    final l$createdAtUntil = createdAtUntil;
    final lOther$createdAtUntil = other.createdAtUntil;
    if (_$data.containsKey('createdAtUntil') !=
        other._$data.containsKey('createdAtUntil')) {
      return false;
    }
    if (l$createdAtUntil != lOther$createdAtUntil) {
      return false;
    }
    final l$updatedAtFrom = updatedAtFrom;
    final lOther$updatedAtFrom = other.updatedAtFrom;
    if (_$data.containsKey('updatedAtFrom') !=
        other._$data.containsKey('updatedAtFrom')) {
      return false;
    }
    if (l$updatedAtFrom != lOther$updatedAtFrom) {
      return false;
    }
    final l$updatedAtUntil = updatedAtUntil;
    final lOther$updatedAtUntil = other.updatedAtUntil;
    if (_$data.containsKey('updatedAtUntil') !=
        other._$data.containsKey('updatedAtUntil')) {
      return false;
    }
    if (l$updatedAtUntil != lOther$updatedAtUntil) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$ids = ids;
    final l$searchText = searchText;
    final l$caseSensitive = caseSensitive;
    final l$textSearchFields = textSearchFields;
    final l$createdAtFrom = createdAtFrom;
    final l$createdAtUntil = createdAtUntil;
    final l$updatedAtFrom = updatedAtFrom;
    final l$updatedAtUntil = updatedAtUntil;
    return Object.hashAll([
      _$data.containsKey('ids')
          ? l$ids == null
              ? null
              : Object.hashAll(l$ids.map((v) => v))
          : const {},
      _$data.containsKey('searchText') ? l$searchText : const {},
      _$data.containsKey('caseSensitive') ? l$caseSensitive : const {},
      _$data.containsKey('textSearchFields')
          ? l$textSearchFields == null
              ? null
              : Object.hashAll(l$textSearchFields.map((v) => v))
          : const {},
      _$data.containsKey('createdAtFrom') ? l$createdAtFrom : const {},
      _$data.containsKey('createdAtUntil') ? l$createdAtUntil : const {},
      _$data.containsKey('updatedAtFrom') ? l$updatedAtFrom : const {},
      _$data.containsKey('updatedAtUntil') ? l$updatedAtUntil : const {},
    ]);
  }
}

abstract class CopyWith$Input$ChannelListFilter<TRes> {
  factory CopyWith$Input$ChannelListFilter(
    Input$ChannelListFilter instance,
    TRes Function(Input$ChannelListFilter) then,
  ) = _CopyWithImpl$Input$ChannelListFilter;

  factory CopyWith$Input$ChannelListFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$ChannelListFilter;

  TRes call({
    List<String>? ids,
    String? searchText,
    bool? caseSensitive,
    List<String>? textSearchFields,
    DateTime? createdAtFrom,
    DateTime? createdAtUntil,
    DateTime? updatedAtFrom,
    DateTime? updatedAtUntil,
  });
}

class _CopyWithImpl$Input$ChannelListFilter<TRes>
    implements CopyWith$Input$ChannelListFilter<TRes> {
  _CopyWithImpl$Input$ChannelListFilter(
    this._instance,
    this._then,
  );

  final Input$ChannelListFilter _instance;

  final TRes Function(Input$ChannelListFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ids = _undefined,
    Object? searchText = _undefined,
    Object? caseSensitive = _undefined,
    Object? textSearchFields = _undefined,
    Object? createdAtFrom = _undefined,
    Object? createdAtUntil = _undefined,
    Object? updatedAtFrom = _undefined,
    Object? updatedAtUntil = _undefined,
  }) =>
      _then(Input$ChannelListFilter._({
        ..._instance._$data,
        if (ids != _undefined) 'ids': (ids as List<String>?),
        if (searchText != _undefined) 'searchText': (searchText as String?),
        if (caseSensitive != _undefined)
          'caseSensitive': (caseSensitive as bool?),
        if (textSearchFields != _undefined)
          'textSearchFields': (textSearchFields as List<String>?),
        if (createdAtFrom != _undefined)
          'createdAtFrom': (createdAtFrom as DateTime?),
        if (createdAtUntil != _undefined)
          'createdAtUntil': (createdAtUntil as DateTime?),
        if (updatedAtFrom != _undefined)
          'updatedAtFrom': (updatedAtFrom as DateTime?),
        if (updatedAtUntil != _undefined)
          'updatedAtUntil': (updatedAtUntil as DateTime?),
      }));
}

class _CopyWithStubImpl$Input$ChannelListFilter<TRes>
    implements CopyWith$Input$ChannelListFilter<TRes> {
  _CopyWithStubImpl$Input$ChannelListFilter(this._res);

  TRes _res;

  call({
    List<String>? ids,
    String? searchText,
    bool? caseSensitive,
    List<String>? textSearchFields,
    DateTime? createdAtFrom,
    DateTime? createdAtUntil,
    DateTime? updatedAtFrom,
    DateTime? updatedAtUntil,
  }) =>
      _res;
}

class Input$ChannelMessageInput {
  factory Input$ChannelMessageInput({
    String? id,
    String? adminNotes,
    List<Input$ModelEventInput>? events,
    Input$BaseModelMetadataInput? metadata,
    DateTime? createdAt,
    String? createdBy,
    DateTime? updatedAt,
    String? updatedBy,
    DateTime? deletedAt,
    String? deletedBy,
    String? channelId,
    String? replyToMessageId,
    Enum$ChannelMessageType? channelMessageType,
    String? messageText,
    List<Input$ChannelMessageStatusInput>? statuses,
    DateTime? editedAt,
    String? mm2Id,
    DateTime? syncedWithMm2At,
  }) =>
      Input$ChannelMessageInput._({
        if (id != null) r'id': id,
        if (adminNotes != null) r'adminNotes': adminNotes,
        if (events != null) r'events': events,
        if (metadata != null) r'metadata': metadata,
        if (createdAt != null) r'createdAt': createdAt,
        if (createdBy != null) r'createdBy': createdBy,
        if (updatedAt != null) r'updatedAt': updatedAt,
        if (updatedBy != null) r'updatedBy': updatedBy,
        if (deletedAt != null) r'deletedAt': deletedAt,
        if (deletedBy != null) r'deletedBy': deletedBy,
        if (channelId != null) r'channelId': channelId,
        if (replyToMessageId != null) r'replyToMessageId': replyToMessageId,
        if (channelMessageType != null)
          r'channelMessageType': channelMessageType,
        if (messageText != null) r'messageText': messageText,
        if (statuses != null) r'statuses': statuses,
        if (editedAt != null) r'editedAt': editedAt,
        if (mm2Id != null) r'mm2Id': mm2Id,
        if (syncedWithMm2At != null) r'syncedWithMm2At': syncedWithMm2At,
      });

  Input$ChannelMessageInput._(this._$data);

  factory Input$ChannelMessageInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as String?);
    }
    if (data.containsKey('adminNotes')) {
      final l$adminNotes = data['adminNotes'];
      result$data['adminNotes'] = (l$adminNotes as String?);
    }
    if (data.containsKey('events')) {
      final l$events = data['events'];
      result$data['events'] = (l$events as List<dynamic>?)
          ?.map((e) =>
              Input$ModelEventInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('metadata')) {
      final l$metadata = data['metadata'];
      result$data['metadata'] = l$metadata == null
          ? null
          : Input$BaseModelMetadataInput.fromJson(
              (l$metadata as Map<String, dynamic>));
    }
    if (data.containsKey('createdAt')) {
      final l$createdAt = data['createdAt'];
      result$data['createdAt'] =
          l$createdAt == null ? null : DateTime.parse((l$createdAt as String));
    }
    if (data.containsKey('createdBy')) {
      final l$createdBy = data['createdBy'];
      result$data['createdBy'] = (l$createdBy as String?);
    }
    if (data.containsKey('updatedAt')) {
      final l$updatedAt = data['updatedAt'];
      result$data['updatedAt'] =
          l$updatedAt == null ? null : DateTime.parse((l$updatedAt as String));
    }
    if (data.containsKey('updatedBy')) {
      final l$updatedBy = data['updatedBy'];
      result$data['updatedBy'] = (l$updatedBy as String?);
    }
    if (data.containsKey('deletedAt')) {
      final l$deletedAt = data['deletedAt'];
      result$data['deletedAt'] =
          l$deletedAt == null ? null : DateTime.parse((l$deletedAt as String));
    }
    if (data.containsKey('deletedBy')) {
      final l$deletedBy = data['deletedBy'];
      result$data['deletedBy'] = (l$deletedBy as String?);
    }
    if (data.containsKey('channelId')) {
      final l$channelId = data['channelId'];
      result$data['channelId'] = (l$channelId as String?);
    }
    if (data.containsKey('replyToMessageId')) {
      final l$replyToMessageId = data['replyToMessageId'];
      result$data['replyToMessageId'] = (l$replyToMessageId as String?);
    }
    if (data.containsKey('channelMessageType')) {
      final l$channelMessageType = data['channelMessageType'];
      result$data['channelMessageType'] = l$channelMessageType == null
          ? null
          : fromJson$Enum$ChannelMessageType((l$channelMessageType as String));
    }
    if (data.containsKey('messageText')) {
      final l$messageText = data['messageText'];
      result$data['messageText'] = (l$messageText as String?);
    }
    if (data.containsKey('statuses')) {
      final l$statuses = data['statuses'];
      result$data['statuses'] = (l$statuses as List<dynamic>?)
          ?.map((e) => Input$ChannelMessageStatusInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('editedAt')) {
      final l$editedAt = data['editedAt'];
      result$data['editedAt'] =
          l$editedAt == null ? null : DateTime.parse((l$editedAt as String));
    }
    if (data.containsKey('mm2Id')) {
      final l$mm2Id = data['mm2Id'];
      result$data['mm2Id'] = (l$mm2Id as String?);
    }
    if (data.containsKey('syncedWithMm2At')) {
      final l$syncedWithMm2At = data['syncedWithMm2At'];
      result$data['syncedWithMm2At'] = l$syncedWithMm2At == null
          ? null
          : DateTime.parse((l$syncedWithMm2At as String));
    }
    return Input$ChannelMessageInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get id => (_$data['id'] as String?);
  String? get adminNotes => (_$data['adminNotes'] as String?);
  List<Input$ModelEventInput>? get events =>
      (_$data['events'] as List<Input$ModelEventInput>?);
  Input$BaseModelMetadataInput? get metadata =>
      (_$data['metadata'] as Input$BaseModelMetadataInput?);
  DateTime? get createdAt => (_$data['createdAt'] as DateTime?);
  String? get createdBy => (_$data['createdBy'] as String?);
  DateTime? get updatedAt => (_$data['updatedAt'] as DateTime?);
  String? get updatedBy => (_$data['updatedBy'] as String?);
  DateTime? get deletedAt => (_$data['deletedAt'] as DateTime?);
  String? get deletedBy => (_$data['deletedBy'] as String?);
  String? get channelId => (_$data['channelId'] as String?);
  String? get replyToMessageId => (_$data['replyToMessageId'] as String?);
  Enum$ChannelMessageType? get channelMessageType =>
      (_$data['channelMessageType'] as Enum$ChannelMessageType?);
  String? get messageText => (_$data['messageText'] as String?);
  List<Input$ChannelMessageStatusInput>? get statuses =>
      (_$data['statuses'] as List<Input$ChannelMessageStatusInput>?);
  DateTime? get editedAt => (_$data['editedAt'] as DateTime?);
  String? get mm2Id => (_$data['mm2Id'] as String?);
  DateTime? get syncedWithMm2At => (_$data['syncedWithMm2At'] as DateTime?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('adminNotes')) {
      final l$adminNotes = adminNotes;
      result$data['adminNotes'] = l$adminNotes;
    }
    if (_$data.containsKey('events')) {
      final l$events = events;
      result$data['events'] = l$events?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('metadata')) {
      final l$metadata = metadata;
      result$data['metadata'] = l$metadata?.toJson();
    }
    if (_$data.containsKey('createdAt')) {
      final l$createdAt = createdAt;
      result$data['createdAt'] = l$createdAt?.toIso8601String();
    }
    if (_$data.containsKey('createdBy')) {
      final l$createdBy = createdBy;
      result$data['createdBy'] = l$createdBy;
    }
    if (_$data.containsKey('updatedAt')) {
      final l$updatedAt = updatedAt;
      result$data['updatedAt'] = l$updatedAt?.toIso8601String();
    }
    if (_$data.containsKey('updatedBy')) {
      final l$updatedBy = updatedBy;
      result$data['updatedBy'] = l$updatedBy;
    }
    if (_$data.containsKey('deletedAt')) {
      final l$deletedAt = deletedAt;
      result$data['deletedAt'] = l$deletedAt?.toIso8601String();
    }
    if (_$data.containsKey('deletedBy')) {
      final l$deletedBy = deletedBy;
      result$data['deletedBy'] = l$deletedBy;
    }
    if (_$data.containsKey('channelId')) {
      final l$channelId = channelId;
      result$data['channelId'] = l$channelId;
    }
    if (_$data.containsKey('replyToMessageId')) {
      final l$replyToMessageId = replyToMessageId;
      result$data['replyToMessageId'] = l$replyToMessageId;
    }
    if (_$data.containsKey('channelMessageType')) {
      final l$channelMessageType = channelMessageType;
      result$data['channelMessageType'] = l$channelMessageType == null
          ? null
          : toJson$Enum$ChannelMessageType(l$channelMessageType);
    }
    if (_$data.containsKey('messageText')) {
      final l$messageText = messageText;
      result$data['messageText'] = l$messageText;
    }
    if (_$data.containsKey('statuses')) {
      final l$statuses = statuses;
      result$data['statuses'] = l$statuses?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('editedAt')) {
      final l$editedAt = editedAt;
      result$data['editedAt'] = l$editedAt?.toIso8601String();
    }
    if (_$data.containsKey('mm2Id')) {
      final l$mm2Id = mm2Id;
      result$data['mm2Id'] = l$mm2Id;
    }
    if (_$data.containsKey('syncedWithMm2At')) {
      final l$syncedWithMm2At = syncedWithMm2At;
      result$data['syncedWithMm2At'] = l$syncedWithMm2At?.toIso8601String();
    }
    return result$data;
  }

  CopyWith$Input$ChannelMessageInput<Input$ChannelMessageInput> get copyWith =>
      CopyWith$Input$ChannelMessageInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ChannelMessageInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$adminNotes = adminNotes;
    final lOther$adminNotes = other.adminNotes;
    if (_$data.containsKey('adminNotes') !=
        other._$data.containsKey('adminNotes')) {
      return false;
    }
    if (l$adminNotes != lOther$adminNotes) {
      return false;
    }
    final l$events = events;
    final lOther$events = other.events;
    if (_$data.containsKey('events') != other._$data.containsKey('events')) {
      return false;
    }
    if (l$events != null && lOther$events != null) {
      if (l$events.length != lOther$events.length) {
        return false;
      }
      for (int i = 0; i < l$events.length; i++) {
        final l$events$entry = l$events[i];
        final lOther$events$entry = lOther$events[i];
        if (l$events$entry != lOther$events$entry) {
          return false;
        }
      }
    } else if (l$events != lOther$events) {
      return false;
    }
    final l$metadata = metadata;
    final lOther$metadata = other.metadata;
    if (_$data.containsKey('metadata') !=
        other._$data.containsKey('metadata')) {
      return false;
    }
    if (l$metadata != lOther$metadata) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (_$data.containsKey('createdAt') !=
        other._$data.containsKey('createdAt')) {
      return false;
    }
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$createdBy = createdBy;
    final lOther$createdBy = other.createdBy;
    if (_$data.containsKey('createdBy') !=
        other._$data.containsKey('createdBy')) {
      return false;
    }
    if (l$createdBy != lOther$createdBy) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (_$data.containsKey('updatedAt') !=
        other._$data.containsKey('updatedAt')) {
      return false;
    }
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    final l$updatedBy = updatedBy;
    final lOther$updatedBy = other.updatedBy;
    if (_$data.containsKey('updatedBy') !=
        other._$data.containsKey('updatedBy')) {
      return false;
    }
    if (l$updatedBy != lOther$updatedBy) {
      return false;
    }
    final l$deletedAt = deletedAt;
    final lOther$deletedAt = other.deletedAt;
    if (_$data.containsKey('deletedAt') !=
        other._$data.containsKey('deletedAt')) {
      return false;
    }
    if (l$deletedAt != lOther$deletedAt) {
      return false;
    }
    final l$deletedBy = deletedBy;
    final lOther$deletedBy = other.deletedBy;
    if (_$data.containsKey('deletedBy') !=
        other._$data.containsKey('deletedBy')) {
      return false;
    }
    if (l$deletedBy != lOther$deletedBy) {
      return false;
    }
    final l$channelId = channelId;
    final lOther$channelId = other.channelId;
    if (_$data.containsKey('channelId') !=
        other._$data.containsKey('channelId')) {
      return false;
    }
    if (l$channelId != lOther$channelId) {
      return false;
    }
    final l$replyToMessageId = replyToMessageId;
    final lOther$replyToMessageId = other.replyToMessageId;
    if (_$data.containsKey('replyToMessageId') !=
        other._$data.containsKey('replyToMessageId')) {
      return false;
    }
    if (l$replyToMessageId != lOther$replyToMessageId) {
      return false;
    }
    final l$channelMessageType = channelMessageType;
    final lOther$channelMessageType = other.channelMessageType;
    if (_$data.containsKey('channelMessageType') !=
        other._$data.containsKey('channelMessageType')) {
      return false;
    }
    if (l$channelMessageType != lOther$channelMessageType) {
      return false;
    }
    final l$messageText = messageText;
    final lOther$messageText = other.messageText;
    if (_$data.containsKey('messageText') !=
        other._$data.containsKey('messageText')) {
      return false;
    }
    if (l$messageText != lOther$messageText) {
      return false;
    }
    final l$statuses = statuses;
    final lOther$statuses = other.statuses;
    if (_$data.containsKey('statuses') !=
        other._$data.containsKey('statuses')) {
      return false;
    }
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
    final l$editedAt = editedAt;
    final lOther$editedAt = other.editedAt;
    if (_$data.containsKey('editedAt') !=
        other._$data.containsKey('editedAt')) {
      return false;
    }
    if (l$editedAt != lOther$editedAt) {
      return false;
    }
    final l$mm2Id = mm2Id;
    final lOther$mm2Id = other.mm2Id;
    if (_$data.containsKey('mm2Id') != other._$data.containsKey('mm2Id')) {
      return false;
    }
    if (l$mm2Id != lOther$mm2Id) {
      return false;
    }
    final l$syncedWithMm2At = syncedWithMm2At;
    final lOther$syncedWithMm2At = other.syncedWithMm2At;
    if (_$data.containsKey('syncedWithMm2At') !=
        other._$data.containsKey('syncedWithMm2At')) {
      return false;
    }
    if (l$syncedWithMm2At != lOther$syncedWithMm2At) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$adminNotes = adminNotes;
    final l$events = events;
    final l$metadata = metadata;
    final l$createdAt = createdAt;
    final l$createdBy = createdBy;
    final l$updatedAt = updatedAt;
    final l$updatedBy = updatedBy;
    final l$deletedAt = deletedAt;
    final l$deletedBy = deletedBy;
    final l$channelId = channelId;
    final l$replyToMessageId = replyToMessageId;
    final l$channelMessageType = channelMessageType;
    final l$messageText = messageText;
    final l$statuses = statuses;
    final l$editedAt = editedAt;
    final l$mm2Id = mm2Id;
    final l$syncedWithMm2At = syncedWithMm2At;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('adminNotes') ? l$adminNotes : const {},
      _$data.containsKey('events')
          ? l$events == null
              ? null
              : Object.hashAll(l$events.map((v) => v))
          : const {},
      _$data.containsKey('metadata') ? l$metadata : const {},
      _$data.containsKey('createdAt') ? l$createdAt : const {},
      _$data.containsKey('createdBy') ? l$createdBy : const {},
      _$data.containsKey('updatedAt') ? l$updatedAt : const {},
      _$data.containsKey('updatedBy') ? l$updatedBy : const {},
      _$data.containsKey('deletedAt') ? l$deletedAt : const {},
      _$data.containsKey('deletedBy') ? l$deletedBy : const {},
      _$data.containsKey('channelId') ? l$channelId : const {},
      _$data.containsKey('replyToMessageId') ? l$replyToMessageId : const {},
      _$data.containsKey('channelMessageType')
          ? l$channelMessageType
          : const {},
      _$data.containsKey('messageText') ? l$messageText : const {},
      _$data.containsKey('statuses')
          ? l$statuses == null
              ? null
              : Object.hashAll(l$statuses.map((v) => v))
          : const {},
      _$data.containsKey('editedAt') ? l$editedAt : const {},
      _$data.containsKey('mm2Id') ? l$mm2Id : const {},
      _$data.containsKey('syncedWithMm2At') ? l$syncedWithMm2At : const {},
    ]);
  }
}

abstract class CopyWith$Input$ChannelMessageInput<TRes> {
  factory CopyWith$Input$ChannelMessageInput(
    Input$ChannelMessageInput instance,
    TRes Function(Input$ChannelMessageInput) then,
  ) = _CopyWithImpl$Input$ChannelMessageInput;

  factory CopyWith$Input$ChannelMessageInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ChannelMessageInput;

  TRes call({
    String? id,
    String? adminNotes,
    List<Input$ModelEventInput>? events,
    Input$BaseModelMetadataInput? metadata,
    DateTime? createdAt,
    String? createdBy,
    DateTime? updatedAt,
    String? updatedBy,
    DateTime? deletedAt,
    String? deletedBy,
    String? channelId,
    String? replyToMessageId,
    Enum$ChannelMessageType? channelMessageType,
    String? messageText,
    List<Input$ChannelMessageStatusInput>? statuses,
    DateTime? editedAt,
    String? mm2Id,
    DateTime? syncedWithMm2At,
  });
  TRes events(
      Iterable<Input$ModelEventInput>? Function(
              Iterable<CopyWith$Input$ModelEventInput<Input$ModelEventInput>>?)
          _fn);
  CopyWith$Input$BaseModelMetadataInput<TRes> get metadata;
  TRes statuses(
      Iterable<Input$ChannelMessageStatusInput>? Function(
              Iterable<
                  CopyWith$Input$ChannelMessageStatusInput<
                      Input$ChannelMessageStatusInput>>?)
          _fn);
}

class _CopyWithImpl$Input$ChannelMessageInput<TRes>
    implements CopyWith$Input$ChannelMessageInput<TRes> {
  _CopyWithImpl$Input$ChannelMessageInput(
    this._instance,
    this._then,
  );

  final Input$ChannelMessageInput _instance;

  final TRes Function(Input$ChannelMessageInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? adminNotes = _undefined,
    Object? events = _undefined,
    Object? metadata = _undefined,
    Object? createdAt = _undefined,
    Object? createdBy = _undefined,
    Object? updatedAt = _undefined,
    Object? updatedBy = _undefined,
    Object? deletedAt = _undefined,
    Object? deletedBy = _undefined,
    Object? channelId = _undefined,
    Object? replyToMessageId = _undefined,
    Object? channelMessageType = _undefined,
    Object? messageText = _undefined,
    Object? statuses = _undefined,
    Object? editedAt = _undefined,
    Object? mm2Id = _undefined,
    Object? syncedWithMm2At = _undefined,
  }) =>
      _then(Input$ChannelMessageInput._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as String?),
        if (adminNotes != _undefined) 'adminNotes': (adminNotes as String?),
        if (events != _undefined)
          'events': (events as List<Input$ModelEventInput>?),
        if (metadata != _undefined)
          'metadata': (metadata as Input$BaseModelMetadataInput?),
        if (createdAt != _undefined) 'createdAt': (createdAt as DateTime?),
        if (createdBy != _undefined) 'createdBy': (createdBy as String?),
        if (updatedAt != _undefined) 'updatedAt': (updatedAt as DateTime?),
        if (updatedBy != _undefined) 'updatedBy': (updatedBy as String?),
        if (deletedAt != _undefined) 'deletedAt': (deletedAt as DateTime?),
        if (deletedBy != _undefined) 'deletedBy': (deletedBy as String?),
        if (channelId != _undefined) 'channelId': (channelId as String?),
        if (replyToMessageId != _undefined)
          'replyToMessageId': (replyToMessageId as String?),
        if (channelMessageType != _undefined)
          'channelMessageType':
              (channelMessageType as Enum$ChannelMessageType?),
        if (messageText != _undefined) 'messageText': (messageText as String?),
        if (statuses != _undefined)
          'statuses': (statuses as List<Input$ChannelMessageStatusInput>?),
        if (editedAt != _undefined) 'editedAt': (editedAt as DateTime?),
        if (mm2Id != _undefined) 'mm2Id': (mm2Id as String?),
        if (syncedWithMm2At != _undefined)
          'syncedWithMm2At': (syncedWithMm2At as DateTime?),
      }));
  TRes events(
          Iterable<Input$ModelEventInput>? Function(
                  Iterable<
                      CopyWith$Input$ModelEventInput<Input$ModelEventInput>>?)
              _fn) =>
      call(
          events:
              _fn(_instance.events?.map((e) => CopyWith$Input$ModelEventInput(
                    e,
                    (i) => i,
                  )))?.toList());
  CopyWith$Input$BaseModelMetadataInput<TRes> get metadata {
    final local$metadata = _instance.metadata;
    return local$metadata == null
        ? CopyWith$Input$BaseModelMetadataInput.stub(_then(_instance))
        : CopyWith$Input$BaseModelMetadataInput(
            local$metadata, (e) => call(metadata: e));
  }

  TRes statuses(
          Iterable<Input$ChannelMessageStatusInput>? Function(
                  Iterable<
                      CopyWith$Input$ChannelMessageStatusInput<
                          Input$ChannelMessageStatusInput>>?)
              _fn) =>
      call(
          statuses: _fn(_instance.statuses
              ?.map((e) => CopyWith$Input$ChannelMessageStatusInput(
                    e,
                    (i) => i,
                  )))?.toList());
}

class _CopyWithStubImpl$Input$ChannelMessageInput<TRes>
    implements CopyWith$Input$ChannelMessageInput<TRes> {
  _CopyWithStubImpl$Input$ChannelMessageInput(this._res);

  TRes _res;

  call({
    String? id,
    String? adminNotes,
    List<Input$ModelEventInput>? events,
    Input$BaseModelMetadataInput? metadata,
    DateTime? createdAt,
    String? createdBy,
    DateTime? updatedAt,
    String? updatedBy,
    DateTime? deletedAt,
    String? deletedBy,
    String? channelId,
    String? replyToMessageId,
    Enum$ChannelMessageType? channelMessageType,
    String? messageText,
    List<Input$ChannelMessageStatusInput>? statuses,
    DateTime? editedAt,
    String? mm2Id,
    DateTime? syncedWithMm2At,
  }) =>
      _res;
  events(_fn) => _res;
  CopyWith$Input$BaseModelMetadataInput<TRes> get metadata =>
      CopyWith$Input$BaseModelMetadataInput.stub(_res);
  statuses(_fn) => _res;
}

class Input$ChannelMessageStatusInput {
  factory Input$ChannelMessageStatusInput({
    String? userId,
    DateTime? receivedAt,
    DateTime? seenAt,
  }) =>
      Input$ChannelMessageStatusInput._({
        if (userId != null) r'userId': userId,
        if (receivedAt != null) r'receivedAt': receivedAt,
        if (seenAt != null) r'seenAt': seenAt,
      });

  Input$ChannelMessageStatusInput._(this._$data);

  factory Input$ChannelMessageStatusInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('userId')) {
      final l$userId = data['userId'];
      result$data['userId'] = (l$userId as String?);
    }
    if (data.containsKey('receivedAt')) {
      final l$receivedAt = data['receivedAt'];
      result$data['receivedAt'] = l$receivedAt == null
          ? null
          : DateTime.parse((l$receivedAt as String));
    }
    if (data.containsKey('seenAt')) {
      final l$seenAt = data['seenAt'];
      result$data['seenAt'] =
          l$seenAt == null ? null : DateTime.parse((l$seenAt as String));
    }
    return Input$ChannelMessageStatusInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get userId => (_$data['userId'] as String?);
  DateTime? get receivedAt => (_$data['receivedAt'] as DateTime?);
  DateTime? get seenAt => (_$data['seenAt'] as DateTime?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('userId')) {
      final l$userId = userId;
      result$data['userId'] = l$userId;
    }
    if (_$data.containsKey('receivedAt')) {
      final l$receivedAt = receivedAt;
      result$data['receivedAt'] = l$receivedAt?.toIso8601String();
    }
    if (_$data.containsKey('seenAt')) {
      final l$seenAt = seenAt;
      result$data['seenAt'] = l$seenAt?.toIso8601String();
    }
    return result$data;
  }

  CopyWith$Input$ChannelMessageStatusInput<Input$ChannelMessageStatusInput>
      get copyWith => CopyWith$Input$ChannelMessageStatusInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ChannelMessageStatusInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (_$data.containsKey('userId') != other._$data.containsKey('userId')) {
      return false;
    }
    if (l$userId != lOther$userId) {
      return false;
    }
    final l$receivedAt = receivedAt;
    final lOther$receivedAt = other.receivedAt;
    if (_$data.containsKey('receivedAt') !=
        other._$data.containsKey('receivedAt')) {
      return false;
    }
    if (l$receivedAt != lOther$receivedAt) {
      return false;
    }
    final l$seenAt = seenAt;
    final lOther$seenAt = other.seenAt;
    if (_$data.containsKey('seenAt') != other._$data.containsKey('seenAt')) {
      return false;
    }
    if (l$seenAt != lOther$seenAt) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$userId = userId;
    final l$receivedAt = receivedAt;
    final l$seenAt = seenAt;
    return Object.hashAll([
      _$data.containsKey('userId') ? l$userId : const {},
      _$data.containsKey('receivedAt') ? l$receivedAt : const {},
      _$data.containsKey('seenAt') ? l$seenAt : const {},
    ]);
  }
}

abstract class CopyWith$Input$ChannelMessageStatusInput<TRes> {
  factory CopyWith$Input$ChannelMessageStatusInput(
    Input$ChannelMessageStatusInput instance,
    TRes Function(Input$ChannelMessageStatusInput) then,
  ) = _CopyWithImpl$Input$ChannelMessageStatusInput;

  factory CopyWith$Input$ChannelMessageStatusInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ChannelMessageStatusInput;

  TRes call({
    String? userId,
    DateTime? receivedAt,
    DateTime? seenAt,
  });
}

class _CopyWithImpl$Input$ChannelMessageStatusInput<TRes>
    implements CopyWith$Input$ChannelMessageStatusInput<TRes> {
  _CopyWithImpl$Input$ChannelMessageStatusInput(
    this._instance,
    this._then,
  );

  final Input$ChannelMessageStatusInput _instance;

  final TRes Function(Input$ChannelMessageStatusInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userId = _undefined,
    Object? receivedAt = _undefined,
    Object? seenAt = _undefined,
  }) =>
      _then(Input$ChannelMessageStatusInput._({
        ..._instance._$data,
        if (userId != _undefined) 'userId': (userId as String?),
        if (receivedAt != _undefined) 'receivedAt': (receivedAt as DateTime?),
        if (seenAt != _undefined) 'seenAt': (seenAt as DateTime?),
      }));
}

class _CopyWithStubImpl$Input$ChannelMessageStatusInput<TRes>
    implements CopyWith$Input$ChannelMessageStatusInput<TRes> {
  _CopyWithStubImpl$Input$ChannelMessageStatusInput(this._res);

  TRes _res;

  call({
    String? userId,
    DateTime? receivedAt,
    DateTime? seenAt,
  }) =>
      _res;
}

class Input$ChannelMessageListFilter {
  factory Input$ChannelMessageListFilter({
    List<String>? ids,
    String? searchText,
    bool? caseSensitive,
    List<String>? textSearchFields,
    DateTime? createdAtFrom,
    DateTime? createdAtUntil,
    DateTime? updatedAtFrom,
    DateTime? updatedAtUntil,
    String? channelId,
    String? receiverUserId,
    String? replyToMessageId,
    List<Enum$ChannelMessageType>? includeChannelMessageType,
    bool? received,
    bool? seen,
  }) =>
      Input$ChannelMessageListFilter._({
        if (ids != null) r'ids': ids,
        if (searchText != null) r'searchText': searchText,
        if (caseSensitive != null) r'caseSensitive': caseSensitive,
        if (textSearchFields != null) r'textSearchFields': textSearchFields,
        if (createdAtFrom != null) r'createdAtFrom': createdAtFrom,
        if (createdAtUntil != null) r'createdAtUntil': createdAtUntil,
        if (updatedAtFrom != null) r'updatedAtFrom': updatedAtFrom,
        if (updatedAtUntil != null) r'updatedAtUntil': updatedAtUntil,
        if (channelId != null) r'channelId': channelId,
        if (receiverUserId != null) r'receiverUserId': receiverUserId,
        if (replyToMessageId != null) r'replyToMessageId': replyToMessageId,
        if (includeChannelMessageType != null)
          r'includeChannelMessageType': includeChannelMessageType,
        if (received != null) r'received': received,
        if (seen != null) r'seen': seen,
      });

  Input$ChannelMessageListFilter._(this._$data);

  factory Input$ChannelMessageListFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('ids')) {
      final l$ids = data['ids'];
      result$data['ids'] =
          (l$ids as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    if (data.containsKey('searchText')) {
      final l$searchText = data['searchText'];
      result$data['searchText'] = (l$searchText as String?);
    }
    if (data.containsKey('caseSensitive')) {
      final l$caseSensitive = data['caseSensitive'];
      result$data['caseSensitive'] = (l$caseSensitive as bool?);
    }
    if (data.containsKey('textSearchFields')) {
      final l$textSearchFields = data['textSearchFields'];
      result$data['textSearchFields'] = (l$textSearchFields as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    if (data.containsKey('createdAtFrom')) {
      final l$createdAtFrom = data['createdAtFrom'];
      result$data['createdAtFrom'] = l$createdAtFrom == null
          ? null
          : DateTime.parse((l$createdAtFrom as String));
    }
    if (data.containsKey('createdAtUntil')) {
      final l$createdAtUntil = data['createdAtUntil'];
      result$data['createdAtUntil'] = l$createdAtUntil == null
          ? null
          : DateTime.parse((l$createdAtUntil as String));
    }
    if (data.containsKey('updatedAtFrom')) {
      final l$updatedAtFrom = data['updatedAtFrom'];
      result$data['updatedAtFrom'] = l$updatedAtFrom == null
          ? null
          : DateTime.parse((l$updatedAtFrom as String));
    }
    if (data.containsKey('updatedAtUntil')) {
      final l$updatedAtUntil = data['updatedAtUntil'];
      result$data['updatedAtUntil'] = l$updatedAtUntil == null
          ? null
          : DateTime.parse((l$updatedAtUntil as String));
    }
    if (data.containsKey('channelId')) {
      final l$channelId = data['channelId'];
      result$data['channelId'] = (l$channelId as String?);
    }
    if (data.containsKey('receiverUserId')) {
      final l$receiverUserId = data['receiverUserId'];
      result$data['receiverUserId'] = (l$receiverUserId as String?);
    }
    if (data.containsKey('replyToMessageId')) {
      final l$replyToMessageId = data['replyToMessageId'];
      result$data['replyToMessageId'] = (l$replyToMessageId as String?);
    }
    if (data.containsKey('includeChannelMessageType')) {
      final l$includeChannelMessageType = data['includeChannelMessageType'];
      result$data['includeChannelMessageType'] =
          (l$includeChannelMessageType as List<dynamic>?)
              ?.map((e) => fromJson$Enum$ChannelMessageType((e as String)))
              .toList();
    }
    if (data.containsKey('received')) {
      final l$received = data['received'];
      result$data['received'] = (l$received as bool?);
    }
    if (data.containsKey('seen')) {
      final l$seen = data['seen'];
      result$data['seen'] = (l$seen as bool?);
    }
    return Input$ChannelMessageListFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  List<String>? get ids => (_$data['ids'] as List<String>?);
  String? get searchText => (_$data['searchText'] as String?);
  bool? get caseSensitive => (_$data['caseSensitive'] as bool?);
  List<String>? get textSearchFields =>
      (_$data['textSearchFields'] as List<String>?);
  DateTime? get createdAtFrom => (_$data['createdAtFrom'] as DateTime?);
  DateTime? get createdAtUntil => (_$data['createdAtUntil'] as DateTime?);
  DateTime? get updatedAtFrom => (_$data['updatedAtFrom'] as DateTime?);
  DateTime? get updatedAtUntil => (_$data['updatedAtUntil'] as DateTime?);
  String? get channelId => (_$data['channelId'] as String?);
  String? get receiverUserId => (_$data['receiverUserId'] as String?);
  String? get replyToMessageId => (_$data['replyToMessageId'] as String?);
  List<Enum$ChannelMessageType>? get includeChannelMessageType =>
      (_$data['includeChannelMessageType'] as List<Enum$ChannelMessageType>?);
  bool? get received => (_$data['received'] as bool?);
  bool? get seen => (_$data['seen'] as bool?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('ids')) {
      final l$ids = ids;
      result$data['ids'] = l$ids?.map((e) => e).toList();
    }
    if (_$data.containsKey('searchText')) {
      final l$searchText = searchText;
      result$data['searchText'] = l$searchText;
    }
    if (_$data.containsKey('caseSensitive')) {
      final l$caseSensitive = caseSensitive;
      result$data['caseSensitive'] = l$caseSensitive;
    }
    if (_$data.containsKey('textSearchFields')) {
      final l$textSearchFields = textSearchFields;
      result$data['textSearchFields'] =
          l$textSearchFields?.map((e) => e).toList();
    }
    if (_$data.containsKey('createdAtFrom')) {
      final l$createdAtFrom = createdAtFrom;
      result$data['createdAtFrom'] = l$createdAtFrom?.toIso8601String();
    }
    if (_$data.containsKey('createdAtUntil')) {
      final l$createdAtUntil = createdAtUntil;
      result$data['createdAtUntil'] = l$createdAtUntil?.toIso8601String();
    }
    if (_$data.containsKey('updatedAtFrom')) {
      final l$updatedAtFrom = updatedAtFrom;
      result$data['updatedAtFrom'] = l$updatedAtFrom?.toIso8601String();
    }
    if (_$data.containsKey('updatedAtUntil')) {
      final l$updatedAtUntil = updatedAtUntil;
      result$data['updatedAtUntil'] = l$updatedAtUntil?.toIso8601String();
    }
    if (_$data.containsKey('channelId')) {
      final l$channelId = channelId;
      result$data['channelId'] = l$channelId;
    }
    if (_$data.containsKey('receiverUserId')) {
      final l$receiverUserId = receiverUserId;
      result$data['receiverUserId'] = l$receiverUserId;
    }
    if (_$data.containsKey('replyToMessageId')) {
      final l$replyToMessageId = replyToMessageId;
      result$data['replyToMessageId'] = l$replyToMessageId;
    }
    if (_$data.containsKey('includeChannelMessageType')) {
      final l$includeChannelMessageType = includeChannelMessageType;
      result$data['includeChannelMessageType'] = l$includeChannelMessageType
          ?.map((e) => toJson$Enum$ChannelMessageType(e))
          .toList();
    }
    if (_$data.containsKey('received')) {
      final l$received = received;
      result$data['received'] = l$received;
    }
    if (_$data.containsKey('seen')) {
      final l$seen = seen;
      result$data['seen'] = l$seen;
    }
    return result$data;
  }

  CopyWith$Input$ChannelMessageListFilter<Input$ChannelMessageListFilter>
      get copyWith => CopyWith$Input$ChannelMessageListFilter(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ChannelMessageListFilter) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$ids = ids;
    final lOther$ids = other.ids;
    if (_$data.containsKey('ids') != other._$data.containsKey('ids')) {
      return false;
    }
    if (l$ids != null && lOther$ids != null) {
      if (l$ids.length != lOther$ids.length) {
        return false;
      }
      for (int i = 0; i < l$ids.length; i++) {
        final l$ids$entry = l$ids[i];
        final lOther$ids$entry = lOther$ids[i];
        if (l$ids$entry != lOther$ids$entry) {
          return false;
        }
      }
    } else if (l$ids != lOther$ids) {
      return false;
    }
    final l$searchText = searchText;
    final lOther$searchText = other.searchText;
    if (_$data.containsKey('searchText') !=
        other._$data.containsKey('searchText')) {
      return false;
    }
    if (l$searchText != lOther$searchText) {
      return false;
    }
    final l$caseSensitive = caseSensitive;
    final lOther$caseSensitive = other.caseSensitive;
    if (_$data.containsKey('caseSensitive') !=
        other._$data.containsKey('caseSensitive')) {
      return false;
    }
    if (l$caseSensitive != lOther$caseSensitive) {
      return false;
    }
    final l$textSearchFields = textSearchFields;
    final lOther$textSearchFields = other.textSearchFields;
    if (_$data.containsKey('textSearchFields') !=
        other._$data.containsKey('textSearchFields')) {
      return false;
    }
    if (l$textSearchFields != null && lOther$textSearchFields != null) {
      if (l$textSearchFields.length != lOther$textSearchFields.length) {
        return false;
      }
      for (int i = 0; i < l$textSearchFields.length; i++) {
        final l$textSearchFields$entry = l$textSearchFields[i];
        final lOther$textSearchFields$entry = lOther$textSearchFields[i];
        if (l$textSearchFields$entry != lOther$textSearchFields$entry) {
          return false;
        }
      }
    } else if (l$textSearchFields != lOther$textSearchFields) {
      return false;
    }
    final l$createdAtFrom = createdAtFrom;
    final lOther$createdAtFrom = other.createdAtFrom;
    if (_$data.containsKey('createdAtFrom') !=
        other._$data.containsKey('createdAtFrom')) {
      return false;
    }
    if (l$createdAtFrom != lOther$createdAtFrom) {
      return false;
    }
    final l$createdAtUntil = createdAtUntil;
    final lOther$createdAtUntil = other.createdAtUntil;
    if (_$data.containsKey('createdAtUntil') !=
        other._$data.containsKey('createdAtUntil')) {
      return false;
    }
    if (l$createdAtUntil != lOther$createdAtUntil) {
      return false;
    }
    final l$updatedAtFrom = updatedAtFrom;
    final lOther$updatedAtFrom = other.updatedAtFrom;
    if (_$data.containsKey('updatedAtFrom') !=
        other._$data.containsKey('updatedAtFrom')) {
      return false;
    }
    if (l$updatedAtFrom != lOther$updatedAtFrom) {
      return false;
    }
    final l$updatedAtUntil = updatedAtUntil;
    final lOther$updatedAtUntil = other.updatedAtUntil;
    if (_$data.containsKey('updatedAtUntil') !=
        other._$data.containsKey('updatedAtUntil')) {
      return false;
    }
    if (l$updatedAtUntil != lOther$updatedAtUntil) {
      return false;
    }
    final l$channelId = channelId;
    final lOther$channelId = other.channelId;
    if (_$data.containsKey('channelId') !=
        other._$data.containsKey('channelId')) {
      return false;
    }
    if (l$channelId != lOther$channelId) {
      return false;
    }
    final l$receiverUserId = receiverUserId;
    final lOther$receiverUserId = other.receiverUserId;
    if (_$data.containsKey('receiverUserId') !=
        other._$data.containsKey('receiverUserId')) {
      return false;
    }
    if (l$receiverUserId != lOther$receiverUserId) {
      return false;
    }
    final l$replyToMessageId = replyToMessageId;
    final lOther$replyToMessageId = other.replyToMessageId;
    if (_$data.containsKey('replyToMessageId') !=
        other._$data.containsKey('replyToMessageId')) {
      return false;
    }
    if (l$replyToMessageId != lOther$replyToMessageId) {
      return false;
    }
    final l$includeChannelMessageType = includeChannelMessageType;
    final lOther$includeChannelMessageType = other.includeChannelMessageType;
    if (_$data.containsKey('includeChannelMessageType') !=
        other._$data.containsKey('includeChannelMessageType')) {
      return false;
    }
    if (l$includeChannelMessageType != null &&
        lOther$includeChannelMessageType != null) {
      if (l$includeChannelMessageType.length !=
          lOther$includeChannelMessageType.length) {
        return false;
      }
      for (int i = 0; i < l$includeChannelMessageType.length; i++) {
        final l$includeChannelMessageType$entry =
            l$includeChannelMessageType[i];
        final lOther$includeChannelMessageType$entry =
            lOther$includeChannelMessageType[i];
        if (l$includeChannelMessageType$entry !=
            lOther$includeChannelMessageType$entry) {
          return false;
        }
      }
    } else if (l$includeChannelMessageType !=
        lOther$includeChannelMessageType) {
      return false;
    }
    final l$received = received;
    final lOther$received = other.received;
    if (_$data.containsKey('received') !=
        other._$data.containsKey('received')) {
      return false;
    }
    if (l$received != lOther$received) {
      return false;
    }
    final l$seen = seen;
    final lOther$seen = other.seen;
    if (_$data.containsKey('seen') != other._$data.containsKey('seen')) {
      return false;
    }
    if (l$seen != lOther$seen) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$ids = ids;
    final l$searchText = searchText;
    final l$caseSensitive = caseSensitive;
    final l$textSearchFields = textSearchFields;
    final l$createdAtFrom = createdAtFrom;
    final l$createdAtUntil = createdAtUntil;
    final l$updatedAtFrom = updatedAtFrom;
    final l$updatedAtUntil = updatedAtUntil;
    final l$channelId = channelId;
    final l$receiverUserId = receiverUserId;
    final l$replyToMessageId = replyToMessageId;
    final l$includeChannelMessageType = includeChannelMessageType;
    final l$received = received;
    final l$seen = seen;
    return Object.hashAll([
      _$data.containsKey('ids')
          ? l$ids == null
              ? null
              : Object.hashAll(l$ids.map((v) => v))
          : const {},
      _$data.containsKey('searchText') ? l$searchText : const {},
      _$data.containsKey('caseSensitive') ? l$caseSensitive : const {},
      _$data.containsKey('textSearchFields')
          ? l$textSearchFields == null
              ? null
              : Object.hashAll(l$textSearchFields.map((v) => v))
          : const {},
      _$data.containsKey('createdAtFrom') ? l$createdAtFrom : const {},
      _$data.containsKey('createdAtUntil') ? l$createdAtUntil : const {},
      _$data.containsKey('updatedAtFrom') ? l$updatedAtFrom : const {},
      _$data.containsKey('updatedAtUntil') ? l$updatedAtUntil : const {},
      _$data.containsKey('channelId') ? l$channelId : const {},
      _$data.containsKey('receiverUserId') ? l$receiverUserId : const {},
      _$data.containsKey('replyToMessageId') ? l$replyToMessageId : const {},
      _$data.containsKey('includeChannelMessageType')
          ? l$includeChannelMessageType == null
              ? null
              : Object.hashAll(l$includeChannelMessageType.map((v) => v))
          : const {},
      _$data.containsKey('received') ? l$received : const {},
      _$data.containsKey('seen') ? l$seen : const {},
    ]);
  }
}

abstract class CopyWith$Input$ChannelMessageListFilter<TRes> {
  factory CopyWith$Input$ChannelMessageListFilter(
    Input$ChannelMessageListFilter instance,
    TRes Function(Input$ChannelMessageListFilter) then,
  ) = _CopyWithImpl$Input$ChannelMessageListFilter;

  factory CopyWith$Input$ChannelMessageListFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$ChannelMessageListFilter;

  TRes call({
    List<String>? ids,
    String? searchText,
    bool? caseSensitive,
    List<String>? textSearchFields,
    DateTime? createdAtFrom,
    DateTime? createdAtUntil,
    DateTime? updatedAtFrom,
    DateTime? updatedAtUntil,
    String? channelId,
    String? receiverUserId,
    String? replyToMessageId,
    List<Enum$ChannelMessageType>? includeChannelMessageType,
    bool? received,
    bool? seen,
  });
}

class _CopyWithImpl$Input$ChannelMessageListFilter<TRes>
    implements CopyWith$Input$ChannelMessageListFilter<TRes> {
  _CopyWithImpl$Input$ChannelMessageListFilter(
    this._instance,
    this._then,
  );

  final Input$ChannelMessageListFilter _instance;

  final TRes Function(Input$ChannelMessageListFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ids = _undefined,
    Object? searchText = _undefined,
    Object? caseSensitive = _undefined,
    Object? textSearchFields = _undefined,
    Object? createdAtFrom = _undefined,
    Object? createdAtUntil = _undefined,
    Object? updatedAtFrom = _undefined,
    Object? updatedAtUntil = _undefined,
    Object? channelId = _undefined,
    Object? receiverUserId = _undefined,
    Object? replyToMessageId = _undefined,
    Object? includeChannelMessageType = _undefined,
    Object? received = _undefined,
    Object? seen = _undefined,
  }) =>
      _then(Input$ChannelMessageListFilter._({
        ..._instance._$data,
        if (ids != _undefined) 'ids': (ids as List<String>?),
        if (searchText != _undefined) 'searchText': (searchText as String?),
        if (caseSensitive != _undefined)
          'caseSensitive': (caseSensitive as bool?),
        if (textSearchFields != _undefined)
          'textSearchFields': (textSearchFields as List<String>?),
        if (createdAtFrom != _undefined)
          'createdAtFrom': (createdAtFrom as DateTime?),
        if (createdAtUntil != _undefined)
          'createdAtUntil': (createdAtUntil as DateTime?),
        if (updatedAtFrom != _undefined)
          'updatedAtFrom': (updatedAtFrom as DateTime?),
        if (updatedAtUntil != _undefined)
          'updatedAtUntil': (updatedAtUntil as DateTime?),
        if (channelId != _undefined) 'channelId': (channelId as String?),
        if (receiverUserId != _undefined)
          'receiverUserId': (receiverUserId as String?),
        if (replyToMessageId != _undefined)
          'replyToMessageId': (replyToMessageId as String?),
        if (includeChannelMessageType != _undefined)
          'includeChannelMessageType':
              (includeChannelMessageType as List<Enum$ChannelMessageType>?),
        if (received != _undefined) 'received': (received as bool?),
        if (seen != _undefined) 'seen': (seen as bool?),
      }));
}

class _CopyWithStubImpl$Input$ChannelMessageListFilter<TRes>
    implements CopyWith$Input$ChannelMessageListFilter<TRes> {
  _CopyWithStubImpl$Input$ChannelMessageListFilter(this._res);

  TRes _res;

  call({
    List<String>? ids,
    String? searchText,
    bool? caseSensitive,
    List<String>? textSearchFields,
    DateTime? createdAtFrom,
    DateTime? createdAtUntil,
    DateTime? updatedAtFrom,
    DateTime? updatedAtUntil,
    String? channelId,
    String? receiverUserId,
    String? replyToMessageId,
    List<Enum$ChannelMessageType>? includeChannelMessageType,
    bool? received,
    bool? seen,
  }) =>
      _res;
}

class Input$GroupMembershipListFilter {
  factory Input$GroupMembershipListFilter({
    List<String>? ids,
    String? searchText,
    bool? caseSensitive,
    List<String>? textSearchFields,
    DateTime? createdAtFrom,
    DateTime? createdAtUntil,
    DateTime? updatedAtFrom,
    DateTime? updatedAtUntil,
    String? userId,
    bool? embedded,
    List<Enum$GroupMembershipRole>? roles,
  }) =>
      Input$GroupMembershipListFilter._({
        if (ids != null) r'ids': ids,
        if (searchText != null) r'searchText': searchText,
        if (caseSensitive != null) r'caseSensitive': caseSensitive,
        if (textSearchFields != null) r'textSearchFields': textSearchFields,
        if (createdAtFrom != null) r'createdAtFrom': createdAtFrom,
        if (createdAtUntil != null) r'createdAtUntil': createdAtUntil,
        if (updatedAtFrom != null) r'updatedAtFrom': updatedAtFrom,
        if (updatedAtUntil != null) r'updatedAtUntil': updatedAtUntil,
        if (userId != null) r'userId': userId,
        if (embedded != null) r'embedded': embedded,
        if (roles != null) r'roles': roles,
      });

  Input$GroupMembershipListFilter._(this._$data);

  factory Input$GroupMembershipListFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('ids')) {
      final l$ids = data['ids'];
      result$data['ids'] =
          (l$ids as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    if (data.containsKey('searchText')) {
      final l$searchText = data['searchText'];
      result$data['searchText'] = (l$searchText as String?);
    }
    if (data.containsKey('caseSensitive')) {
      final l$caseSensitive = data['caseSensitive'];
      result$data['caseSensitive'] = (l$caseSensitive as bool?);
    }
    if (data.containsKey('textSearchFields')) {
      final l$textSearchFields = data['textSearchFields'];
      result$data['textSearchFields'] = (l$textSearchFields as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    if (data.containsKey('createdAtFrom')) {
      final l$createdAtFrom = data['createdAtFrom'];
      result$data['createdAtFrom'] = l$createdAtFrom == null
          ? null
          : DateTime.parse((l$createdAtFrom as String));
    }
    if (data.containsKey('createdAtUntil')) {
      final l$createdAtUntil = data['createdAtUntil'];
      result$data['createdAtUntil'] = l$createdAtUntil == null
          ? null
          : DateTime.parse((l$createdAtUntil as String));
    }
    if (data.containsKey('updatedAtFrom')) {
      final l$updatedAtFrom = data['updatedAtFrom'];
      result$data['updatedAtFrom'] = l$updatedAtFrom == null
          ? null
          : DateTime.parse((l$updatedAtFrom as String));
    }
    if (data.containsKey('updatedAtUntil')) {
      final l$updatedAtUntil = data['updatedAtUntil'];
      result$data['updatedAtUntil'] = l$updatedAtUntil == null
          ? null
          : DateTime.parse((l$updatedAtUntil as String));
    }
    if (data.containsKey('userId')) {
      final l$userId = data['userId'];
      result$data['userId'] = (l$userId as String?);
    }
    if (data.containsKey('embedded')) {
      final l$embedded = data['embedded'];
      result$data['embedded'] = (l$embedded as bool?);
    }
    if (data.containsKey('roles')) {
      final l$roles = data['roles'];
      result$data['roles'] = (l$roles as List<dynamic>?)
          ?.map((e) => fromJson$Enum$GroupMembershipRole((e as String)))
          .toList();
    }
    return Input$GroupMembershipListFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  List<String>? get ids => (_$data['ids'] as List<String>?);
  String? get searchText => (_$data['searchText'] as String?);
  bool? get caseSensitive => (_$data['caseSensitive'] as bool?);
  List<String>? get textSearchFields =>
      (_$data['textSearchFields'] as List<String>?);
  DateTime? get createdAtFrom => (_$data['createdAtFrom'] as DateTime?);
  DateTime? get createdAtUntil => (_$data['createdAtUntil'] as DateTime?);
  DateTime? get updatedAtFrom => (_$data['updatedAtFrom'] as DateTime?);
  DateTime? get updatedAtUntil => (_$data['updatedAtUntil'] as DateTime?);
  String? get userId => (_$data['userId'] as String?);
  bool? get embedded => (_$data['embedded'] as bool?);
  List<Enum$GroupMembershipRole>? get roles =>
      (_$data['roles'] as List<Enum$GroupMembershipRole>?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('ids')) {
      final l$ids = ids;
      result$data['ids'] = l$ids?.map((e) => e).toList();
    }
    if (_$data.containsKey('searchText')) {
      final l$searchText = searchText;
      result$data['searchText'] = l$searchText;
    }
    if (_$data.containsKey('caseSensitive')) {
      final l$caseSensitive = caseSensitive;
      result$data['caseSensitive'] = l$caseSensitive;
    }
    if (_$data.containsKey('textSearchFields')) {
      final l$textSearchFields = textSearchFields;
      result$data['textSearchFields'] =
          l$textSearchFields?.map((e) => e).toList();
    }
    if (_$data.containsKey('createdAtFrom')) {
      final l$createdAtFrom = createdAtFrom;
      result$data['createdAtFrom'] = l$createdAtFrom?.toIso8601String();
    }
    if (_$data.containsKey('createdAtUntil')) {
      final l$createdAtUntil = createdAtUntil;
      result$data['createdAtUntil'] = l$createdAtUntil?.toIso8601String();
    }
    if (_$data.containsKey('updatedAtFrom')) {
      final l$updatedAtFrom = updatedAtFrom;
      result$data['updatedAtFrom'] = l$updatedAtFrom?.toIso8601String();
    }
    if (_$data.containsKey('updatedAtUntil')) {
      final l$updatedAtUntil = updatedAtUntil;
      result$data['updatedAtUntil'] = l$updatedAtUntil?.toIso8601String();
    }
    if (_$data.containsKey('userId')) {
      final l$userId = userId;
      result$data['userId'] = l$userId;
    }
    if (_$data.containsKey('embedded')) {
      final l$embedded = embedded;
      result$data['embedded'] = l$embedded;
    }
    if (_$data.containsKey('roles')) {
      final l$roles = roles;
      result$data['roles'] =
          l$roles?.map((e) => toJson$Enum$GroupMembershipRole(e)).toList();
    }
    return result$data;
  }

  CopyWith$Input$GroupMembershipListFilter<Input$GroupMembershipListFilter>
      get copyWith => CopyWith$Input$GroupMembershipListFilter(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$GroupMembershipListFilter) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$ids = ids;
    final lOther$ids = other.ids;
    if (_$data.containsKey('ids') != other._$data.containsKey('ids')) {
      return false;
    }
    if (l$ids != null && lOther$ids != null) {
      if (l$ids.length != lOther$ids.length) {
        return false;
      }
      for (int i = 0; i < l$ids.length; i++) {
        final l$ids$entry = l$ids[i];
        final lOther$ids$entry = lOther$ids[i];
        if (l$ids$entry != lOther$ids$entry) {
          return false;
        }
      }
    } else if (l$ids != lOther$ids) {
      return false;
    }
    final l$searchText = searchText;
    final lOther$searchText = other.searchText;
    if (_$data.containsKey('searchText') !=
        other._$data.containsKey('searchText')) {
      return false;
    }
    if (l$searchText != lOther$searchText) {
      return false;
    }
    final l$caseSensitive = caseSensitive;
    final lOther$caseSensitive = other.caseSensitive;
    if (_$data.containsKey('caseSensitive') !=
        other._$data.containsKey('caseSensitive')) {
      return false;
    }
    if (l$caseSensitive != lOther$caseSensitive) {
      return false;
    }
    final l$textSearchFields = textSearchFields;
    final lOther$textSearchFields = other.textSearchFields;
    if (_$data.containsKey('textSearchFields') !=
        other._$data.containsKey('textSearchFields')) {
      return false;
    }
    if (l$textSearchFields != null && lOther$textSearchFields != null) {
      if (l$textSearchFields.length != lOther$textSearchFields.length) {
        return false;
      }
      for (int i = 0; i < l$textSearchFields.length; i++) {
        final l$textSearchFields$entry = l$textSearchFields[i];
        final lOther$textSearchFields$entry = lOther$textSearchFields[i];
        if (l$textSearchFields$entry != lOther$textSearchFields$entry) {
          return false;
        }
      }
    } else if (l$textSearchFields != lOther$textSearchFields) {
      return false;
    }
    final l$createdAtFrom = createdAtFrom;
    final lOther$createdAtFrom = other.createdAtFrom;
    if (_$data.containsKey('createdAtFrom') !=
        other._$data.containsKey('createdAtFrom')) {
      return false;
    }
    if (l$createdAtFrom != lOther$createdAtFrom) {
      return false;
    }
    final l$createdAtUntil = createdAtUntil;
    final lOther$createdAtUntil = other.createdAtUntil;
    if (_$data.containsKey('createdAtUntil') !=
        other._$data.containsKey('createdAtUntil')) {
      return false;
    }
    if (l$createdAtUntil != lOther$createdAtUntil) {
      return false;
    }
    final l$updatedAtFrom = updatedAtFrom;
    final lOther$updatedAtFrom = other.updatedAtFrom;
    if (_$data.containsKey('updatedAtFrom') !=
        other._$data.containsKey('updatedAtFrom')) {
      return false;
    }
    if (l$updatedAtFrom != lOther$updatedAtFrom) {
      return false;
    }
    final l$updatedAtUntil = updatedAtUntil;
    final lOther$updatedAtUntil = other.updatedAtUntil;
    if (_$data.containsKey('updatedAtUntil') !=
        other._$data.containsKey('updatedAtUntil')) {
      return false;
    }
    if (l$updatedAtUntil != lOther$updatedAtUntil) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (_$data.containsKey('userId') != other._$data.containsKey('userId')) {
      return false;
    }
    if (l$userId != lOther$userId) {
      return false;
    }
    final l$embedded = embedded;
    final lOther$embedded = other.embedded;
    if (_$data.containsKey('embedded') !=
        other._$data.containsKey('embedded')) {
      return false;
    }
    if (l$embedded != lOther$embedded) {
      return false;
    }
    final l$roles = roles;
    final lOther$roles = other.roles;
    if (_$data.containsKey('roles') != other._$data.containsKey('roles')) {
      return false;
    }
    if (l$roles != null && lOther$roles != null) {
      if (l$roles.length != lOther$roles.length) {
        return false;
      }
      for (int i = 0; i < l$roles.length; i++) {
        final l$roles$entry = l$roles[i];
        final lOther$roles$entry = lOther$roles[i];
        if (l$roles$entry != lOther$roles$entry) {
          return false;
        }
      }
    } else if (l$roles != lOther$roles) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$ids = ids;
    final l$searchText = searchText;
    final l$caseSensitive = caseSensitive;
    final l$textSearchFields = textSearchFields;
    final l$createdAtFrom = createdAtFrom;
    final l$createdAtUntil = createdAtUntil;
    final l$updatedAtFrom = updatedAtFrom;
    final l$updatedAtUntil = updatedAtUntil;
    final l$userId = userId;
    final l$embedded = embedded;
    final l$roles = roles;
    return Object.hashAll([
      _$data.containsKey('ids')
          ? l$ids == null
              ? null
              : Object.hashAll(l$ids.map((v) => v))
          : const {},
      _$data.containsKey('searchText') ? l$searchText : const {},
      _$data.containsKey('caseSensitive') ? l$caseSensitive : const {},
      _$data.containsKey('textSearchFields')
          ? l$textSearchFields == null
              ? null
              : Object.hashAll(l$textSearchFields.map((v) => v))
          : const {},
      _$data.containsKey('createdAtFrom') ? l$createdAtFrom : const {},
      _$data.containsKey('createdAtUntil') ? l$createdAtUntil : const {},
      _$data.containsKey('updatedAtFrom') ? l$updatedAtFrom : const {},
      _$data.containsKey('updatedAtUntil') ? l$updatedAtUntil : const {},
      _$data.containsKey('userId') ? l$userId : const {},
      _$data.containsKey('embedded') ? l$embedded : const {},
      _$data.containsKey('roles')
          ? l$roles == null
              ? null
              : Object.hashAll(l$roles.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$GroupMembershipListFilter<TRes> {
  factory CopyWith$Input$GroupMembershipListFilter(
    Input$GroupMembershipListFilter instance,
    TRes Function(Input$GroupMembershipListFilter) then,
  ) = _CopyWithImpl$Input$GroupMembershipListFilter;

  factory CopyWith$Input$GroupMembershipListFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$GroupMembershipListFilter;

  TRes call({
    List<String>? ids,
    String? searchText,
    bool? caseSensitive,
    List<String>? textSearchFields,
    DateTime? createdAtFrom,
    DateTime? createdAtUntil,
    DateTime? updatedAtFrom,
    DateTime? updatedAtUntil,
    String? userId,
    bool? embedded,
    List<Enum$GroupMembershipRole>? roles,
  });
}

class _CopyWithImpl$Input$GroupMembershipListFilter<TRes>
    implements CopyWith$Input$GroupMembershipListFilter<TRes> {
  _CopyWithImpl$Input$GroupMembershipListFilter(
    this._instance,
    this._then,
  );

  final Input$GroupMembershipListFilter _instance;

  final TRes Function(Input$GroupMembershipListFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ids = _undefined,
    Object? searchText = _undefined,
    Object? caseSensitive = _undefined,
    Object? textSearchFields = _undefined,
    Object? createdAtFrom = _undefined,
    Object? createdAtUntil = _undefined,
    Object? updatedAtFrom = _undefined,
    Object? updatedAtUntil = _undefined,
    Object? userId = _undefined,
    Object? embedded = _undefined,
    Object? roles = _undefined,
  }) =>
      _then(Input$GroupMembershipListFilter._({
        ..._instance._$data,
        if (ids != _undefined) 'ids': (ids as List<String>?),
        if (searchText != _undefined) 'searchText': (searchText as String?),
        if (caseSensitive != _undefined)
          'caseSensitive': (caseSensitive as bool?),
        if (textSearchFields != _undefined)
          'textSearchFields': (textSearchFields as List<String>?),
        if (createdAtFrom != _undefined)
          'createdAtFrom': (createdAtFrom as DateTime?),
        if (createdAtUntil != _undefined)
          'createdAtUntil': (createdAtUntil as DateTime?),
        if (updatedAtFrom != _undefined)
          'updatedAtFrom': (updatedAtFrom as DateTime?),
        if (updatedAtUntil != _undefined)
          'updatedAtUntil': (updatedAtUntil as DateTime?),
        if (userId != _undefined) 'userId': (userId as String?),
        if (embedded != _undefined) 'embedded': (embedded as bool?),
        if (roles != _undefined)
          'roles': (roles as List<Enum$GroupMembershipRole>?),
      }));
}

class _CopyWithStubImpl$Input$GroupMembershipListFilter<TRes>
    implements CopyWith$Input$GroupMembershipListFilter<TRes> {
  _CopyWithStubImpl$Input$GroupMembershipListFilter(this._res);

  TRes _res;

  call({
    List<String>? ids,
    String? searchText,
    bool? caseSensitive,
    List<String>? textSearchFields,
    DateTime? createdAtFrom,
    DateTime? createdAtUntil,
    DateTime? updatedAtFrom,
    DateTime? updatedAtUntil,
    String? userId,
    bool? embedded,
    List<Enum$GroupMembershipRole>? roles,
  }) =>
      _res;
}

class Input$GroupInput {
  factory Input$GroupInput({
    String? id,
    String? adminNotes,
    List<Input$ModelEventInput>? events,
    Input$BaseModelMetadataInput? metadata,
    DateTime? createdAt,
    String? createdBy,
    DateTime? updatedAt,
    String? updatedBy,
    DateTime? deletedAt,
    String? deletedBy,
    String? parentGroupId,
    String? matchingEngineId,
    String? name,
    String? shortName,
    String? ident,
    String? slug,
    String? description,
    String? planType,
    bool? embedded,
    List<Input$AppliedGroupRuleInput>? appliedGroupRules,
  }) =>
      Input$GroupInput._({
        if (id != null) r'id': id,
        if (adminNotes != null) r'adminNotes': adminNotes,
        if (events != null) r'events': events,
        if (metadata != null) r'metadata': metadata,
        if (createdAt != null) r'createdAt': createdAt,
        if (createdBy != null) r'createdBy': createdBy,
        if (updatedAt != null) r'updatedAt': updatedAt,
        if (updatedBy != null) r'updatedBy': updatedBy,
        if (deletedAt != null) r'deletedAt': deletedAt,
        if (deletedBy != null) r'deletedBy': deletedBy,
        if (parentGroupId != null) r'parentGroupId': parentGroupId,
        if (matchingEngineId != null) r'matchingEngineId': matchingEngineId,
        if (name != null) r'name': name,
        if (shortName != null) r'shortName': shortName,
        if (ident != null) r'ident': ident,
        if (slug != null) r'slug': slug,
        if (description != null) r'description': description,
        if (planType != null) r'planType': planType,
        if (embedded != null) r'embedded': embedded,
        if (appliedGroupRules != null) r'appliedGroupRules': appliedGroupRules,
      });

  Input$GroupInput._(this._$data);

  factory Input$GroupInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as String?);
    }
    if (data.containsKey('adminNotes')) {
      final l$adminNotes = data['adminNotes'];
      result$data['adminNotes'] = (l$adminNotes as String?);
    }
    if (data.containsKey('events')) {
      final l$events = data['events'];
      result$data['events'] = (l$events as List<dynamic>?)
          ?.map((e) =>
              Input$ModelEventInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('metadata')) {
      final l$metadata = data['metadata'];
      result$data['metadata'] = l$metadata == null
          ? null
          : Input$BaseModelMetadataInput.fromJson(
              (l$metadata as Map<String, dynamic>));
    }
    if (data.containsKey('createdAt')) {
      final l$createdAt = data['createdAt'];
      result$data['createdAt'] =
          l$createdAt == null ? null : DateTime.parse((l$createdAt as String));
    }
    if (data.containsKey('createdBy')) {
      final l$createdBy = data['createdBy'];
      result$data['createdBy'] = (l$createdBy as String?);
    }
    if (data.containsKey('updatedAt')) {
      final l$updatedAt = data['updatedAt'];
      result$data['updatedAt'] =
          l$updatedAt == null ? null : DateTime.parse((l$updatedAt as String));
    }
    if (data.containsKey('updatedBy')) {
      final l$updatedBy = data['updatedBy'];
      result$data['updatedBy'] = (l$updatedBy as String?);
    }
    if (data.containsKey('deletedAt')) {
      final l$deletedAt = data['deletedAt'];
      result$data['deletedAt'] =
          l$deletedAt == null ? null : DateTime.parse((l$deletedAt as String));
    }
    if (data.containsKey('deletedBy')) {
      final l$deletedBy = data['deletedBy'];
      result$data['deletedBy'] = (l$deletedBy as String?);
    }
    if (data.containsKey('parentGroupId')) {
      final l$parentGroupId = data['parentGroupId'];
      result$data['parentGroupId'] = (l$parentGroupId as String?);
    }
    if (data.containsKey('matchingEngineId')) {
      final l$matchingEngineId = data['matchingEngineId'];
      result$data['matchingEngineId'] = (l$matchingEngineId as String?);
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('shortName')) {
      final l$shortName = data['shortName'];
      result$data['shortName'] = (l$shortName as String?);
    }
    if (data.containsKey('ident')) {
      final l$ident = data['ident'];
      result$data['ident'] = (l$ident as String?);
    }
    if (data.containsKey('slug')) {
      final l$slug = data['slug'];
      result$data['slug'] = (l$slug as String?);
    }
    if (data.containsKey('description')) {
      final l$description = data['description'];
      result$data['description'] = (l$description as String?);
    }
    if (data.containsKey('planType')) {
      final l$planType = data['planType'];
      result$data['planType'] = (l$planType as String?);
    }
    if (data.containsKey('embedded')) {
      final l$embedded = data['embedded'];
      result$data['embedded'] = (l$embedded as bool);
    }
    if (data.containsKey('appliedGroupRules')) {
      final l$appliedGroupRules = data['appliedGroupRules'];
      result$data['appliedGroupRules'] = (l$appliedGroupRules as List<dynamic>?)
          ?.map((e) =>
              Input$AppliedGroupRuleInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    return Input$GroupInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get id => (_$data['id'] as String?);
  String? get adminNotes => (_$data['adminNotes'] as String?);
  List<Input$ModelEventInput>? get events =>
      (_$data['events'] as List<Input$ModelEventInput>?);
  Input$BaseModelMetadataInput? get metadata =>
      (_$data['metadata'] as Input$BaseModelMetadataInput?);
  DateTime? get createdAt => (_$data['createdAt'] as DateTime?);
  String? get createdBy => (_$data['createdBy'] as String?);
  DateTime? get updatedAt => (_$data['updatedAt'] as DateTime?);
  String? get updatedBy => (_$data['updatedBy'] as String?);
  DateTime? get deletedAt => (_$data['deletedAt'] as DateTime?);
  String? get deletedBy => (_$data['deletedBy'] as String?);
  String? get parentGroupId => (_$data['parentGroupId'] as String?);
  String? get matchingEngineId => (_$data['matchingEngineId'] as String?);
  String? get name => (_$data['name'] as String?);
  String? get shortName => (_$data['shortName'] as String?);
  String? get ident => (_$data['ident'] as String?);
  String? get slug => (_$data['slug'] as String?);
  String? get description => (_$data['description'] as String?);
  String? get planType => (_$data['planType'] as String?);
  bool? get embedded => (_$data['embedded'] as bool?);
  List<Input$AppliedGroupRuleInput>? get appliedGroupRules =>
      (_$data['appliedGroupRules'] as List<Input$AppliedGroupRuleInput>?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('adminNotes')) {
      final l$adminNotes = adminNotes;
      result$data['adminNotes'] = l$adminNotes;
    }
    if (_$data.containsKey('events')) {
      final l$events = events;
      result$data['events'] = l$events?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('metadata')) {
      final l$metadata = metadata;
      result$data['metadata'] = l$metadata?.toJson();
    }
    if (_$data.containsKey('createdAt')) {
      final l$createdAt = createdAt;
      result$data['createdAt'] = l$createdAt?.toIso8601String();
    }
    if (_$data.containsKey('createdBy')) {
      final l$createdBy = createdBy;
      result$data['createdBy'] = l$createdBy;
    }
    if (_$data.containsKey('updatedAt')) {
      final l$updatedAt = updatedAt;
      result$data['updatedAt'] = l$updatedAt?.toIso8601String();
    }
    if (_$data.containsKey('updatedBy')) {
      final l$updatedBy = updatedBy;
      result$data['updatedBy'] = l$updatedBy;
    }
    if (_$data.containsKey('deletedAt')) {
      final l$deletedAt = deletedAt;
      result$data['deletedAt'] = l$deletedAt?.toIso8601String();
    }
    if (_$data.containsKey('deletedBy')) {
      final l$deletedBy = deletedBy;
      result$data['deletedBy'] = l$deletedBy;
    }
    if (_$data.containsKey('parentGroupId')) {
      final l$parentGroupId = parentGroupId;
      result$data['parentGroupId'] = l$parentGroupId;
    }
    if (_$data.containsKey('matchingEngineId')) {
      final l$matchingEngineId = matchingEngineId;
      result$data['matchingEngineId'] = l$matchingEngineId;
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('shortName')) {
      final l$shortName = shortName;
      result$data['shortName'] = l$shortName;
    }
    if (_$data.containsKey('ident')) {
      final l$ident = ident;
      result$data['ident'] = l$ident;
    }
    if (_$data.containsKey('slug')) {
      final l$slug = slug;
      result$data['slug'] = l$slug;
    }
    if (_$data.containsKey('description')) {
      final l$description = description;
      result$data['description'] = l$description;
    }
    if (_$data.containsKey('planType')) {
      final l$planType = planType;
      result$data['planType'] = l$planType;
    }
    if (_$data.containsKey('embedded')) {
      final l$embedded = embedded;
      result$data['embedded'] = (l$embedded as bool);
    }
    if (_$data.containsKey('appliedGroupRules')) {
      final l$appliedGroupRules = appliedGroupRules;
      result$data['appliedGroupRules'] =
          l$appliedGroupRules?.map((e) => e.toJson()).toList();
    }
    return result$data;
  }

  CopyWith$Input$GroupInput<Input$GroupInput> get copyWith =>
      CopyWith$Input$GroupInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$GroupInput) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$adminNotes = adminNotes;
    final lOther$adminNotes = other.adminNotes;
    if (_$data.containsKey('adminNotes') !=
        other._$data.containsKey('adminNotes')) {
      return false;
    }
    if (l$adminNotes != lOther$adminNotes) {
      return false;
    }
    final l$events = events;
    final lOther$events = other.events;
    if (_$data.containsKey('events') != other._$data.containsKey('events')) {
      return false;
    }
    if (l$events != null && lOther$events != null) {
      if (l$events.length != lOther$events.length) {
        return false;
      }
      for (int i = 0; i < l$events.length; i++) {
        final l$events$entry = l$events[i];
        final lOther$events$entry = lOther$events[i];
        if (l$events$entry != lOther$events$entry) {
          return false;
        }
      }
    } else if (l$events != lOther$events) {
      return false;
    }
    final l$metadata = metadata;
    final lOther$metadata = other.metadata;
    if (_$data.containsKey('metadata') !=
        other._$data.containsKey('metadata')) {
      return false;
    }
    if (l$metadata != lOther$metadata) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (_$data.containsKey('createdAt') !=
        other._$data.containsKey('createdAt')) {
      return false;
    }
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$createdBy = createdBy;
    final lOther$createdBy = other.createdBy;
    if (_$data.containsKey('createdBy') !=
        other._$data.containsKey('createdBy')) {
      return false;
    }
    if (l$createdBy != lOther$createdBy) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (_$data.containsKey('updatedAt') !=
        other._$data.containsKey('updatedAt')) {
      return false;
    }
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    final l$updatedBy = updatedBy;
    final lOther$updatedBy = other.updatedBy;
    if (_$data.containsKey('updatedBy') !=
        other._$data.containsKey('updatedBy')) {
      return false;
    }
    if (l$updatedBy != lOther$updatedBy) {
      return false;
    }
    final l$deletedAt = deletedAt;
    final lOther$deletedAt = other.deletedAt;
    if (_$data.containsKey('deletedAt') !=
        other._$data.containsKey('deletedAt')) {
      return false;
    }
    if (l$deletedAt != lOther$deletedAt) {
      return false;
    }
    final l$deletedBy = deletedBy;
    final lOther$deletedBy = other.deletedBy;
    if (_$data.containsKey('deletedBy') !=
        other._$data.containsKey('deletedBy')) {
      return false;
    }
    if (l$deletedBy != lOther$deletedBy) {
      return false;
    }
    final l$parentGroupId = parentGroupId;
    final lOther$parentGroupId = other.parentGroupId;
    if (_$data.containsKey('parentGroupId') !=
        other._$data.containsKey('parentGroupId')) {
      return false;
    }
    if (l$parentGroupId != lOther$parentGroupId) {
      return false;
    }
    final l$matchingEngineId = matchingEngineId;
    final lOther$matchingEngineId = other.matchingEngineId;
    if (_$data.containsKey('matchingEngineId') !=
        other._$data.containsKey('matchingEngineId')) {
      return false;
    }
    if (l$matchingEngineId != lOther$matchingEngineId) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$shortName = shortName;
    final lOther$shortName = other.shortName;
    if (_$data.containsKey('shortName') !=
        other._$data.containsKey('shortName')) {
      return false;
    }
    if (l$shortName != lOther$shortName) {
      return false;
    }
    final l$ident = ident;
    final lOther$ident = other.ident;
    if (_$data.containsKey('ident') != other._$data.containsKey('ident')) {
      return false;
    }
    if (l$ident != lOther$ident) {
      return false;
    }
    final l$slug = slug;
    final lOther$slug = other.slug;
    if (_$data.containsKey('slug') != other._$data.containsKey('slug')) {
      return false;
    }
    if (l$slug != lOther$slug) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (_$data.containsKey('description') !=
        other._$data.containsKey('description')) {
      return false;
    }
    if (l$description != lOther$description) {
      return false;
    }
    final l$planType = planType;
    final lOther$planType = other.planType;
    if (_$data.containsKey('planType') !=
        other._$data.containsKey('planType')) {
      return false;
    }
    if (l$planType != lOther$planType) {
      return false;
    }
    final l$embedded = embedded;
    final lOther$embedded = other.embedded;
    if (_$data.containsKey('embedded') !=
        other._$data.containsKey('embedded')) {
      return false;
    }
    if (l$embedded != lOther$embedded) {
      return false;
    }
    final l$appliedGroupRules = appliedGroupRules;
    final lOther$appliedGroupRules = other.appliedGroupRules;
    if (_$data.containsKey('appliedGroupRules') !=
        other._$data.containsKey('appliedGroupRules')) {
      return false;
    }
    if (l$appliedGroupRules != null && lOther$appliedGroupRules != null) {
      if (l$appliedGroupRules.length != lOther$appliedGroupRules.length) {
        return false;
      }
      for (int i = 0; i < l$appliedGroupRules.length; i++) {
        final l$appliedGroupRules$entry = l$appliedGroupRules[i];
        final lOther$appliedGroupRules$entry = lOther$appliedGroupRules[i];
        if (l$appliedGroupRules$entry != lOther$appliedGroupRules$entry) {
          return false;
        }
      }
    } else if (l$appliedGroupRules != lOther$appliedGroupRules) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$adminNotes = adminNotes;
    final l$events = events;
    final l$metadata = metadata;
    final l$createdAt = createdAt;
    final l$createdBy = createdBy;
    final l$updatedAt = updatedAt;
    final l$updatedBy = updatedBy;
    final l$deletedAt = deletedAt;
    final l$deletedBy = deletedBy;
    final l$parentGroupId = parentGroupId;
    final l$matchingEngineId = matchingEngineId;
    final l$name = name;
    final l$shortName = shortName;
    final l$ident = ident;
    final l$slug = slug;
    final l$description = description;
    final l$planType = planType;
    final l$embedded = embedded;
    final l$appliedGroupRules = appliedGroupRules;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('adminNotes') ? l$adminNotes : const {},
      _$data.containsKey('events')
          ? l$events == null
              ? null
              : Object.hashAll(l$events.map((v) => v))
          : const {},
      _$data.containsKey('metadata') ? l$metadata : const {},
      _$data.containsKey('createdAt') ? l$createdAt : const {},
      _$data.containsKey('createdBy') ? l$createdBy : const {},
      _$data.containsKey('updatedAt') ? l$updatedAt : const {},
      _$data.containsKey('updatedBy') ? l$updatedBy : const {},
      _$data.containsKey('deletedAt') ? l$deletedAt : const {},
      _$data.containsKey('deletedBy') ? l$deletedBy : const {},
      _$data.containsKey('parentGroupId') ? l$parentGroupId : const {},
      _$data.containsKey('matchingEngineId') ? l$matchingEngineId : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('shortName') ? l$shortName : const {},
      _$data.containsKey('ident') ? l$ident : const {},
      _$data.containsKey('slug') ? l$slug : const {},
      _$data.containsKey('description') ? l$description : const {},
      _$data.containsKey('planType') ? l$planType : const {},
      _$data.containsKey('embedded') ? l$embedded : const {},
      _$data.containsKey('appliedGroupRules')
          ? l$appliedGroupRules == null
              ? null
              : Object.hashAll(l$appliedGroupRules.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$GroupInput<TRes> {
  factory CopyWith$Input$GroupInput(
    Input$GroupInput instance,
    TRes Function(Input$GroupInput) then,
  ) = _CopyWithImpl$Input$GroupInput;

  factory CopyWith$Input$GroupInput.stub(TRes res) =
      _CopyWithStubImpl$Input$GroupInput;

  TRes call({
    String? id,
    String? adminNotes,
    List<Input$ModelEventInput>? events,
    Input$BaseModelMetadataInput? metadata,
    DateTime? createdAt,
    String? createdBy,
    DateTime? updatedAt,
    String? updatedBy,
    DateTime? deletedAt,
    String? deletedBy,
    String? parentGroupId,
    String? matchingEngineId,
    String? name,
    String? shortName,
    String? ident,
    String? slug,
    String? description,
    String? planType,
    bool? embedded,
    List<Input$AppliedGroupRuleInput>? appliedGroupRules,
  });
  TRes events(
      Iterable<Input$ModelEventInput>? Function(
              Iterable<CopyWith$Input$ModelEventInput<Input$ModelEventInput>>?)
          _fn);
  CopyWith$Input$BaseModelMetadataInput<TRes> get metadata;
  TRes appliedGroupRules(
      Iterable<Input$AppliedGroupRuleInput>? Function(
              Iterable<
                  CopyWith$Input$AppliedGroupRuleInput<
                      Input$AppliedGroupRuleInput>>?)
          _fn);
}

class _CopyWithImpl$Input$GroupInput<TRes>
    implements CopyWith$Input$GroupInput<TRes> {
  _CopyWithImpl$Input$GroupInput(
    this._instance,
    this._then,
  );

  final Input$GroupInput _instance;

  final TRes Function(Input$GroupInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? adminNotes = _undefined,
    Object? events = _undefined,
    Object? metadata = _undefined,
    Object? createdAt = _undefined,
    Object? createdBy = _undefined,
    Object? updatedAt = _undefined,
    Object? updatedBy = _undefined,
    Object? deletedAt = _undefined,
    Object? deletedBy = _undefined,
    Object? parentGroupId = _undefined,
    Object? matchingEngineId = _undefined,
    Object? name = _undefined,
    Object? shortName = _undefined,
    Object? ident = _undefined,
    Object? slug = _undefined,
    Object? description = _undefined,
    Object? planType = _undefined,
    Object? embedded = _undefined,
    Object? appliedGroupRules = _undefined,
  }) =>
      _then(Input$GroupInput._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as String?),
        if (adminNotes != _undefined) 'adminNotes': (adminNotes as String?),
        if (events != _undefined)
          'events': (events as List<Input$ModelEventInput>?),
        if (metadata != _undefined)
          'metadata': (metadata as Input$BaseModelMetadataInput?),
        if (createdAt != _undefined) 'createdAt': (createdAt as DateTime?),
        if (createdBy != _undefined) 'createdBy': (createdBy as String?),
        if (updatedAt != _undefined) 'updatedAt': (updatedAt as DateTime?),
        if (updatedBy != _undefined) 'updatedBy': (updatedBy as String?),
        if (deletedAt != _undefined) 'deletedAt': (deletedAt as DateTime?),
        if (deletedBy != _undefined) 'deletedBy': (deletedBy as String?),
        if (parentGroupId != _undefined)
          'parentGroupId': (parentGroupId as String?),
        if (matchingEngineId != _undefined)
          'matchingEngineId': (matchingEngineId as String?),
        if (name != _undefined) 'name': (name as String?),
        if (shortName != _undefined) 'shortName': (shortName as String?),
        if (ident != _undefined) 'ident': (ident as String?),
        if (slug != _undefined) 'slug': (slug as String?),
        if (description != _undefined) 'description': (description as String?),
        if (planType != _undefined) 'planType': (planType as String?),
        if (embedded != _undefined && embedded != null)
          'embedded': (embedded as bool),
        if (appliedGroupRules != _undefined)
          'appliedGroupRules':
              (appliedGroupRules as List<Input$AppliedGroupRuleInput>?),
      }));
  TRes events(
          Iterable<Input$ModelEventInput>? Function(
                  Iterable<
                      CopyWith$Input$ModelEventInput<Input$ModelEventInput>>?)
              _fn) =>
      call(
          events:
              _fn(_instance.events?.map((e) => CopyWith$Input$ModelEventInput(
                    e,
                    (i) => i,
                  )))?.toList());
  CopyWith$Input$BaseModelMetadataInput<TRes> get metadata {
    final local$metadata = _instance.metadata;
    return local$metadata == null
        ? CopyWith$Input$BaseModelMetadataInput.stub(_then(_instance))
        : CopyWith$Input$BaseModelMetadataInput(
            local$metadata, (e) => call(metadata: e));
  }

  TRes appliedGroupRules(
          Iterable<Input$AppliedGroupRuleInput>? Function(
                  Iterable<
                      CopyWith$Input$AppliedGroupRuleInput<
                          Input$AppliedGroupRuleInput>>?)
              _fn) =>
      call(
          appliedGroupRules: _fn(_instance.appliedGroupRules
              ?.map((e) => CopyWith$Input$AppliedGroupRuleInput(
                    e,
                    (i) => i,
                  )))?.toList());
}

class _CopyWithStubImpl$Input$GroupInput<TRes>
    implements CopyWith$Input$GroupInput<TRes> {
  _CopyWithStubImpl$Input$GroupInput(this._res);

  TRes _res;

  call({
    String? id,
    String? adminNotes,
    List<Input$ModelEventInput>? events,
    Input$BaseModelMetadataInput? metadata,
    DateTime? createdAt,
    String? createdBy,
    DateTime? updatedAt,
    String? updatedBy,
    DateTime? deletedAt,
    String? deletedBy,
    String? parentGroupId,
    String? matchingEngineId,
    String? name,
    String? shortName,
    String? ident,
    String? slug,
    String? description,
    String? planType,
    bool? embedded,
    List<Input$AppliedGroupRuleInput>? appliedGroupRules,
  }) =>
      _res;
  events(_fn) => _res;
  CopyWith$Input$BaseModelMetadataInput<TRes> get metadata =>
      CopyWith$Input$BaseModelMetadataInput.stub(_res);
  appliedGroupRules(_fn) => _res;
}

class Input$AppliedGroupRuleInput {
  factory Input$AppliedGroupRuleInput({
    String? id,
    String? adminNotes,
    List<Input$ModelEventInput>? events,
    Input$BaseModelMetadataInput? metadata,
    DateTime? createdAt,
    String? createdBy,
    DateTime? updatedAt,
    String? updatedBy,
    DateTime? deletedAt,
    String? deletedBy,
    String? groupRuleId,
    String? groupId,
    List<Enum$GroupRuleEventType>? subscribedToEvents,
    Input$GroupRuleBaseConfigInput? config,
  }) =>
      Input$AppliedGroupRuleInput._({
        if (id != null) r'id': id,
        if (adminNotes != null) r'adminNotes': adminNotes,
        if (events != null) r'events': events,
        if (metadata != null) r'metadata': metadata,
        if (createdAt != null) r'createdAt': createdAt,
        if (createdBy != null) r'createdBy': createdBy,
        if (updatedAt != null) r'updatedAt': updatedAt,
        if (updatedBy != null) r'updatedBy': updatedBy,
        if (deletedAt != null) r'deletedAt': deletedAt,
        if (deletedBy != null) r'deletedBy': deletedBy,
        if (groupRuleId != null) r'groupRuleId': groupRuleId,
        if (groupId != null) r'groupId': groupId,
        if (subscribedToEvents != null)
          r'subscribedToEvents': subscribedToEvents,
        if (config != null) r'config': config,
      });

  Input$AppliedGroupRuleInput._(this._$data);

  factory Input$AppliedGroupRuleInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as String?);
    }
    if (data.containsKey('adminNotes')) {
      final l$adminNotes = data['adminNotes'];
      result$data['adminNotes'] = (l$adminNotes as String?);
    }
    if (data.containsKey('events')) {
      final l$events = data['events'];
      result$data['events'] = (l$events as List<dynamic>?)
          ?.map((e) =>
              Input$ModelEventInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('metadata')) {
      final l$metadata = data['metadata'];
      result$data['metadata'] = l$metadata == null
          ? null
          : Input$BaseModelMetadataInput.fromJson(
              (l$metadata as Map<String, dynamic>));
    }
    if (data.containsKey('createdAt')) {
      final l$createdAt = data['createdAt'];
      result$data['createdAt'] =
          l$createdAt == null ? null : DateTime.parse((l$createdAt as String));
    }
    if (data.containsKey('createdBy')) {
      final l$createdBy = data['createdBy'];
      result$data['createdBy'] = (l$createdBy as String?);
    }
    if (data.containsKey('updatedAt')) {
      final l$updatedAt = data['updatedAt'];
      result$data['updatedAt'] =
          l$updatedAt == null ? null : DateTime.parse((l$updatedAt as String));
    }
    if (data.containsKey('updatedBy')) {
      final l$updatedBy = data['updatedBy'];
      result$data['updatedBy'] = (l$updatedBy as String?);
    }
    if (data.containsKey('deletedAt')) {
      final l$deletedAt = data['deletedAt'];
      result$data['deletedAt'] =
          l$deletedAt == null ? null : DateTime.parse((l$deletedAt as String));
    }
    if (data.containsKey('deletedBy')) {
      final l$deletedBy = data['deletedBy'];
      result$data['deletedBy'] = (l$deletedBy as String?);
    }
    if (data.containsKey('groupRuleId')) {
      final l$groupRuleId = data['groupRuleId'];
      result$data['groupRuleId'] = (l$groupRuleId as String);
    }
    if (data.containsKey('groupId')) {
      final l$groupId = data['groupId'];
      result$data['groupId'] = (l$groupId as String);
    }
    if (data.containsKey('subscribedToEvents')) {
      final l$subscribedToEvents = data['subscribedToEvents'];
      result$data['subscribedToEvents'] =
          (l$subscribedToEvents as List<dynamic>)
              .map((e) => fromJson$Enum$GroupRuleEventType((e as String)))
              .toList();
    }
    if (data.containsKey('config')) {
      final l$config = data['config'];
      result$data['config'] = l$config == null
          ? null
          : Input$GroupRuleBaseConfigInput.fromJson(
              (l$config as Map<String, dynamic>));
    }
    return Input$AppliedGroupRuleInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get id => (_$data['id'] as String?);
  String? get adminNotes => (_$data['adminNotes'] as String?);
  List<Input$ModelEventInput>? get events =>
      (_$data['events'] as List<Input$ModelEventInput>?);
  Input$BaseModelMetadataInput? get metadata =>
      (_$data['metadata'] as Input$BaseModelMetadataInput?);
  DateTime? get createdAt => (_$data['createdAt'] as DateTime?);
  String? get createdBy => (_$data['createdBy'] as String?);
  DateTime? get updatedAt => (_$data['updatedAt'] as DateTime?);
  String? get updatedBy => (_$data['updatedBy'] as String?);
  DateTime? get deletedAt => (_$data['deletedAt'] as DateTime?);
  String? get deletedBy => (_$data['deletedBy'] as String?);
  String? get groupRuleId => (_$data['groupRuleId'] as String?);
  String? get groupId => (_$data['groupId'] as String?);
  List<Enum$GroupRuleEventType>? get subscribedToEvents =>
      (_$data['subscribedToEvents'] as List<Enum$GroupRuleEventType>?);
  Input$GroupRuleBaseConfigInput? get config =>
      (_$data['config'] as Input$GroupRuleBaseConfigInput?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('adminNotes')) {
      final l$adminNotes = adminNotes;
      result$data['adminNotes'] = l$adminNotes;
    }
    if (_$data.containsKey('events')) {
      final l$events = events;
      result$data['events'] = l$events?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('metadata')) {
      final l$metadata = metadata;
      result$data['metadata'] = l$metadata?.toJson();
    }
    if (_$data.containsKey('createdAt')) {
      final l$createdAt = createdAt;
      result$data['createdAt'] = l$createdAt?.toIso8601String();
    }
    if (_$data.containsKey('createdBy')) {
      final l$createdBy = createdBy;
      result$data['createdBy'] = l$createdBy;
    }
    if (_$data.containsKey('updatedAt')) {
      final l$updatedAt = updatedAt;
      result$data['updatedAt'] = l$updatedAt?.toIso8601String();
    }
    if (_$data.containsKey('updatedBy')) {
      final l$updatedBy = updatedBy;
      result$data['updatedBy'] = l$updatedBy;
    }
    if (_$data.containsKey('deletedAt')) {
      final l$deletedAt = deletedAt;
      result$data['deletedAt'] = l$deletedAt?.toIso8601String();
    }
    if (_$data.containsKey('deletedBy')) {
      final l$deletedBy = deletedBy;
      result$data['deletedBy'] = l$deletedBy;
    }
    if (_$data.containsKey('groupRuleId')) {
      final l$groupRuleId = groupRuleId;
      result$data['groupRuleId'] = (l$groupRuleId as String);
    }
    if (_$data.containsKey('groupId')) {
      final l$groupId = groupId;
      result$data['groupId'] = (l$groupId as String);
    }
    if (_$data.containsKey('subscribedToEvents')) {
      final l$subscribedToEvents = subscribedToEvents;
      result$data['subscribedToEvents'] =
          (l$subscribedToEvents as List<Enum$GroupRuleEventType>)
              .map((e) => toJson$Enum$GroupRuleEventType(e))
              .toList();
    }
    if (_$data.containsKey('config')) {
      final l$config = config;
      result$data['config'] = l$config?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$AppliedGroupRuleInput<Input$AppliedGroupRuleInput>
      get copyWith => CopyWith$Input$AppliedGroupRuleInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$AppliedGroupRuleInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$adminNotes = adminNotes;
    final lOther$adminNotes = other.adminNotes;
    if (_$data.containsKey('adminNotes') !=
        other._$data.containsKey('adminNotes')) {
      return false;
    }
    if (l$adminNotes != lOther$adminNotes) {
      return false;
    }
    final l$events = events;
    final lOther$events = other.events;
    if (_$data.containsKey('events') != other._$data.containsKey('events')) {
      return false;
    }
    if (l$events != null && lOther$events != null) {
      if (l$events.length != lOther$events.length) {
        return false;
      }
      for (int i = 0; i < l$events.length; i++) {
        final l$events$entry = l$events[i];
        final lOther$events$entry = lOther$events[i];
        if (l$events$entry != lOther$events$entry) {
          return false;
        }
      }
    } else if (l$events != lOther$events) {
      return false;
    }
    final l$metadata = metadata;
    final lOther$metadata = other.metadata;
    if (_$data.containsKey('metadata') !=
        other._$data.containsKey('metadata')) {
      return false;
    }
    if (l$metadata != lOther$metadata) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (_$data.containsKey('createdAt') !=
        other._$data.containsKey('createdAt')) {
      return false;
    }
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$createdBy = createdBy;
    final lOther$createdBy = other.createdBy;
    if (_$data.containsKey('createdBy') !=
        other._$data.containsKey('createdBy')) {
      return false;
    }
    if (l$createdBy != lOther$createdBy) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (_$data.containsKey('updatedAt') !=
        other._$data.containsKey('updatedAt')) {
      return false;
    }
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    final l$updatedBy = updatedBy;
    final lOther$updatedBy = other.updatedBy;
    if (_$data.containsKey('updatedBy') !=
        other._$data.containsKey('updatedBy')) {
      return false;
    }
    if (l$updatedBy != lOther$updatedBy) {
      return false;
    }
    final l$deletedAt = deletedAt;
    final lOther$deletedAt = other.deletedAt;
    if (_$data.containsKey('deletedAt') !=
        other._$data.containsKey('deletedAt')) {
      return false;
    }
    if (l$deletedAt != lOther$deletedAt) {
      return false;
    }
    final l$deletedBy = deletedBy;
    final lOther$deletedBy = other.deletedBy;
    if (_$data.containsKey('deletedBy') !=
        other._$data.containsKey('deletedBy')) {
      return false;
    }
    if (l$deletedBy != lOther$deletedBy) {
      return false;
    }
    final l$groupRuleId = groupRuleId;
    final lOther$groupRuleId = other.groupRuleId;
    if (_$data.containsKey('groupRuleId') !=
        other._$data.containsKey('groupRuleId')) {
      return false;
    }
    if (l$groupRuleId != lOther$groupRuleId) {
      return false;
    }
    final l$groupId = groupId;
    final lOther$groupId = other.groupId;
    if (_$data.containsKey('groupId') != other._$data.containsKey('groupId')) {
      return false;
    }
    if (l$groupId != lOther$groupId) {
      return false;
    }
    final l$subscribedToEvents = subscribedToEvents;
    final lOther$subscribedToEvents = other.subscribedToEvents;
    if (_$data.containsKey('subscribedToEvents') !=
        other._$data.containsKey('subscribedToEvents')) {
      return false;
    }
    if (l$subscribedToEvents != null && lOther$subscribedToEvents != null) {
      if (l$subscribedToEvents.length != lOther$subscribedToEvents.length) {
        return false;
      }
      for (int i = 0; i < l$subscribedToEvents.length; i++) {
        final l$subscribedToEvents$entry = l$subscribedToEvents[i];
        final lOther$subscribedToEvents$entry = lOther$subscribedToEvents[i];
        if (l$subscribedToEvents$entry != lOther$subscribedToEvents$entry) {
          return false;
        }
      }
    } else if (l$subscribedToEvents != lOther$subscribedToEvents) {
      return false;
    }
    final l$config = config;
    final lOther$config = other.config;
    if (_$data.containsKey('config') != other._$data.containsKey('config')) {
      return false;
    }
    if (l$config != lOther$config) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$adminNotes = adminNotes;
    final l$events = events;
    final l$metadata = metadata;
    final l$createdAt = createdAt;
    final l$createdBy = createdBy;
    final l$updatedAt = updatedAt;
    final l$updatedBy = updatedBy;
    final l$deletedAt = deletedAt;
    final l$deletedBy = deletedBy;
    final l$groupRuleId = groupRuleId;
    final l$groupId = groupId;
    final l$subscribedToEvents = subscribedToEvents;
    final l$config = config;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('adminNotes') ? l$adminNotes : const {},
      _$data.containsKey('events')
          ? l$events == null
              ? null
              : Object.hashAll(l$events.map((v) => v))
          : const {},
      _$data.containsKey('metadata') ? l$metadata : const {},
      _$data.containsKey('createdAt') ? l$createdAt : const {},
      _$data.containsKey('createdBy') ? l$createdBy : const {},
      _$data.containsKey('updatedAt') ? l$updatedAt : const {},
      _$data.containsKey('updatedBy') ? l$updatedBy : const {},
      _$data.containsKey('deletedAt') ? l$deletedAt : const {},
      _$data.containsKey('deletedBy') ? l$deletedBy : const {},
      _$data.containsKey('groupRuleId') ? l$groupRuleId : const {},
      _$data.containsKey('groupId') ? l$groupId : const {},
      _$data.containsKey('subscribedToEvents')
          ? l$subscribedToEvents == null
              ? null
              : Object.hashAll(l$subscribedToEvents.map((v) => v))
          : const {},
      _$data.containsKey('config') ? l$config : const {},
    ]);
  }
}

abstract class CopyWith$Input$AppliedGroupRuleInput<TRes> {
  factory CopyWith$Input$AppliedGroupRuleInput(
    Input$AppliedGroupRuleInput instance,
    TRes Function(Input$AppliedGroupRuleInput) then,
  ) = _CopyWithImpl$Input$AppliedGroupRuleInput;

  factory CopyWith$Input$AppliedGroupRuleInput.stub(TRes res) =
      _CopyWithStubImpl$Input$AppliedGroupRuleInput;

  TRes call({
    String? id,
    String? adminNotes,
    List<Input$ModelEventInput>? events,
    Input$BaseModelMetadataInput? metadata,
    DateTime? createdAt,
    String? createdBy,
    DateTime? updatedAt,
    String? updatedBy,
    DateTime? deletedAt,
    String? deletedBy,
    String? groupRuleId,
    String? groupId,
    List<Enum$GroupRuleEventType>? subscribedToEvents,
    Input$GroupRuleBaseConfigInput? config,
  });
  TRes events(
      Iterable<Input$ModelEventInput>? Function(
              Iterable<CopyWith$Input$ModelEventInput<Input$ModelEventInput>>?)
          _fn);
  CopyWith$Input$BaseModelMetadataInput<TRes> get metadata;
  CopyWith$Input$GroupRuleBaseConfigInput<TRes> get config;
}

class _CopyWithImpl$Input$AppliedGroupRuleInput<TRes>
    implements CopyWith$Input$AppliedGroupRuleInput<TRes> {
  _CopyWithImpl$Input$AppliedGroupRuleInput(
    this._instance,
    this._then,
  );

  final Input$AppliedGroupRuleInput _instance;

  final TRes Function(Input$AppliedGroupRuleInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? adminNotes = _undefined,
    Object? events = _undefined,
    Object? metadata = _undefined,
    Object? createdAt = _undefined,
    Object? createdBy = _undefined,
    Object? updatedAt = _undefined,
    Object? updatedBy = _undefined,
    Object? deletedAt = _undefined,
    Object? deletedBy = _undefined,
    Object? groupRuleId = _undefined,
    Object? groupId = _undefined,
    Object? subscribedToEvents = _undefined,
    Object? config = _undefined,
  }) =>
      _then(Input$AppliedGroupRuleInput._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as String?),
        if (adminNotes != _undefined) 'adminNotes': (adminNotes as String?),
        if (events != _undefined)
          'events': (events as List<Input$ModelEventInput>?),
        if (metadata != _undefined)
          'metadata': (metadata as Input$BaseModelMetadataInput?),
        if (createdAt != _undefined) 'createdAt': (createdAt as DateTime?),
        if (createdBy != _undefined) 'createdBy': (createdBy as String?),
        if (updatedAt != _undefined) 'updatedAt': (updatedAt as DateTime?),
        if (updatedBy != _undefined) 'updatedBy': (updatedBy as String?),
        if (deletedAt != _undefined) 'deletedAt': (deletedAt as DateTime?),
        if (deletedBy != _undefined) 'deletedBy': (deletedBy as String?),
        if (groupRuleId != _undefined && groupRuleId != null)
          'groupRuleId': (groupRuleId as String),
        if (groupId != _undefined && groupId != null)
          'groupId': (groupId as String),
        if (subscribedToEvents != _undefined && subscribedToEvents != null)
          'subscribedToEvents':
              (subscribedToEvents as List<Enum$GroupRuleEventType>),
        if (config != _undefined)
          'config': (config as Input$GroupRuleBaseConfigInput?),
      }));
  TRes events(
          Iterable<Input$ModelEventInput>? Function(
                  Iterable<
                      CopyWith$Input$ModelEventInput<Input$ModelEventInput>>?)
              _fn) =>
      call(
          events:
              _fn(_instance.events?.map((e) => CopyWith$Input$ModelEventInput(
                    e,
                    (i) => i,
                  )))?.toList());
  CopyWith$Input$BaseModelMetadataInput<TRes> get metadata {
    final local$metadata = _instance.metadata;
    return local$metadata == null
        ? CopyWith$Input$BaseModelMetadataInput.stub(_then(_instance))
        : CopyWith$Input$BaseModelMetadataInput(
            local$metadata, (e) => call(metadata: e));
  }

  CopyWith$Input$GroupRuleBaseConfigInput<TRes> get config {
    final local$config = _instance.config;
    return local$config == null
        ? CopyWith$Input$GroupRuleBaseConfigInput.stub(_then(_instance))
        : CopyWith$Input$GroupRuleBaseConfigInput(
            local$config, (e) => call(config: e));
  }
}

class _CopyWithStubImpl$Input$AppliedGroupRuleInput<TRes>
    implements CopyWith$Input$AppliedGroupRuleInput<TRes> {
  _CopyWithStubImpl$Input$AppliedGroupRuleInput(this._res);

  TRes _res;

  call({
    String? id,
    String? adminNotes,
    List<Input$ModelEventInput>? events,
    Input$BaseModelMetadataInput? metadata,
    DateTime? createdAt,
    String? createdBy,
    DateTime? updatedAt,
    String? updatedBy,
    DateTime? deletedAt,
    String? deletedBy,
    String? groupRuleId,
    String? groupId,
    List<Enum$GroupRuleEventType>? subscribedToEvents,
    Input$GroupRuleBaseConfigInput? config,
  }) =>
      _res;
  events(_fn) => _res;
  CopyWith$Input$BaseModelMetadataInput<TRes> get metadata =>
      CopyWith$Input$BaseModelMetadataInput.stub(_res);
  CopyWith$Input$GroupRuleBaseConfigInput<TRes> get config =>
      CopyWith$Input$GroupRuleBaseConfigInput.stub(_res);
}

class Input$GroupRuleBaseConfigInput {
  factory Input$GroupRuleBaseConfigInput({String? value}) =>
      Input$GroupRuleBaseConfigInput._({
        if (value != null) r'value': value,
      });

  Input$GroupRuleBaseConfigInput._(this._$data);

  factory Input$GroupRuleBaseConfigInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('value')) {
      final l$value = data['value'];
      result$data['value'] = (l$value as String);
    }
    return Input$GroupRuleBaseConfigInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get value => (_$data['value'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('value')) {
      final l$value = value;
      result$data['value'] = (l$value as String);
    }
    return result$data;
  }

  CopyWith$Input$GroupRuleBaseConfigInput<Input$GroupRuleBaseConfigInput>
      get copyWith => CopyWith$Input$GroupRuleBaseConfigInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$GroupRuleBaseConfigInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (_$data.containsKey('value') != other._$data.containsKey('value')) {
      return false;
    }
    if (l$value != lOther$value) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$value = value;
    return Object.hashAll([_$data.containsKey('value') ? l$value : const {}]);
  }
}

abstract class CopyWith$Input$GroupRuleBaseConfigInput<TRes> {
  factory CopyWith$Input$GroupRuleBaseConfigInput(
    Input$GroupRuleBaseConfigInput instance,
    TRes Function(Input$GroupRuleBaseConfigInput) then,
  ) = _CopyWithImpl$Input$GroupRuleBaseConfigInput;

  factory CopyWith$Input$GroupRuleBaseConfigInput.stub(TRes res) =
      _CopyWithStubImpl$Input$GroupRuleBaseConfigInput;

  TRes call({String? value});
}

class _CopyWithImpl$Input$GroupRuleBaseConfigInput<TRes>
    implements CopyWith$Input$GroupRuleBaseConfigInput<TRes> {
  _CopyWithImpl$Input$GroupRuleBaseConfigInput(
    this._instance,
    this._then,
  );

  final Input$GroupRuleBaseConfigInput _instance;

  final TRes Function(Input$GroupRuleBaseConfigInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? value = _undefined}) =>
      _then(Input$GroupRuleBaseConfigInput._({
        ..._instance._$data,
        if (value != _undefined && value != null) 'value': (value as String),
      }));
}

class _CopyWithStubImpl$Input$GroupRuleBaseConfigInput<TRes>
    implements CopyWith$Input$GroupRuleBaseConfigInput<TRes> {
  _CopyWithStubImpl$Input$GroupRuleBaseConfigInput(this._res);

  TRes _res;

  call({String? value}) => _res;
}

class Input$GroupListFilter {
  factory Input$GroupListFilter({
    List<String>? ids,
    String? searchText,
    bool? caseSensitive,
    List<String>? textSearchFields,
    DateTime? createdAtFrom,
    DateTime? createdAtUntil,
    DateTime? updatedAtFrom,
    DateTime? updatedAtUntil,
    bool? embedded,
    bool? syncedWithMm2,
  }) =>
      Input$GroupListFilter._({
        if (ids != null) r'ids': ids,
        if (searchText != null) r'searchText': searchText,
        if (caseSensitive != null) r'caseSensitive': caseSensitive,
        if (textSearchFields != null) r'textSearchFields': textSearchFields,
        if (createdAtFrom != null) r'createdAtFrom': createdAtFrom,
        if (createdAtUntil != null) r'createdAtUntil': createdAtUntil,
        if (updatedAtFrom != null) r'updatedAtFrom': updatedAtFrom,
        if (updatedAtUntil != null) r'updatedAtUntil': updatedAtUntil,
        if (embedded != null) r'embedded': embedded,
        if (syncedWithMm2 != null) r'syncedWithMm2': syncedWithMm2,
      });

  Input$GroupListFilter._(this._$data);

  factory Input$GroupListFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('ids')) {
      final l$ids = data['ids'];
      result$data['ids'] =
          (l$ids as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    if (data.containsKey('searchText')) {
      final l$searchText = data['searchText'];
      result$data['searchText'] = (l$searchText as String?);
    }
    if (data.containsKey('caseSensitive')) {
      final l$caseSensitive = data['caseSensitive'];
      result$data['caseSensitive'] = (l$caseSensitive as bool?);
    }
    if (data.containsKey('textSearchFields')) {
      final l$textSearchFields = data['textSearchFields'];
      result$data['textSearchFields'] = (l$textSearchFields as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    if (data.containsKey('createdAtFrom')) {
      final l$createdAtFrom = data['createdAtFrom'];
      result$data['createdAtFrom'] = l$createdAtFrom == null
          ? null
          : DateTime.parse((l$createdAtFrom as String));
    }
    if (data.containsKey('createdAtUntil')) {
      final l$createdAtUntil = data['createdAtUntil'];
      result$data['createdAtUntil'] = l$createdAtUntil == null
          ? null
          : DateTime.parse((l$createdAtUntil as String));
    }
    if (data.containsKey('updatedAtFrom')) {
      final l$updatedAtFrom = data['updatedAtFrom'];
      result$data['updatedAtFrom'] = l$updatedAtFrom == null
          ? null
          : DateTime.parse((l$updatedAtFrom as String));
    }
    if (data.containsKey('updatedAtUntil')) {
      final l$updatedAtUntil = data['updatedAtUntil'];
      result$data['updatedAtUntil'] = l$updatedAtUntil == null
          ? null
          : DateTime.parse((l$updatedAtUntil as String));
    }
    if (data.containsKey('embedded')) {
      final l$embedded = data['embedded'];
      result$data['embedded'] = (l$embedded as bool?);
    }
    if (data.containsKey('syncedWithMm2')) {
      final l$syncedWithMm2 = data['syncedWithMm2'];
      result$data['syncedWithMm2'] = (l$syncedWithMm2 as bool?);
    }
    return Input$GroupListFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  List<String>? get ids => (_$data['ids'] as List<String>?);
  String? get searchText => (_$data['searchText'] as String?);
  bool? get caseSensitive => (_$data['caseSensitive'] as bool?);
  List<String>? get textSearchFields =>
      (_$data['textSearchFields'] as List<String>?);
  DateTime? get createdAtFrom => (_$data['createdAtFrom'] as DateTime?);
  DateTime? get createdAtUntil => (_$data['createdAtUntil'] as DateTime?);
  DateTime? get updatedAtFrom => (_$data['updatedAtFrom'] as DateTime?);
  DateTime? get updatedAtUntil => (_$data['updatedAtUntil'] as DateTime?);
  bool? get embedded => (_$data['embedded'] as bool?);
  bool? get syncedWithMm2 => (_$data['syncedWithMm2'] as bool?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('ids')) {
      final l$ids = ids;
      result$data['ids'] = l$ids?.map((e) => e).toList();
    }
    if (_$data.containsKey('searchText')) {
      final l$searchText = searchText;
      result$data['searchText'] = l$searchText;
    }
    if (_$data.containsKey('caseSensitive')) {
      final l$caseSensitive = caseSensitive;
      result$data['caseSensitive'] = l$caseSensitive;
    }
    if (_$data.containsKey('textSearchFields')) {
      final l$textSearchFields = textSearchFields;
      result$data['textSearchFields'] =
          l$textSearchFields?.map((e) => e).toList();
    }
    if (_$data.containsKey('createdAtFrom')) {
      final l$createdAtFrom = createdAtFrom;
      result$data['createdAtFrom'] = l$createdAtFrom?.toIso8601String();
    }
    if (_$data.containsKey('createdAtUntil')) {
      final l$createdAtUntil = createdAtUntil;
      result$data['createdAtUntil'] = l$createdAtUntil?.toIso8601String();
    }
    if (_$data.containsKey('updatedAtFrom')) {
      final l$updatedAtFrom = updatedAtFrom;
      result$data['updatedAtFrom'] = l$updatedAtFrom?.toIso8601String();
    }
    if (_$data.containsKey('updatedAtUntil')) {
      final l$updatedAtUntil = updatedAtUntil;
      result$data['updatedAtUntil'] = l$updatedAtUntil?.toIso8601String();
    }
    if (_$data.containsKey('embedded')) {
      final l$embedded = embedded;
      result$data['embedded'] = l$embedded;
    }
    if (_$data.containsKey('syncedWithMm2')) {
      final l$syncedWithMm2 = syncedWithMm2;
      result$data['syncedWithMm2'] = l$syncedWithMm2;
    }
    return result$data;
  }

  CopyWith$Input$GroupListFilter<Input$GroupListFilter> get copyWith =>
      CopyWith$Input$GroupListFilter(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$GroupListFilter) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$ids = ids;
    final lOther$ids = other.ids;
    if (_$data.containsKey('ids') != other._$data.containsKey('ids')) {
      return false;
    }
    if (l$ids != null && lOther$ids != null) {
      if (l$ids.length != lOther$ids.length) {
        return false;
      }
      for (int i = 0; i < l$ids.length; i++) {
        final l$ids$entry = l$ids[i];
        final lOther$ids$entry = lOther$ids[i];
        if (l$ids$entry != lOther$ids$entry) {
          return false;
        }
      }
    } else if (l$ids != lOther$ids) {
      return false;
    }
    final l$searchText = searchText;
    final lOther$searchText = other.searchText;
    if (_$data.containsKey('searchText') !=
        other._$data.containsKey('searchText')) {
      return false;
    }
    if (l$searchText != lOther$searchText) {
      return false;
    }
    final l$caseSensitive = caseSensitive;
    final lOther$caseSensitive = other.caseSensitive;
    if (_$data.containsKey('caseSensitive') !=
        other._$data.containsKey('caseSensitive')) {
      return false;
    }
    if (l$caseSensitive != lOther$caseSensitive) {
      return false;
    }
    final l$textSearchFields = textSearchFields;
    final lOther$textSearchFields = other.textSearchFields;
    if (_$data.containsKey('textSearchFields') !=
        other._$data.containsKey('textSearchFields')) {
      return false;
    }
    if (l$textSearchFields != null && lOther$textSearchFields != null) {
      if (l$textSearchFields.length != lOther$textSearchFields.length) {
        return false;
      }
      for (int i = 0; i < l$textSearchFields.length; i++) {
        final l$textSearchFields$entry = l$textSearchFields[i];
        final lOther$textSearchFields$entry = lOther$textSearchFields[i];
        if (l$textSearchFields$entry != lOther$textSearchFields$entry) {
          return false;
        }
      }
    } else if (l$textSearchFields != lOther$textSearchFields) {
      return false;
    }
    final l$createdAtFrom = createdAtFrom;
    final lOther$createdAtFrom = other.createdAtFrom;
    if (_$data.containsKey('createdAtFrom') !=
        other._$data.containsKey('createdAtFrom')) {
      return false;
    }
    if (l$createdAtFrom != lOther$createdAtFrom) {
      return false;
    }
    final l$createdAtUntil = createdAtUntil;
    final lOther$createdAtUntil = other.createdAtUntil;
    if (_$data.containsKey('createdAtUntil') !=
        other._$data.containsKey('createdAtUntil')) {
      return false;
    }
    if (l$createdAtUntil != lOther$createdAtUntil) {
      return false;
    }
    final l$updatedAtFrom = updatedAtFrom;
    final lOther$updatedAtFrom = other.updatedAtFrom;
    if (_$data.containsKey('updatedAtFrom') !=
        other._$data.containsKey('updatedAtFrom')) {
      return false;
    }
    if (l$updatedAtFrom != lOther$updatedAtFrom) {
      return false;
    }
    final l$updatedAtUntil = updatedAtUntil;
    final lOther$updatedAtUntil = other.updatedAtUntil;
    if (_$data.containsKey('updatedAtUntil') !=
        other._$data.containsKey('updatedAtUntil')) {
      return false;
    }
    if (l$updatedAtUntil != lOther$updatedAtUntil) {
      return false;
    }
    final l$embedded = embedded;
    final lOther$embedded = other.embedded;
    if (_$data.containsKey('embedded') !=
        other._$data.containsKey('embedded')) {
      return false;
    }
    if (l$embedded != lOther$embedded) {
      return false;
    }
    final l$syncedWithMm2 = syncedWithMm2;
    final lOther$syncedWithMm2 = other.syncedWithMm2;
    if (_$data.containsKey('syncedWithMm2') !=
        other._$data.containsKey('syncedWithMm2')) {
      return false;
    }
    if (l$syncedWithMm2 != lOther$syncedWithMm2) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$ids = ids;
    final l$searchText = searchText;
    final l$caseSensitive = caseSensitive;
    final l$textSearchFields = textSearchFields;
    final l$createdAtFrom = createdAtFrom;
    final l$createdAtUntil = createdAtUntil;
    final l$updatedAtFrom = updatedAtFrom;
    final l$updatedAtUntil = updatedAtUntil;
    final l$embedded = embedded;
    final l$syncedWithMm2 = syncedWithMm2;
    return Object.hashAll([
      _$data.containsKey('ids')
          ? l$ids == null
              ? null
              : Object.hashAll(l$ids.map((v) => v))
          : const {},
      _$data.containsKey('searchText') ? l$searchText : const {},
      _$data.containsKey('caseSensitive') ? l$caseSensitive : const {},
      _$data.containsKey('textSearchFields')
          ? l$textSearchFields == null
              ? null
              : Object.hashAll(l$textSearchFields.map((v) => v))
          : const {},
      _$data.containsKey('createdAtFrom') ? l$createdAtFrom : const {},
      _$data.containsKey('createdAtUntil') ? l$createdAtUntil : const {},
      _$data.containsKey('updatedAtFrom') ? l$updatedAtFrom : const {},
      _$data.containsKey('updatedAtUntil') ? l$updatedAtUntil : const {},
      _$data.containsKey('embedded') ? l$embedded : const {},
      _$data.containsKey('syncedWithMm2') ? l$syncedWithMm2 : const {},
    ]);
  }
}

abstract class CopyWith$Input$GroupListFilter<TRes> {
  factory CopyWith$Input$GroupListFilter(
    Input$GroupListFilter instance,
    TRes Function(Input$GroupListFilter) then,
  ) = _CopyWithImpl$Input$GroupListFilter;

  factory CopyWith$Input$GroupListFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$GroupListFilter;

  TRes call({
    List<String>? ids,
    String? searchText,
    bool? caseSensitive,
    List<String>? textSearchFields,
    DateTime? createdAtFrom,
    DateTime? createdAtUntil,
    DateTime? updatedAtFrom,
    DateTime? updatedAtUntil,
    bool? embedded,
    bool? syncedWithMm2,
  });
}

class _CopyWithImpl$Input$GroupListFilter<TRes>
    implements CopyWith$Input$GroupListFilter<TRes> {
  _CopyWithImpl$Input$GroupListFilter(
    this._instance,
    this._then,
  );

  final Input$GroupListFilter _instance;

  final TRes Function(Input$GroupListFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ids = _undefined,
    Object? searchText = _undefined,
    Object? caseSensitive = _undefined,
    Object? textSearchFields = _undefined,
    Object? createdAtFrom = _undefined,
    Object? createdAtUntil = _undefined,
    Object? updatedAtFrom = _undefined,
    Object? updatedAtUntil = _undefined,
    Object? embedded = _undefined,
    Object? syncedWithMm2 = _undefined,
  }) =>
      _then(Input$GroupListFilter._({
        ..._instance._$data,
        if (ids != _undefined) 'ids': (ids as List<String>?),
        if (searchText != _undefined) 'searchText': (searchText as String?),
        if (caseSensitive != _undefined)
          'caseSensitive': (caseSensitive as bool?),
        if (textSearchFields != _undefined)
          'textSearchFields': (textSearchFields as List<String>?),
        if (createdAtFrom != _undefined)
          'createdAtFrom': (createdAtFrom as DateTime?),
        if (createdAtUntil != _undefined)
          'createdAtUntil': (createdAtUntil as DateTime?),
        if (updatedAtFrom != _undefined)
          'updatedAtFrom': (updatedAtFrom as DateTime?),
        if (updatedAtUntil != _undefined)
          'updatedAtUntil': (updatedAtUntil as DateTime?),
        if (embedded != _undefined) 'embedded': (embedded as bool?),
        if (syncedWithMm2 != _undefined)
          'syncedWithMm2': (syncedWithMm2 as bool?),
      }));
}

class _CopyWithStubImpl$Input$GroupListFilter<TRes>
    implements CopyWith$Input$GroupListFilter<TRes> {
  _CopyWithStubImpl$Input$GroupListFilter(this._res);

  TRes _res;

  call({
    List<String>? ids,
    String? searchText,
    bool? caseSensitive,
    List<String>? textSearchFields,
    DateTime? createdAtFrom,
    DateTime? createdAtUntil,
    DateTime? updatedAtFrom,
    DateTime? updatedAtUntil,
    bool? embedded,
    bool? syncedWithMm2,
  }) =>
      _res;
}

class Input$UserSearchInput {
  factory Input$UserSearchInput({
    String? id,
    String? adminNotes,
    List<Input$ModelEventInput>? events,
    Input$BaseModelMetadataInput? metadata,
    DateTime? createdAt,
    String? createdBy,
    DateTime? updatedAt,
    String? updatedBy,
    DateTime? deletedAt,
    String? deletedBy,
    String? userId,
    String? matchingEngineId,
    String? name,
    Enum$ProfileType? profileType,
    Enum$ProfileType? viewerProfileType,
    String? searchText,
    Enum$UserSearchFieldPreference? seeksHelp,
    Enum$UserSearchFieldPreference? offersHelp,
    int? maxResultCount,
    Enum$UserSearchSubscriptionType? subscription,
    DateTime? expiresAt,
    DateTime? resultExpiresAt,
    bool? startSearch,
  }) =>
      Input$UserSearchInput._({
        if (id != null) r'id': id,
        if (adminNotes != null) r'adminNotes': adminNotes,
        if (events != null) r'events': events,
        if (metadata != null) r'metadata': metadata,
        if (createdAt != null) r'createdAt': createdAt,
        if (createdBy != null) r'createdBy': createdBy,
        if (updatedAt != null) r'updatedAt': updatedAt,
        if (updatedBy != null) r'updatedBy': updatedBy,
        if (deletedAt != null) r'deletedAt': deletedAt,
        if (deletedBy != null) r'deletedBy': deletedBy,
        if (userId != null) r'userId': userId,
        if (matchingEngineId != null) r'matchingEngineId': matchingEngineId,
        if (name != null) r'name': name,
        if (profileType != null) r'profileType': profileType,
        if (viewerProfileType != null) r'viewerProfileType': viewerProfileType,
        if (searchText != null) r'searchText': searchText,
        if (seeksHelp != null) r'seeksHelp': seeksHelp,
        if (offersHelp != null) r'offersHelp': offersHelp,
        if (maxResultCount != null) r'maxResultCount': maxResultCount,
        if (subscription != null) r'subscription': subscription,
        if (expiresAt != null) r'expiresAt': expiresAt,
        if (resultExpiresAt != null) r'resultExpiresAt': resultExpiresAt,
        if (startSearch != null) r'startSearch': startSearch,
      });

  Input$UserSearchInput._(this._$data);

  factory Input$UserSearchInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as String?);
    }
    if (data.containsKey('adminNotes')) {
      final l$adminNotes = data['adminNotes'];
      result$data['adminNotes'] = (l$adminNotes as String?);
    }
    if (data.containsKey('events')) {
      final l$events = data['events'];
      result$data['events'] = (l$events as List<dynamic>?)
          ?.map((e) =>
              Input$ModelEventInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('metadata')) {
      final l$metadata = data['metadata'];
      result$data['metadata'] = l$metadata == null
          ? null
          : Input$BaseModelMetadataInput.fromJson(
              (l$metadata as Map<String, dynamic>));
    }
    if (data.containsKey('createdAt')) {
      final l$createdAt = data['createdAt'];
      result$data['createdAt'] =
          l$createdAt == null ? null : DateTime.parse((l$createdAt as String));
    }
    if (data.containsKey('createdBy')) {
      final l$createdBy = data['createdBy'];
      result$data['createdBy'] = (l$createdBy as String?);
    }
    if (data.containsKey('updatedAt')) {
      final l$updatedAt = data['updatedAt'];
      result$data['updatedAt'] =
          l$updatedAt == null ? null : DateTime.parse((l$updatedAt as String));
    }
    if (data.containsKey('updatedBy')) {
      final l$updatedBy = data['updatedBy'];
      result$data['updatedBy'] = (l$updatedBy as String?);
    }
    if (data.containsKey('deletedAt')) {
      final l$deletedAt = data['deletedAt'];
      result$data['deletedAt'] =
          l$deletedAt == null ? null : DateTime.parse((l$deletedAt as String));
    }
    if (data.containsKey('deletedBy')) {
      final l$deletedBy = data['deletedBy'];
      result$data['deletedBy'] = (l$deletedBy as String?);
    }
    if (data.containsKey('userId')) {
      final l$userId = data['userId'];
      result$data['userId'] = (l$userId as String?);
    }
    if (data.containsKey('matchingEngineId')) {
      final l$matchingEngineId = data['matchingEngineId'];
      result$data['matchingEngineId'] = (l$matchingEngineId as String?);
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('profileType')) {
      final l$profileType = data['profileType'];
      result$data['profileType'] = l$profileType == null
          ? null
          : fromJson$Enum$ProfileType((l$profileType as String));
    }
    if (data.containsKey('viewerProfileType')) {
      final l$viewerProfileType = data['viewerProfileType'];
      result$data['viewerProfileType'] = l$viewerProfileType == null
          ? null
          : fromJson$Enum$ProfileType((l$viewerProfileType as String));
    }
    if (data.containsKey('searchText')) {
      final l$searchText = data['searchText'];
      result$data['searchText'] = (l$searchText as String?);
    }
    if (data.containsKey('seeksHelp')) {
      final l$seeksHelp = data['seeksHelp'];
      result$data['seeksHelp'] = l$seeksHelp == null
          ? null
          : fromJson$Enum$UserSearchFieldPreference((l$seeksHelp as String));
    }
    if (data.containsKey('offersHelp')) {
      final l$offersHelp = data['offersHelp'];
      result$data['offersHelp'] = l$offersHelp == null
          ? null
          : fromJson$Enum$UserSearchFieldPreference((l$offersHelp as String));
    }
    if (data.containsKey('maxResultCount')) {
      final l$maxResultCount = data['maxResultCount'];
      result$data['maxResultCount'] = (l$maxResultCount as int);
    }
    if (data.containsKey('subscription')) {
      final l$subscription = data['subscription'];
      result$data['subscription'] = l$subscription == null
          ? null
          : fromJson$Enum$UserSearchSubscriptionType(
              (l$subscription as String));
    }
    if (data.containsKey('expiresAt')) {
      final l$expiresAt = data['expiresAt'];
      result$data['expiresAt'] =
          l$expiresAt == null ? null : DateTime.parse((l$expiresAt as String));
    }
    if (data.containsKey('resultExpiresAt')) {
      final l$resultExpiresAt = data['resultExpiresAt'];
      result$data['resultExpiresAt'] = l$resultExpiresAt == null
          ? null
          : DateTime.parse((l$resultExpiresAt as String));
    }
    if (data.containsKey('startSearch')) {
      final l$startSearch = data['startSearch'];
      result$data['startSearch'] = (l$startSearch as bool);
    }
    return Input$UserSearchInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get id => (_$data['id'] as String?);
  String? get adminNotes => (_$data['adminNotes'] as String?);
  List<Input$ModelEventInput>? get events =>
      (_$data['events'] as List<Input$ModelEventInput>?);
  Input$BaseModelMetadataInput? get metadata =>
      (_$data['metadata'] as Input$BaseModelMetadataInput?);
  DateTime? get createdAt => (_$data['createdAt'] as DateTime?);
  String? get createdBy => (_$data['createdBy'] as String?);
  DateTime? get updatedAt => (_$data['updatedAt'] as DateTime?);
  String? get updatedBy => (_$data['updatedBy'] as String?);
  DateTime? get deletedAt => (_$data['deletedAt'] as DateTime?);
  String? get deletedBy => (_$data['deletedBy'] as String?);
  String? get userId => (_$data['userId'] as String?);
  String? get matchingEngineId => (_$data['matchingEngineId'] as String?);
  String? get name => (_$data['name'] as String?);
  Enum$ProfileType? get profileType =>
      (_$data['profileType'] as Enum$ProfileType?);
  Enum$ProfileType? get viewerProfileType =>
      (_$data['viewerProfileType'] as Enum$ProfileType?);
  String? get searchText => (_$data['searchText'] as String?);
  Enum$UserSearchFieldPreference? get seeksHelp =>
      (_$data['seeksHelp'] as Enum$UserSearchFieldPreference?);
  Enum$UserSearchFieldPreference? get offersHelp =>
      (_$data['offersHelp'] as Enum$UserSearchFieldPreference?);
  int? get maxResultCount => (_$data['maxResultCount'] as int?);
  Enum$UserSearchSubscriptionType? get subscription =>
      (_$data['subscription'] as Enum$UserSearchSubscriptionType?);
  DateTime? get expiresAt => (_$data['expiresAt'] as DateTime?);
  DateTime? get resultExpiresAt => (_$data['resultExpiresAt'] as DateTime?);
  bool? get startSearch => (_$data['startSearch'] as bool?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('adminNotes')) {
      final l$adminNotes = adminNotes;
      result$data['adminNotes'] = l$adminNotes;
    }
    if (_$data.containsKey('events')) {
      final l$events = events;
      result$data['events'] = l$events?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('metadata')) {
      final l$metadata = metadata;
      result$data['metadata'] = l$metadata?.toJson();
    }
    if (_$data.containsKey('createdAt')) {
      final l$createdAt = createdAt;
      result$data['createdAt'] = l$createdAt?.toIso8601String();
    }
    if (_$data.containsKey('createdBy')) {
      final l$createdBy = createdBy;
      result$data['createdBy'] = l$createdBy;
    }
    if (_$data.containsKey('updatedAt')) {
      final l$updatedAt = updatedAt;
      result$data['updatedAt'] = l$updatedAt?.toIso8601String();
    }
    if (_$data.containsKey('updatedBy')) {
      final l$updatedBy = updatedBy;
      result$data['updatedBy'] = l$updatedBy;
    }
    if (_$data.containsKey('deletedAt')) {
      final l$deletedAt = deletedAt;
      result$data['deletedAt'] = l$deletedAt?.toIso8601String();
    }
    if (_$data.containsKey('deletedBy')) {
      final l$deletedBy = deletedBy;
      result$data['deletedBy'] = l$deletedBy;
    }
    if (_$data.containsKey('userId')) {
      final l$userId = userId;
      result$data['userId'] = l$userId;
    }
    if (_$data.containsKey('matchingEngineId')) {
      final l$matchingEngineId = matchingEngineId;
      result$data['matchingEngineId'] = l$matchingEngineId;
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('profileType')) {
      final l$profileType = profileType;
      result$data['profileType'] =
          l$profileType == null ? null : toJson$Enum$ProfileType(l$profileType);
    }
    if (_$data.containsKey('viewerProfileType')) {
      final l$viewerProfileType = viewerProfileType;
      result$data['viewerProfileType'] = l$viewerProfileType == null
          ? null
          : toJson$Enum$ProfileType(l$viewerProfileType);
    }
    if (_$data.containsKey('searchText')) {
      final l$searchText = searchText;
      result$data['searchText'] = l$searchText;
    }
    if (_$data.containsKey('seeksHelp')) {
      final l$seeksHelp = seeksHelp;
      result$data['seeksHelp'] = l$seeksHelp == null
          ? null
          : toJson$Enum$UserSearchFieldPreference(l$seeksHelp);
    }
    if (_$data.containsKey('offersHelp')) {
      final l$offersHelp = offersHelp;
      result$data['offersHelp'] = l$offersHelp == null
          ? null
          : toJson$Enum$UserSearchFieldPreference(l$offersHelp);
    }
    if (_$data.containsKey('maxResultCount')) {
      final l$maxResultCount = maxResultCount;
      result$data['maxResultCount'] = (l$maxResultCount as int);
    }
    if (_$data.containsKey('subscription')) {
      final l$subscription = subscription;
      result$data['subscription'] = l$subscription == null
          ? null
          : toJson$Enum$UserSearchSubscriptionType(l$subscription);
    }
    if (_$data.containsKey('expiresAt')) {
      final l$expiresAt = expiresAt;
      result$data['expiresAt'] = l$expiresAt?.toIso8601String();
    }
    if (_$data.containsKey('resultExpiresAt')) {
      final l$resultExpiresAt = resultExpiresAt;
      result$data['resultExpiresAt'] = l$resultExpiresAt?.toIso8601String();
    }
    if (_$data.containsKey('startSearch')) {
      final l$startSearch = startSearch;
      result$data['startSearch'] = (l$startSearch as bool);
    }
    return result$data;
  }

  CopyWith$Input$UserSearchInput<Input$UserSearchInput> get copyWith =>
      CopyWith$Input$UserSearchInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$UserSearchInput) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$adminNotes = adminNotes;
    final lOther$adminNotes = other.adminNotes;
    if (_$data.containsKey('adminNotes') !=
        other._$data.containsKey('adminNotes')) {
      return false;
    }
    if (l$adminNotes != lOther$adminNotes) {
      return false;
    }
    final l$events = events;
    final lOther$events = other.events;
    if (_$data.containsKey('events') != other._$data.containsKey('events')) {
      return false;
    }
    if (l$events != null && lOther$events != null) {
      if (l$events.length != lOther$events.length) {
        return false;
      }
      for (int i = 0; i < l$events.length; i++) {
        final l$events$entry = l$events[i];
        final lOther$events$entry = lOther$events[i];
        if (l$events$entry != lOther$events$entry) {
          return false;
        }
      }
    } else if (l$events != lOther$events) {
      return false;
    }
    final l$metadata = metadata;
    final lOther$metadata = other.metadata;
    if (_$data.containsKey('metadata') !=
        other._$data.containsKey('metadata')) {
      return false;
    }
    if (l$metadata != lOther$metadata) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (_$data.containsKey('createdAt') !=
        other._$data.containsKey('createdAt')) {
      return false;
    }
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$createdBy = createdBy;
    final lOther$createdBy = other.createdBy;
    if (_$data.containsKey('createdBy') !=
        other._$data.containsKey('createdBy')) {
      return false;
    }
    if (l$createdBy != lOther$createdBy) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (_$data.containsKey('updatedAt') !=
        other._$data.containsKey('updatedAt')) {
      return false;
    }
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    final l$updatedBy = updatedBy;
    final lOther$updatedBy = other.updatedBy;
    if (_$data.containsKey('updatedBy') !=
        other._$data.containsKey('updatedBy')) {
      return false;
    }
    if (l$updatedBy != lOther$updatedBy) {
      return false;
    }
    final l$deletedAt = deletedAt;
    final lOther$deletedAt = other.deletedAt;
    if (_$data.containsKey('deletedAt') !=
        other._$data.containsKey('deletedAt')) {
      return false;
    }
    if (l$deletedAt != lOther$deletedAt) {
      return false;
    }
    final l$deletedBy = deletedBy;
    final lOther$deletedBy = other.deletedBy;
    if (_$data.containsKey('deletedBy') !=
        other._$data.containsKey('deletedBy')) {
      return false;
    }
    if (l$deletedBy != lOther$deletedBy) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (_$data.containsKey('userId') != other._$data.containsKey('userId')) {
      return false;
    }
    if (l$userId != lOther$userId) {
      return false;
    }
    final l$matchingEngineId = matchingEngineId;
    final lOther$matchingEngineId = other.matchingEngineId;
    if (_$data.containsKey('matchingEngineId') !=
        other._$data.containsKey('matchingEngineId')) {
      return false;
    }
    if (l$matchingEngineId != lOther$matchingEngineId) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$profileType = profileType;
    final lOther$profileType = other.profileType;
    if (_$data.containsKey('profileType') !=
        other._$data.containsKey('profileType')) {
      return false;
    }
    if (l$profileType != lOther$profileType) {
      return false;
    }
    final l$viewerProfileType = viewerProfileType;
    final lOther$viewerProfileType = other.viewerProfileType;
    if (_$data.containsKey('viewerProfileType') !=
        other._$data.containsKey('viewerProfileType')) {
      return false;
    }
    if (l$viewerProfileType != lOther$viewerProfileType) {
      return false;
    }
    final l$searchText = searchText;
    final lOther$searchText = other.searchText;
    if (_$data.containsKey('searchText') !=
        other._$data.containsKey('searchText')) {
      return false;
    }
    if (l$searchText != lOther$searchText) {
      return false;
    }
    final l$seeksHelp = seeksHelp;
    final lOther$seeksHelp = other.seeksHelp;
    if (_$data.containsKey('seeksHelp') !=
        other._$data.containsKey('seeksHelp')) {
      return false;
    }
    if (l$seeksHelp != lOther$seeksHelp) {
      return false;
    }
    final l$offersHelp = offersHelp;
    final lOther$offersHelp = other.offersHelp;
    if (_$data.containsKey('offersHelp') !=
        other._$data.containsKey('offersHelp')) {
      return false;
    }
    if (l$offersHelp != lOther$offersHelp) {
      return false;
    }
    final l$maxResultCount = maxResultCount;
    final lOther$maxResultCount = other.maxResultCount;
    if (_$data.containsKey('maxResultCount') !=
        other._$data.containsKey('maxResultCount')) {
      return false;
    }
    if (l$maxResultCount != lOther$maxResultCount) {
      return false;
    }
    final l$subscription = subscription;
    final lOther$subscription = other.subscription;
    if (_$data.containsKey('subscription') !=
        other._$data.containsKey('subscription')) {
      return false;
    }
    if (l$subscription != lOther$subscription) {
      return false;
    }
    final l$expiresAt = expiresAt;
    final lOther$expiresAt = other.expiresAt;
    if (_$data.containsKey('expiresAt') !=
        other._$data.containsKey('expiresAt')) {
      return false;
    }
    if (l$expiresAt != lOther$expiresAt) {
      return false;
    }
    final l$resultExpiresAt = resultExpiresAt;
    final lOther$resultExpiresAt = other.resultExpiresAt;
    if (_$data.containsKey('resultExpiresAt') !=
        other._$data.containsKey('resultExpiresAt')) {
      return false;
    }
    if (l$resultExpiresAt != lOther$resultExpiresAt) {
      return false;
    }
    final l$startSearch = startSearch;
    final lOther$startSearch = other.startSearch;
    if (_$data.containsKey('startSearch') !=
        other._$data.containsKey('startSearch')) {
      return false;
    }
    if (l$startSearch != lOther$startSearch) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$adminNotes = adminNotes;
    final l$events = events;
    final l$metadata = metadata;
    final l$createdAt = createdAt;
    final l$createdBy = createdBy;
    final l$updatedAt = updatedAt;
    final l$updatedBy = updatedBy;
    final l$deletedAt = deletedAt;
    final l$deletedBy = deletedBy;
    final l$userId = userId;
    final l$matchingEngineId = matchingEngineId;
    final l$name = name;
    final l$profileType = profileType;
    final l$viewerProfileType = viewerProfileType;
    final l$searchText = searchText;
    final l$seeksHelp = seeksHelp;
    final l$offersHelp = offersHelp;
    final l$maxResultCount = maxResultCount;
    final l$subscription = subscription;
    final l$expiresAt = expiresAt;
    final l$resultExpiresAt = resultExpiresAt;
    final l$startSearch = startSearch;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('adminNotes') ? l$adminNotes : const {},
      _$data.containsKey('events')
          ? l$events == null
              ? null
              : Object.hashAll(l$events.map((v) => v))
          : const {},
      _$data.containsKey('metadata') ? l$metadata : const {},
      _$data.containsKey('createdAt') ? l$createdAt : const {},
      _$data.containsKey('createdBy') ? l$createdBy : const {},
      _$data.containsKey('updatedAt') ? l$updatedAt : const {},
      _$data.containsKey('updatedBy') ? l$updatedBy : const {},
      _$data.containsKey('deletedAt') ? l$deletedAt : const {},
      _$data.containsKey('deletedBy') ? l$deletedBy : const {},
      _$data.containsKey('userId') ? l$userId : const {},
      _$data.containsKey('matchingEngineId') ? l$matchingEngineId : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('profileType') ? l$profileType : const {},
      _$data.containsKey('viewerProfileType') ? l$viewerProfileType : const {},
      _$data.containsKey('searchText') ? l$searchText : const {},
      _$data.containsKey('seeksHelp') ? l$seeksHelp : const {},
      _$data.containsKey('offersHelp') ? l$offersHelp : const {},
      _$data.containsKey('maxResultCount') ? l$maxResultCount : const {},
      _$data.containsKey('subscription') ? l$subscription : const {},
      _$data.containsKey('expiresAt') ? l$expiresAt : const {},
      _$data.containsKey('resultExpiresAt') ? l$resultExpiresAt : const {},
      _$data.containsKey('startSearch') ? l$startSearch : const {},
    ]);
  }
}

abstract class CopyWith$Input$UserSearchInput<TRes> {
  factory CopyWith$Input$UserSearchInput(
    Input$UserSearchInput instance,
    TRes Function(Input$UserSearchInput) then,
  ) = _CopyWithImpl$Input$UserSearchInput;

  factory CopyWith$Input$UserSearchInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UserSearchInput;

  TRes call({
    String? id,
    String? adminNotes,
    List<Input$ModelEventInput>? events,
    Input$BaseModelMetadataInput? metadata,
    DateTime? createdAt,
    String? createdBy,
    DateTime? updatedAt,
    String? updatedBy,
    DateTime? deletedAt,
    String? deletedBy,
    String? userId,
    String? matchingEngineId,
    String? name,
    Enum$ProfileType? profileType,
    Enum$ProfileType? viewerProfileType,
    String? searchText,
    Enum$UserSearchFieldPreference? seeksHelp,
    Enum$UserSearchFieldPreference? offersHelp,
    int? maxResultCount,
    Enum$UserSearchSubscriptionType? subscription,
    DateTime? expiresAt,
    DateTime? resultExpiresAt,
    bool? startSearch,
  });
  TRes events(
      Iterable<Input$ModelEventInput>? Function(
              Iterable<CopyWith$Input$ModelEventInput<Input$ModelEventInput>>?)
          _fn);
  CopyWith$Input$BaseModelMetadataInput<TRes> get metadata;
}

class _CopyWithImpl$Input$UserSearchInput<TRes>
    implements CopyWith$Input$UserSearchInput<TRes> {
  _CopyWithImpl$Input$UserSearchInput(
    this._instance,
    this._then,
  );

  final Input$UserSearchInput _instance;

  final TRes Function(Input$UserSearchInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? adminNotes = _undefined,
    Object? events = _undefined,
    Object? metadata = _undefined,
    Object? createdAt = _undefined,
    Object? createdBy = _undefined,
    Object? updatedAt = _undefined,
    Object? updatedBy = _undefined,
    Object? deletedAt = _undefined,
    Object? deletedBy = _undefined,
    Object? userId = _undefined,
    Object? matchingEngineId = _undefined,
    Object? name = _undefined,
    Object? profileType = _undefined,
    Object? viewerProfileType = _undefined,
    Object? searchText = _undefined,
    Object? seeksHelp = _undefined,
    Object? offersHelp = _undefined,
    Object? maxResultCount = _undefined,
    Object? subscription = _undefined,
    Object? expiresAt = _undefined,
    Object? resultExpiresAt = _undefined,
    Object? startSearch = _undefined,
  }) =>
      _then(Input$UserSearchInput._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as String?),
        if (adminNotes != _undefined) 'adminNotes': (adminNotes as String?),
        if (events != _undefined)
          'events': (events as List<Input$ModelEventInput>?),
        if (metadata != _undefined)
          'metadata': (metadata as Input$BaseModelMetadataInput?),
        if (createdAt != _undefined) 'createdAt': (createdAt as DateTime?),
        if (createdBy != _undefined) 'createdBy': (createdBy as String?),
        if (updatedAt != _undefined) 'updatedAt': (updatedAt as DateTime?),
        if (updatedBy != _undefined) 'updatedBy': (updatedBy as String?),
        if (deletedAt != _undefined) 'deletedAt': (deletedAt as DateTime?),
        if (deletedBy != _undefined) 'deletedBy': (deletedBy as String?),
        if (userId != _undefined) 'userId': (userId as String?),
        if (matchingEngineId != _undefined)
          'matchingEngineId': (matchingEngineId as String?),
        if (name != _undefined) 'name': (name as String?),
        if (profileType != _undefined)
          'profileType': (profileType as Enum$ProfileType?),
        if (viewerProfileType != _undefined)
          'viewerProfileType': (viewerProfileType as Enum$ProfileType?),
        if (searchText != _undefined) 'searchText': (searchText as String?),
        if (seeksHelp != _undefined)
          'seeksHelp': (seeksHelp as Enum$UserSearchFieldPreference?),
        if (offersHelp != _undefined)
          'offersHelp': (offersHelp as Enum$UserSearchFieldPreference?),
        if (maxResultCount != _undefined && maxResultCount != null)
          'maxResultCount': (maxResultCount as int),
        if (subscription != _undefined)
          'subscription': (subscription as Enum$UserSearchSubscriptionType?),
        if (expiresAt != _undefined) 'expiresAt': (expiresAt as DateTime?),
        if (resultExpiresAt != _undefined)
          'resultExpiresAt': (resultExpiresAt as DateTime?),
        if (startSearch != _undefined && startSearch != null)
          'startSearch': (startSearch as bool),
      }));
  TRes events(
          Iterable<Input$ModelEventInput>? Function(
                  Iterable<
                      CopyWith$Input$ModelEventInput<Input$ModelEventInput>>?)
              _fn) =>
      call(
          events:
              _fn(_instance.events?.map((e) => CopyWith$Input$ModelEventInput(
                    e,
                    (i) => i,
                  )))?.toList());
  CopyWith$Input$BaseModelMetadataInput<TRes> get metadata {
    final local$metadata = _instance.metadata;
    return local$metadata == null
        ? CopyWith$Input$BaseModelMetadataInput.stub(_then(_instance))
        : CopyWith$Input$BaseModelMetadataInput(
            local$metadata, (e) => call(metadata: e));
  }
}

class _CopyWithStubImpl$Input$UserSearchInput<TRes>
    implements CopyWith$Input$UserSearchInput<TRes> {
  _CopyWithStubImpl$Input$UserSearchInput(this._res);

  TRes _res;

  call({
    String? id,
    String? adminNotes,
    List<Input$ModelEventInput>? events,
    Input$BaseModelMetadataInput? metadata,
    DateTime? createdAt,
    String? createdBy,
    DateTime? updatedAt,
    String? updatedBy,
    DateTime? deletedAt,
    String? deletedBy,
    String? userId,
    String? matchingEngineId,
    String? name,
    Enum$ProfileType? profileType,
    Enum$ProfileType? viewerProfileType,
    String? searchText,
    Enum$UserSearchFieldPreference? seeksHelp,
    Enum$UserSearchFieldPreference? offersHelp,
    int? maxResultCount,
    Enum$UserSearchSubscriptionType? subscription,
    DateTime? expiresAt,
    DateTime? resultExpiresAt,
    bool? startSearch,
  }) =>
      _res;
  events(_fn) => _res;
  CopyWith$Input$BaseModelMetadataInput<TRes> get metadata =>
      CopyWith$Input$BaseModelMetadataInput.stub(_res);
}

class Input$UserSearchListFilter {
  factory Input$UserSearchListFilter({
    List<String>? ids,
    String? searchText,
    bool? caseSensitive,
    List<String>? textSearchFields,
    DateTime? createdAtFrom,
    DateTime? createdAtUntil,
    DateTime? updatedAtFrom,
    DateTime? updatedAtUntil,
  }) =>
      Input$UserSearchListFilter._({
        if (ids != null) r'ids': ids,
        if (searchText != null) r'searchText': searchText,
        if (caseSensitive != null) r'caseSensitive': caseSensitive,
        if (textSearchFields != null) r'textSearchFields': textSearchFields,
        if (createdAtFrom != null) r'createdAtFrom': createdAtFrom,
        if (createdAtUntil != null) r'createdAtUntil': createdAtUntil,
        if (updatedAtFrom != null) r'updatedAtFrom': updatedAtFrom,
        if (updatedAtUntil != null) r'updatedAtUntil': updatedAtUntil,
      });

  Input$UserSearchListFilter._(this._$data);

  factory Input$UserSearchListFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('ids')) {
      final l$ids = data['ids'];
      result$data['ids'] =
          (l$ids as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    if (data.containsKey('searchText')) {
      final l$searchText = data['searchText'];
      result$data['searchText'] = (l$searchText as String?);
    }
    if (data.containsKey('caseSensitive')) {
      final l$caseSensitive = data['caseSensitive'];
      result$data['caseSensitive'] = (l$caseSensitive as bool?);
    }
    if (data.containsKey('textSearchFields')) {
      final l$textSearchFields = data['textSearchFields'];
      result$data['textSearchFields'] = (l$textSearchFields as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    if (data.containsKey('createdAtFrom')) {
      final l$createdAtFrom = data['createdAtFrom'];
      result$data['createdAtFrom'] = l$createdAtFrom == null
          ? null
          : DateTime.parse((l$createdAtFrom as String));
    }
    if (data.containsKey('createdAtUntil')) {
      final l$createdAtUntil = data['createdAtUntil'];
      result$data['createdAtUntil'] = l$createdAtUntil == null
          ? null
          : DateTime.parse((l$createdAtUntil as String));
    }
    if (data.containsKey('updatedAtFrom')) {
      final l$updatedAtFrom = data['updatedAtFrom'];
      result$data['updatedAtFrom'] = l$updatedAtFrom == null
          ? null
          : DateTime.parse((l$updatedAtFrom as String));
    }
    if (data.containsKey('updatedAtUntil')) {
      final l$updatedAtUntil = data['updatedAtUntil'];
      result$data['updatedAtUntil'] = l$updatedAtUntil == null
          ? null
          : DateTime.parse((l$updatedAtUntil as String));
    }
    return Input$UserSearchListFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  List<String>? get ids => (_$data['ids'] as List<String>?);
  String? get searchText => (_$data['searchText'] as String?);
  bool? get caseSensitive => (_$data['caseSensitive'] as bool?);
  List<String>? get textSearchFields =>
      (_$data['textSearchFields'] as List<String>?);
  DateTime? get createdAtFrom => (_$data['createdAtFrom'] as DateTime?);
  DateTime? get createdAtUntil => (_$data['createdAtUntil'] as DateTime?);
  DateTime? get updatedAtFrom => (_$data['updatedAtFrom'] as DateTime?);
  DateTime? get updatedAtUntil => (_$data['updatedAtUntil'] as DateTime?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('ids')) {
      final l$ids = ids;
      result$data['ids'] = l$ids?.map((e) => e).toList();
    }
    if (_$data.containsKey('searchText')) {
      final l$searchText = searchText;
      result$data['searchText'] = l$searchText;
    }
    if (_$data.containsKey('caseSensitive')) {
      final l$caseSensitive = caseSensitive;
      result$data['caseSensitive'] = l$caseSensitive;
    }
    if (_$data.containsKey('textSearchFields')) {
      final l$textSearchFields = textSearchFields;
      result$data['textSearchFields'] =
          l$textSearchFields?.map((e) => e).toList();
    }
    if (_$data.containsKey('createdAtFrom')) {
      final l$createdAtFrom = createdAtFrom;
      result$data['createdAtFrom'] = l$createdAtFrom?.toIso8601String();
    }
    if (_$data.containsKey('createdAtUntil')) {
      final l$createdAtUntil = createdAtUntil;
      result$data['createdAtUntil'] = l$createdAtUntil?.toIso8601String();
    }
    if (_$data.containsKey('updatedAtFrom')) {
      final l$updatedAtFrom = updatedAtFrom;
      result$data['updatedAtFrom'] = l$updatedAtFrom?.toIso8601String();
    }
    if (_$data.containsKey('updatedAtUntil')) {
      final l$updatedAtUntil = updatedAtUntil;
      result$data['updatedAtUntil'] = l$updatedAtUntil?.toIso8601String();
    }
    return result$data;
  }

  CopyWith$Input$UserSearchListFilter<Input$UserSearchListFilter>
      get copyWith => CopyWith$Input$UserSearchListFilter(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$UserSearchListFilter) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$ids = ids;
    final lOther$ids = other.ids;
    if (_$data.containsKey('ids') != other._$data.containsKey('ids')) {
      return false;
    }
    if (l$ids != null && lOther$ids != null) {
      if (l$ids.length != lOther$ids.length) {
        return false;
      }
      for (int i = 0; i < l$ids.length; i++) {
        final l$ids$entry = l$ids[i];
        final lOther$ids$entry = lOther$ids[i];
        if (l$ids$entry != lOther$ids$entry) {
          return false;
        }
      }
    } else if (l$ids != lOther$ids) {
      return false;
    }
    final l$searchText = searchText;
    final lOther$searchText = other.searchText;
    if (_$data.containsKey('searchText') !=
        other._$data.containsKey('searchText')) {
      return false;
    }
    if (l$searchText != lOther$searchText) {
      return false;
    }
    final l$caseSensitive = caseSensitive;
    final lOther$caseSensitive = other.caseSensitive;
    if (_$data.containsKey('caseSensitive') !=
        other._$data.containsKey('caseSensitive')) {
      return false;
    }
    if (l$caseSensitive != lOther$caseSensitive) {
      return false;
    }
    final l$textSearchFields = textSearchFields;
    final lOther$textSearchFields = other.textSearchFields;
    if (_$data.containsKey('textSearchFields') !=
        other._$data.containsKey('textSearchFields')) {
      return false;
    }
    if (l$textSearchFields != null && lOther$textSearchFields != null) {
      if (l$textSearchFields.length != lOther$textSearchFields.length) {
        return false;
      }
      for (int i = 0; i < l$textSearchFields.length; i++) {
        final l$textSearchFields$entry = l$textSearchFields[i];
        final lOther$textSearchFields$entry = lOther$textSearchFields[i];
        if (l$textSearchFields$entry != lOther$textSearchFields$entry) {
          return false;
        }
      }
    } else if (l$textSearchFields != lOther$textSearchFields) {
      return false;
    }
    final l$createdAtFrom = createdAtFrom;
    final lOther$createdAtFrom = other.createdAtFrom;
    if (_$data.containsKey('createdAtFrom') !=
        other._$data.containsKey('createdAtFrom')) {
      return false;
    }
    if (l$createdAtFrom != lOther$createdAtFrom) {
      return false;
    }
    final l$createdAtUntil = createdAtUntil;
    final lOther$createdAtUntil = other.createdAtUntil;
    if (_$data.containsKey('createdAtUntil') !=
        other._$data.containsKey('createdAtUntil')) {
      return false;
    }
    if (l$createdAtUntil != lOther$createdAtUntil) {
      return false;
    }
    final l$updatedAtFrom = updatedAtFrom;
    final lOther$updatedAtFrom = other.updatedAtFrom;
    if (_$data.containsKey('updatedAtFrom') !=
        other._$data.containsKey('updatedAtFrom')) {
      return false;
    }
    if (l$updatedAtFrom != lOther$updatedAtFrom) {
      return false;
    }
    final l$updatedAtUntil = updatedAtUntil;
    final lOther$updatedAtUntil = other.updatedAtUntil;
    if (_$data.containsKey('updatedAtUntil') !=
        other._$data.containsKey('updatedAtUntil')) {
      return false;
    }
    if (l$updatedAtUntil != lOther$updatedAtUntil) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$ids = ids;
    final l$searchText = searchText;
    final l$caseSensitive = caseSensitive;
    final l$textSearchFields = textSearchFields;
    final l$createdAtFrom = createdAtFrom;
    final l$createdAtUntil = createdAtUntil;
    final l$updatedAtFrom = updatedAtFrom;
    final l$updatedAtUntil = updatedAtUntil;
    return Object.hashAll([
      _$data.containsKey('ids')
          ? l$ids == null
              ? null
              : Object.hashAll(l$ids.map((v) => v))
          : const {},
      _$data.containsKey('searchText') ? l$searchText : const {},
      _$data.containsKey('caseSensitive') ? l$caseSensitive : const {},
      _$data.containsKey('textSearchFields')
          ? l$textSearchFields == null
              ? null
              : Object.hashAll(l$textSearchFields.map((v) => v))
          : const {},
      _$data.containsKey('createdAtFrom') ? l$createdAtFrom : const {},
      _$data.containsKey('createdAtUntil') ? l$createdAtUntil : const {},
      _$data.containsKey('updatedAtFrom') ? l$updatedAtFrom : const {},
      _$data.containsKey('updatedAtUntil') ? l$updatedAtUntil : const {},
    ]);
  }
}

abstract class CopyWith$Input$UserSearchListFilter<TRes> {
  factory CopyWith$Input$UserSearchListFilter(
    Input$UserSearchListFilter instance,
    TRes Function(Input$UserSearchListFilter) then,
  ) = _CopyWithImpl$Input$UserSearchListFilter;

  factory CopyWith$Input$UserSearchListFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$UserSearchListFilter;

  TRes call({
    List<String>? ids,
    String? searchText,
    bool? caseSensitive,
    List<String>? textSearchFields,
    DateTime? createdAtFrom,
    DateTime? createdAtUntil,
    DateTime? updatedAtFrom,
    DateTime? updatedAtUntil,
  });
}

class _CopyWithImpl$Input$UserSearchListFilter<TRes>
    implements CopyWith$Input$UserSearchListFilter<TRes> {
  _CopyWithImpl$Input$UserSearchListFilter(
    this._instance,
    this._then,
  );

  final Input$UserSearchListFilter _instance;

  final TRes Function(Input$UserSearchListFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ids = _undefined,
    Object? searchText = _undefined,
    Object? caseSensitive = _undefined,
    Object? textSearchFields = _undefined,
    Object? createdAtFrom = _undefined,
    Object? createdAtUntil = _undefined,
    Object? updatedAtFrom = _undefined,
    Object? updatedAtUntil = _undefined,
  }) =>
      _then(Input$UserSearchListFilter._({
        ..._instance._$data,
        if (ids != _undefined) 'ids': (ids as List<String>?),
        if (searchText != _undefined) 'searchText': (searchText as String?),
        if (caseSensitive != _undefined)
          'caseSensitive': (caseSensitive as bool?),
        if (textSearchFields != _undefined)
          'textSearchFields': (textSearchFields as List<String>?),
        if (createdAtFrom != _undefined)
          'createdAtFrom': (createdAtFrom as DateTime?),
        if (createdAtUntil != _undefined)
          'createdAtUntil': (createdAtUntil as DateTime?),
        if (updatedAtFrom != _undefined)
          'updatedAtFrom': (updatedAtFrom as DateTime?),
        if (updatedAtUntil != _undefined)
          'updatedAtUntil': (updatedAtUntil as DateTime?),
      }));
}

class _CopyWithStubImpl$Input$UserSearchListFilter<TRes>
    implements CopyWith$Input$UserSearchListFilter<TRes> {
  _CopyWithStubImpl$Input$UserSearchListFilter(this._res);

  TRes _res;

  call({
    List<String>? ids,
    String? searchText,
    bool? caseSensitive,
    List<String>? textSearchFields,
    DateTime? createdAtFrom,
    DateTime? createdAtUntil,
    DateTime? updatedAtFrom,
    DateTime? updatedAtUntil,
  }) =>
      _res;
}

class Input$UserSignInInput {
  factory Input$UserSignInInput({
    String? ident,
    Enum$UserIdentType? identType,
    String? deviceUuid,
    String? password,
  }) =>
      Input$UserSignInInput._({
        if (ident != null) r'ident': ident,
        if (identType != null) r'identType': identType,
        if (deviceUuid != null) r'deviceUuid': deviceUuid,
        if (password != null) r'password': password,
      });

  Input$UserSignInInput._(this._$data);

  factory Input$UserSignInInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('ident')) {
      final l$ident = data['ident'];
      result$data['ident'] = (l$ident as String?);
    }
    if (data.containsKey('identType')) {
      final l$identType = data['identType'];
      result$data['identType'] = l$identType == null
          ? null
          : fromJson$Enum$UserIdentType((l$identType as String));
    }
    if (data.containsKey('deviceUuid')) {
      final l$deviceUuid = data['deviceUuid'];
      result$data['deviceUuid'] = (l$deviceUuid as String?);
    }
    if (data.containsKey('password')) {
      final l$password = data['password'];
      result$data['password'] = (l$password as String?);
    }
    return Input$UserSignInInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get ident => (_$data['ident'] as String?);
  Enum$UserIdentType? get identType =>
      (_$data['identType'] as Enum$UserIdentType?);
  String? get deviceUuid => (_$data['deviceUuid'] as String?);
  String? get password => (_$data['password'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('ident')) {
      final l$ident = ident;
      result$data['ident'] = l$ident;
    }
    if (_$data.containsKey('identType')) {
      final l$identType = identType;
      result$data['identType'] =
          l$identType == null ? null : toJson$Enum$UserIdentType(l$identType);
    }
    if (_$data.containsKey('deviceUuid')) {
      final l$deviceUuid = deviceUuid;
      result$data['deviceUuid'] = l$deviceUuid;
    }
    if (_$data.containsKey('password')) {
      final l$password = password;
      result$data['password'] = l$password;
    }
    return result$data;
  }

  CopyWith$Input$UserSignInInput<Input$UserSignInInput> get copyWith =>
      CopyWith$Input$UserSignInInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$UserSignInInput) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$ident = ident;
    final lOther$ident = other.ident;
    if (_$data.containsKey('ident') != other._$data.containsKey('ident')) {
      return false;
    }
    if (l$ident != lOther$ident) {
      return false;
    }
    final l$identType = identType;
    final lOther$identType = other.identType;
    if (_$data.containsKey('identType') !=
        other._$data.containsKey('identType')) {
      return false;
    }
    if (l$identType != lOther$identType) {
      return false;
    }
    final l$deviceUuid = deviceUuid;
    final lOther$deviceUuid = other.deviceUuid;
    if (_$data.containsKey('deviceUuid') !=
        other._$data.containsKey('deviceUuid')) {
      return false;
    }
    if (l$deviceUuid != lOther$deviceUuid) {
      return false;
    }
    final l$password = password;
    final lOther$password = other.password;
    if (_$data.containsKey('password') !=
        other._$data.containsKey('password')) {
      return false;
    }
    if (l$password != lOther$password) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$ident = ident;
    final l$identType = identType;
    final l$deviceUuid = deviceUuid;
    final l$password = password;
    return Object.hashAll([
      _$data.containsKey('ident') ? l$ident : const {},
      _$data.containsKey('identType') ? l$identType : const {},
      _$data.containsKey('deviceUuid') ? l$deviceUuid : const {},
      _$data.containsKey('password') ? l$password : const {},
    ]);
  }
}

abstract class CopyWith$Input$UserSignInInput<TRes> {
  factory CopyWith$Input$UserSignInInput(
    Input$UserSignInInput instance,
    TRes Function(Input$UserSignInInput) then,
  ) = _CopyWithImpl$Input$UserSignInInput;

  factory CopyWith$Input$UserSignInInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UserSignInInput;

  TRes call({
    String? ident,
    Enum$UserIdentType? identType,
    String? deviceUuid,
    String? password,
  });
}

class _CopyWithImpl$Input$UserSignInInput<TRes>
    implements CopyWith$Input$UserSignInInput<TRes> {
  _CopyWithImpl$Input$UserSignInInput(
    this._instance,
    this._then,
  );

  final Input$UserSignInInput _instance;

  final TRes Function(Input$UserSignInInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ident = _undefined,
    Object? identType = _undefined,
    Object? deviceUuid = _undefined,
    Object? password = _undefined,
  }) =>
      _then(Input$UserSignInInput._({
        ..._instance._$data,
        if (ident != _undefined) 'ident': (ident as String?),
        if (identType != _undefined)
          'identType': (identType as Enum$UserIdentType?),
        if (deviceUuid != _undefined) 'deviceUuid': (deviceUuid as String?),
        if (password != _undefined) 'password': (password as String?),
      }));
}

class _CopyWithStubImpl$Input$UserSignInInput<TRes>
    implements CopyWith$Input$UserSignInInput<TRes> {
  _CopyWithStubImpl$Input$UserSignInInput(this._res);

  TRes _res;

  call({
    String? ident,
    Enum$UserIdentType? identType,
    String? deviceUuid,
    String? password,
  }) =>
      _res;
}

class Input$UserSignUpInput {
  factory Input$UserSignUpInput({
    String? id,
    String? adminNotes,
    List<Input$ModelEventInput>? events,
    Input$BaseModelMetadataInput? metadata,
    DateTime? createdAt,
    String? createdBy,
    DateTime? updatedAt,
    String? updatedBy,
    DateTime? deletedAt,
    String? deletedBy,
    String? firstName,
    String? lastName,
    String? fullName,
    String? userHandle,
    String? email,
    String? phoneNumber,
    String? password,
    String? source,
    String? deviceUuid,
    String? timezone,
    String? pushNotificationToken,
    bool? checkAvailable,
    bool? offersHelp,
    bool? seeksHelp,
  }) =>
      Input$UserSignUpInput._({
        if (id != null) r'id': id,
        if (adminNotes != null) r'adminNotes': adminNotes,
        if (events != null) r'events': events,
        if (metadata != null) r'metadata': metadata,
        if (createdAt != null) r'createdAt': createdAt,
        if (createdBy != null) r'createdBy': createdBy,
        if (updatedAt != null) r'updatedAt': updatedAt,
        if (updatedBy != null) r'updatedBy': updatedBy,
        if (deletedAt != null) r'deletedAt': deletedAt,
        if (deletedBy != null) r'deletedBy': deletedBy,
        if (firstName != null) r'firstName': firstName,
        if (lastName != null) r'lastName': lastName,
        if (fullName != null) r'fullName': fullName,
        if (userHandle != null) r'userHandle': userHandle,
        if (email != null) r'email': email,
        if (phoneNumber != null) r'phoneNumber': phoneNumber,
        if (password != null) r'password': password,
        if (source != null) r'source': source,
        if (deviceUuid != null) r'deviceUuid': deviceUuid,
        if (timezone != null) r'timezone': timezone,
        if (pushNotificationToken != null)
          r'pushNotificationToken': pushNotificationToken,
        if (checkAvailable != null) r'checkAvailable': checkAvailable,
        if (offersHelp != null) r'offersHelp': offersHelp,
        if (seeksHelp != null) r'seeksHelp': seeksHelp,
      });

  Input$UserSignUpInput._(this._$data);

  factory Input$UserSignUpInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as String?);
    }
    if (data.containsKey('adminNotes')) {
      final l$adminNotes = data['adminNotes'];
      result$data['adminNotes'] = (l$adminNotes as String?);
    }
    if (data.containsKey('events')) {
      final l$events = data['events'];
      result$data['events'] = (l$events as List<dynamic>?)
          ?.map((e) =>
              Input$ModelEventInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('metadata')) {
      final l$metadata = data['metadata'];
      result$data['metadata'] = l$metadata == null
          ? null
          : Input$BaseModelMetadataInput.fromJson(
              (l$metadata as Map<String, dynamic>));
    }
    if (data.containsKey('createdAt')) {
      final l$createdAt = data['createdAt'];
      result$data['createdAt'] =
          l$createdAt == null ? null : DateTime.parse((l$createdAt as String));
    }
    if (data.containsKey('createdBy')) {
      final l$createdBy = data['createdBy'];
      result$data['createdBy'] = (l$createdBy as String?);
    }
    if (data.containsKey('updatedAt')) {
      final l$updatedAt = data['updatedAt'];
      result$data['updatedAt'] =
          l$updatedAt == null ? null : DateTime.parse((l$updatedAt as String));
    }
    if (data.containsKey('updatedBy')) {
      final l$updatedBy = data['updatedBy'];
      result$data['updatedBy'] = (l$updatedBy as String?);
    }
    if (data.containsKey('deletedAt')) {
      final l$deletedAt = data['deletedAt'];
      result$data['deletedAt'] =
          l$deletedAt == null ? null : DateTime.parse((l$deletedAt as String));
    }
    if (data.containsKey('deletedBy')) {
      final l$deletedBy = data['deletedBy'];
      result$data['deletedBy'] = (l$deletedBy as String?);
    }
    if (data.containsKey('firstName')) {
      final l$firstName = data['firstName'];
      result$data['firstName'] = (l$firstName as String?);
    }
    if (data.containsKey('lastName')) {
      final l$lastName = data['lastName'];
      result$data['lastName'] = (l$lastName as String?);
    }
    if (data.containsKey('fullName')) {
      final l$fullName = data['fullName'];
      result$data['fullName'] = (l$fullName as String?);
    }
    if (data.containsKey('userHandle')) {
      final l$userHandle = data['userHandle'];
      result$data['userHandle'] = (l$userHandle as String?);
    }
    if (data.containsKey('email')) {
      final l$email = data['email'];
      result$data['email'] = (l$email as String?);
    }
    if (data.containsKey('phoneNumber')) {
      final l$phoneNumber = data['phoneNumber'];
      result$data['phoneNumber'] = (l$phoneNumber as String?);
    }
    if (data.containsKey('password')) {
      final l$password = data['password'];
      result$data['password'] = (l$password as String?);
    }
    if (data.containsKey('source')) {
      final l$source = data['source'];
      result$data['source'] = (l$source as String?);
    }
    if (data.containsKey('deviceUuid')) {
      final l$deviceUuid = data['deviceUuid'];
      result$data['deviceUuid'] = (l$deviceUuid as String);
    }
    if (data.containsKey('timezone')) {
      final l$timezone = data['timezone'];
      result$data['timezone'] = (l$timezone as String?);
    }
    if (data.containsKey('pushNotificationToken')) {
      final l$pushNotificationToken = data['pushNotificationToken'];
      result$data['pushNotificationToken'] =
          (l$pushNotificationToken as String?);
    }
    if (data.containsKey('checkAvailable')) {
      final l$checkAvailable = data['checkAvailable'];
      result$data['checkAvailable'] = (l$checkAvailable as bool);
    }
    if (data.containsKey('offersHelp')) {
      final l$offersHelp = data['offersHelp'];
      result$data['offersHelp'] = (l$offersHelp as bool?);
    }
    if (data.containsKey('seeksHelp')) {
      final l$seeksHelp = data['seeksHelp'];
      result$data['seeksHelp'] = (l$seeksHelp as bool?);
    }
    return Input$UserSignUpInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get id => (_$data['id'] as String?);
  String? get adminNotes => (_$data['adminNotes'] as String?);
  List<Input$ModelEventInput>? get events =>
      (_$data['events'] as List<Input$ModelEventInput>?);
  Input$BaseModelMetadataInput? get metadata =>
      (_$data['metadata'] as Input$BaseModelMetadataInput?);
  DateTime? get createdAt => (_$data['createdAt'] as DateTime?);
  String? get createdBy => (_$data['createdBy'] as String?);
  DateTime? get updatedAt => (_$data['updatedAt'] as DateTime?);
  String? get updatedBy => (_$data['updatedBy'] as String?);
  DateTime? get deletedAt => (_$data['deletedAt'] as DateTime?);
  String? get deletedBy => (_$data['deletedBy'] as String?);
  String? get firstName => (_$data['firstName'] as String?);
  String? get lastName => (_$data['lastName'] as String?);
  String? get fullName => (_$data['fullName'] as String?);
  String? get userHandle => (_$data['userHandle'] as String?);
  String? get email => (_$data['email'] as String?);
  String? get phoneNumber => (_$data['phoneNumber'] as String?);
  String? get password => (_$data['password'] as String?);
  String? get source => (_$data['source'] as String?);
  String? get deviceUuid => (_$data['deviceUuid'] as String?);
  String? get timezone => (_$data['timezone'] as String?);
  String? get pushNotificationToken =>
      (_$data['pushNotificationToken'] as String?);
  bool? get checkAvailable => (_$data['checkAvailable'] as bool?);
  bool? get offersHelp => (_$data['offersHelp'] as bool?);
  bool? get seeksHelp => (_$data['seeksHelp'] as bool?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('adminNotes')) {
      final l$adminNotes = adminNotes;
      result$data['adminNotes'] = l$adminNotes;
    }
    if (_$data.containsKey('events')) {
      final l$events = events;
      result$data['events'] = l$events?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('metadata')) {
      final l$metadata = metadata;
      result$data['metadata'] = l$metadata?.toJson();
    }
    if (_$data.containsKey('createdAt')) {
      final l$createdAt = createdAt;
      result$data['createdAt'] = l$createdAt?.toIso8601String();
    }
    if (_$data.containsKey('createdBy')) {
      final l$createdBy = createdBy;
      result$data['createdBy'] = l$createdBy;
    }
    if (_$data.containsKey('updatedAt')) {
      final l$updatedAt = updatedAt;
      result$data['updatedAt'] = l$updatedAt?.toIso8601String();
    }
    if (_$data.containsKey('updatedBy')) {
      final l$updatedBy = updatedBy;
      result$data['updatedBy'] = l$updatedBy;
    }
    if (_$data.containsKey('deletedAt')) {
      final l$deletedAt = deletedAt;
      result$data['deletedAt'] = l$deletedAt?.toIso8601String();
    }
    if (_$data.containsKey('deletedBy')) {
      final l$deletedBy = deletedBy;
      result$data['deletedBy'] = l$deletedBy;
    }
    if (_$data.containsKey('firstName')) {
      final l$firstName = firstName;
      result$data['firstName'] = l$firstName;
    }
    if (_$data.containsKey('lastName')) {
      final l$lastName = lastName;
      result$data['lastName'] = l$lastName;
    }
    if (_$data.containsKey('fullName')) {
      final l$fullName = fullName;
      result$data['fullName'] = l$fullName;
    }
    if (_$data.containsKey('userHandle')) {
      final l$userHandle = userHandle;
      result$data['userHandle'] = l$userHandle;
    }
    if (_$data.containsKey('email')) {
      final l$email = email;
      result$data['email'] = l$email;
    }
    if (_$data.containsKey('phoneNumber')) {
      final l$phoneNumber = phoneNumber;
      result$data['phoneNumber'] = l$phoneNumber;
    }
    if (_$data.containsKey('password')) {
      final l$password = password;
      result$data['password'] = l$password;
    }
    if (_$data.containsKey('source')) {
      final l$source = source;
      result$data['source'] = l$source;
    }
    if (_$data.containsKey('deviceUuid')) {
      final l$deviceUuid = deviceUuid;
      result$data['deviceUuid'] = (l$deviceUuid as String);
    }
    if (_$data.containsKey('timezone')) {
      final l$timezone = timezone;
      result$data['timezone'] = l$timezone;
    }
    if (_$data.containsKey('pushNotificationToken')) {
      final l$pushNotificationToken = pushNotificationToken;
      result$data['pushNotificationToken'] = l$pushNotificationToken;
    }
    if (_$data.containsKey('checkAvailable')) {
      final l$checkAvailable = checkAvailable;
      result$data['checkAvailable'] = (l$checkAvailable as bool);
    }
    if (_$data.containsKey('offersHelp')) {
      final l$offersHelp = offersHelp;
      result$data['offersHelp'] = l$offersHelp;
    }
    if (_$data.containsKey('seeksHelp')) {
      final l$seeksHelp = seeksHelp;
      result$data['seeksHelp'] = l$seeksHelp;
    }
    return result$data;
  }

  CopyWith$Input$UserSignUpInput<Input$UserSignUpInput> get copyWith =>
      CopyWith$Input$UserSignUpInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$UserSignUpInput) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$adminNotes = adminNotes;
    final lOther$adminNotes = other.adminNotes;
    if (_$data.containsKey('adminNotes') !=
        other._$data.containsKey('adminNotes')) {
      return false;
    }
    if (l$adminNotes != lOther$adminNotes) {
      return false;
    }
    final l$events = events;
    final lOther$events = other.events;
    if (_$data.containsKey('events') != other._$data.containsKey('events')) {
      return false;
    }
    if (l$events != null && lOther$events != null) {
      if (l$events.length != lOther$events.length) {
        return false;
      }
      for (int i = 0; i < l$events.length; i++) {
        final l$events$entry = l$events[i];
        final lOther$events$entry = lOther$events[i];
        if (l$events$entry != lOther$events$entry) {
          return false;
        }
      }
    } else if (l$events != lOther$events) {
      return false;
    }
    final l$metadata = metadata;
    final lOther$metadata = other.metadata;
    if (_$data.containsKey('metadata') !=
        other._$data.containsKey('metadata')) {
      return false;
    }
    if (l$metadata != lOther$metadata) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (_$data.containsKey('createdAt') !=
        other._$data.containsKey('createdAt')) {
      return false;
    }
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$createdBy = createdBy;
    final lOther$createdBy = other.createdBy;
    if (_$data.containsKey('createdBy') !=
        other._$data.containsKey('createdBy')) {
      return false;
    }
    if (l$createdBy != lOther$createdBy) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (_$data.containsKey('updatedAt') !=
        other._$data.containsKey('updatedAt')) {
      return false;
    }
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    final l$updatedBy = updatedBy;
    final lOther$updatedBy = other.updatedBy;
    if (_$data.containsKey('updatedBy') !=
        other._$data.containsKey('updatedBy')) {
      return false;
    }
    if (l$updatedBy != lOther$updatedBy) {
      return false;
    }
    final l$deletedAt = deletedAt;
    final lOther$deletedAt = other.deletedAt;
    if (_$data.containsKey('deletedAt') !=
        other._$data.containsKey('deletedAt')) {
      return false;
    }
    if (l$deletedAt != lOther$deletedAt) {
      return false;
    }
    final l$deletedBy = deletedBy;
    final lOther$deletedBy = other.deletedBy;
    if (_$data.containsKey('deletedBy') !=
        other._$data.containsKey('deletedBy')) {
      return false;
    }
    if (l$deletedBy != lOther$deletedBy) {
      return false;
    }
    final l$firstName = firstName;
    final lOther$firstName = other.firstName;
    if (_$data.containsKey('firstName') !=
        other._$data.containsKey('firstName')) {
      return false;
    }
    if (l$firstName != lOther$firstName) {
      return false;
    }
    final l$lastName = lastName;
    final lOther$lastName = other.lastName;
    if (_$data.containsKey('lastName') !=
        other._$data.containsKey('lastName')) {
      return false;
    }
    if (l$lastName != lOther$lastName) {
      return false;
    }
    final l$fullName = fullName;
    final lOther$fullName = other.fullName;
    if (_$data.containsKey('fullName') !=
        other._$data.containsKey('fullName')) {
      return false;
    }
    if (l$fullName != lOther$fullName) {
      return false;
    }
    final l$userHandle = userHandle;
    final lOther$userHandle = other.userHandle;
    if (_$data.containsKey('userHandle') !=
        other._$data.containsKey('userHandle')) {
      return false;
    }
    if (l$userHandle != lOther$userHandle) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (_$data.containsKey('email') != other._$data.containsKey('email')) {
      return false;
    }
    if (l$email != lOther$email) {
      return false;
    }
    final l$phoneNumber = phoneNumber;
    final lOther$phoneNumber = other.phoneNumber;
    if (_$data.containsKey('phoneNumber') !=
        other._$data.containsKey('phoneNumber')) {
      return false;
    }
    if (l$phoneNumber != lOther$phoneNumber) {
      return false;
    }
    final l$password = password;
    final lOther$password = other.password;
    if (_$data.containsKey('password') !=
        other._$data.containsKey('password')) {
      return false;
    }
    if (l$password != lOther$password) {
      return false;
    }
    final l$source = source;
    final lOther$source = other.source;
    if (_$data.containsKey('source') != other._$data.containsKey('source')) {
      return false;
    }
    if (l$source != lOther$source) {
      return false;
    }
    final l$deviceUuid = deviceUuid;
    final lOther$deviceUuid = other.deviceUuid;
    if (_$data.containsKey('deviceUuid') !=
        other._$data.containsKey('deviceUuid')) {
      return false;
    }
    if (l$deviceUuid != lOther$deviceUuid) {
      return false;
    }
    final l$timezone = timezone;
    final lOther$timezone = other.timezone;
    if (_$data.containsKey('timezone') !=
        other._$data.containsKey('timezone')) {
      return false;
    }
    if (l$timezone != lOther$timezone) {
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
    final l$checkAvailable = checkAvailable;
    final lOther$checkAvailable = other.checkAvailable;
    if (_$data.containsKey('checkAvailable') !=
        other._$data.containsKey('checkAvailable')) {
      return false;
    }
    if (l$checkAvailable != lOther$checkAvailable) {
      return false;
    }
    final l$offersHelp = offersHelp;
    final lOther$offersHelp = other.offersHelp;
    if (_$data.containsKey('offersHelp') !=
        other._$data.containsKey('offersHelp')) {
      return false;
    }
    if (l$offersHelp != lOther$offersHelp) {
      return false;
    }
    final l$seeksHelp = seeksHelp;
    final lOther$seeksHelp = other.seeksHelp;
    if (_$data.containsKey('seeksHelp') !=
        other._$data.containsKey('seeksHelp')) {
      return false;
    }
    if (l$seeksHelp != lOther$seeksHelp) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$adminNotes = adminNotes;
    final l$events = events;
    final l$metadata = metadata;
    final l$createdAt = createdAt;
    final l$createdBy = createdBy;
    final l$updatedAt = updatedAt;
    final l$updatedBy = updatedBy;
    final l$deletedAt = deletedAt;
    final l$deletedBy = deletedBy;
    final l$firstName = firstName;
    final l$lastName = lastName;
    final l$fullName = fullName;
    final l$userHandle = userHandle;
    final l$email = email;
    final l$phoneNumber = phoneNumber;
    final l$password = password;
    final l$source = source;
    final l$deviceUuid = deviceUuid;
    final l$timezone = timezone;
    final l$pushNotificationToken = pushNotificationToken;
    final l$checkAvailable = checkAvailable;
    final l$offersHelp = offersHelp;
    final l$seeksHelp = seeksHelp;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('adminNotes') ? l$adminNotes : const {},
      _$data.containsKey('events')
          ? l$events == null
              ? null
              : Object.hashAll(l$events.map((v) => v))
          : const {},
      _$data.containsKey('metadata') ? l$metadata : const {},
      _$data.containsKey('createdAt') ? l$createdAt : const {},
      _$data.containsKey('createdBy') ? l$createdBy : const {},
      _$data.containsKey('updatedAt') ? l$updatedAt : const {},
      _$data.containsKey('updatedBy') ? l$updatedBy : const {},
      _$data.containsKey('deletedAt') ? l$deletedAt : const {},
      _$data.containsKey('deletedBy') ? l$deletedBy : const {},
      _$data.containsKey('firstName') ? l$firstName : const {},
      _$data.containsKey('lastName') ? l$lastName : const {},
      _$data.containsKey('fullName') ? l$fullName : const {},
      _$data.containsKey('userHandle') ? l$userHandle : const {},
      _$data.containsKey('email') ? l$email : const {},
      _$data.containsKey('phoneNumber') ? l$phoneNumber : const {},
      _$data.containsKey('password') ? l$password : const {},
      _$data.containsKey('source') ? l$source : const {},
      _$data.containsKey('deviceUuid') ? l$deviceUuid : const {},
      _$data.containsKey('timezone') ? l$timezone : const {},
      _$data.containsKey('pushNotificationToken')
          ? l$pushNotificationToken
          : const {},
      _$data.containsKey('checkAvailable') ? l$checkAvailable : const {},
      _$data.containsKey('offersHelp') ? l$offersHelp : const {},
      _$data.containsKey('seeksHelp') ? l$seeksHelp : const {},
    ]);
  }
}

abstract class CopyWith$Input$UserSignUpInput<TRes> {
  factory CopyWith$Input$UserSignUpInput(
    Input$UserSignUpInput instance,
    TRes Function(Input$UserSignUpInput) then,
  ) = _CopyWithImpl$Input$UserSignUpInput;

  factory CopyWith$Input$UserSignUpInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UserSignUpInput;

  TRes call({
    String? id,
    String? adminNotes,
    List<Input$ModelEventInput>? events,
    Input$BaseModelMetadataInput? metadata,
    DateTime? createdAt,
    String? createdBy,
    DateTime? updatedAt,
    String? updatedBy,
    DateTime? deletedAt,
    String? deletedBy,
    String? firstName,
    String? lastName,
    String? fullName,
    String? userHandle,
    String? email,
    String? phoneNumber,
    String? password,
    String? source,
    String? deviceUuid,
    String? timezone,
    String? pushNotificationToken,
    bool? checkAvailable,
    bool? offersHelp,
    bool? seeksHelp,
  });
  TRes events(
      Iterable<Input$ModelEventInput>? Function(
              Iterable<CopyWith$Input$ModelEventInput<Input$ModelEventInput>>?)
          _fn);
  CopyWith$Input$BaseModelMetadataInput<TRes> get metadata;
}

class _CopyWithImpl$Input$UserSignUpInput<TRes>
    implements CopyWith$Input$UserSignUpInput<TRes> {
  _CopyWithImpl$Input$UserSignUpInput(
    this._instance,
    this._then,
  );

  final Input$UserSignUpInput _instance;

  final TRes Function(Input$UserSignUpInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? adminNotes = _undefined,
    Object? events = _undefined,
    Object? metadata = _undefined,
    Object? createdAt = _undefined,
    Object? createdBy = _undefined,
    Object? updatedAt = _undefined,
    Object? updatedBy = _undefined,
    Object? deletedAt = _undefined,
    Object? deletedBy = _undefined,
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? fullName = _undefined,
    Object? userHandle = _undefined,
    Object? email = _undefined,
    Object? phoneNumber = _undefined,
    Object? password = _undefined,
    Object? source = _undefined,
    Object? deviceUuid = _undefined,
    Object? timezone = _undefined,
    Object? pushNotificationToken = _undefined,
    Object? checkAvailable = _undefined,
    Object? offersHelp = _undefined,
    Object? seeksHelp = _undefined,
  }) =>
      _then(Input$UserSignUpInput._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as String?),
        if (adminNotes != _undefined) 'adminNotes': (adminNotes as String?),
        if (events != _undefined)
          'events': (events as List<Input$ModelEventInput>?),
        if (metadata != _undefined)
          'metadata': (metadata as Input$BaseModelMetadataInput?),
        if (createdAt != _undefined) 'createdAt': (createdAt as DateTime?),
        if (createdBy != _undefined) 'createdBy': (createdBy as String?),
        if (updatedAt != _undefined) 'updatedAt': (updatedAt as DateTime?),
        if (updatedBy != _undefined) 'updatedBy': (updatedBy as String?),
        if (deletedAt != _undefined) 'deletedAt': (deletedAt as DateTime?),
        if (deletedBy != _undefined) 'deletedBy': (deletedBy as String?),
        if (firstName != _undefined) 'firstName': (firstName as String?),
        if (lastName != _undefined) 'lastName': (lastName as String?),
        if (fullName != _undefined) 'fullName': (fullName as String?),
        if (userHandle != _undefined) 'userHandle': (userHandle as String?),
        if (email != _undefined) 'email': (email as String?),
        if (phoneNumber != _undefined) 'phoneNumber': (phoneNumber as String?),
        if (password != _undefined) 'password': (password as String?),
        if (source != _undefined) 'source': (source as String?),
        if (deviceUuid != _undefined && deviceUuid != null)
          'deviceUuid': (deviceUuid as String),
        if (timezone != _undefined) 'timezone': (timezone as String?),
        if (pushNotificationToken != _undefined)
          'pushNotificationToken': (pushNotificationToken as String?),
        if (checkAvailable != _undefined && checkAvailable != null)
          'checkAvailable': (checkAvailable as bool),
        if (offersHelp != _undefined) 'offersHelp': (offersHelp as bool?),
        if (seeksHelp != _undefined) 'seeksHelp': (seeksHelp as bool?),
      }));
  TRes events(
          Iterable<Input$ModelEventInput>? Function(
                  Iterable<
                      CopyWith$Input$ModelEventInput<Input$ModelEventInput>>?)
              _fn) =>
      call(
          events:
              _fn(_instance.events?.map((e) => CopyWith$Input$ModelEventInput(
                    e,
                    (i) => i,
                  )))?.toList());
  CopyWith$Input$BaseModelMetadataInput<TRes> get metadata {
    final local$metadata = _instance.metadata;
    return local$metadata == null
        ? CopyWith$Input$BaseModelMetadataInput.stub(_then(_instance))
        : CopyWith$Input$BaseModelMetadataInput(
            local$metadata, (e) => call(metadata: e));
  }
}

class _CopyWithStubImpl$Input$UserSignUpInput<TRes>
    implements CopyWith$Input$UserSignUpInput<TRes> {
  _CopyWithStubImpl$Input$UserSignUpInput(this._res);

  TRes _res;

  call({
    String? id,
    String? adminNotes,
    List<Input$ModelEventInput>? events,
    Input$BaseModelMetadataInput? metadata,
    DateTime? createdAt,
    String? createdBy,
    DateTime? updatedAt,
    String? updatedBy,
    DateTime? deletedAt,
    String? deletedBy,
    String? firstName,
    String? lastName,
    String? fullName,
    String? userHandle,
    String? email,
    String? phoneNumber,
    String? password,
    String? source,
    String? deviceUuid,
    String? timezone,
    String? pushNotificationToken,
    bool? checkAvailable,
    bool? offersHelp,
    bool? seeksHelp,
  }) =>
      _res;
  events(_fn) => _res;
  CopyWith$Input$BaseModelMetadataInput<TRes> get metadata =>
      CopyWith$Input$BaseModelMetadataInput.stub(_res);
}

class Input$ChannelInvitationInput {
  factory Input$ChannelInvitationInput({
    String? id,
    String? adminNotes,
    List<Input$ModelEventInput>? events,
    Input$BaseModelMetadataInput? metadata,
    DateTime? createdAt,
    String? createdBy,
    DateTime? updatedAt,
    String? updatedBy,
    DateTime? deletedAt,
    String? deletedBy,
    String? channelId,
    String? senderId,
    String? recipientId,
    String? channelName,
    String? channelTopic,
    String? messageText,
    DateTime? dismissedFromInboxBySenderAt,
    DateTime? dismissedFromInboxByRecipientAt,
    Enum$ChannelInvitationStatus? status,
  }) =>
      Input$ChannelInvitationInput._({
        if (id != null) r'id': id,
        if (adminNotes != null) r'adminNotes': adminNotes,
        if (events != null) r'events': events,
        if (metadata != null) r'metadata': metadata,
        if (createdAt != null) r'createdAt': createdAt,
        if (createdBy != null) r'createdBy': createdBy,
        if (updatedAt != null) r'updatedAt': updatedAt,
        if (updatedBy != null) r'updatedBy': updatedBy,
        if (deletedAt != null) r'deletedAt': deletedAt,
        if (deletedBy != null) r'deletedBy': deletedBy,
        if (channelId != null) r'channelId': channelId,
        if (senderId != null) r'senderId': senderId,
        if (recipientId != null) r'recipientId': recipientId,
        if (channelName != null) r'channelName': channelName,
        if (channelTopic != null) r'channelTopic': channelTopic,
        if (messageText != null) r'messageText': messageText,
        if (dismissedFromInboxBySenderAt != null)
          r'dismissedFromInboxBySenderAt': dismissedFromInboxBySenderAt,
        if (dismissedFromInboxByRecipientAt != null)
          r'dismissedFromInboxByRecipientAt': dismissedFromInboxByRecipientAt,
        if (status != null) r'status': status,
      });

  Input$ChannelInvitationInput._(this._$data);

  factory Input$ChannelInvitationInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as String?);
    }
    if (data.containsKey('adminNotes')) {
      final l$adminNotes = data['adminNotes'];
      result$data['adminNotes'] = (l$adminNotes as String?);
    }
    if (data.containsKey('events')) {
      final l$events = data['events'];
      result$data['events'] = (l$events as List<dynamic>?)
          ?.map((e) =>
              Input$ModelEventInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('metadata')) {
      final l$metadata = data['metadata'];
      result$data['metadata'] = l$metadata == null
          ? null
          : Input$BaseModelMetadataInput.fromJson(
              (l$metadata as Map<String, dynamic>));
    }
    if (data.containsKey('createdAt')) {
      final l$createdAt = data['createdAt'];
      result$data['createdAt'] =
          l$createdAt == null ? null : DateTime.parse((l$createdAt as String));
    }
    if (data.containsKey('createdBy')) {
      final l$createdBy = data['createdBy'];
      result$data['createdBy'] = (l$createdBy as String?);
    }
    if (data.containsKey('updatedAt')) {
      final l$updatedAt = data['updatedAt'];
      result$data['updatedAt'] =
          l$updatedAt == null ? null : DateTime.parse((l$updatedAt as String));
    }
    if (data.containsKey('updatedBy')) {
      final l$updatedBy = data['updatedBy'];
      result$data['updatedBy'] = (l$updatedBy as String?);
    }
    if (data.containsKey('deletedAt')) {
      final l$deletedAt = data['deletedAt'];
      result$data['deletedAt'] =
          l$deletedAt == null ? null : DateTime.parse((l$deletedAt as String));
    }
    if (data.containsKey('deletedBy')) {
      final l$deletedBy = data['deletedBy'];
      result$data['deletedBy'] = (l$deletedBy as String?);
    }
    if (data.containsKey('channelId')) {
      final l$channelId = data['channelId'];
      result$data['channelId'] = (l$channelId as String?);
    }
    if (data.containsKey('senderId')) {
      final l$senderId = data['senderId'];
      result$data['senderId'] = (l$senderId as String?);
    }
    if (data.containsKey('recipientId')) {
      final l$recipientId = data['recipientId'];
      result$data['recipientId'] = (l$recipientId as String?);
    }
    if (data.containsKey('channelName')) {
      final l$channelName = data['channelName'];
      result$data['channelName'] = (l$channelName as String?);
    }
    if (data.containsKey('channelTopic')) {
      final l$channelTopic = data['channelTopic'];
      result$data['channelTopic'] = (l$channelTopic as String?);
    }
    if (data.containsKey('messageText')) {
      final l$messageText = data['messageText'];
      result$data['messageText'] = (l$messageText as String?);
    }
    if (data.containsKey('dismissedFromInboxBySenderAt')) {
      final l$dismissedFromInboxBySenderAt =
          data['dismissedFromInboxBySenderAt'];
      result$data['dismissedFromInboxBySenderAt'] =
          l$dismissedFromInboxBySenderAt == null
              ? null
              : DateTime.parse((l$dismissedFromInboxBySenderAt as String));
    }
    if (data.containsKey('dismissedFromInboxByRecipientAt')) {
      final l$dismissedFromInboxByRecipientAt =
          data['dismissedFromInboxByRecipientAt'];
      result$data['dismissedFromInboxByRecipientAt'] =
          l$dismissedFromInboxByRecipientAt == null
              ? null
              : DateTime.parse((l$dismissedFromInboxByRecipientAt as String));
    }
    if (data.containsKey('status')) {
      final l$status = data['status'];
      result$data['status'] = l$status == null
          ? null
          : fromJson$Enum$ChannelInvitationStatus((l$status as String));
    }
    return Input$ChannelInvitationInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get id => (_$data['id'] as String?);
  String? get adminNotes => (_$data['adminNotes'] as String?);
  List<Input$ModelEventInput>? get events =>
      (_$data['events'] as List<Input$ModelEventInput>?);
  Input$BaseModelMetadataInput? get metadata =>
      (_$data['metadata'] as Input$BaseModelMetadataInput?);
  DateTime? get createdAt => (_$data['createdAt'] as DateTime?);
  String? get createdBy => (_$data['createdBy'] as String?);
  DateTime? get updatedAt => (_$data['updatedAt'] as DateTime?);
  String? get updatedBy => (_$data['updatedBy'] as String?);
  DateTime? get deletedAt => (_$data['deletedAt'] as DateTime?);
  String? get deletedBy => (_$data['deletedBy'] as String?);
  String? get channelId => (_$data['channelId'] as String?);
  String? get senderId => (_$data['senderId'] as String?);
  String? get recipientId => (_$data['recipientId'] as String?);
  String? get channelName => (_$data['channelName'] as String?);
  String? get channelTopic => (_$data['channelTopic'] as String?);
  String? get messageText => (_$data['messageText'] as String?);
  DateTime? get dismissedFromInboxBySenderAt =>
      (_$data['dismissedFromInboxBySenderAt'] as DateTime?);
  DateTime? get dismissedFromInboxByRecipientAt =>
      (_$data['dismissedFromInboxByRecipientAt'] as DateTime?);
  Enum$ChannelInvitationStatus? get status =>
      (_$data['status'] as Enum$ChannelInvitationStatus?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('adminNotes')) {
      final l$adminNotes = adminNotes;
      result$data['adminNotes'] = l$adminNotes;
    }
    if (_$data.containsKey('events')) {
      final l$events = events;
      result$data['events'] = l$events?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('metadata')) {
      final l$metadata = metadata;
      result$data['metadata'] = l$metadata?.toJson();
    }
    if (_$data.containsKey('createdAt')) {
      final l$createdAt = createdAt;
      result$data['createdAt'] = l$createdAt?.toIso8601String();
    }
    if (_$data.containsKey('createdBy')) {
      final l$createdBy = createdBy;
      result$data['createdBy'] = l$createdBy;
    }
    if (_$data.containsKey('updatedAt')) {
      final l$updatedAt = updatedAt;
      result$data['updatedAt'] = l$updatedAt?.toIso8601String();
    }
    if (_$data.containsKey('updatedBy')) {
      final l$updatedBy = updatedBy;
      result$data['updatedBy'] = l$updatedBy;
    }
    if (_$data.containsKey('deletedAt')) {
      final l$deletedAt = deletedAt;
      result$data['deletedAt'] = l$deletedAt?.toIso8601String();
    }
    if (_$data.containsKey('deletedBy')) {
      final l$deletedBy = deletedBy;
      result$data['deletedBy'] = l$deletedBy;
    }
    if (_$data.containsKey('channelId')) {
      final l$channelId = channelId;
      result$data['channelId'] = l$channelId;
    }
    if (_$data.containsKey('senderId')) {
      final l$senderId = senderId;
      result$data['senderId'] = l$senderId;
    }
    if (_$data.containsKey('recipientId')) {
      final l$recipientId = recipientId;
      result$data['recipientId'] = l$recipientId;
    }
    if (_$data.containsKey('channelName')) {
      final l$channelName = channelName;
      result$data['channelName'] = l$channelName;
    }
    if (_$data.containsKey('channelTopic')) {
      final l$channelTopic = channelTopic;
      result$data['channelTopic'] = l$channelTopic;
    }
    if (_$data.containsKey('messageText')) {
      final l$messageText = messageText;
      result$data['messageText'] = l$messageText;
    }
    if (_$data.containsKey('dismissedFromInboxBySenderAt')) {
      final l$dismissedFromInboxBySenderAt = dismissedFromInboxBySenderAt;
      result$data['dismissedFromInboxBySenderAt'] =
          l$dismissedFromInboxBySenderAt?.toIso8601String();
    }
    if (_$data.containsKey('dismissedFromInboxByRecipientAt')) {
      final l$dismissedFromInboxByRecipientAt = dismissedFromInboxByRecipientAt;
      result$data['dismissedFromInboxByRecipientAt'] =
          l$dismissedFromInboxByRecipientAt?.toIso8601String();
    }
    if (_$data.containsKey('status')) {
      final l$status = status;
      result$data['status'] = l$status == null
          ? null
          : toJson$Enum$ChannelInvitationStatus(l$status);
    }
    return result$data;
  }

  CopyWith$Input$ChannelInvitationInput<Input$ChannelInvitationInput>
      get copyWith => CopyWith$Input$ChannelInvitationInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ChannelInvitationInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$adminNotes = adminNotes;
    final lOther$adminNotes = other.adminNotes;
    if (_$data.containsKey('adminNotes') !=
        other._$data.containsKey('adminNotes')) {
      return false;
    }
    if (l$adminNotes != lOther$adminNotes) {
      return false;
    }
    final l$events = events;
    final lOther$events = other.events;
    if (_$data.containsKey('events') != other._$data.containsKey('events')) {
      return false;
    }
    if (l$events != null && lOther$events != null) {
      if (l$events.length != lOther$events.length) {
        return false;
      }
      for (int i = 0; i < l$events.length; i++) {
        final l$events$entry = l$events[i];
        final lOther$events$entry = lOther$events[i];
        if (l$events$entry != lOther$events$entry) {
          return false;
        }
      }
    } else if (l$events != lOther$events) {
      return false;
    }
    final l$metadata = metadata;
    final lOther$metadata = other.metadata;
    if (_$data.containsKey('metadata') !=
        other._$data.containsKey('metadata')) {
      return false;
    }
    if (l$metadata != lOther$metadata) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (_$data.containsKey('createdAt') !=
        other._$data.containsKey('createdAt')) {
      return false;
    }
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$createdBy = createdBy;
    final lOther$createdBy = other.createdBy;
    if (_$data.containsKey('createdBy') !=
        other._$data.containsKey('createdBy')) {
      return false;
    }
    if (l$createdBy != lOther$createdBy) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (_$data.containsKey('updatedAt') !=
        other._$data.containsKey('updatedAt')) {
      return false;
    }
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    final l$updatedBy = updatedBy;
    final lOther$updatedBy = other.updatedBy;
    if (_$data.containsKey('updatedBy') !=
        other._$data.containsKey('updatedBy')) {
      return false;
    }
    if (l$updatedBy != lOther$updatedBy) {
      return false;
    }
    final l$deletedAt = deletedAt;
    final lOther$deletedAt = other.deletedAt;
    if (_$data.containsKey('deletedAt') !=
        other._$data.containsKey('deletedAt')) {
      return false;
    }
    if (l$deletedAt != lOther$deletedAt) {
      return false;
    }
    final l$deletedBy = deletedBy;
    final lOther$deletedBy = other.deletedBy;
    if (_$data.containsKey('deletedBy') !=
        other._$data.containsKey('deletedBy')) {
      return false;
    }
    if (l$deletedBy != lOther$deletedBy) {
      return false;
    }
    final l$channelId = channelId;
    final lOther$channelId = other.channelId;
    if (_$data.containsKey('channelId') !=
        other._$data.containsKey('channelId')) {
      return false;
    }
    if (l$channelId != lOther$channelId) {
      return false;
    }
    final l$senderId = senderId;
    final lOther$senderId = other.senderId;
    if (_$data.containsKey('senderId') !=
        other._$data.containsKey('senderId')) {
      return false;
    }
    if (l$senderId != lOther$senderId) {
      return false;
    }
    final l$recipientId = recipientId;
    final lOther$recipientId = other.recipientId;
    if (_$data.containsKey('recipientId') !=
        other._$data.containsKey('recipientId')) {
      return false;
    }
    if (l$recipientId != lOther$recipientId) {
      return false;
    }
    final l$channelName = channelName;
    final lOther$channelName = other.channelName;
    if (_$data.containsKey('channelName') !=
        other._$data.containsKey('channelName')) {
      return false;
    }
    if (l$channelName != lOther$channelName) {
      return false;
    }
    final l$channelTopic = channelTopic;
    final lOther$channelTopic = other.channelTopic;
    if (_$data.containsKey('channelTopic') !=
        other._$data.containsKey('channelTopic')) {
      return false;
    }
    if (l$channelTopic != lOther$channelTopic) {
      return false;
    }
    final l$messageText = messageText;
    final lOther$messageText = other.messageText;
    if (_$data.containsKey('messageText') !=
        other._$data.containsKey('messageText')) {
      return false;
    }
    if (l$messageText != lOther$messageText) {
      return false;
    }
    final l$dismissedFromInboxBySenderAt = dismissedFromInboxBySenderAt;
    final lOther$dismissedFromInboxBySenderAt =
        other.dismissedFromInboxBySenderAt;
    if (_$data.containsKey('dismissedFromInboxBySenderAt') !=
        other._$data.containsKey('dismissedFromInboxBySenderAt')) {
      return false;
    }
    if (l$dismissedFromInboxBySenderAt != lOther$dismissedFromInboxBySenderAt) {
      return false;
    }
    final l$dismissedFromInboxByRecipientAt = dismissedFromInboxByRecipientAt;
    final lOther$dismissedFromInboxByRecipientAt =
        other.dismissedFromInboxByRecipientAt;
    if (_$data.containsKey('dismissedFromInboxByRecipientAt') !=
        other._$data.containsKey('dismissedFromInboxByRecipientAt')) {
      return false;
    }
    if (l$dismissedFromInboxByRecipientAt !=
        lOther$dismissedFromInboxByRecipientAt) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (_$data.containsKey('status') != other._$data.containsKey('status')) {
      return false;
    }
    if (l$status != lOther$status) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$adminNotes = adminNotes;
    final l$events = events;
    final l$metadata = metadata;
    final l$createdAt = createdAt;
    final l$createdBy = createdBy;
    final l$updatedAt = updatedAt;
    final l$updatedBy = updatedBy;
    final l$deletedAt = deletedAt;
    final l$deletedBy = deletedBy;
    final l$channelId = channelId;
    final l$senderId = senderId;
    final l$recipientId = recipientId;
    final l$channelName = channelName;
    final l$channelTopic = channelTopic;
    final l$messageText = messageText;
    final l$dismissedFromInboxBySenderAt = dismissedFromInboxBySenderAt;
    final l$dismissedFromInboxByRecipientAt = dismissedFromInboxByRecipientAt;
    final l$status = status;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('adminNotes') ? l$adminNotes : const {},
      _$data.containsKey('events')
          ? l$events == null
              ? null
              : Object.hashAll(l$events.map((v) => v))
          : const {},
      _$data.containsKey('metadata') ? l$metadata : const {},
      _$data.containsKey('createdAt') ? l$createdAt : const {},
      _$data.containsKey('createdBy') ? l$createdBy : const {},
      _$data.containsKey('updatedAt') ? l$updatedAt : const {},
      _$data.containsKey('updatedBy') ? l$updatedBy : const {},
      _$data.containsKey('deletedAt') ? l$deletedAt : const {},
      _$data.containsKey('deletedBy') ? l$deletedBy : const {},
      _$data.containsKey('channelId') ? l$channelId : const {},
      _$data.containsKey('senderId') ? l$senderId : const {},
      _$data.containsKey('recipientId') ? l$recipientId : const {},
      _$data.containsKey('channelName') ? l$channelName : const {},
      _$data.containsKey('channelTopic') ? l$channelTopic : const {},
      _$data.containsKey('messageText') ? l$messageText : const {},
      _$data.containsKey('dismissedFromInboxBySenderAt')
          ? l$dismissedFromInboxBySenderAt
          : const {},
      _$data.containsKey('dismissedFromInboxByRecipientAt')
          ? l$dismissedFromInboxByRecipientAt
          : const {},
      _$data.containsKey('status') ? l$status : const {},
    ]);
  }
}

abstract class CopyWith$Input$ChannelInvitationInput<TRes> {
  factory CopyWith$Input$ChannelInvitationInput(
    Input$ChannelInvitationInput instance,
    TRes Function(Input$ChannelInvitationInput) then,
  ) = _CopyWithImpl$Input$ChannelInvitationInput;

  factory CopyWith$Input$ChannelInvitationInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ChannelInvitationInput;

  TRes call({
    String? id,
    String? adminNotes,
    List<Input$ModelEventInput>? events,
    Input$BaseModelMetadataInput? metadata,
    DateTime? createdAt,
    String? createdBy,
    DateTime? updatedAt,
    String? updatedBy,
    DateTime? deletedAt,
    String? deletedBy,
    String? channelId,
    String? senderId,
    String? recipientId,
    String? channelName,
    String? channelTopic,
    String? messageText,
    DateTime? dismissedFromInboxBySenderAt,
    DateTime? dismissedFromInboxByRecipientAt,
    Enum$ChannelInvitationStatus? status,
  });
  TRes events(
      Iterable<Input$ModelEventInput>? Function(
              Iterable<CopyWith$Input$ModelEventInput<Input$ModelEventInput>>?)
          _fn);
  CopyWith$Input$BaseModelMetadataInput<TRes> get metadata;
}

class _CopyWithImpl$Input$ChannelInvitationInput<TRes>
    implements CopyWith$Input$ChannelInvitationInput<TRes> {
  _CopyWithImpl$Input$ChannelInvitationInput(
    this._instance,
    this._then,
  );

  final Input$ChannelInvitationInput _instance;

  final TRes Function(Input$ChannelInvitationInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? adminNotes = _undefined,
    Object? events = _undefined,
    Object? metadata = _undefined,
    Object? createdAt = _undefined,
    Object? createdBy = _undefined,
    Object? updatedAt = _undefined,
    Object? updatedBy = _undefined,
    Object? deletedAt = _undefined,
    Object? deletedBy = _undefined,
    Object? channelId = _undefined,
    Object? senderId = _undefined,
    Object? recipientId = _undefined,
    Object? channelName = _undefined,
    Object? channelTopic = _undefined,
    Object? messageText = _undefined,
    Object? dismissedFromInboxBySenderAt = _undefined,
    Object? dismissedFromInboxByRecipientAt = _undefined,
    Object? status = _undefined,
  }) =>
      _then(Input$ChannelInvitationInput._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as String?),
        if (adminNotes != _undefined) 'adminNotes': (adminNotes as String?),
        if (events != _undefined)
          'events': (events as List<Input$ModelEventInput>?),
        if (metadata != _undefined)
          'metadata': (metadata as Input$BaseModelMetadataInput?),
        if (createdAt != _undefined) 'createdAt': (createdAt as DateTime?),
        if (createdBy != _undefined) 'createdBy': (createdBy as String?),
        if (updatedAt != _undefined) 'updatedAt': (updatedAt as DateTime?),
        if (updatedBy != _undefined) 'updatedBy': (updatedBy as String?),
        if (deletedAt != _undefined) 'deletedAt': (deletedAt as DateTime?),
        if (deletedBy != _undefined) 'deletedBy': (deletedBy as String?),
        if (channelId != _undefined) 'channelId': (channelId as String?),
        if (senderId != _undefined) 'senderId': (senderId as String?),
        if (recipientId != _undefined) 'recipientId': (recipientId as String?),
        if (channelName != _undefined) 'channelName': (channelName as String?),
        if (channelTopic != _undefined)
          'channelTopic': (channelTopic as String?),
        if (messageText != _undefined) 'messageText': (messageText as String?),
        if (dismissedFromInboxBySenderAt != _undefined)
          'dismissedFromInboxBySenderAt':
              (dismissedFromInboxBySenderAt as DateTime?),
        if (dismissedFromInboxByRecipientAt != _undefined)
          'dismissedFromInboxByRecipientAt':
              (dismissedFromInboxByRecipientAt as DateTime?),
        if (status != _undefined)
          'status': (status as Enum$ChannelInvitationStatus?),
      }));
  TRes events(
          Iterable<Input$ModelEventInput>? Function(
                  Iterable<
                      CopyWith$Input$ModelEventInput<Input$ModelEventInput>>?)
              _fn) =>
      call(
          events:
              _fn(_instance.events?.map((e) => CopyWith$Input$ModelEventInput(
                    e,
                    (i) => i,
                  )))?.toList());
  CopyWith$Input$BaseModelMetadataInput<TRes> get metadata {
    final local$metadata = _instance.metadata;
    return local$metadata == null
        ? CopyWith$Input$BaseModelMetadataInput.stub(_then(_instance))
        : CopyWith$Input$BaseModelMetadataInput(
            local$metadata, (e) => call(metadata: e));
  }
}

class _CopyWithStubImpl$Input$ChannelInvitationInput<TRes>
    implements CopyWith$Input$ChannelInvitationInput<TRes> {
  _CopyWithStubImpl$Input$ChannelInvitationInput(this._res);

  TRes _res;

  call({
    String? id,
    String? adminNotes,
    List<Input$ModelEventInput>? events,
    Input$BaseModelMetadataInput? metadata,
    DateTime? createdAt,
    String? createdBy,
    DateTime? updatedAt,
    String? updatedBy,
    DateTime? deletedAt,
    String? deletedBy,
    String? channelId,
    String? senderId,
    String? recipientId,
    String? channelName,
    String? channelTopic,
    String? messageText,
    DateTime? dismissedFromInboxBySenderAt,
    DateTime? dismissedFromInboxByRecipientAt,
    Enum$ChannelInvitationStatus? status,
  }) =>
      _res;
  events(_fn) => _res;
  CopyWith$Input$BaseModelMetadataInput<TRes> get metadata =>
      CopyWith$Input$BaseModelMetadataInput.stub(_res);
}

class Input$BgAddChannelMessageEventInput {
  factory Input$BgAddChannelMessageEventInput({
    String? channelId,
    List<String>? messageIds,
    String? recipientId,
    Enum$ChannelMessageEvent? event,
  }) =>
      Input$BgAddChannelMessageEventInput._({
        if (channelId != null) r'channelId': channelId,
        if (messageIds != null) r'messageIds': messageIds,
        if (recipientId != null) r'recipientId': recipientId,
        if (event != null) r'event': event,
      });

  Input$BgAddChannelMessageEventInput._(this._$data);

  factory Input$BgAddChannelMessageEventInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('channelId')) {
      final l$channelId = data['channelId'];
      result$data['channelId'] = (l$channelId as String);
    }
    if (data.containsKey('messageIds')) {
      final l$messageIds = data['messageIds'];
      result$data['messageIds'] =
          (l$messageIds as List<dynamic>).map((e) => (e as String)).toList();
    }
    if (data.containsKey('recipientId')) {
      final l$recipientId = data['recipientId'];
      result$data['recipientId'] = (l$recipientId as String);
    }
    if (data.containsKey('event')) {
      final l$event = data['event'];
      result$data['event'] =
          fromJson$Enum$ChannelMessageEvent((l$event as String));
    }
    return Input$BgAddChannelMessageEventInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get channelId => (_$data['channelId'] as String?);
  List<String>? get messageIds => (_$data['messageIds'] as List<String>?);
  String? get recipientId => (_$data['recipientId'] as String?);
  Enum$ChannelMessageEvent? get event =>
      (_$data['event'] as Enum$ChannelMessageEvent?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('channelId')) {
      final l$channelId = channelId;
      result$data['channelId'] = (l$channelId as String);
    }
    if (_$data.containsKey('messageIds')) {
      final l$messageIds = messageIds;
      result$data['messageIds'] =
          (l$messageIds as List<String>).map((e) => e).toList();
    }
    if (_$data.containsKey('recipientId')) {
      final l$recipientId = recipientId;
      result$data['recipientId'] = (l$recipientId as String);
    }
    if (_$data.containsKey('event')) {
      final l$event = event;
      result$data['event'] = toJson$Enum$ChannelMessageEvent(
          (l$event as Enum$ChannelMessageEvent));
    }
    return result$data;
  }

  CopyWith$Input$BgAddChannelMessageEventInput<
          Input$BgAddChannelMessageEventInput>
      get copyWith => CopyWith$Input$BgAddChannelMessageEventInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$BgAddChannelMessageEventInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$channelId = channelId;
    final lOther$channelId = other.channelId;
    if (_$data.containsKey('channelId') !=
        other._$data.containsKey('channelId')) {
      return false;
    }
    if (l$channelId != lOther$channelId) {
      return false;
    }
    final l$messageIds = messageIds;
    final lOther$messageIds = other.messageIds;
    if (_$data.containsKey('messageIds') !=
        other._$data.containsKey('messageIds')) {
      return false;
    }
    if (l$messageIds != null && lOther$messageIds != null) {
      if (l$messageIds.length != lOther$messageIds.length) {
        return false;
      }
      for (int i = 0; i < l$messageIds.length; i++) {
        final l$messageIds$entry = l$messageIds[i];
        final lOther$messageIds$entry = lOther$messageIds[i];
        if (l$messageIds$entry != lOther$messageIds$entry) {
          return false;
        }
      }
    } else if (l$messageIds != lOther$messageIds) {
      return false;
    }
    final l$recipientId = recipientId;
    final lOther$recipientId = other.recipientId;
    if (_$data.containsKey('recipientId') !=
        other._$data.containsKey('recipientId')) {
      return false;
    }
    if (l$recipientId != lOther$recipientId) {
      return false;
    }
    final l$event = event;
    final lOther$event = other.event;
    if (_$data.containsKey('event') != other._$data.containsKey('event')) {
      return false;
    }
    if (l$event != lOther$event) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$channelId = channelId;
    final l$messageIds = messageIds;
    final l$recipientId = recipientId;
    final l$event = event;
    return Object.hashAll([
      _$data.containsKey('channelId') ? l$channelId : const {},
      _$data.containsKey('messageIds')
          ? l$messageIds == null
              ? null
              : Object.hashAll(l$messageIds.map((v) => v))
          : const {},
      _$data.containsKey('recipientId') ? l$recipientId : const {},
      _$data.containsKey('event') ? l$event : const {},
    ]);
  }
}

abstract class CopyWith$Input$BgAddChannelMessageEventInput<TRes> {
  factory CopyWith$Input$BgAddChannelMessageEventInput(
    Input$BgAddChannelMessageEventInput instance,
    TRes Function(Input$BgAddChannelMessageEventInput) then,
  ) = _CopyWithImpl$Input$BgAddChannelMessageEventInput;

  factory CopyWith$Input$BgAddChannelMessageEventInput.stub(TRes res) =
      _CopyWithStubImpl$Input$BgAddChannelMessageEventInput;

  TRes call({
    String? channelId,
    List<String>? messageIds,
    String? recipientId,
    Enum$ChannelMessageEvent? event,
  });
}

class _CopyWithImpl$Input$BgAddChannelMessageEventInput<TRes>
    implements CopyWith$Input$BgAddChannelMessageEventInput<TRes> {
  _CopyWithImpl$Input$BgAddChannelMessageEventInput(
    this._instance,
    this._then,
  );

  final Input$BgAddChannelMessageEventInput _instance;

  final TRes Function(Input$BgAddChannelMessageEventInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? channelId = _undefined,
    Object? messageIds = _undefined,
    Object? recipientId = _undefined,
    Object? event = _undefined,
  }) =>
      _then(Input$BgAddChannelMessageEventInput._({
        ..._instance._$data,
        if (channelId != _undefined && channelId != null)
          'channelId': (channelId as String),
        if (messageIds != _undefined && messageIds != null)
          'messageIds': (messageIds as List<String>),
        if (recipientId != _undefined && recipientId != null)
          'recipientId': (recipientId as String),
        if (event != _undefined && event != null)
          'event': (event as Enum$ChannelMessageEvent),
      }));
}

class _CopyWithStubImpl$Input$BgAddChannelMessageEventInput<TRes>
    implements CopyWith$Input$BgAddChannelMessageEventInput<TRes> {
  _CopyWithStubImpl$Input$BgAddChannelMessageEventInput(this._res);

  TRes _res;

  call({
    String? channelId,
    List<String>? messageIds,
    String? recipientId,
    Enum$ChannelMessageEvent? event,
  }) =>
      _res;
}

class Input$ChannelParticipantInput {
  factory Input$ChannelParticipantInput({
    String? id,
    String? adminNotes,
    List<Input$ModelEventInput>? events,
    Input$BaseModelMetadataInput? metadata,
    DateTime? createdAt,
    String? createdBy,
    DateTime? updatedAt,
    String? updatedBy,
    DateTime? deletedAt,
    String? deletedBy,
    String? channelId,
    String? userId,
    String? invitedBy,
    String? channelName,
    Enum$ChannelParticipantRole? role,
  }) =>
      Input$ChannelParticipantInput._({
        if (id != null) r'id': id,
        if (adminNotes != null) r'adminNotes': adminNotes,
        if (events != null) r'events': events,
        if (metadata != null) r'metadata': metadata,
        if (createdAt != null) r'createdAt': createdAt,
        if (createdBy != null) r'createdBy': createdBy,
        if (updatedAt != null) r'updatedAt': updatedAt,
        if (updatedBy != null) r'updatedBy': updatedBy,
        if (deletedAt != null) r'deletedAt': deletedAt,
        if (deletedBy != null) r'deletedBy': deletedBy,
        if (channelId != null) r'channelId': channelId,
        if (userId != null) r'userId': userId,
        if (invitedBy != null) r'invitedBy': invitedBy,
        if (channelName != null) r'channelName': channelName,
        if (role != null) r'role': role,
      });

  Input$ChannelParticipantInput._(this._$data);

  factory Input$ChannelParticipantInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as String?);
    }
    if (data.containsKey('adminNotes')) {
      final l$adminNotes = data['adminNotes'];
      result$data['adminNotes'] = (l$adminNotes as String?);
    }
    if (data.containsKey('events')) {
      final l$events = data['events'];
      result$data['events'] = (l$events as List<dynamic>?)
          ?.map((e) =>
              Input$ModelEventInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('metadata')) {
      final l$metadata = data['metadata'];
      result$data['metadata'] = l$metadata == null
          ? null
          : Input$BaseModelMetadataInput.fromJson(
              (l$metadata as Map<String, dynamic>));
    }
    if (data.containsKey('createdAt')) {
      final l$createdAt = data['createdAt'];
      result$data['createdAt'] =
          l$createdAt == null ? null : DateTime.parse((l$createdAt as String));
    }
    if (data.containsKey('createdBy')) {
      final l$createdBy = data['createdBy'];
      result$data['createdBy'] = (l$createdBy as String?);
    }
    if (data.containsKey('updatedAt')) {
      final l$updatedAt = data['updatedAt'];
      result$data['updatedAt'] =
          l$updatedAt == null ? null : DateTime.parse((l$updatedAt as String));
    }
    if (data.containsKey('updatedBy')) {
      final l$updatedBy = data['updatedBy'];
      result$data['updatedBy'] = (l$updatedBy as String?);
    }
    if (data.containsKey('deletedAt')) {
      final l$deletedAt = data['deletedAt'];
      result$data['deletedAt'] =
          l$deletedAt == null ? null : DateTime.parse((l$deletedAt as String));
    }
    if (data.containsKey('deletedBy')) {
      final l$deletedBy = data['deletedBy'];
      result$data['deletedBy'] = (l$deletedBy as String?);
    }
    if (data.containsKey('channelId')) {
      final l$channelId = data['channelId'];
      result$data['channelId'] = (l$channelId as String?);
    }
    if (data.containsKey('userId')) {
      final l$userId = data['userId'];
      result$data['userId'] = (l$userId as String?);
    }
    if (data.containsKey('invitedBy')) {
      final l$invitedBy = data['invitedBy'];
      result$data['invitedBy'] = (l$invitedBy as String?);
    }
    if (data.containsKey('channelName')) {
      final l$channelName = data['channelName'];
      result$data['channelName'] = (l$channelName as String?);
    }
    if (data.containsKey('role')) {
      final l$role = data['role'];
      result$data['role'] = l$role == null
          ? null
          : fromJson$Enum$ChannelParticipantRole((l$role as String));
    }
    return Input$ChannelParticipantInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get id => (_$data['id'] as String?);
  String? get adminNotes => (_$data['adminNotes'] as String?);
  List<Input$ModelEventInput>? get events =>
      (_$data['events'] as List<Input$ModelEventInput>?);
  Input$BaseModelMetadataInput? get metadata =>
      (_$data['metadata'] as Input$BaseModelMetadataInput?);
  DateTime? get createdAt => (_$data['createdAt'] as DateTime?);
  String? get createdBy => (_$data['createdBy'] as String?);
  DateTime? get updatedAt => (_$data['updatedAt'] as DateTime?);
  String? get updatedBy => (_$data['updatedBy'] as String?);
  DateTime? get deletedAt => (_$data['deletedAt'] as DateTime?);
  String? get deletedBy => (_$data['deletedBy'] as String?);
  String? get channelId => (_$data['channelId'] as String?);
  String? get userId => (_$data['userId'] as String?);
  String? get invitedBy => (_$data['invitedBy'] as String?);
  String? get channelName => (_$data['channelName'] as String?);
  Enum$ChannelParticipantRole? get role =>
      (_$data['role'] as Enum$ChannelParticipantRole?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('adminNotes')) {
      final l$adminNotes = adminNotes;
      result$data['adminNotes'] = l$adminNotes;
    }
    if (_$data.containsKey('events')) {
      final l$events = events;
      result$data['events'] = l$events?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('metadata')) {
      final l$metadata = metadata;
      result$data['metadata'] = l$metadata?.toJson();
    }
    if (_$data.containsKey('createdAt')) {
      final l$createdAt = createdAt;
      result$data['createdAt'] = l$createdAt?.toIso8601String();
    }
    if (_$data.containsKey('createdBy')) {
      final l$createdBy = createdBy;
      result$data['createdBy'] = l$createdBy;
    }
    if (_$data.containsKey('updatedAt')) {
      final l$updatedAt = updatedAt;
      result$data['updatedAt'] = l$updatedAt?.toIso8601String();
    }
    if (_$data.containsKey('updatedBy')) {
      final l$updatedBy = updatedBy;
      result$data['updatedBy'] = l$updatedBy;
    }
    if (_$data.containsKey('deletedAt')) {
      final l$deletedAt = deletedAt;
      result$data['deletedAt'] = l$deletedAt?.toIso8601String();
    }
    if (_$data.containsKey('deletedBy')) {
      final l$deletedBy = deletedBy;
      result$data['deletedBy'] = l$deletedBy;
    }
    if (_$data.containsKey('channelId')) {
      final l$channelId = channelId;
      result$data['channelId'] = l$channelId;
    }
    if (_$data.containsKey('userId')) {
      final l$userId = userId;
      result$data['userId'] = l$userId;
    }
    if (_$data.containsKey('invitedBy')) {
      final l$invitedBy = invitedBy;
      result$data['invitedBy'] = l$invitedBy;
    }
    if (_$data.containsKey('channelName')) {
      final l$channelName = channelName;
      result$data['channelName'] = l$channelName;
    }
    if (_$data.containsKey('role')) {
      final l$role = role;
      result$data['role'] =
          l$role == null ? null : toJson$Enum$ChannelParticipantRole(l$role);
    }
    return result$data;
  }

  CopyWith$Input$ChannelParticipantInput<Input$ChannelParticipantInput>
      get copyWith => CopyWith$Input$ChannelParticipantInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ChannelParticipantInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$adminNotes = adminNotes;
    final lOther$adminNotes = other.adminNotes;
    if (_$data.containsKey('adminNotes') !=
        other._$data.containsKey('adminNotes')) {
      return false;
    }
    if (l$adminNotes != lOther$adminNotes) {
      return false;
    }
    final l$events = events;
    final lOther$events = other.events;
    if (_$data.containsKey('events') != other._$data.containsKey('events')) {
      return false;
    }
    if (l$events != null && lOther$events != null) {
      if (l$events.length != lOther$events.length) {
        return false;
      }
      for (int i = 0; i < l$events.length; i++) {
        final l$events$entry = l$events[i];
        final lOther$events$entry = lOther$events[i];
        if (l$events$entry != lOther$events$entry) {
          return false;
        }
      }
    } else if (l$events != lOther$events) {
      return false;
    }
    final l$metadata = metadata;
    final lOther$metadata = other.metadata;
    if (_$data.containsKey('metadata') !=
        other._$data.containsKey('metadata')) {
      return false;
    }
    if (l$metadata != lOther$metadata) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (_$data.containsKey('createdAt') !=
        other._$data.containsKey('createdAt')) {
      return false;
    }
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$createdBy = createdBy;
    final lOther$createdBy = other.createdBy;
    if (_$data.containsKey('createdBy') !=
        other._$data.containsKey('createdBy')) {
      return false;
    }
    if (l$createdBy != lOther$createdBy) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (_$data.containsKey('updatedAt') !=
        other._$data.containsKey('updatedAt')) {
      return false;
    }
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    final l$updatedBy = updatedBy;
    final lOther$updatedBy = other.updatedBy;
    if (_$data.containsKey('updatedBy') !=
        other._$data.containsKey('updatedBy')) {
      return false;
    }
    if (l$updatedBy != lOther$updatedBy) {
      return false;
    }
    final l$deletedAt = deletedAt;
    final lOther$deletedAt = other.deletedAt;
    if (_$data.containsKey('deletedAt') !=
        other._$data.containsKey('deletedAt')) {
      return false;
    }
    if (l$deletedAt != lOther$deletedAt) {
      return false;
    }
    final l$deletedBy = deletedBy;
    final lOther$deletedBy = other.deletedBy;
    if (_$data.containsKey('deletedBy') !=
        other._$data.containsKey('deletedBy')) {
      return false;
    }
    if (l$deletedBy != lOther$deletedBy) {
      return false;
    }
    final l$channelId = channelId;
    final lOther$channelId = other.channelId;
    if (_$data.containsKey('channelId') !=
        other._$data.containsKey('channelId')) {
      return false;
    }
    if (l$channelId != lOther$channelId) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (_$data.containsKey('userId') != other._$data.containsKey('userId')) {
      return false;
    }
    if (l$userId != lOther$userId) {
      return false;
    }
    final l$invitedBy = invitedBy;
    final lOther$invitedBy = other.invitedBy;
    if (_$data.containsKey('invitedBy') !=
        other._$data.containsKey('invitedBy')) {
      return false;
    }
    if (l$invitedBy != lOther$invitedBy) {
      return false;
    }
    final l$channelName = channelName;
    final lOther$channelName = other.channelName;
    if (_$data.containsKey('channelName') !=
        other._$data.containsKey('channelName')) {
      return false;
    }
    if (l$channelName != lOther$channelName) {
      return false;
    }
    final l$role = role;
    final lOther$role = other.role;
    if (_$data.containsKey('role') != other._$data.containsKey('role')) {
      return false;
    }
    if (l$role != lOther$role) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$adminNotes = adminNotes;
    final l$events = events;
    final l$metadata = metadata;
    final l$createdAt = createdAt;
    final l$createdBy = createdBy;
    final l$updatedAt = updatedAt;
    final l$updatedBy = updatedBy;
    final l$deletedAt = deletedAt;
    final l$deletedBy = deletedBy;
    final l$channelId = channelId;
    final l$userId = userId;
    final l$invitedBy = invitedBy;
    final l$channelName = channelName;
    final l$role = role;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('adminNotes') ? l$adminNotes : const {},
      _$data.containsKey('events')
          ? l$events == null
              ? null
              : Object.hashAll(l$events.map((v) => v))
          : const {},
      _$data.containsKey('metadata') ? l$metadata : const {},
      _$data.containsKey('createdAt') ? l$createdAt : const {},
      _$data.containsKey('createdBy') ? l$createdBy : const {},
      _$data.containsKey('updatedAt') ? l$updatedAt : const {},
      _$data.containsKey('updatedBy') ? l$updatedBy : const {},
      _$data.containsKey('deletedAt') ? l$deletedAt : const {},
      _$data.containsKey('deletedBy') ? l$deletedBy : const {},
      _$data.containsKey('channelId') ? l$channelId : const {},
      _$data.containsKey('userId') ? l$userId : const {},
      _$data.containsKey('invitedBy') ? l$invitedBy : const {},
      _$data.containsKey('channelName') ? l$channelName : const {},
      _$data.containsKey('role') ? l$role : const {},
    ]);
  }
}

abstract class CopyWith$Input$ChannelParticipantInput<TRes> {
  factory CopyWith$Input$ChannelParticipantInput(
    Input$ChannelParticipantInput instance,
    TRes Function(Input$ChannelParticipantInput) then,
  ) = _CopyWithImpl$Input$ChannelParticipantInput;

  factory CopyWith$Input$ChannelParticipantInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ChannelParticipantInput;

  TRes call({
    String? id,
    String? adminNotes,
    List<Input$ModelEventInput>? events,
    Input$BaseModelMetadataInput? metadata,
    DateTime? createdAt,
    String? createdBy,
    DateTime? updatedAt,
    String? updatedBy,
    DateTime? deletedAt,
    String? deletedBy,
    String? channelId,
    String? userId,
    String? invitedBy,
    String? channelName,
    Enum$ChannelParticipantRole? role,
  });
  TRes events(
      Iterable<Input$ModelEventInput>? Function(
              Iterable<CopyWith$Input$ModelEventInput<Input$ModelEventInput>>?)
          _fn);
  CopyWith$Input$BaseModelMetadataInput<TRes> get metadata;
}

class _CopyWithImpl$Input$ChannelParticipantInput<TRes>
    implements CopyWith$Input$ChannelParticipantInput<TRes> {
  _CopyWithImpl$Input$ChannelParticipantInput(
    this._instance,
    this._then,
  );

  final Input$ChannelParticipantInput _instance;

  final TRes Function(Input$ChannelParticipantInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? adminNotes = _undefined,
    Object? events = _undefined,
    Object? metadata = _undefined,
    Object? createdAt = _undefined,
    Object? createdBy = _undefined,
    Object? updatedAt = _undefined,
    Object? updatedBy = _undefined,
    Object? deletedAt = _undefined,
    Object? deletedBy = _undefined,
    Object? channelId = _undefined,
    Object? userId = _undefined,
    Object? invitedBy = _undefined,
    Object? channelName = _undefined,
    Object? role = _undefined,
  }) =>
      _then(Input$ChannelParticipantInput._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as String?),
        if (adminNotes != _undefined) 'adminNotes': (adminNotes as String?),
        if (events != _undefined)
          'events': (events as List<Input$ModelEventInput>?),
        if (metadata != _undefined)
          'metadata': (metadata as Input$BaseModelMetadataInput?),
        if (createdAt != _undefined) 'createdAt': (createdAt as DateTime?),
        if (createdBy != _undefined) 'createdBy': (createdBy as String?),
        if (updatedAt != _undefined) 'updatedAt': (updatedAt as DateTime?),
        if (updatedBy != _undefined) 'updatedBy': (updatedBy as String?),
        if (deletedAt != _undefined) 'deletedAt': (deletedAt as DateTime?),
        if (deletedBy != _undefined) 'deletedBy': (deletedBy as String?),
        if (channelId != _undefined) 'channelId': (channelId as String?),
        if (userId != _undefined) 'userId': (userId as String?),
        if (invitedBy != _undefined) 'invitedBy': (invitedBy as String?),
        if (channelName != _undefined) 'channelName': (channelName as String?),
        if (role != _undefined) 'role': (role as Enum$ChannelParticipantRole?),
      }));
  TRes events(
          Iterable<Input$ModelEventInput>? Function(
                  Iterable<
                      CopyWith$Input$ModelEventInput<Input$ModelEventInput>>?)
              _fn) =>
      call(
          events:
              _fn(_instance.events?.map((e) => CopyWith$Input$ModelEventInput(
                    e,
                    (i) => i,
                  )))?.toList());
  CopyWith$Input$BaseModelMetadataInput<TRes> get metadata {
    final local$metadata = _instance.metadata;
    return local$metadata == null
        ? CopyWith$Input$BaseModelMetadataInput.stub(_then(_instance))
        : CopyWith$Input$BaseModelMetadataInput(
            local$metadata, (e) => call(metadata: e));
  }
}

class _CopyWithStubImpl$Input$ChannelParticipantInput<TRes>
    implements CopyWith$Input$ChannelParticipantInput<TRes> {
  _CopyWithStubImpl$Input$ChannelParticipantInput(this._res);

  TRes _res;

  call({
    String? id,
    String? adminNotes,
    List<Input$ModelEventInput>? events,
    Input$BaseModelMetadataInput? metadata,
    DateTime? createdAt,
    String? createdBy,
    DateTime? updatedAt,
    String? updatedBy,
    DateTime? deletedAt,
    String? deletedBy,
    String? channelId,
    String? userId,
    String? invitedBy,
    String? channelName,
    Enum$ChannelParticipantRole? role,
  }) =>
      _res;
  events(_fn) => _res;
  CopyWith$Input$BaseModelMetadataInput<TRes> get metadata =>
      CopyWith$Input$BaseModelMetadataInput.stub(_res);
}

class Input$ContentTagInput {
  factory Input$ContentTagInput({
    String? id,
    String? adminNotes,
    List<Input$ModelEventInput>? events,
    Input$BaseModelMetadataInput? metadata,
    DateTime? createdAt,
    String? createdBy,
    DateTime? updatedAt,
    String? updatedBy,
    DateTime? deletedAt,
    String? deletedBy,
    String? objectId,
    Enum$ModelType? modelType,
    String? contentTagTypeTextId,
    String? childContentTagTypeTextId,
    String? messageText,
    DateTime? approvedByRecipientAt,
  }) =>
      Input$ContentTagInput._({
        if (id != null) r'id': id,
        if (adminNotes != null) r'adminNotes': adminNotes,
        if (events != null) r'events': events,
        if (metadata != null) r'metadata': metadata,
        if (createdAt != null) r'createdAt': createdAt,
        if (createdBy != null) r'createdBy': createdBy,
        if (updatedAt != null) r'updatedAt': updatedAt,
        if (updatedBy != null) r'updatedBy': updatedBy,
        if (deletedAt != null) r'deletedAt': deletedAt,
        if (deletedBy != null) r'deletedBy': deletedBy,
        if (objectId != null) r'objectId': objectId,
        if (modelType != null) r'modelType': modelType,
        if (contentTagTypeTextId != null)
          r'contentTagTypeTextId': contentTagTypeTextId,
        if (childContentTagTypeTextId != null)
          r'childContentTagTypeTextId': childContentTagTypeTextId,
        if (messageText != null) r'messageText': messageText,
        if (approvedByRecipientAt != null)
          r'approvedByRecipientAt': approvedByRecipientAt,
      });

  Input$ContentTagInput._(this._$data);

  factory Input$ContentTagInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as String?);
    }
    if (data.containsKey('adminNotes')) {
      final l$adminNotes = data['adminNotes'];
      result$data['adminNotes'] = (l$adminNotes as String?);
    }
    if (data.containsKey('events')) {
      final l$events = data['events'];
      result$data['events'] = (l$events as List<dynamic>?)
          ?.map((e) =>
              Input$ModelEventInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('metadata')) {
      final l$metadata = data['metadata'];
      result$data['metadata'] = l$metadata == null
          ? null
          : Input$BaseModelMetadataInput.fromJson(
              (l$metadata as Map<String, dynamic>));
    }
    if (data.containsKey('createdAt')) {
      final l$createdAt = data['createdAt'];
      result$data['createdAt'] =
          l$createdAt == null ? null : DateTime.parse((l$createdAt as String));
    }
    if (data.containsKey('createdBy')) {
      final l$createdBy = data['createdBy'];
      result$data['createdBy'] = (l$createdBy as String?);
    }
    if (data.containsKey('updatedAt')) {
      final l$updatedAt = data['updatedAt'];
      result$data['updatedAt'] =
          l$updatedAt == null ? null : DateTime.parse((l$updatedAt as String));
    }
    if (data.containsKey('updatedBy')) {
      final l$updatedBy = data['updatedBy'];
      result$data['updatedBy'] = (l$updatedBy as String?);
    }
    if (data.containsKey('deletedAt')) {
      final l$deletedAt = data['deletedAt'];
      result$data['deletedAt'] =
          l$deletedAt == null ? null : DateTime.parse((l$deletedAt as String));
    }
    if (data.containsKey('deletedBy')) {
      final l$deletedBy = data['deletedBy'];
      result$data['deletedBy'] = (l$deletedBy as String?);
    }
    if (data.containsKey('objectId')) {
      final l$objectId = data['objectId'];
      result$data['objectId'] = (l$objectId as String?);
    }
    if (data.containsKey('modelType')) {
      final l$modelType = data['modelType'];
      result$data['modelType'] = l$modelType == null
          ? null
          : fromJson$Enum$ModelType((l$modelType as String));
    }
    if (data.containsKey('contentTagTypeTextId')) {
      final l$contentTagTypeTextId = data['contentTagTypeTextId'];
      result$data['contentTagTypeTextId'] = (l$contentTagTypeTextId as String?);
    }
    if (data.containsKey('childContentTagTypeTextId')) {
      final l$childContentTagTypeTextId = data['childContentTagTypeTextId'];
      result$data['childContentTagTypeTextId'] =
          (l$childContentTagTypeTextId as String?);
    }
    if (data.containsKey('messageText')) {
      final l$messageText = data['messageText'];
      result$data['messageText'] = (l$messageText as String?);
    }
    if (data.containsKey('approvedByRecipientAt')) {
      final l$approvedByRecipientAt = data['approvedByRecipientAt'];
      result$data['approvedByRecipientAt'] = l$approvedByRecipientAt == null
          ? null
          : DateTime.parse((l$approvedByRecipientAt as String));
    }
    return Input$ContentTagInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get id => (_$data['id'] as String?);
  String? get adminNotes => (_$data['adminNotes'] as String?);
  List<Input$ModelEventInput>? get events =>
      (_$data['events'] as List<Input$ModelEventInput>?);
  Input$BaseModelMetadataInput? get metadata =>
      (_$data['metadata'] as Input$BaseModelMetadataInput?);
  DateTime? get createdAt => (_$data['createdAt'] as DateTime?);
  String? get createdBy => (_$data['createdBy'] as String?);
  DateTime? get updatedAt => (_$data['updatedAt'] as DateTime?);
  String? get updatedBy => (_$data['updatedBy'] as String?);
  DateTime? get deletedAt => (_$data['deletedAt'] as DateTime?);
  String? get deletedBy => (_$data['deletedBy'] as String?);
  String? get objectId => (_$data['objectId'] as String?);
  Enum$ModelType? get modelType => (_$data['modelType'] as Enum$ModelType?);
  String? get contentTagTypeTextId =>
      (_$data['contentTagTypeTextId'] as String?);
  String? get childContentTagTypeTextId =>
      (_$data['childContentTagTypeTextId'] as String?);
  String? get messageText => (_$data['messageText'] as String?);
  DateTime? get approvedByRecipientAt =>
      (_$data['approvedByRecipientAt'] as DateTime?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('adminNotes')) {
      final l$adminNotes = adminNotes;
      result$data['adminNotes'] = l$adminNotes;
    }
    if (_$data.containsKey('events')) {
      final l$events = events;
      result$data['events'] = l$events?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('metadata')) {
      final l$metadata = metadata;
      result$data['metadata'] = l$metadata?.toJson();
    }
    if (_$data.containsKey('createdAt')) {
      final l$createdAt = createdAt;
      result$data['createdAt'] = l$createdAt?.toIso8601String();
    }
    if (_$data.containsKey('createdBy')) {
      final l$createdBy = createdBy;
      result$data['createdBy'] = l$createdBy;
    }
    if (_$data.containsKey('updatedAt')) {
      final l$updatedAt = updatedAt;
      result$data['updatedAt'] = l$updatedAt?.toIso8601String();
    }
    if (_$data.containsKey('updatedBy')) {
      final l$updatedBy = updatedBy;
      result$data['updatedBy'] = l$updatedBy;
    }
    if (_$data.containsKey('deletedAt')) {
      final l$deletedAt = deletedAt;
      result$data['deletedAt'] = l$deletedAt?.toIso8601String();
    }
    if (_$data.containsKey('deletedBy')) {
      final l$deletedBy = deletedBy;
      result$data['deletedBy'] = l$deletedBy;
    }
    if (_$data.containsKey('objectId')) {
      final l$objectId = objectId;
      result$data['objectId'] = l$objectId;
    }
    if (_$data.containsKey('modelType')) {
      final l$modelType = modelType;
      result$data['modelType'] =
          l$modelType == null ? null : toJson$Enum$ModelType(l$modelType);
    }
    if (_$data.containsKey('contentTagTypeTextId')) {
      final l$contentTagTypeTextId = contentTagTypeTextId;
      result$data['contentTagTypeTextId'] = l$contentTagTypeTextId;
    }
    if (_$data.containsKey('childContentTagTypeTextId')) {
      final l$childContentTagTypeTextId = childContentTagTypeTextId;
      result$data['childContentTagTypeTextId'] = l$childContentTagTypeTextId;
    }
    if (_$data.containsKey('messageText')) {
      final l$messageText = messageText;
      result$data['messageText'] = l$messageText;
    }
    if (_$data.containsKey('approvedByRecipientAt')) {
      final l$approvedByRecipientAt = approvedByRecipientAt;
      result$data['approvedByRecipientAt'] =
          l$approvedByRecipientAt?.toIso8601String();
    }
    return result$data;
  }

  CopyWith$Input$ContentTagInput<Input$ContentTagInput> get copyWith =>
      CopyWith$Input$ContentTagInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ContentTagInput) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$adminNotes = adminNotes;
    final lOther$adminNotes = other.adminNotes;
    if (_$data.containsKey('adminNotes') !=
        other._$data.containsKey('adminNotes')) {
      return false;
    }
    if (l$adminNotes != lOther$adminNotes) {
      return false;
    }
    final l$events = events;
    final lOther$events = other.events;
    if (_$data.containsKey('events') != other._$data.containsKey('events')) {
      return false;
    }
    if (l$events != null && lOther$events != null) {
      if (l$events.length != lOther$events.length) {
        return false;
      }
      for (int i = 0; i < l$events.length; i++) {
        final l$events$entry = l$events[i];
        final lOther$events$entry = lOther$events[i];
        if (l$events$entry != lOther$events$entry) {
          return false;
        }
      }
    } else if (l$events != lOther$events) {
      return false;
    }
    final l$metadata = metadata;
    final lOther$metadata = other.metadata;
    if (_$data.containsKey('metadata') !=
        other._$data.containsKey('metadata')) {
      return false;
    }
    if (l$metadata != lOther$metadata) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (_$data.containsKey('createdAt') !=
        other._$data.containsKey('createdAt')) {
      return false;
    }
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$createdBy = createdBy;
    final lOther$createdBy = other.createdBy;
    if (_$data.containsKey('createdBy') !=
        other._$data.containsKey('createdBy')) {
      return false;
    }
    if (l$createdBy != lOther$createdBy) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (_$data.containsKey('updatedAt') !=
        other._$data.containsKey('updatedAt')) {
      return false;
    }
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    final l$updatedBy = updatedBy;
    final lOther$updatedBy = other.updatedBy;
    if (_$data.containsKey('updatedBy') !=
        other._$data.containsKey('updatedBy')) {
      return false;
    }
    if (l$updatedBy != lOther$updatedBy) {
      return false;
    }
    final l$deletedAt = deletedAt;
    final lOther$deletedAt = other.deletedAt;
    if (_$data.containsKey('deletedAt') !=
        other._$data.containsKey('deletedAt')) {
      return false;
    }
    if (l$deletedAt != lOther$deletedAt) {
      return false;
    }
    final l$deletedBy = deletedBy;
    final lOther$deletedBy = other.deletedBy;
    if (_$data.containsKey('deletedBy') !=
        other._$data.containsKey('deletedBy')) {
      return false;
    }
    if (l$deletedBy != lOther$deletedBy) {
      return false;
    }
    final l$objectId = objectId;
    final lOther$objectId = other.objectId;
    if (_$data.containsKey('objectId') !=
        other._$data.containsKey('objectId')) {
      return false;
    }
    if (l$objectId != lOther$objectId) {
      return false;
    }
    final l$modelType = modelType;
    final lOther$modelType = other.modelType;
    if (_$data.containsKey('modelType') !=
        other._$data.containsKey('modelType')) {
      return false;
    }
    if (l$modelType != lOther$modelType) {
      return false;
    }
    final l$contentTagTypeTextId = contentTagTypeTextId;
    final lOther$contentTagTypeTextId = other.contentTagTypeTextId;
    if (_$data.containsKey('contentTagTypeTextId') !=
        other._$data.containsKey('contentTagTypeTextId')) {
      return false;
    }
    if (l$contentTagTypeTextId != lOther$contentTagTypeTextId) {
      return false;
    }
    final l$childContentTagTypeTextId = childContentTagTypeTextId;
    final lOther$childContentTagTypeTextId = other.childContentTagTypeTextId;
    if (_$data.containsKey('childContentTagTypeTextId') !=
        other._$data.containsKey('childContentTagTypeTextId')) {
      return false;
    }
    if (l$childContentTagTypeTextId != lOther$childContentTagTypeTextId) {
      return false;
    }
    final l$messageText = messageText;
    final lOther$messageText = other.messageText;
    if (_$data.containsKey('messageText') !=
        other._$data.containsKey('messageText')) {
      return false;
    }
    if (l$messageText != lOther$messageText) {
      return false;
    }
    final l$approvedByRecipientAt = approvedByRecipientAt;
    final lOther$approvedByRecipientAt = other.approvedByRecipientAt;
    if (_$data.containsKey('approvedByRecipientAt') !=
        other._$data.containsKey('approvedByRecipientAt')) {
      return false;
    }
    if (l$approvedByRecipientAt != lOther$approvedByRecipientAt) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$adminNotes = adminNotes;
    final l$events = events;
    final l$metadata = metadata;
    final l$createdAt = createdAt;
    final l$createdBy = createdBy;
    final l$updatedAt = updatedAt;
    final l$updatedBy = updatedBy;
    final l$deletedAt = deletedAt;
    final l$deletedBy = deletedBy;
    final l$objectId = objectId;
    final l$modelType = modelType;
    final l$contentTagTypeTextId = contentTagTypeTextId;
    final l$childContentTagTypeTextId = childContentTagTypeTextId;
    final l$messageText = messageText;
    final l$approvedByRecipientAt = approvedByRecipientAt;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('adminNotes') ? l$adminNotes : const {},
      _$data.containsKey('events')
          ? l$events == null
              ? null
              : Object.hashAll(l$events.map((v) => v))
          : const {},
      _$data.containsKey('metadata') ? l$metadata : const {},
      _$data.containsKey('createdAt') ? l$createdAt : const {},
      _$data.containsKey('createdBy') ? l$createdBy : const {},
      _$data.containsKey('updatedAt') ? l$updatedAt : const {},
      _$data.containsKey('updatedBy') ? l$updatedBy : const {},
      _$data.containsKey('deletedAt') ? l$deletedAt : const {},
      _$data.containsKey('deletedBy') ? l$deletedBy : const {},
      _$data.containsKey('objectId') ? l$objectId : const {},
      _$data.containsKey('modelType') ? l$modelType : const {},
      _$data.containsKey('contentTagTypeTextId')
          ? l$contentTagTypeTextId
          : const {},
      _$data.containsKey('childContentTagTypeTextId')
          ? l$childContentTagTypeTextId
          : const {},
      _$data.containsKey('messageText') ? l$messageText : const {},
      _$data.containsKey('approvedByRecipientAt')
          ? l$approvedByRecipientAt
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$ContentTagInput<TRes> {
  factory CopyWith$Input$ContentTagInput(
    Input$ContentTagInput instance,
    TRes Function(Input$ContentTagInput) then,
  ) = _CopyWithImpl$Input$ContentTagInput;

  factory CopyWith$Input$ContentTagInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ContentTagInput;

  TRes call({
    String? id,
    String? adminNotes,
    List<Input$ModelEventInput>? events,
    Input$BaseModelMetadataInput? metadata,
    DateTime? createdAt,
    String? createdBy,
    DateTime? updatedAt,
    String? updatedBy,
    DateTime? deletedAt,
    String? deletedBy,
    String? objectId,
    Enum$ModelType? modelType,
    String? contentTagTypeTextId,
    String? childContentTagTypeTextId,
    String? messageText,
    DateTime? approvedByRecipientAt,
  });
  TRes events(
      Iterable<Input$ModelEventInput>? Function(
              Iterable<CopyWith$Input$ModelEventInput<Input$ModelEventInput>>?)
          _fn);
  CopyWith$Input$BaseModelMetadataInput<TRes> get metadata;
}

class _CopyWithImpl$Input$ContentTagInput<TRes>
    implements CopyWith$Input$ContentTagInput<TRes> {
  _CopyWithImpl$Input$ContentTagInput(
    this._instance,
    this._then,
  );

  final Input$ContentTagInput _instance;

  final TRes Function(Input$ContentTagInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? adminNotes = _undefined,
    Object? events = _undefined,
    Object? metadata = _undefined,
    Object? createdAt = _undefined,
    Object? createdBy = _undefined,
    Object? updatedAt = _undefined,
    Object? updatedBy = _undefined,
    Object? deletedAt = _undefined,
    Object? deletedBy = _undefined,
    Object? objectId = _undefined,
    Object? modelType = _undefined,
    Object? contentTagTypeTextId = _undefined,
    Object? childContentTagTypeTextId = _undefined,
    Object? messageText = _undefined,
    Object? approvedByRecipientAt = _undefined,
  }) =>
      _then(Input$ContentTagInput._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as String?),
        if (adminNotes != _undefined) 'adminNotes': (adminNotes as String?),
        if (events != _undefined)
          'events': (events as List<Input$ModelEventInput>?),
        if (metadata != _undefined)
          'metadata': (metadata as Input$BaseModelMetadataInput?),
        if (createdAt != _undefined) 'createdAt': (createdAt as DateTime?),
        if (createdBy != _undefined) 'createdBy': (createdBy as String?),
        if (updatedAt != _undefined) 'updatedAt': (updatedAt as DateTime?),
        if (updatedBy != _undefined) 'updatedBy': (updatedBy as String?),
        if (deletedAt != _undefined) 'deletedAt': (deletedAt as DateTime?),
        if (deletedBy != _undefined) 'deletedBy': (deletedBy as String?),
        if (objectId != _undefined) 'objectId': (objectId as String?),
        if (modelType != _undefined)
          'modelType': (modelType as Enum$ModelType?),
        if (contentTagTypeTextId != _undefined)
          'contentTagTypeTextId': (contentTagTypeTextId as String?),
        if (childContentTagTypeTextId != _undefined)
          'childContentTagTypeTextId': (childContentTagTypeTextId as String?),
        if (messageText != _undefined) 'messageText': (messageText as String?),
        if (approvedByRecipientAt != _undefined)
          'approvedByRecipientAt': (approvedByRecipientAt as DateTime?),
      }));
  TRes events(
          Iterable<Input$ModelEventInput>? Function(
                  Iterable<
                      CopyWith$Input$ModelEventInput<Input$ModelEventInput>>?)
              _fn) =>
      call(
          events:
              _fn(_instance.events?.map((e) => CopyWith$Input$ModelEventInput(
                    e,
                    (i) => i,
                  )))?.toList());
  CopyWith$Input$BaseModelMetadataInput<TRes> get metadata {
    final local$metadata = _instance.metadata;
    return local$metadata == null
        ? CopyWith$Input$BaseModelMetadataInput.stub(_then(_instance))
        : CopyWith$Input$BaseModelMetadataInput(
            local$metadata, (e) => call(metadata: e));
  }
}

class _CopyWithStubImpl$Input$ContentTagInput<TRes>
    implements CopyWith$Input$ContentTagInput<TRes> {
  _CopyWithStubImpl$Input$ContentTagInput(this._res);

  TRes _res;

  call({
    String? id,
    String? adminNotes,
    List<Input$ModelEventInput>? events,
    Input$BaseModelMetadataInput? metadata,
    DateTime? createdAt,
    String? createdBy,
    DateTime? updatedAt,
    String? updatedBy,
    DateTime? deletedAt,
    String? deletedBy,
    String? objectId,
    Enum$ModelType? modelType,
    String? contentTagTypeTextId,
    String? childContentTagTypeTextId,
    String? messageText,
    DateTime? approvedByRecipientAt,
  }) =>
      _res;
  events(_fn) => _res;
  CopyWith$Input$BaseModelMetadataInput<TRes> get metadata =>
      CopyWith$Input$BaseModelMetadataInput.stub(_res);
}

class Input$MenteesGroupMembershipInput {
  factory Input$MenteesGroupMembershipInput({
    String? id,
    String? adminNotes,
    List<Input$ModelEventInput>? events,
    Input$BaseModelMetadataInput? metadata,
    DateTime? createdAt,
    String? createdBy,
    DateTime? updatedAt,
    String? updatedBy,
    DateTime? deletedAt,
    String? deletedBy,
    String? groupId,
    String? groupIdent,
    String? userId,
    List<Enum$GroupMembershipRole>? roles,
    List<String>? soughtExpertisesTextIds,
    String? industryTextId,
    String? actionsTaken,
    String? currentChallenges,
    String? futureGoals,
    String? motivationsForMentorship,
  }) =>
      Input$MenteesGroupMembershipInput._({
        if (id != null) r'id': id,
        if (adminNotes != null) r'adminNotes': adminNotes,
        if (events != null) r'events': events,
        if (metadata != null) r'metadata': metadata,
        if (createdAt != null) r'createdAt': createdAt,
        if (createdBy != null) r'createdBy': createdBy,
        if (updatedAt != null) r'updatedAt': updatedAt,
        if (updatedBy != null) r'updatedBy': updatedBy,
        if (deletedAt != null) r'deletedAt': deletedAt,
        if (deletedBy != null) r'deletedBy': deletedBy,
        if (groupId != null) r'groupId': groupId,
        if (groupIdent != null) r'groupIdent': groupIdent,
        if (userId != null) r'userId': userId,
        if (roles != null) r'roles': roles,
        if (soughtExpertisesTextIds != null)
          r'soughtExpertisesTextIds': soughtExpertisesTextIds,
        if (industryTextId != null) r'industryTextId': industryTextId,
        if (actionsTaken != null) r'actionsTaken': actionsTaken,
        if (currentChallenges != null) r'currentChallenges': currentChallenges,
        if (futureGoals != null) r'futureGoals': futureGoals,
        if (motivationsForMentorship != null)
          r'motivationsForMentorship': motivationsForMentorship,
      });

  Input$MenteesGroupMembershipInput._(this._$data);

  factory Input$MenteesGroupMembershipInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as String?);
    }
    if (data.containsKey('adminNotes')) {
      final l$adminNotes = data['adminNotes'];
      result$data['adminNotes'] = (l$adminNotes as String?);
    }
    if (data.containsKey('events')) {
      final l$events = data['events'];
      result$data['events'] = (l$events as List<dynamic>?)
          ?.map((e) =>
              Input$ModelEventInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('metadata')) {
      final l$metadata = data['metadata'];
      result$data['metadata'] = l$metadata == null
          ? null
          : Input$BaseModelMetadataInput.fromJson(
              (l$metadata as Map<String, dynamic>));
    }
    if (data.containsKey('createdAt')) {
      final l$createdAt = data['createdAt'];
      result$data['createdAt'] =
          l$createdAt == null ? null : DateTime.parse((l$createdAt as String));
    }
    if (data.containsKey('createdBy')) {
      final l$createdBy = data['createdBy'];
      result$data['createdBy'] = (l$createdBy as String?);
    }
    if (data.containsKey('updatedAt')) {
      final l$updatedAt = data['updatedAt'];
      result$data['updatedAt'] =
          l$updatedAt == null ? null : DateTime.parse((l$updatedAt as String));
    }
    if (data.containsKey('updatedBy')) {
      final l$updatedBy = data['updatedBy'];
      result$data['updatedBy'] = (l$updatedBy as String?);
    }
    if (data.containsKey('deletedAt')) {
      final l$deletedAt = data['deletedAt'];
      result$data['deletedAt'] =
          l$deletedAt == null ? null : DateTime.parse((l$deletedAt as String));
    }
    if (data.containsKey('deletedBy')) {
      final l$deletedBy = data['deletedBy'];
      result$data['deletedBy'] = (l$deletedBy as String?);
    }
    if (data.containsKey('groupId')) {
      final l$groupId = data['groupId'];
      result$data['groupId'] = (l$groupId as String?);
    }
    if (data.containsKey('groupIdent')) {
      final l$groupIdent = data['groupIdent'];
      result$data['groupIdent'] = (l$groupIdent as String?);
    }
    if (data.containsKey('userId')) {
      final l$userId = data['userId'];
      result$data['userId'] = (l$userId as String?);
    }
    if (data.containsKey('roles')) {
      final l$roles = data['roles'];
      result$data['roles'] = (l$roles as List<dynamic>?)
          ?.map((e) => fromJson$Enum$GroupMembershipRole((e as String)))
          .toList();
    }
    if (data.containsKey('soughtExpertisesTextIds')) {
      final l$soughtExpertisesTextIds = data['soughtExpertisesTextIds'];
      result$data['soughtExpertisesTextIds'] =
          (l$soughtExpertisesTextIds as List<dynamic>)
              .map((e) => (e as String))
              .toList();
    }
    if (data.containsKey('industryTextId')) {
      final l$industryTextId = data['industryTextId'];
      result$data['industryTextId'] = (l$industryTextId as String?);
    }
    if (data.containsKey('actionsTaken')) {
      final l$actionsTaken = data['actionsTaken'];
      result$data['actionsTaken'] = (l$actionsTaken as String?);
    }
    if (data.containsKey('currentChallenges')) {
      final l$currentChallenges = data['currentChallenges'];
      result$data['currentChallenges'] = (l$currentChallenges as String?);
    }
    if (data.containsKey('futureGoals')) {
      final l$futureGoals = data['futureGoals'];
      result$data['futureGoals'] = (l$futureGoals as String?);
    }
    if (data.containsKey('motivationsForMentorship')) {
      final l$motivationsForMentorship = data['motivationsForMentorship'];
      result$data['motivationsForMentorship'] =
          (l$motivationsForMentorship as String?);
    }
    return Input$MenteesGroupMembershipInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get id => (_$data['id'] as String?);
  String? get adminNotes => (_$data['adminNotes'] as String?);
  List<Input$ModelEventInput>? get events =>
      (_$data['events'] as List<Input$ModelEventInput>?);
  Input$BaseModelMetadataInput? get metadata =>
      (_$data['metadata'] as Input$BaseModelMetadataInput?);
  DateTime? get createdAt => (_$data['createdAt'] as DateTime?);
  String? get createdBy => (_$data['createdBy'] as String?);
  DateTime? get updatedAt => (_$data['updatedAt'] as DateTime?);
  String? get updatedBy => (_$data['updatedBy'] as String?);
  DateTime? get deletedAt => (_$data['deletedAt'] as DateTime?);
  String? get deletedBy => (_$data['deletedBy'] as String?);
  String? get groupId => (_$data['groupId'] as String?);
  String? get groupIdent => (_$data['groupIdent'] as String?);
  String? get userId => (_$data['userId'] as String?);
  List<Enum$GroupMembershipRole>? get roles =>
      (_$data['roles'] as List<Enum$GroupMembershipRole>?);
  List<String>? get soughtExpertisesTextIds =>
      (_$data['soughtExpertisesTextIds'] as List<String>?);
  String? get industryTextId => (_$data['industryTextId'] as String?);
  String? get actionsTaken => (_$data['actionsTaken'] as String?);
  String? get currentChallenges => (_$data['currentChallenges'] as String?);
  String? get futureGoals => (_$data['futureGoals'] as String?);
  String? get motivationsForMentorship =>
      (_$data['motivationsForMentorship'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('adminNotes')) {
      final l$adminNotes = adminNotes;
      result$data['adminNotes'] = l$adminNotes;
    }
    if (_$data.containsKey('events')) {
      final l$events = events;
      result$data['events'] = l$events?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('metadata')) {
      final l$metadata = metadata;
      result$data['metadata'] = l$metadata?.toJson();
    }
    if (_$data.containsKey('createdAt')) {
      final l$createdAt = createdAt;
      result$data['createdAt'] = l$createdAt?.toIso8601String();
    }
    if (_$data.containsKey('createdBy')) {
      final l$createdBy = createdBy;
      result$data['createdBy'] = l$createdBy;
    }
    if (_$data.containsKey('updatedAt')) {
      final l$updatedAt = updatedAt;
      result$data['updatedAt'] = l$updatedAt?.toIso8601String();
    }
    if (_$data.containsKey('updatedBy')) {
      final l$updatedBy = updatedBy;
      result$data['updatedBy'] = l$updatedBy;
    }
    if (_$data.containsKey('deletedAt')) {
      final l$deletedAt = deletedAt;
      result$data['deletedAt'] = l$deletedAt?.toIso8601String();
    }
    if (_$data.containsKey('deletedBy')) {
      final l$deletedBy = deletedBy;
      result$data['deletedBy'] = l$deletedBy;
    }
    if (_$data.containsKey('groupId')) {
      final l$groupId = groupId;
      result$data['groupId'] = l$groupId;
    }
    if (_$data.containsKey('groupIdent')) {
      final l$groupIdent = groupIdent;
      result$data['groupIdent'] = l$groupIdent;
    }
    if (_$data.containsKey('userId')) {
      final l$userId = userId;
      result$data['userId'] = l$userId;
    }
    if (_$data.containsKey('roles')) {
      final l$roles = roles;
      result$data['roles'] =
          l$roles?.map((e) => toJson$Enum$GroupMembershipRole(e)).toList();
    }
    if (_$data.containsKey('soughtExpertisesTextIds')) {
      final l$soughtExpertisesTextIds = soughtExpertisesTextIds;
      result$data['soughtExpertisesTextIds'] =
          (l$soughtExpertisesTextIds as List<String>).map((e) => e).toList();
    }
    if (_$data.containsKey('industryTextId')) {
      final l$industryTextId = industryTextId;
      result$data['industryTextId'] = l$industryTextId;
    }
    if (_$data.containsKey('actionsTaken')) {
      final l$actionsTaken = actionsTaken;
      result$data['actionsTaken'] = l$actionsTaken;
    }
    if (_$data.containsKey('currentChallenges')) {
      final l$currentChallenges = currentChallenges;
      result$data['currentChallenges'] = l$currentChallenges;
    }
    if (_$data.containsKey('futureGoals')) {
      final l$futureGoals = futureGoals;
      result$data['futureGoals'] = l$futureGoals;
    }
    if (_$data.containsKey('motivationsForMentorship')) {
      final l$motivationsForMentorship = motivationsForMentorship;
      result$data['motivationsForMentorship'] = l$motivationsForMentorship;
    }
    return result$data;
  }

  CopyWith$Input$MenteesGroupMembershipInput<Input$MenteesGroupMembershipInput>
      get copyWith => CopyWith$Input$MenteesGroupMembershipInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$MenteesGroupMembershipInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$adminNotes = adminNotes;
    final lOther$adminNotes = other.adminNotes;
    if (_$data.containsKey('adminNotes') !=
        other._$data.containsKey('adminNotes')) {
      return false;
    }
    if (l$adminNotes != lOther$adminNotes) {
      return false;
    }
    final l$events = events;
    final lOther$events = other.events;
    if (_$data.containsKey('events') != other._$data.containsKey('events')) {
      return false;
    }
    if (l$events != null && lOther$events != null) {
      if (l$events.length != lOther$events.length) {
        return false;
      }
      for (int i = 0; i < l$events.length; i++) {
        final l$events$entry = l$events[i];
        final lOther$events$entry = lOther$events[i];
        if (l$events$entry != lOther$events$entry) {
          return false;
        }
      }
    } else if (l$events != lOther$events) {
      return false;
    }
    final l$metadata = metadata;
    final lOther$metadata = other.metadata;
    if (_$data.containsKey('metadata') !=
        other._$data.containsKey('metadata')) {
      return false;
    }
    if (l$metadata != lOther$metadata) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (_$data.containsKey('createdAt') !=
        other._$data.containsKey('createdAt')) {
      return false;
    }
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$createdBy = createdBy;
    final lOther$createdBy = other.createdBy;
    if (_$data.containsKey('createdBy') !=
        other._$data.containsKey('createdBy')) {
      return false;
    }
    if (l$createdBy != lOther$createdBy) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (_$data.containsKey('updatedAt') !=
        other._$data.containsKey('updatedAt')) {
      return false;
    }
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    final l$updatedBy = updatedBy;
    final lOther$updatedBy = other.updatedBy;
    if (_$data.containsKey('updatedBy') !=
        other._$data.containsKey('updatedBy')) {
      return false;
    }
    if (l$updatedBy != lOther$updatedBy) {
      return false;
    }
    final l$deletedAt = deletedAt;
    final lOther$deletedAt = other.deletedAt;
    if (_$data.containsKey('deletedAt') !=
        other._$data.containsKey('deletedAt')) {
      return false;
    }
    if (l$deletedAt != lOther$deletedAt) {
      return false;
    }
    final l$deletedBy = deletedBy;
    final lOther$deletedBy = other.deletedBy;
    if (_$data.containsKey('deletedBy') !=
        other._$data.containsKey('deletedBy')) {
      return false;
    }
    if (l$deletedBy != lOther$deletedBy) {
      return false;
    }
    final l$groupId = groupId;
    final lOther$groupId = other.groupId;
    if (_$data.containsKey('groupId') != other._$data.containsKey('groupId')) {
      return false;
    }
    if (l$groupId != lOther$groupId) {
      return false;
    }
    final l$groupIdent = groupIdent;
    final lOther$groupIdent = other.groupIdent;
    if (_$data.containsKey('groupIdent') !=
        other._$data.containsKey('groupIdent')) {
      return false;
    }
    if (l$groupIdent != lOther$groupIdent) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (_$data.containsKey('userId') != other._$data.containsKey('userId')) {
      return false;
    }
    if (l$userId != lOther$userId) {
      return false;
    }
    final l$roles = roles;
    final lOther$roles = other.roles;
    if (_$data.containsKey('roles') != other._$data.containsKey('roles')) {
      return false;
    }
    if (l$roles != null && lOther$roles != null) {
      if (l$roles.length != lOther$roles.length) {
        return false;
      }
      for (int i = 0; i < l$roles.length; i++) {
        final l$roles$entry = l$roles[i];
        final lOther$roles$entry = lOther$roles[i];
        if (l$roles$entry != lOther$roles$entry) {
          return false;
        }
      }
    } else if (l$roles != lOther$roles) {
      return false;
    }
    final l$soughtExpertisesTextIds = soughtExpertisesTextIds;
    final lOther$soughtExpertisesTextIds = other.soughtExpertisesTextIds;
    if (_$data.containsKey('soughtExpertisesTextIds') !=
        other._$data.containsKey('soughtExpertisesTextIds')) {
      return false;
    }
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
    if (_$data.containsKey('industryTextId') !=
        other._$data.containsKey('industryTextId')) {
      return false;
    }
    if (l$industryTextId != lOther$industryTextId) {
      return false;
    }
    final l$actionsTaken = actionsTaken;
    final lOther$actionsTaken = other.actionsTaken;
    if (_$data.containsKey('actionsTaken') !=
        other._$data.containsKey('actionsTaken')) {
      return false;
    }
    if (l$actionsTaken != lOther$actionsTaken) {
      return false;
    }
    final l$currentChallenges = currentChallenges;
    final lOther$currentChallenges = other.currentChallenges;
    if (_$data.containsKey('currentChallenges') !=
        other._$data.containsKey('currentChallenges')) {
      return false;
    }
    if (l$currentChallenges != lOther$currentChallenges) {
      return false;
    }
    final l$futureGoals = futureGoals;
    final lOther$futureGoals = other.futureGoals;
    if (_$data.containsKey('futureGoals') !=
        other._$data.containsKey('futureGoals')) {
      return false;
    }
    if (l$futureGoals != lOther$futureGoals) {
      return false;
    }
    final l$motivationsForMentorship = motivationsForMentorship;
    final lOther$motivationsForMentorship = other.motivationsForMentorship;
    if (_$data.containsKey('motivationsForMentorship') !=
        other._$data.containsKey('motivationsForMentorship')) {
      return false;
    }
    if (l$motivationsForMentorship != lOther$motivationsForMentorship) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$adminNotes = adminNotes;
    final l$events = events;
    final l$metadata = metadata;
    final l$createdAt = createdAt;
    final l$createdBy = createdBy;
    final l$updatedAt = updatedAt;
    final l$updatedBy = updatedBy;
    final l$deletedAt = deletedAt;
    final l$deletedBy = deletedBy;
    final l$groupId = groupId;
    final l$groupIdent = groupIdent;
    final l$userId = userId;
    final l$roles = roles;
    final l$soughtExpertisesTextIds = soughtExpertisesTextIds;
    final l$industryTextId = industryTextId;
    final l$actionsTaken = actionsTaken;
    final l$currentChallenges = currentChallenges;
    final l$futureGoals = futureGoals;
    final l$motivationsForMentorship = motivationsForMentorship;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('adminNotes') ? l$adminNotes : const {},
      _$data.containsKey('events')
          ? l$events == null
              ? null
              : Object.hashAll(l$events.map((v) => v))
          : const {},
      _$data.containsKey('metadata') ? l$metadata : const {},
      _$data.containsKey('createdAt') ? l$createdAt : const {},
      _$data.containsKey('createdBy') ? l$createdBy : const {},
      _$data.containsKey('updatedAt') ? l$updatedAt : const {},
      _$data.containsKey('updatedBy') ? l$updatedBy : const {},
      _$data.containsKey('deletedAt') ? l$deletedAt : const {},
      _$data.containsKey('deletedBy') ? l$deletedBy : const {},
      _$data.containsKey('groupId') ? l$groupId : const {},
      _$data.containsKey('groupIdent') ? l$groupIdent : const {},
      _$data.containsKey('userId') ? l$userId : const {},
      _$data.containsKey('roles')
          ? l$roles == null
              ? null
              : Object.hashAll(l$roles.map((v) => v))
          : const {},
      _$data.containsKey('soughtExpertisesTextIds')
          ? l$soughtExpertisesTextIds == null
              ? null
              : Object.hashAll(l$soughtExpertisesTextIds.map((v) => v))
          : const {},
      _$data.containsKey('industryTextId') ? l$industryTextId : const {},
      _$data.containsKey('actionsTaken') ? l$actionsTaken : const {},
      _$data.containsKey('currentChallenges') ? l$currentChallenges : const {},
      _$data.containsKey('futureGoals') ? l$futureGoals : const {},
      _$data.containsKey('motivationsForMentorship')
          ? l$motivationsForMentorship
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$MenteesGroupMembershipInput<TRes> {
  factory CopyWith$Input$MenteesGroupMembershipInput(
    Input$MenteesGroupMembershipInput instance,
    TRes Function(Input$MenteesGroupMembershipInput) then,
  ) = _CopyWithImpl$Input$MenteesGroupMembershipInput;

  factory CopyWith$Input$MenteesGroupMembershipInput.stub(TRes res) =
      _CopyWithStubImpl$Input$MenteesGroupMembershipInput;

  TRes call({
    String? id,
    String? adminNotes,
    List<Input$ModelEventInput>? events,
    Input$BaseModelMetadataInput? metadata,
    DateTime? createdAt,
    String? createdBy,
    DateTime? updatedAt,
    String? updatedBy,
    DateTime? deletedAt,
    String? deletedBy,
    String? groupId,
    String? groupIdent,
    String? userId,
    List<Enum$GroupMembershipRole>? roles,
    List<String>? soughtExpertisesTextIds,
    String? industryTextId,
    String? actionsTaken,
    String? currentChallenges,
    String? futureGoals,
    String? motivationsForMentorship,
  });
  TRes events(
      Iterable<Input$ModelEventInput>? Function(
              Iterable<CopyWith$Input$ModelEventInput<Input$ModelEventInput>>?)
          _fn);
  CopyWith$Input$BaseModelMetadataInput<TRes> get metadata;
}

class _CopyWithImpl$Input$MenteesGroupMembershipInput<TRes>
    implements CopyWith$Input$MenteesGroupMembershipInput<TRes> {
  _CopyWithImpl$Input$MenteesGroupMembershipInput(
    this._instance,
    this._then,
  );

  final Input$MenteesGroupMembershipInput _instance;

  final TRes Function(Input$MenteesGroupMembershipInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? adminNotes = _undefined,
    Object? events = _undefined,
    Object? metadata = _undefined,
    Object? createdAt = _undefined,
    Object? createdBy = _undefined,
    Object? updatedAt = _undefined,
    Object? updatedBy = _undefined,
    Object? deletedAt = _undefined,
    Object? deletedBy = _undefined,
    Object? groupId = _undefined,
    Object? groupIdent = _undefined,
    Object? userId = _undefined,
    Object? roles = _undefined,
    Object? soughtExpertisesTextIds = _undefined,
    Object? industryTextId = _undefined,
    Object? actionsTaken = _undefined,
    Object? currentChallenges = _undefined,
    Object? futureGoals = _undefined,
    Object? motivationsForMentorship = _undefined,
  }) =>
      _then(Input$MenteesGroupMembershipInput._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as String?),
        if (adminNotes != _undefined) 'adminNotes': (adminNotes as String?),
        if (events != _undefined)
          'events': (events as List<Input$ModelEventInput>?),
        if (metadata != _undefined)
          'metadata': (metadata as Input$BaseModelMetadataInput?),
        if (createdAt != _undefined) 'createdAt': (createdAt as DateTime?),
        if (createdBy != _undefined) 'createdBy': (createdBy as String?),
        if (updatedAt != _undefined) 'updatedAt': (updatedAt as DateTime?),
        if (updatedBy != _undefined) 'updatedBy': (updatedBy as String?),
        if (deletedAt != _undefined) 'deletedAt': (deletedAt as DateTime?),
        if (deletedBy != _undefined) 'deletedBy': (deletedBy as String?),
        if (groupId != _undefined) 'groupId': (groupId as String?),
        if (groupIdent != _undefined) 'groupIdent': (groupIdent as String?),
        if (userId != _undefined) 'userId': (userId as String?),
        if (roles != _undefined)
          'roles': (roles as List<Enum$GroupMembershipRole>?),
        if (soughtExpertisesTextIds != _undefined &&
            soughtExpertisesTextIds != null)
          'soughtExpertisesTextIds': (soughtExpertisesTextIds as List<String>),
        if (industryTextId != _undefined)
          'industryTextId': (industryTextId as String?),
        if (actionsTaken != _undefined)
          'actionsTaken': (actionsTaken as String?),
        if (currentChallenges != _undefined)
          'currentChallenges': (currentChallenges as String?),
        if (futureGoals != _undefined) 'futureGoals': (futureGoals as String?),
        if (motivationsForMentorship != _undefined)
          'motivationsForMentorship': (motivationsForMentorship as String?),
      }));
  TRes events(
          Iterable<Input$ModelEventInput>? Function(
                  Iterable<
                      CopyWith$Input$ModelEventInput<Input$ModelEventInput>>?)
              _fn) =>
      call(
          events:
              _fn(_instance.events?.map((e) => CopyWith$Input$ModelEventInput(
                    e,
                    (i) => i,
                  )))?.toList());
  CopyWith$Input$BaseModelMetadataInput<TRes> get metadata {
    final local$metadata = _instance.metadata;
    return local$metadata == null
        ? CopyWith$Input$BaseModelMetadataInput.stub(_then(_instance))
        : CopyWith$Input$BaseModelMetadataInput(
            local$metadata, (e) => call(metadata: e));
  }
}

class _CopyWithStubImpl$Input$MenteesGroupMembershipInput<TRes>
    implements CopyWith$Input$MenteesGroupMembershipInput<TRes> {
  _CopyWithStubImpl$Input$MenteesGroupMembershipInput(this._res);

  TRes _res;

  call({
    String? id,
    String? adminNotes,
    List<Input$ModelEventInput>? events,
    Input$BaseModelMetadataInput? metadata,
    DateTime? createdAt,
    String? createdBy,
    DateTime? updatedAt,
    String? updatedBy,
    DateTime? deletedAt,
    String? deletedBy,
    String? groupId,
    String? groupIdent,
    String? userId,
    List<Enum$GroupMembershipRole>? roles,
    List<String>? soughtExpertisesTextIds,
    String? industryTextId,
    String? actionsTaken,
    String? currentChallenges,
    String? futureGoals,
    String? motivationsForMentorship,
  }) =>
      _res;
  events(_fn) => _res;
  CopyWith$Input$BaseModelMetadataInput<TRes> get metadata =>
      CopyWith$Input$BaseModelMetadataInput.stub(_res);
}

class Input$MentorsGroupMembershipInput {
  factory Input$MentorsGroupMembershipInput({
    String? id,
    String? adminNotes,
    List<Input$ModelEventInput>? events,
    Input$BaseModelMetadataInput? metadata,
    DateTime? createdAt,
    String? createdBy,
    DateTime? updatedAt,
    String? updatedBy,
    DateTime? deletedAt,
    String? deletedBy,
    String? groupId,
    String? groupIdent,
    String? userId,
    List<Enum$GroupMembershipRole>? roles,
    List<String>? expertisesTextIds,
    List<String>? industriesTextIds,
    String? helpICanOffer,
    String? expectationsForMentees,
    String? menteePreparationInstructions,
    int? endorsements,
  }) =>
      Input$MentorsGroupMembershipInput._({
        if (id != null) r'id': id,
        if (adminNotes != null) r'adminNotes': adminNotes,
        if (events != null) r'events': events,
        if (metadata != null) r'metadata': metadata,
        if (createdAt != null) r'createdAt': createdAt,
        if (createdBy != null) r'createdBy': createdBy,
        if (updatedAt != null) r'updatedAt': updatedAt,
        if (updatedBy != null) r'updatedBy': updatedBy,
        if (deletedAt != null) r'deletedAt': deletedAt,
        if (deletedBy != null) r'deletedBy': deletedBy,
        if (groupId != null) r'groupId': groupId,
        if (groupIdent != null) r'groupIdent': groupIdent,
        if (userId != null) r'userId': userId,
        if (roles != null) r'roles': roles,
        if (expertisesTextIds != null) r'expertisesTextIds': expertisesTextIds,
        if (industriesTextIds != null) r'industriesTextIds': industriesTextIds,
        if (helpICanOffer != null) r'helpICanOffer': helpICanOffer,
        if (expectationsForMentees != null)
          r'expectationsForMentees': expectationsForMentees,
        if (menteePreparationInstructions != null)
          r'menteePreparationInstructions': menteePreparationInstructions,
        if (endorsements != null) r'endorsements': endorsements,
      });

  Input$MentorsGroupMembershipInput._(this._$data);

  factory Input$MentorsGroupMembershipInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as String?);
    }
    if (data.containsKey('adminNotes')) {
      final l$adminNotes = data['adminNotes'];
      result$data['adminNotes'] = (l$adminNotes as String?);
    }
    if (data.containsKey('events')) {
      final l$events = data['events'];
      result$data['events'] = (l$events as List<dynamic>?)
          ?.map((e) =>
              Input$ModelEventInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('metadata')) {
      final l$metadata = data['metadata'];
      result$data['metadata'] = l$metadata == null
          ? null
          : Input$BaseModelMetadataInput.fromJson(
              (l$metadata as Map<String, dynamic>));
    }
    if (data.containsKey('createdAt')) {
      final l$createdAt = data['createdAt'];
      result$data['createdAt'] =
          l$createdAt == null ? null : DateTime.parse((l$createdAt as String));
    }
    if (data.containsKey('createdBy')) {
      final l$createdBy = data['createdBy'];
      result$data['createdBy'] = (l$createdBy as String?);
    }
    if (data.containsKey('updatedAt')) {
      final l$updatedAt = data['updatedAt'];
      result$data['updatedAt'] =
          l$updatedAt == null ? null : DateTime.parse((l$updatedAt as String));
    }
    if (data.containsKey('updatedBy')) {
      final l$updatedBy = data['updatedBy'];
      result$data['updatedBy'] = (l$updatedBy as String?);
    }
    if (data.containsKey('deletedAt')) {
      final l$deletedAt = data['deletedAt'];
      result$data['deletedAt'] =
          l$deletedAt == null ? null : DateTime.parse((l$deletedAt as String));
    }
    if (data.containsKey('deletedBy')) {
      final l$deletedBy = data['deletedBy'];
      result$data['deletedBy'] = (l$deletedBy as String?);
    }
    if (data.containsKey('groupId')) {
      final l$groupId = data['groupId'];
      result$data['groupId'] = (l$groupId as String?);
    }
    if (data.containsKey('groupIdent')) {
      final l$groupIdent = data['groupIdent'];
      result$data['groupIdent'] = (l$groupIdent as String?);
    }
    if (data.containsKey('userId')) {
      final l$userId = data['userId'];
      result$data['userId'] = (l$userId as String?);
    }
    if (data.containsKey('roles')) {
      final l$roles = data['roles'];
      result$data['roles'] = (l$roles as List<dynamic>?)
          ?.map((e) => fromJson$Enum$GroupMembershipRole((e as String)))
          .toList();
    }
    if (data.containsKey('expertisesTextIds')) {
      final l$expertisesTextIds = data['expertisesTextIds'];
      result$data['expertisesTextIds'] = (l$expertisesTextIds as List<dynamic>)
          .map((e) => (e as String))
          .toList();
    }
    if (data.containsKey('industriesTextIds')) {
      final l$industriesTextIds = data['industriesTextIds'];
      result$data['industriesTextIds'] = (l$industriesTextIds as List<dynamic>)
          .map((e) => (e as String))
          .toList();
    }
    if (data.containsKey('helpICanOffer')) {
      final l$helpICanOffer = data['helpICanOffer'];
      result$data['helpICanOffer'] = (l$helpICanOffer as String?);
    }
    if (data.containsKey('expectationsForMentees')) {
      final l$expectationsForMentees = data['expectationsForMentees'];
      result$data['expectationsForMentees'] =
          (l$expectationsForMentees as String?);
    }
    if (data.containsKey('menteePreparationInstructions')) {
      final l$menteePreparationInstructions =
          data['menteePreparationInstructions'];
      result$data['menteePreparationInstructions'] =
          (l$menteePreparationInstructions as String?);
    }
    if (data.containsKey('endorsements')) {
      final l$endorsements = data['endorsements'];
      result$data['endorsements'] = (l$endorsements as int?);
    }
    return Input$MentorsGroupMembershipInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get id => (_$data['id'] as String?);
  String? get adminNotes => (_$data['adminNotes'] as String?);
  List<Input$ModelEventInput>? get events =>
      (_$data['events'] as List<Input$ModelEventInput>?);
  Input$BaseModelMetadataInput? get metadata =>
      (_$data['metadata'] as Input$BaseModelMetadataInput?);
  DateTime? get createdAt => (_$data['createdAt'] as DateTime?);
  String? get createdBy => (_$data['createdBy'] as String?);
  DateTime? get updatedAt => (_$data['updatedAt'] as DateTime?);
  String? get updatedBy => (_$data['updatedBy'] as String?);
  DateTime? get deletedAt => (_$data['deletedAt'] as DateTime?);
  String? get deletedBy => (_$data['deletedBy'] as String?);
  String? get groupId => (_$data['groupId'] as String?);
  String? get groupIdent => (_$data['groupIdent'] as String?);
  String? get userId => (_$data['userId'] as String?);
  List<Enum$GroupMembershipRole>? get roles =>
      (_$data['roles'] as List<Enum$GroupMembershipRole>?);
  List<String>? get expertisesTextIds =>
      (_$data['expertisesTextIds'] as List<String>?);
  List<String>? get industriesTextIds =>
      (_$data['industriesTextIds'] as List<String>?);
  String? get helpICanOffer => (_$data['helpICanOffer'] as String?);
  String? get expectationsForMentees =>
      (_$data['expectationsForMentees'] as String?);
  String? get menteePreparationInstructions =>
      (_$data['menteePreparationInstructions'] as String?);
  int? get endorsements => (_$data['endorsements'] as int?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('adminNotes')) {
      final l$adminNotes = adminNotes;
      result$data['adminNotes'] = l$adminNotes;
    }
    if (_$data.containsKey('events')) {
      final l$events = events;
      result$data['events'] = l$events?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('metadata')) {
      final l$metadata = metadata;
      result$data['metadata'] = l$metadata?.toJson();
    }
    if (_$data.containsKey('createdAt')) {
      final l$createdAt = createdAt;
      result$data['createdAt'] = l$createdAt?.toIso8601String();
    }
    if (_$data.containsKey('createdBy')) {
      final l$createdBy = createdBy;
      result$data['createdBy'] = l$createdBy;
    }
    if (_$data.containsKey('updatedAt')) {
      final l$updatedAt = updatedAt;
      result$data['updatedAt'] = l$updatedAt?.toIso8601String();
    }
    if (_$data.containsKey('updatedBy')) {
      final l$updatedBy = updatedBy;
      result$data['updatedBy'] = l$updatedBy;
    }
    if (_$data.containsKey('deletedAt')) {
      final l$deletedAt = deletedAt;
      result$data['deletedAt'] = l$deletedAt?.toIso8601String();
    }
    if (_$data.containsKey('deletedBy')) {
      final l$deletedBy = deletedBy;
      result$data['deletedBy'] = l$deletedBy;
    }
    if (_$data.containsKey('groupId')) {
      final l$groupId = groupId;
      result$data['groupId'] = l$groupId;
    }
    if (_$data.containsKey('groupIdent')) {
      final l$groupIdent = groupIdent;
      result$data['groupIdent'] = l$groupIdent;
    }
    if (_$data.containsKey('userId')) {
      final l$userId = userId;
      result$data['userId'] = l$userId;
    }
    if (_$data.containsKey('roles')) {
      final l$roles = roles;
      result$data['roles'] =
          l$roles?.map((e) => toJson$Enum$GroupMembershipRole(e)).toList();
    }
    if (_$data.containsKey('expertisesTextIds')) {
      final l$expertisesTextIds = expertisesTextIds;
      result$data['expertisesTextIds'] =
          (l$expertisesTextIds as List<String>).map((e) => e).toList();
    }
    if (_$data.containsKey('industriesTextIds')) {
      final l$industriesTextIds = industriesTextIds;
      result$data['industriesTextIds'] =
          (l$industriesTextIds as List<String>).map((e) => e).toList();
    }
    if (_$data.containsKey('helpICanOffer')) {
      final l$helpICanOffer = helpICanOffer;
      result$data['helpICanOffer'] = l$helpICanOffer;
    }
    if (_$data.containsKey('expectationsForMentees')) {
      final l$expectationsForMentees = expectationsForMentees;
      result$data['expectationsForMentees'] = l$expectationsForMentees;
    }
    if (_$data.containsKey('menteePreparationInstructions')) {
      final l$menteePreparationInstructions = menteePreparationInstructions;
      result$data['menteePreparationInstructions'] =
          l$menteePreparationInstructions;
    }
    if (_$data.containsKey('endorsements')) {
      final l$endorsements = endorsements;
      result$data['endorsements'] = l$endorsements;
    }
    return result$data;
  }

  CopyWith$Input$MentorsGroupMembershipInput<Input$MentorsGroupMembershipInput>
      get copyWith => CopyWith$Input$MentorsGroupMembershipInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$MentorsGroupMembershipInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$adminNotes = adminNotes;
    final lOther$adminNotes = other.adminNotes;
    if (_$data.containsKey('adminNotes') !=
        other._$data.containsKey('adminNotes')) {
      return false;
    }
    if (l$adminNotes != lOther$adminNotes) {
      return false;
    }
    final l$events = events;
    final lOther$events = other.events;
    if (_$data.containsKey('events') != other._$data.containsKey('events')) {
      return false;
    }
    if (l$events != null && lOther$events != null) {
      if (l$events.length != lOther$events.length) {
        return false;
      }
      for (int i = 0; i < l$events.length; i++) {
        final l$events$entry = l$events[i];
        final lOther$events$entry = lOther$events[i];
        if (l$events$entry != lOther$events$entry) {
          return false;
        }
      }
    } else if (l$events != lOther$events) {
      return false;
    }
    final l$metadata = metadata;
    final lOther$metadata = other.metadata;
    if (_$data.containsKey('metadata') !=
        other._$data.containsKey('metadata')) {
      return false;
    }
    if (l$metadata != lOther$metadata) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (_$data.containsKey('createdAt') !=
        other._$data.containsKey('createdAt')) {
      return false;
    }
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$createdBy = createdBy;
    final lOther$createdBy = other.createdBy;
    if (_$data.containsKey('createdBy') !=
        other._$data.containsKey('createdBy')) {
      return false;
    }
    if (l$createdBy != lOther$createdBy) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (_$data.containsKey('updatedAt') !=
        other._$data.containsKey('updatedAt')) {
      return false;
    }
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    final l$updatedBy = updatedBy;
    final lOther$updatedBy = other.updatedBy;
    if (_$data.containsKey('updatedBy') !=
        other._$data.containsKey('updatedBy')) {
      return false;
    }
    if (l$updatedBy != lOther$updatedBy) {
      return false;
    }
    final l$deletedAt = deletedAt;
    final lOther$deletedAt = other.deletedAt;
    if (_$data.containsKey('deletedAt') !=
        other._$data.containsKey('deletedAt')) {
      return false;
    }
    if (l$deletedAt != lOther$deletedAt) {
      return false;
    }
    final l$deletedBy = deletedBy;
    final lOther$deletedBy = other.deletedBy;
    if (_$data.containsKey('deletedBy') !=
        other._$data.containsKey('deletedBy')) {
      return false;
    }
    if (l$deletedBy != lOther$deletedBy) {
      return false;
    }
    final l$groupId = groupId;
    final lOther$groupId = other.groupId;
    if (_$data.containsKey('groupId') != other._$data.containsKey('groupId')) {
      return false;
    }
    if (l$groupId != lOther$groupId) {
      return false;
    }
    final l$groupIdent = groupIdent;
    final lOther$groupIdent = other.groupIdent;
    if (_$data.containsKey('groupIdent') !=
        other._$data.containsKey('groupIdent')) {
      return false;
    }
    if (l$groupIdent != lOther$groupIdent) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (_$data.containsKey('userId') != other._$data.containsKey('userId')) {
      return false;
    }
    if (l$userId != lOther$userId) {
      return false;
    }
    final l$roles = roles;
    final lOther$roles = other.roles;
    if (_$data.containsKey('roles') != other._$data.containsKey('roles')) {
      return false;
    }
    if (l$roles != null && lOther$roles != null) {
      if (l$roles.length != lOther$roles.length) {
        return false;
      }
      for (int i = 0; i < l$roles.length; i++) {
        final l$roles$entry = l$roles[i];
        final lOther$roles$entry = lOther$roles[i];
        if (l$roles$entry != lOther$roles$entry) {
          return false;
        }
      }
    } else if (l$roles != lOther$roles) {
      return false;
    }
    final l$expertisesTextIds = expertisesTextIds;
    final lOther$expertisesTextIds = other.expertisesTextIds;
    if (_$data.containsKey('expertisesTextIds') !=
        other._$data.containsKey('expertisesTextIds')) {
      return false;
    }
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
    if (_$data.containsKey('industriesTextIds') !=
        other._$data.containsKey('industriesTextIds')) {
      return false;
    }
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
    final l$helpICanOffer = helpICanOffer;
    final lOther$helpICanOffer = other.helpICanOffer;
    if (_$data.containsKey('helpICanOffer') !=
        other._$data.containsKey('helpICanOffer')) {
      return false;
    }
    if (l$helpICanOffer != lOther$helpICanOffer) {
      return false;
    }
    final l$expectationsForMentees = expectationsForMentees;
    final lOther$expectationsForMentees = other.expectationsForMentees;
    if (_$data.containsKey('expectationsForMentees') !=
        other._$data.containsKey('expectationsForMentees')) {
      return false;
    }
    if (l$expectationsForMentees != lOther$expectationsForMentees) {
      return false;
    }
    final l$menteePreparationInstructions = menteePreparationInstructions;
    final lOther$menteePreparationInstructions =
        other.menteePreparationInstructions;
    if (_$data.containsKey('menteePreparationInstructions') !=
        other._$data.containsKey('menteePreparationInstructions')) {
      return false;
    }
    if (l$menteePreparationInstructions !=
        lOther$menteePreparationInstructions) {
      return false;
    }
    final l$endorsements = endorsements;
    final lOther$endorsements = other.endorsements;
    if (_$data.containsKey('endorsements') !=
        other._$data.containsKey('endorsements')) {
      return false;
    }
    if (l$endorsements != lOther$endorsements) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$adminNotes = adminNotes;
    final l$events = events;
    final l$metadata = metadata;
    final l$createdAt = createdAt;
    final l$createdBy = createdBy;
    final l$updatedAt = updatedAt;
    final l$updatedBy = updatedBy;
    final l$deletedAt = deletedAt;
    final l$deletedBy = deletedBy;
    final l$groupId = groupId;
    final l$groupIdent = groupIdent;
    final l$userId = userId;
    final l$roles = roles;
    final l$expertisesTextIds = expertisesTextIds;
    final l$industriesTextIds = industriesTextIds;
    final l$helpICanOffer = helpICanOffer;
    final l$expectationsForMentees = expectationsForMentees;
    final l$menteePreparationInstructions = menteePreparationInstructions;
    final l$endorsements = endorsements;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('adminNotes') ? l$adminNotes : const {},
      _$data.containsKey('events')
          ? l$events == null
              ? null
              : Object.hashAll(l$events.map((v) => v))
          : const {},
      _$data.containsKey('metadata') ? l$metadata : const {},
      _$data.containsKey('createdAt') ? l$createdAt : const {},
      _$data.containsKey('createdBy') ? l$createdBy : const {},
      _$data.containsKey('updatedAt') ? l$updatedAt : const {},
      _$data.containsKey('updatedBy') ? l$updatedBy : const {},
      _$data.containsKey('deletedAt') ? l$deletedAt : const {},
      _$data.containsKey('deletedBy') ? l$deletedBy : const {},
      _$data.containsKey('groupId') ? l$groupId : const {},
      _$data.containsKey('groupIdent') ? l$groupIdent : const {},
      _$data.containsKey('userId') ? l$userId : const {},
      _$data.containsKey('roles')
          ? l$roles == null
              ? null
              : Object.hashAll(l$roles.map((v) => v))
          : const {},
      _$data.containsKey('expertisesTextIds')
          ? l$expertisesTextIds == null
              ? null
              : Object.hashAll(l$expertisesTextIds.map((v) => v))
          : const {},
      _$data.containsKey('industriesTextIds')
          ? l$industriesTextIds == null
              ? null
              : Object.hashAll(l$industriesTextIds.map((v) => v))
          : const {},
      _$data.containsKey('helpICanOffer') ? l$helpICanOffer : const {},
      _$data.containsKey('expectationsForMentees')
          ? l$expectationsForMentees
          : const {},
      _$data.containsKey('menteePreparationInstructions')
          ? l$menteePreparationInstructions
          : const {},
      _$data.containsKey('endorsements') ? l$endorsements : const {},
    ]);
  }
}

abstract class CopyWith$Input$MentorsGroupMembershipInput<TRes> {
  factory CopyWith$Input$MentorsGroupMembershipInput(
    Input$MentorsGroupMembershipInput instance,
    TRes Function(Input$MentorsGroupMembershipInput) then,
  ) = _CopyWithImpl$Input$MentorsGroupMembershipInput;

  factory CopyWith$Input$MentorsGroupMembershipInput.stub(TRes res) =
      _CopyWithStubImpl$Input$MentorsGroupMembershipInput;

  TRes call({
    String? id,
    String? adminNotes,
    List<Input$ModelEventInput>? events,
    Input$BaseModelMetadataInput? metadata,
    DateTime? createdAt,
    String? createdBy,
    DateTime? updatedAt,
    String? updatedBy,
    DateTime? deletedAt,
    String? deletedBy,
    String? groupId,
    String? groupIdent,
    String? userId,
    List<Enum$GroupMembershipRole>? roles,
    List<String>? expertisesTextIds,
    List<String>? industriesTextIds,
    String? helpICanOffer,
    String? expectationsForMentees,
    String? menteePreparationInstructions,
    int? endorsements,
  });
  TRes events(
      Iterable<Input$ModelEventInput>? Function(
              Iterable<CopyWith$Input$ModelEventInput<Input$ModelEventInput>>?)
          _fn);
  CopyWith$Input$BaseModelMetadataInput<TRes> get metadata;
}

class _CopyWithImpl$Input$MentorsGroupMembershipInput<TRes>
    implements CopyWith$Input$MentorsGroupMembershipInput<TRes> {
  _CopyWithImpl$Input$MentorsGroupMembershipInput(
    this._instance,
    this._then,
  );

  final Input$MentorsGroupMembershipInput _instance;

  final TRes Function(Input$MentorsGroupMembershipInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? adminNotes = _undefined,
    Object? events = _undefined,
    Object? metadata = _undefined,
    Object? createdAt = _undefined,
    Object? createdBy = _undefined,
    Object? updatedAt = _undefined,
    Object? updatedBy = _undefined,
    Object? deletedAt = _undefined,
    Object? deletedBy = _undefined,
    Object? groupId = _undefined,
    Object? groupIdent = _undefined,
    Object? userId = _undefined,
    Object? roles = _undefined,
    Object? expertisesTextIds = _undefined,
    Object? industriesTextIds = _undefined,
    Object? helpICanOffer = _undefined,
    Object? expectationsForMentees = _undefined,
    Object? menteePreparationInstructions = _undefined,
    Object? endorsements = _undefined,
  }) =>
      _then(Input$MentorsGroupMembershipInput._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as String?),
        if (adminNotes != _undefined) 'adminNotes': (adminNotes as String?),
        if (events != _undefined)
          'events': (events as List<Input$ModelEventInput>?),
        if (metadata != _undefined)
          'metadata': (metadata as Input$BaseModelMetadataInput?),
        if (createdAt != _undefined) 'createdAt': (createdAt as DateTime?),
        if (createdBy != _undefined) 'createdBy': (createdBy as String?),
        if (updatedAt != _undefined) 'updatedAt': (updatedAt as DateTime?),
        if (updatedBy != _undefined) 'updatedBy': (updatedBy as String?),
        if (deletedAt != _undefined) 'deletedAt': (deletedAt as DateTime?),
        if (deletedBy != _undefined) 'deletedBy': (deletedBy as String?),
        if (groupId != _undefined) 'groupId': (groupId as String?),
        if (groupIdent != _undefined) 'groupIdent': (groupIdent as String?),
        if (userId != _undefined) 'userId': (userId as String?),
        if (roles != _undefined)
          'roles': (roles as List<Enum$GroupMembershipRole>?),
        if (expertisesTextIds != _undefined && expertisesTextIds != null)
          'expertisesTextIds': (expertisesTextIds as List<String>),
        if (industriesTextIds != _undefined && industriesTextIds != null)
          'industriesTextIds': (industriesTextIds as List<String>),
        if (helpICanOffer != _undefined)
          'helpICanOffer': (helpICanOffer as String?),
        if (expectationsForMentees != _undefined)
          'expectationsForMentees': (expectationsForMentees as String?),
        if (menteePreparationInstructions != _undefined)
          'menteePreparationInstructions':
              (menteePreparationInstructions as String?),
        if (endorsements != _undefined) 'endorsements': (endorsements as int?),
      }));
  TRes events(
          Iterable<Input$ModelEventInput>? Function(
                  Iterable<
                      CopyWith$Input$ModelEventInput<Input$ModelEventInput>>?)
              _fn) =>
      call(
          events:
              _fn(_instance.events?.map((e) => CopyWith$Input$ModelEventInput(
                    e,
                    (i) => i,
                  )))?.toList());
  CopyWith$Input$BaseModelMetadataInput<TRes> get metadata {
    final local$metadata = _instance.metadata;
    return local$metadata == null
        ? CopyWith$Input$BaseModelMetadataInput.stub(_then(_instance))
        : CopyWith$Input$BaseModelMetadataInput(
            local$metadata, (e) => call(metadata: e));
  }
}

class _CopyWithStubImpl$Input$MentorsGroupMembershipInput<TRes>
    implements CopyWith$Input$MentorsGroupMembershipInput<TRes> {
  _CopyWithStubImpl$Input$MentorsGroupMembershipInput(this._res);

  TRes _res;

  call({
    String? id,
    String? adminNotes,
    List<Input$ModelEventInput>? events,
    Input$BaseModelMetadataInput? metadata,
    DateTime? createdAt,
    String? createdBy,
    DateTime? updatedAt,
    String? updatedBy,
    DateTime? deletedAt,
    String? deletedBy,
    String? groupId,
    String? groupIdent,
    String? userId,
    List<Enum$GroupMembershipRole>? roles,
    List<String>? expertisesTextIds,
    List<String>? industriesTextIds,
    String? helpICanOffer,
    String? expectationsForMentees,
    String? menteePreparationInstructions,
    int? endorsements,
  }) =>
      _res;
  events(_fn) => _res;
  CopyWith$Input$BaseModelMetadataInput<TRes> get metadata =>
      CopyWith$Input$BaseModelMetadataInput.stub(_res);
}

class Input$NotificationInput {
  factory Input$NotificationInput({
    String? id,
    String? adminNotes,
    List<Input$ModelEventInput>? events,
    Input$BaseModelMetadataInput? metadata,
    DateTime? createdAt,
    String? createdBy,
    DateTime? updatedAt,
    String? updatedBy,
    DateTime? deletedAt,
    String? deletedBy,
    String? templateId,
    String? templateName,
    String? toUserId,
    String? multiStepActionId,
    String? initiatorId,
    String? replyingToId,
    String? title,
    String? messageText,
    String? shortMessageText,
    String? htmlMessage,
    String? language,
    String? appLink,
    Enum$AppAction? action0,
    Enum$AppAction? action1,
    Enum$AppAction? action2,
    Enum$AppAction? actionTaken,
    bool? sendEmail,
    bool? sendInAppMessage,
    bool? sendPushNotification,
    bool? sendSms,
    DateTime? emailSentAt,
    DateTime? inAppMessageSentAt,
    DateTime? inAppMessageReceivedAt,
    DateTime? pushNotificationSentAt,
    DateTime? smsSentAt,
    String? emailSendReport,
    String? pushNotificationSendReport,
    String? smsSendReport,
    int? sentMessagesCount,
    Input$NonMemberInfoInput? recipientInfo,
    Input$NotificationInput? context,
  }) =>
      Input$NotificationInput._({
        if (id != null) r'id': id,
        if (adminNotes != null) r'adminNotes': adminNotes,
        if (events != null) r'events': events,
        if (metadata != null) r'metadata': metadata,
        if (createdAt != null) r'createdAt': createdAt,
        if (createdBy != null) r'createdBy': createdBy,
        if (updatedAt != null) r'updatedAt': updatedAt,
        if (updatedBy != null) r'updatedBy': updatedBy,
        if (deletedAt != null) r'deletedAt': deletedAt,
        if (deletedBy != null) r'deletedBy': deletedBy,
        if (templateId != null) r'templateId': templateId,
        if (templateName != null) r'templateName': templateName,
        if (toUserId != null) r'toUserId': toUserId,
        if (multiStepActionId != null) r'multiStepActionId': multiStepActionId,
        if (initiatorId != null) r'initiatorId': initiatorId,
        if (replyingToId != null) r'replyingToId': replyingToId,
        if (title != null) r'title': title,
        if (messageText != null) r'messageText': messageText,
        if (shortMessageText != null) r'shortMessageText': shortMessageText,
        if (htmlMessage != null) r'htmlMessage': htmlMessage,
        if (language != null) r'language': language,
        if (appLink != null) r'appLink': appLink,
        if (action0 != null) r'action0': action0,
        if (action1 != null) r'action1': action1,
        if (action2 != null) r'action2': action2,
        if (actionTaken != null) r'actionTaken': actionTaken,
        if (sendEmail != null) r'sendEmail': sendEmail,
        if (sendInAppMessage != null) r'sendInAppMessage': sendInAppMessage,
        if (sendPushNotification != null)
          r'sendPushNotification': sendPushNotification,
        if (sendSms != null) r'sendSms': sendSms,
        if (emailSentAt != null) r'emailSentAt': emailSentAt,
        if (inAppMessageSentAt != null)
          r'inAppMessageSentAt': inAppMessageSentAt,
        if (inAppMessageReceivedAt != null)
          r'inAppMessageReceivedAt': inAppMessageReceivedAt,
        if (pushNotificationSentAt != null)
          r'pushNotificationSentAt': pushNotificationSentAt,
        if (smsSentAt != null) r'smsSentAt': smsSentAt,
        if (emailSendReport != null) r'emailSendReport': emailSendReport,
        if (pushNotificationSendReport != null)
          r'pushNotificationSendReport': pushNotificationSendReport,
        if (smsSendReport != null) r'smsSendReport': smsSendReport,
        if (sentMessagesCount != null) r'sentMessagesCount': sentMessagesCount,
        if (recipientInfo != null) r'recipientInfo': recipientInfo,
        if (context != null) r'context': context,
      });

  Input$NotificationInput._(this._$data);

  factory Input$NotificationInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as String?);
    }
    if (data.containsKey('adminNotes')) {
      final l$adminNotes = data['adminNotes'];
      result$data['adminNotes'] = (l$adminNotes as String?);
    }
    if (data.containsKey('events')) {
      final l$events = data['events'];
      result$data['events'] = (l$events as List<dynamic>?)
          ?.map((e) =>
              Input$ModelEventInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('metadata')) {
      final l$metadata = data['metadata'];
      result$data['metadata'] = l$metadata == null
          ? null
          : Input$BaseModelMetadataInput.fromJson(
              (l$metadata as Map<String, dynamic>));
    }
    if (data.containsKey('createdAt')) {
      final l$createdAt = data['createdAt'];
      result$data['createdAt'] =
          l$createdAt == null ? null : DateTime.parse((l$createdAt as String));
    }
    if (data.containsKey('createdBy')) {
      final l$createdBy = data['createdBy'];
      result$data['createdBy'] = (l$createdBy as String?);
    }
    if (data.containsKey('updatedAt')) {
      final l$updatedAt = data['updatedAt'];
      result$data['updatedAt'] =
          l$updatedAt == null ? null : DateTime.parse((l$updatedAt as String));
    }
    if (data.containsKey('updatedBy')) {
      final l$updatedBy = data['updatedBy'];
      result$data['updatedBy'] = (l$updatedBy as String?);
    }
    if (data.containsKey('deletedAt')) {
      final l$deletedAt = data['deletedAt'];
      result$data['deletedAt'] =
          l$deletedAt == null ? null : DateTime.parse((l$deletedAt as String));
    }
    if (data.containsKey('deletedBy')) {
      final l$deletedBy = data['deletedBy'];
      result$data['deletedBy'] = (l$deletedBy as String?);
    }
    if (data.containsKey('templateId')) {
      final l$templateId = data['templateId'];
      result$data['templateId'] = (l$templateId as String?);
    }
    if (data.containsKey('templateName')) {
      final l$templateName = data['templateName'];
      result$data['templateName'] = (l$templateName as String?);
    }
    if (data.containsKey('toUserId')) {
      final l$toUserId = data['toUserId'];
      result$data['toUserId'] = (l$toUserId as String?);
    }
    if (data.containsKey('multiStepActionId')) {
      final l$multiStepActionId = data['multiStepActionId'];
      result$data['multiStepActionId'] = (l$multiStepActionId as String?);
    }
    if (data.containsKey('initiatorId')) {
      final l$initiatorId = data['initiatorId'];
      result$data['initiatorId'] = (l$initiatorId as String?);
    }
    if (data.containsKey('replyingToId')) {
      final l$replyingToId = data['replyingToId'];
      result$data['replyingToId'] = (l$replyingToId as String?);
    }
    if (data.containsKey('title')) {
      final l$title = data['title'];
      result$data['title'] = (l$title as String?);
    }
    if (data.containsKey('messageText')) {
      final l$messageText = data['messageText'];
      result$data['messageText'] = (l$messageText as String?);
    }
    if (data.containsKey('shortMessageText')) {
      final l$shortMessageText = data['shortMessageText'];
      result$data['shortMessageText'] = (l$shortMessageText as String?);
    }
    if (data.containsKey('htmlMessage')) {
      final l$htmlMessage = data['htmlMessage'];
      result$data['htmlMessage'] = (l$htmlMessage as String?);
    }
    if (data.containsKey('language')) {
      final l$language = data['language'];
      result$data['language'] = (l$language as String?);
    }
    if (data.containsKey('appLink')) {
      final l$appLink = data['appLink'];
      result$data['appLink'] = (l$appLink as String?);
    }
    if (data.containsKey('action0')) {
      final l$action0 = data['action0'];
      result$data['action0'] = l$action0 == null
          ? null
          : fromJson$Enum$AppAction((l$action0 as String));
    }
    if (data.containsKey('action1')) {
      final l$action1 = data['action1'];
      result$data['action1'] = l$action1 == null
          ? null
          : fromJson$Enum$AppAction((l$action1 as String));
    }
    if (data.containsKey('action2')) {
      final l$action2 = data['action2'];
      result$data['action2'] = l$action2 == null
          ? null
          : fromJson$Enum$AppAction((l$action2 as String));
    }
    if (data.containsKey('actionTaken')) {
      final l$actionTaken = data['actionTaken'];
      result$data['actionTaken'] = l$actionTaken == null
          ? null
          : fromJson$Enum$AppAction((l$actionTaken as String));
    }
    if (data.containsKey('sendEmail')) {
      final l$sendEmail = data['sendEmail'];
      result$data['sendEmail'] = (l$sendEmail as bool?);
    }
    if (data.containsKey('sendInAppMessage')) {
      final l$sendInAppMessage = data['sendInAppMessage'];
      result$data['sendInAppMessage'] = (l$sendInAppMessage as bool?);
    }
    if (data.containsKey('sendPushNotification')) {
      final l$sendPushNotification = data['sendPushNotification'];
      result$data['sendPushNotification'] = (l$sendPushNotification as bool?);
    }
    if (data.containsKey('sendSms')) {
      final l$sendSms = data['sendSms'];
      result$data['sendSms'] = (l$sendSms as bool?);
    }
    if (data.containsKey('emailSentAt')) {
      final l$emailSentAt = data['emailSentAt'];
      result$data['emailSentAt'] = l$emailSentAt == null
          ? null
          : DateTime.parse((l$emailSentAt as String));
    }
    if (data.containsKey('inAppMessageSentAt')) {
      final l$inAppMessageSentAt = data['inAppMessageSentAt'];
      result$data['inAppMessageSentAt'] = l$inAppMessageSentAt == null
          ? null
          : DateTime.parse((l$inAppMessageSentAt as String));
    }
    if (data.containsKey('inAppMessageReceivedAt')) {
      final l$inAppMessageReceivedAt = data['inAppMessageReceivedAt'];
      result$data['inAppMessageReceivedAt'] = l$inAppMessageReceivedAt == null
          ? null
          : DateTime.parse((l$inAppMessageReceivedAt as String));
    }
    if (data.containsKey('pushNotificationSentAt')) {
      final l$pushNotificationSentAt = data['pushNotificationSentAt'];
      result$data['pushNotificationSentAt'] = l$pushNotificationSentAt == null
          ? null
          : DateTime.parse((l$pushNotificationSentAt as String));
    }
    if (data.containsKey('smsSentAt')) {
      final l$smsSentAt = data['smsSentAt'];
      result$data['smsSentAt'] =
          l$smsSentAt == null ? null : DateTime.parse((l$smsSentAt as String));
    }
    if (data.containsKey('emailSendReport')) {
      final l$emailSendReport = data['emailSendReport'];
      result$data['emailSendReport'] = (l$emailSendReport as String?);
    }
    if (data.containsKey('pushNotificationSendReport')) {
      final l$pushNotificationSendReport = data['pushNotificationSendReport'];
      result$data['pushNotificationSendReport'] =
          (l$pushNotificationSendReport as String?);
    }
    if (data.containsKey('smsSendReport')) {
      final l$smsSendReport = data['smsSendReport'];
      result$data['smsSendReport'] = (l$smsSendReport as String?);
    }
    if (data.containsKey('sentMessagesCount')) {
      final l$sentMessagesCount = data['sentMessagesCount'];
      result$data['sentMessagesCount'] = (l$sentMessagesCount as int?);
    }
    if (data.containsKey('recipientInfo')) {
      final l$recipientInfo = data['recipientInfo'];
      result$data['recipientInfo'] = l$recipientInfo == null
          ? null
          : Input$NonMemberInfoInput.fromJson(
              (l$recipientInfo as Map<String, dynamic>));
    }
    if (data.containsKey('context')) {
      final l$context = data['context'];
      result$data['context'] = l$context == null
          ? null
          : Input$NotificationInput.fromJson(
              (l$context as Map<String, dynamic>));
    }
    return Input$NotificationInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get id => (_$data['id'] as String?);
  String? get adminNotes => (_$data['adminNotes'] as String?);
  List<Input$ModelEventInput>? get events =>
      (_$data['events'] as List<Input$ModelEventInput>?);
  Input$BaseModelMetadataInput? get metadata =>
      (_$data['metadata'] as Input$BaseModelMetadataInput?);
  DateTime? get createdAt => (_$data['createdAt'] as DateTime?);
  String? get createdBy => (_$data['createdBy'] as String?);
  DateTime? get updatedAt => (_$data['updatedAt'] as DateTime?);
  String? get updatedBy => (_$data['updatedBy'] as String?);
  DateTime? get deletedAt => (_$data['deletedAt'] as DateTime?);
  String? get deletedBy => (_$data['deletedBy'] as String?);
  String? get templateId => (_$data['templateId'] as String?);
  String? get templateName => (_$data['templateName'] as String?);
  String? get toUserId => (_$data['toUserId'] as String?);
  String? get multiStepActionId => (_$data['multiStepActionId'] as String?);
  String? get initiatorId => (_$data['initiatorId'] as String?);
  String? get replyingToId => (_$data['replyingToId'] as String?);
  String? get title => (_$data['title'] as String?);
  String? get messageText => (_$data['messageText'] as String?);
  String? get shortMessageText => (_$data['shortMessageText'] as String?);
  String? get htmlMessage => (_$data['htmlMessage'] as String?);
  String? get language => (_$data['language'] as String?);
  String? get appLink => (_$data['appLink'] as String?);
  Enum$AppAction? get action0 => (_$data['action0'] as Enum$AppAction?);
  Enum$AppAction? get action1 => (_$data['action1'] as Enum$AppAction?);
  Enum$AppAction? get action2 => (_$data['action2'] as Enum$AppAction?);
  Enum$AppAction? get actionTaken => (_$data['actionTaken'] as Enum$AppAction?);
  bool? get sendEmail => (_$data['sendEmail'] as bool?);
  bool? get sendInAppMessage => (_$data['sendInAppMessage'] as bool?);
  bool? get sendPushNotification => (_$data['sendPushNotification'] as bool?);
  bool? get sendSms => (_$data['sendSms'] as bool?);
  DateTime? get emailSentAt => (_$data['emailSentAt'] as DateTime?);
  DateTime? get inAppMessageSentAt =>
      (_$data['inAppMessageSentAt'] as DateTime?);
  DateTime? get inAppMessageReceivedAt =>
      (_$data['inAppMessageReceivedAt'] as DateTime?);
  DateTime? get pushNotificationSentAt =>
      (_$data['pushNotificationSentAt'] as DateTime?);
  DateTime? get smsSentAt => (_$data['smsSentAt'] as DateTime?);
  String? get emailSendReport => (_$data['emailSendReport'] as String?);
  String? get pushNotificationSendReport =>
      (_$data['pushNotificationSendReport'] as String?);
  String? get smsSendReport => (_$data['smsSendReport'] as String?);
  int? get sentMessagesCount => (_$data['sentMessagesCount'] as int?);
  Input$NonMemberInfoInput? get recipientInfo =>
      (_$data['recipientInfo'] as Input$NonMemberInfoInput?);
  Input$NotificationInput? get context =>
      (_$data['context'] as Input$NotificationInput?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('adminNotes')) {
      final l$adminNotes = adminNotes;
      result$data['adminNotes'] = l$adminNotes;
    }
    if (_$data.containsKey('events')) {
      final l$events = events;
      result$data['events'] = l$events?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('metadata')) {
      final l$metadata = metadata;
      result$data['metadata'] = l$metadata?.toJson();
    }
    if (_$data.containsKey('createdAt')) {
      final l$createdAt = createdAt;
      result$data['createdAt'] = l$createdAt?.toIso8601String();
    }
    if (_$data.containsKey('createdBy')) {
      final l$createdBy = createdBy;
      result$data['createdBy'] = l$createdBy;
    }
    if (_$data.containsKey('updatedAt')) {
      final l$updatedAt = updatedAt;
      result$data['updatedAt'] = l$updatedAt?.toIso8601String();
    }
    if (_$data.containsKey('updatedBy')) {
      final l$updatedBy = updatedBy;
      result$data['updatedBy'] = l$updatedBy;
    }
    if (_$data.containsKey('deletedAt')) {
      final l$deletedAt = deletedAt;
      result$data['deletedAt'] = l$deletedAt?.toIso8601String();
    }
    if (_$data.containsKey('deletedBy')) {
      final l$deletedBy = deletedBy;
      result$data['deletedBy'] = l$deletedBy;
    }
    if (_$data.containsKey('templateId')) {
      final l$templateId = templateId;
      result$data['templateId'] = l$templateId;
    }
    if (_$data.containsKey('templateName')) {
      final l$templateName = templateName;
      result$data['templateName'] = l$templateName;
    }
    if (_$data.containsKey('toUserId')) {
      final l$toUserId = toUserId;
      result$data['toUserId'] = l$toUserId;
    }
    if (_$data.containsKey('multiStepActionId')) {
      final l$multiStepActionId = multiStepActionId;
      result$data['multiStepActionId'] = l$multiStepActionId;
    }
    if (_$data.containsKey('initiatorId')) {
      final l$initiatorId = initiatorId;
      result$data['initiatorId'] = l$initiatorId;
    }
    if (_$data.containsKey('replyingToId')) {
      final l$replyingToId = replyingToId;
      result$data['replyingToId'] = l$replyingToId;
    }
    if (_$data.containsKey('title')) {
      final l$title = title;
      result$data['title'] = l$title;
    }
    if (_$data.containsKey('messageText')) {
      final l$messageText = messageText;
      result$data['messageText'] = l$messageText;
    }
    if (_$data.containsKey('shortMessageText')) {
      final l$shortMessageText = shortMessageText;
      result$data['shortMessageText'] = l$shortMessageText;
    }
    if (_$data.containsKey('htmlMessage')) {
      final l$htmlMessage = htmlMessage;
      result$data['htmlMessage'] = l$htmlMessage;
    }
    if (_$data.containsKey('language')) {
      final l$language = language;
      result$data['language'] = l$language;
    }
    if (_$data.containsKey('appLink')) {
      final l$appLink = appLink;
      result$data['appLink'] = l$appLink;
    }
    if (_$data.containsKey('action0')) {
      final l$action0 = action0;
      result$data['action0'] =
          l$action0 == null ? null : toJson$Enum$AppAction(l$action0);
    }
    if (_$data.containsKey('action1')) {
      final l$action1 = action1;
      result$data['action1'] =
          l$action1 == null ? null : toJson$Enum$AppAction(l$action1);
    }
    if (_$data.containsKey('action2')) {
      final l$action2 = action2;
      result$data['action2'] =
          l$action2 == null ? null : toJson$Enum$AppAction(l$action2);
    }
    if (_$data.containsKey('actionTaken')) {
      final l$actionTaken = actionTaken;
      result$data['actionTaken'] =
          l$actionTaken == null ? null : toJson$Enum$AppAction(l$actionTaken);
    }
    if (_$data.containsKey('sendEmail')) {
      final l$sendEmail = sendEmail;
      result$data['sendEmail'] = l$sendEmail;
    }
    if (_$data.containsKey('sendInAppMessage')) {
      final l$sendInAppMessage = sendInAppMessage;
      result$data['sendInAppMessage'] = l$sendInAppMessage;
    }
    if (_$data.containsKey('sendPushNotification')) {
      final l$sendPushNotification = sendPushNotification;
      result$data['sendPushNotification'] = l$sendPushNotification;
    }
    if (_$data.containsKey('sendSms')) {
      final l$sendSms = sendSms;
      result$data['sendSms'] = l$sendSms;
    }
    if (_$data.containsKey('emailSentAt')) {
      final l$emailSentAt = emailSentAt;
      result$data['emailSentAt'] = l$emailSentAt?.toIso8601String();
    }
    if (_$data.containsKey('inAppMessageSentAt')) {
      final l$inAppMessageSentAt = inAppMessageSentAt;
      result$data['inAppMessageSentAt'] =
          l$inAppMessageSentAt?.toIso8601String();
    }
    if (_$data.containsKey('inAppMessageReceivedAt')) {
      final l$inAppMessageReceivedAt = inAppMessageReceivedAt;
      result$data['inAppMessageReceivedAt'] =
          l$inAppMessageReceivedAt?.toIso8601String();
    }
    if (_$data.containsKey('pushNotificationSentAt')) {
      final l$pushNotificationSentAt = pushNotificationSentAt;
      result$data['pushNotificationSentAt'] =
          l$pushNotificationSentAt?.toIso8601String();
    }
    if (_$data.containsKey('smsSentAt')) {
      final l$smsSentAt = smsSentAt;
      result$data['smsSentAt'] = l$smsSentAt?.toIso8601String();
    }
    if (_$data.containsKey('emailSendReport')) {
      final l$emailSendReport = emailSendReport;
      result$data['emailSendReport'] = l$emailSendReport;
    }
    if (_$data.containsKey('pushNotificationSendReport')) {
      final l$pushNotificationSendReport = pushNotificationSendReport;
      result$data['pushNotificationSendReport'] = l$pushNotificationSendReport;
    }
    if (_$data.containsKey('smsSendReport')) {
      final l$smsSendReport = smsSendReport;
      result$data['smsSendReport'] = l$smsSendReport;
    }
    if (_$data.containsKey('sentMessagesCount')) {
      final l$sentMessagesCount = sentMessagesCount;
      result$data['sentMessagesCount'] = l$sentMessagesCount;
    }
    if (_$data.containsKey('recipientInfo')) {
      final l$recipientInfo = recipientInfo;
      result$data['recipientInfo'] = l$recipientInfo?.toJson();
    }
    if (_$data.containsKey('context')) {
      final l$context = context;
      result$data['context'] = l$context?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$NotificationInput<Input$NotificationInput> get copyWith =>
      CopyWith$Input$NotificationInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$NotificationInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$adminNotes = adminNotes;
    final lOther$adminNotes = other.adminNotes;
    if (_$data.containsKey('adminNotes') !=
        other._$data.containsKey('adminNotes')) {
      return false;
    }
    if (l$adminNotes != lOther$adminNotes) {
      return false;
    }
    final l$events = events;
    final lOther$events = other.events;
    if (_$data.containsKey('events') != other._$data.containsKey('events')) {
      return false;
    }
    if (l$events != null && lOther$events != null) {
      if (l$events.length != lOther$events.length) {
        return false;
      }
      for (int i = 0; i < l$events.length; i++) {
        final l$events$entry = l$events[i];
        final lOther$events$entry = lOther$events[i];
        if (l$events$entry != lOther$events$entry) {
          return false;
        }
      }
    } else if (l$events != lOther$events) {
      return false;
    }
    final l$metadata = metadata;
    final lOther$metadata = other.metadata;
    if (_$data.containsKey('metadata') !=
        other._$data.containsKey('metadata')) {
      return false;
    }
    if (l$metadata != lOther$metadata) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (_$data.containsKey('createdAt') !=
        other._$data.containsKey('createdAt')) {
      return false;
    }
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$createdBy = createdBy;
    final lOther$createdBy = other.createdBy;
    if (_$data.containsKey('createdBy') !=
        other._$data.containsKey('createdBy')) {
      return false;
    }
    if (l$createdBy != lOther$createdBy) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (_$data.containsKey('updatedAt') !=
        other._$data.containsKey('updatedAt')) {
      return false;
    }
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    final l$updatedBy = updatedBy;
    final lOther$updatedBy = other.updatedBy;
    if (_$data.containsKey('updatedBy') !=
        other._$data.containsKey('updatedBy')) {
      return false;
    }
    if (l$updatedBy != lOther$updatedBy) {
      return false;
    }
    final l$deletedAt = deletedAt;
    final lOther$deletedAt = other.deletedAt;
    if (_$data.containsKey('deletedAt') !=
        other._$data.containsKey('deletedAt')) {
      return false;
    }
    if (l$deletedAt != lOther$deletedAt) {
      return false;
    }
    final l$deletedBy = deletedBy;
    final lOther$deletedBy = other.deletedBy;
    if (_$data.containsKey('deletedBy') !=
        other._$data.containsKey('deletedBy')) {
      return false;
    }
    if (l$deletedBy != lOther$deletedBy) {
      return false;
    }
    final l$templateId = templateId;
    final lOther$templateId = other.templateId;
    if (_$data.containsKey('templateId') !=
        other._$data.containsKey('templateId')) {
      return false;
    }
    if (l$templateId != lOther$templateId) {
      return false;
    }
    final l$templateName = templateName;
    final lOther$templateName = other.templateName;
    if (_$data.containsKey('templateName') !=
        other._$data.containsKey('templateName')) {
      return false;
    }
    if (l$templateName != lOther$templateName) {
      return false;
    }
    final l$toUserId = toUserId;
    final lOther$toUserId = other.toUserId;
    if (_$data.containsKey('toUserId') !=
        other._$data.containsKey('toUserId')) {
      return false;
    }
    if (l$toUserId != lOther$toUserId) {
      return false;
    }
    final l$multiStepActionId = multiStepActionId;
    final lOther$multiStepActionId = other.multiStepActionId;
    if (_$data.containsKey('multiStepActionId') !=
        other._$data.containsKey('multiStepActionId')) {
      return false;
    }
    if (l$multiStepActionId != lOther$multiStepActionId) {
      return false;
    }
    final l$initiatorId = initiatorId;
    final lOther$initiatorId = other.initiatorId;
    if (_$data.containsKey('initiatorId') !=
        other._$data.containsKey('initiatorId')) {
      return false;
    }
    if (l$initiatorId != lOther$initiatorId) {
      return false;
    }
    final l$replyingToId = replyingToId;
    final lOther$replyingToId = other.replyingToId;
    if (_$data.containsKey('replyingToId') !=
        other._$data.containsKey('replyingToId')) {
      return false;
    }
    if (l$replyingToId != lOther$replyingToId) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (_$data.containsKey('title') != other._$data.containsKey('title')) {
      return false;
    }
    if (l$title != lOther$title) {
      return false;
    }
    final l$messageText = messageText;
    final lOther$messageText = other.messageText;
    if (_$data.containsKey('messageText') !=
        other._$data.containsKey('messageText')) {
      return false;
    }
    if (l$messageText != lOther$messageText) {
      return false;
    }
    final l$shortMessageText = shortMessageText;
    final lOther$shortMessageText = other.shortMessageText;
    if (_$data.containsKey('shortMessageText') !=
        other._$data.containsKey('shortMessageText')) {
      return false;
    }
    if (l$shortMessageText != lOther$shortMessageText) {
      return false;
    }
    final l$htmlMessage = htmlMessage;
    final lOther$htmlMessage = other.htmlMessage;
    if (_$data.containsKey('htmlMessage') !=
        other._$data.containsKey('htmlMessage')) {
      return false;
    }
    if (l$htmlMessage != lOther$htmlMessage) {
      return false;
    }
    final l$language = language;
    final lOther$language = other.language;
    if (_$data.containsKey('language') !=
        other._$data.containsKey('language')) {
      return false;
    }
    if (l$language != lOther$language) {
      return false;
    }
    final l$appLink = appLink;
    final lOther$appLink = other.appLink;
    if (_$data.containsKey('appLink') != other._$data.containsKey('appLink')) {
      return false;
    }
    if (l$appLink != lOther$appLink) {
      return false;
    }
    final l$action0 = action0;
    final lOther$action0 = other.action0;
    if (_$data.containsKey('action0') != other._$data.containsKey('action0')) {
      return false;
    }
    if (l$action0 != lOther$action0) {
      return false;
    }
    final l$action1 = action1;
    final lOther$action1 = other.action1;
    if (_$data.containsKey('action1') != other._$data.containsKey('action1')) {
      return false;
    }
    if (l$action1 != lOther$action1) {
      return false;
    }
    final l$action2 = action2;
    final lOther$action2 = other.action2;
    if (_$data.containsKey('action2') != other._$data.containsKey('action2')) {
      return false;
    }
    if (l$action2 != lOther$action2) {
      return false;
    }
    final l$actionTaken = actionTaken;
    final lOther$actionTaken = other.actionTaken;
    if (_$data.containsKey('actionTaken') !=
        other._$data.containsKey('actionTaken')) {
      return false;
    }
    if (l$actionTaken != lOther$actionTaken) {
      return false;
    }
    final l$sendEmail = sendEmail;
    final lOther$sendEmail = other.sendEmail;
    if (_$data.containsKey('sendEmail') !=
        other._$data.containsKey('sendEmail')) {
      return false;
    }
    if (l$sendEmail != lOther$sendEmail) {
      return false;
    }
    final l$sendInAppMessage = sendInAppMessage;
    final lOther$sendInAppMessage = other.sendInAppMessage;
    if (_$data.containsKey('sendInAppMessage') !=
        other._$data.containsKey('sendInAppMessage')) {
      return false;
    }
    if (l$sendInAppMessage != lOther$sendInAppMessage) {
      return false;
    }
    final l$sendPushNotification = sendPushNotification;
    final lOther$sendPushNotification = other.sendPushNotification;
    if (_$data.containsKey('sendPushNotification') !=
        other._$data.containsKey('sendPushNotification')) {
      return false;
    }
    if (l$sendPushNotification != lOther$sendPushNotification) {
      return false;
    }
    final l$sendSms = sendSms;
    final lOther$sendSms = other.sendSms;
    if (_$data.containsKey('sendSms') != other._$data.containsKey('sendSms')) {
      return false;
    }
    if (l$sendSms != lOther$sendSms) {
      return false;
    }
    final l$emailSentAt = emailSentAt;
    final lOther$emailSentAt = other.emailSentAt;
    if (_$data.containsKey('emailSentAt') !=
        other._$data.containsKey('emailSentAt')) {
      return false;
    }
    if (l$emailSentAt != lOther$emailSentAt) {
      return false;
    }
    final l$inAppMessageSentAt = inAppMessageSentAt;
    final lOther$inAppMessageSentAt = other.inAppMessageSentAt;
    if (_$data.containsKey('inAppMessageSentAt') !=
        other._$data.containsKey('inAppMessageSentAt')) {
      return false;
    }
    if (l$inAppMessageSentAt != lOther$inAppMessageSentAt) {
      return false;
    }
    final l$inAppMessageReceivedAt = inAppMessageReceivedAt;
    final lOther$inAppMessageReceivedAt = other.inAppMessageReceivedAt;
    if (_$data.containsKey('inAppMessageReceivedAt') !=
        other._$data.containsKey('inAppMessageReceivedAt')) {
      return false;
    }
    if (l$inAppMessageReceivedAt != lOther$inAppMessageReceivedAt) {
      return false;
    }
    final l$pushNotificationSentAt = pushNotificationSentAt;
    final lOther$pushNotificationSentAt = other.pushNotificationSentAt;
    if (_$data.containsKey('pushNotificationSentAt') !=
        other._$data.containsKey('pushNotificationSentAt')) {
      return false;
    }
    if (l$pushNotificationSentAt != lOther$pushNotificationSentAt) {
      return false;
    }
    final l$smsSentAt = smsSentAt;
    final lOther$smsSentAt = other.smsSentAt;
    if (_$data.containsKey('smsSentAt') !=
        other._$data.containsKey('smsSentAt')) {
      return false;
    }
    if (l$smsSentAt != lOther$smsSentAt) {
      return false;
    }
    final l$emailSendReport = emailSendReport;
    final lOther$emailSendReport = other.emailSendReport;
    if (_$data.containsKey('emailSendReport') !=
        other._$data.containsKey('emailSendReport')) {
      return false;
    }
    if (l$emailSendReport != lOther$emailSendReport) {
      return false;
    }
    final l$pushNotificationSendReport = pushNotificationSendReport;
    final lOther$pushNotificationSendReport = other.pushNotificationSendReport;
    if (_$data.containsKey('pushNotificationSendReport') !=
        other._$data.containsKey('pushNotificationSendReport')) {
      return false;
    }
    if (l$pushNotificationSendReport != lOther$pushNotificationSendReport) {
      return false;
    }
    final l$smsSendReport = smsSendReport;
    final lOther$smsSendReport = other.smsSendReport;
    if (_$data.containsKey('smsSendReport') !=
        other._$data.containsKey('smsSendReport')) {
      return false;
    }
    if (l$smsSendReport != lOther$smsSendReport) {
      return false;
    }
    final l$sentMessagesCount = sentMessagesCount;
    final lOther$sentMessagesCount = other.sentMessagesCount;
    if (_$data.containsKey('sentMessagesCount') !=
        other._$data.containsKey('sentMessagesCount')) {
      return false;
    }
    if (l$sentMessagesCount != lOther$sentMessagesCount) {
      return false;
    }
    final l$recipientInfo = recipientInfo;
    final lOther$recipientInfo = other.recipientInfo;
    if (_$data.containsKey('recipientInfo') !=
        other._$data.containsKey('recipientInfo')) {
      return false;
    }
    if (l$recipientInfo != lOther$recipientInfo) {
      return false;
    }
    final l$context = context;
    final lOther$context = other.context;
    if (_$data.containsKey('context') != other._$data.containsKey('context')) {
      return false;
    }
    if (l$context != lOther$context) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$adminNotes = adminNotes;
    final l$events = events;
    final l$metadata = metadata;
    final l$createdAt = createdAt;
    final l$createdBy = createdBy;
    final l$updatedAt = updatedAt;
    final l$updatedBy = updatedBy;
    final l$deletedAt = deletedAt;
    final l$deletedBy = deletedBy;
    final l$templateId = templateId;
    final l$templateName = templateName;
    final l$toUserId = toUserId;
    final l$multiStepActionId = multiStepActionId;
    final l$initiatorId = initiatorId;
    final l$replyingToId = replyingToId;
    final l$title = title;
    final l$messageText = messageText;
    final l$shortMessageText = shortMessageText;
    final l$htmlMessage = htmlMessage;
    final l$language = language;
    final l$appLink = appLink;
    final l$action0 = action0;
    final l$action1 = action1;
    final l$action2 = action2;
    final l$actionTaken = actionTaken;
    final l$sendEmail = sendEmail;
    final l$sendInAppMessage = sendInAppMessage;
    final l$sendPushNotification = sendPushNotification;
    final l$sendSms = sendSms;
    final l$emailSentAt = emailSentAt;
    final l$inAppMessageSentAt = inAppMessageSentAt;
    final l$inAppMessageReceivedAt = inAppMessageReceivedAt;
    final l$pushNotificationSentAt = pushNotificationSentAt;
    final l$smsSentAt = smsSentAt;
    final l$emailSendReport = emailSendReport;
    final l$pushNotificationSendReport = pushNotificationSendReport;
    final l$smsSendReport = smsSendReport;
    final l$sentMessagesCount = sentMessagesCount;
    final l$recipientInfo = recipientInfo;
    final l$context = context;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('adminNotes') ? l$adminNotes : const {},
      _$data.containsKey('events')
          ? l$events == null
              ? null
              : Object.hashAll(l$events.map((v) => v))
          : const {},
      _$data.containsKey('metadata') ? l$metadata : const {},
      _$data.containsKey('createdAt') ? l$createdAt : const {},
      _$data.containsKey('createdBy') ? l$createdBy : const {},
      _$data.containsKey('updatedAt') ? l$updatedAt : const {},
      _$data.containsKey('updatedBy') ? l$updatedBy : const {},
      _$data.containsKey('deletedAt') ? l$deletedAt : const {},
      _$data.containsKey('deletedBy') ? l$deletedBy : const {},
      _$data.containsKey('templateId') ? l$templateId : const {},
      _$data.containsKey('templateName') ? l$templateName : const {},
      _$data.containsKey('toUserId') ? l$toUserId : const {},
      _$data.containsKey('multiStepActionId') ? l$multiStepActionId : const {},
      _$data.containsKey('initiatorId') ? l$initiatorId : const {},
      _$data.containsKey('replyingToId') ? l$replyingToId : const {},
      _$data.containsKey('title') ? l$title : const {},
      _$data.containsKey('messageText') ? l$messageText : const {},
      _$data.containsKey('shortMessageText') ? l$shortMessageText : const {},
      _$data.containsKey('htmlMessage') ? l$htmlMessage : const {},
      _$data.containsKey('language') ? l$language : const {},
      _$data.containsKey('appLink') ? l$appLink : const {},
      _$data.containsKey('action0') ? l$action0 : const {},
      _$data.containsKey('action1') ? l$action1 : const {},
      _$data.containsKey('action2') ? l$action2 : const {},
      _$data.containsKey('actionTaken') ? l$actionTaken : const {},
      _$data.containsKey('sendEmail') ? l$sendEmail : const {},
      _$data.containsKey('sendInAppMessage') ? l$sendInAppMessage : const {},
      _$data.containsKey('sendPushNotification')
          ? l$sendPushNotification
          : const {},
      _$data.containsKey('sendSms') ? l$sendSms : const {},
      _$data.containsKey('emailSentAt') ? l$emailSentAt : const {},
      _$data.containsKey('inAppMessageSentAt')
          ? l$inAppMessageSentAt
          : const {},
      _$data.containsKey('inAppMessageReceivedAt')
          ? l$inAppMessageReceivedAt
          : const {},
      _$data.containsKey('pushNotificationSentAt')
          ? l$pushNotificationSentAt
          : const {},
      _$data.containsKey('smsSentAt') ? l$smsSentAt : const {},
      _$data.containsKey('emailSendReport') ? l$emailSendReport : const {},
      _$data.containsKey('pushNotificationSendReport')
          ? l$pushNotificationSendReport
          : const {},
      _$data.containsKey('smsSendReport') ? l$smsSendReport : const {},
      _$data.containsKey('sentMessagesCount') ? l$sentMessagesCount : const {},
      _$data.containsKey('recipientInfo') ? l$recipientInfo : const {},
      _$data.containsKey('context') ? l$context : const {},
    ]);
  }
}

abstract class CopyWith$Input$NotificationInput<TRes> {
  factory CopyWith$Input$NotificationInput(
    Input$NotificationInput instance,
    TRes Function(Input$NotificationInput) then,
  ) = _CopyWithImpl$Input$NotificationInput;

  factory CopyWith$Input$NotificationInput.stub(TRes res) =
      _CopyWithStubImpl$Input$NotificationInput;

  TRes call({
    String? id,
    String? adminNotes,
    List<Input$ModelEventInput>? events,
    Input$BaseModelMetadataInput? metadata,
    DateTime? createdAt,
    String? createdBy,
    DateTime? updatedAt,
    String? updatedBy,
    DateTime? deletedAt,
    String? deletedBy,
    String? templateId,
    String? templateName,
    String? toUserId,
    String? multiStepActionId,
    String? initiatorId,
    String? replyingToId,
    String? title,
    String? messageText,
    String? shortMessageText,
    String? htmlMessage,
    String? language,
    String? appLink,
    Enum$AppAction? action0,
    Enum$AppAction? action1,
    Enum$AppAction? action2,
    Enum$AppAction? actionTaken,
    bool? sendEmail,
    bool? sendInAppMessage,
    bool? sendPushNotification,
    bool? sendSms,
    DateTime? emailSentAt,
    DateTime? inAppMessageSentAt,
    DateTime? inAppMessageReceivedAt,
    DateTime? pushNotificationSentAt,
    DateTime? smsSentAt,
    String? emailSendReport,
    String? pushNotificationSendReport,
    String? smsSendReport,
    int? sentMessagesCount,
    Input$NonMemberInfoInput? recipientInfo,
    Input$NotificationInput? context,
  });
  TRes events(
      Iterable<Input$ModelEventInput>? Function(
              Iterable<CopyWith$Input$ModelEventInput<Input$ModelEventInput>>?)
          _fn);
  CopyWith$Input$BaseModelMetadataInput<TRes> get metadata;
  CopyWith$Input$NonMemberInfoInput<TRes> get recipientInfo;
  CopyWith$Input$NotificationInput<TRes> get context;
}

class _CopyWithImpl$Input$NotificationInput<TRes>
    implements CopyWith$Input$NotificationInput<TRes> {
  _CopyWithImpl$Input$NotificationInput(
    this._instance,
    this._then,
  );

  final Input$NotificationInput _instance;

  final TRes Function(Input$NotificationInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? adminNotes = _undefined,
    Object? events = _undefined,
    Object? metadata = _undefined,
    Object? createdAt = _undefined,
    Object? createdBy = _undefined,
    Object? updatedAt = _undefined,
    Object? updatedBy = _undefined,
    Object? deletedAt = _undefined,
    Object? deletedBy = _undefined,
    Object? templateId = _undefined,
    Object? templateName = _undefined,
    Object? toUserId = _undefined,
    Object? multiStepActionId = _undefined,
    Object? initiatorId = _undefined,
    Object? replyingToId = _undefined,
    Object? title = _undefined,
    Object? messageText = _undefined,
    Object? shortMessageText = _undefined,
    Object? htmlMessage = _undefined,
    Object? language = _undefined,
    Object? appLink = _undefined,
    Object? action0 = _undefined,
    Object? action1 = _undefined,
    Object? action2 = _undefined,
    Object? actionTaken = _undefined,
    Object? sendEmail = _undefined,
    Object? sendInAppMessage = _undefined,
    Object? sendPushNotification = _undefined,
    Object? sendSms = _undefined,
    Object? emailSentAt = _undefined,
    Object? inAppMessageSentAt = _undefined,
    Object? inAppMessageReceivedAt = _undefined,
    Object? pushNotificationSentAt = _undefined,
    Object? smsSentAt = _undefined,
    Object? emailSendReport = _undefined,
    Object? pushNotificationSendReport = _undefined,
    Object? smsSendReport = _undefined,
    Object? sentMessagesCount = _undefined,
    Object? recipientInfo = _undefined,
    Object? context = _undefined,
  }) =>
      _then(Input$NotificationInput._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as String?),
        if (adminNotes != _undefined) 'adminNotes': (adminNotes as String?),
        if (events != _undefined)
          'events': (events as List<Input$ModelEventInput>?),
        if (metadata != _undefined)
          'metadata': (metadata as Input$BaseModelMetadataInput?),
        if (createdAt != _undefined) 'createdAt': (createdAt as DateTime?),
        if (createdBy != _undefined) 'createdBy': (createdBy as String?),
        if (updatedAt != _undefined) 'updatedAt': (updatedAt as DateTime?),
        if (updatedBy != _undefined) 'updatedBy': (updatedBy as String?),
        if (deletedAt != _undefined) 'deletedAt': (deletedAt as DateTime?),
        if (deletedBy != _undefined) 'deletedBy': (deletedBy as String?),
        if (templateId != _undefined) 'templateId': (templateId as String?),
        if (templateName != _undefined)
          'templateName': (templateName as String?),
        if (toUserId != _undefined) 'toUserId': (toUserId as String?),
        if (multiStepActionId != _undefined)
          'multiStepActionId': (multiStepActionId as String?),
        if (initiatorId != _undefined) 'initiatorId': (initiatorId as String?),
        if (replyingToId != _undefined)
          'replyingToId': (replyingToId as String?),
        if (title != _undefined) 'title': (title as String?),
        if (messageText != _undefined) 'messageText': (messageText as String?),
        if (shortMessageText != _undefined)
          'shortMessageText': (shortMessageText as String?),
        if (htmlMessage != _undefined) 'htmlMessage': (htmlMessage as String?),
        if (language != _undefined) 'language': (language as String?),
        if (appLink != _undefined) 'appLink': (appLink as String?),
        if (action0 != _undefined) 'action0': (action0 as Enum$AppAction?),
        if (action1 != _undefined) 'action1': (action1 as Enum$AppAction?),
        if (action2 != _undefined) 'action2': (action2 as Enum$AppAction?),
        if (actionTaken != _undefined)
          'actionTaken': (actionTaken as Enum$AppAction?),
        if (sendEmail != _undefined) 'sendEmail': (sendEmail as bool?),
        if (sendInAppMessage != _undefined)
          'sendInAppMessage': (sendInAppMessage as bool?),
        if (sendPushNotification != _undefined)
          'sendPushNotification': (sendPushNotification as bool?),
        if (sendSms != _undefined) 'sendSms': (sendSms as bool?),
        if (emailSentAt != _undefined)
          'emailSentAt': (emailSentAt as DateTime?),
        if (inAppMessageSentAt != _undefined)
          'inAppMessageSentAt': (inAppMessageSentAt as DateTime?),
        if (inAppMessageReceivedAt != _undefined)
          'inAppMessageReceivedAt': (inAppMessageReceivedAt as DateTime?),
        if (pushNotificationSentAt != _undefined)
          'pushNotificationSentAt': (pushNotificationSentAt as DateTime?),
        if (smsSentAt != _undefined) 'smsSentAt': (smsSentAt as DateTime?),
        if (emailSendReport != _undefined)
          'emailSendReport': (emailSendReport as String?),
        if (pushNotificationSendReport != _undefined)
          'pushNotificationSendReport': (pushNotificationSendReport as String?),
        if (smsSendReport != _undefined)
          'smsSendReport': (smsSendReport as String?),
        if (sentMessagesCount != _undefined)
          'sentMessagesCount': (sentMessagesCount as int?),
        if (recipientInfo != _undefined)
          'recipientInfo': (recipientInfo as Input$NonMemberInfoInput?),
        if (context != _undefined)
          'context': (context as Input$NotificationInput?),
      }));
  TRes events(
          Iterable<Input$ModelEventInput>? Function(
                  Iterable<
                      CopyWith$Input$ModelEventInput<Input$ModelEventInput>>?)
              _fn) =>
      call(
          events:
              _fn(_instance.events?.map((e) => CopyWith$Input$ModelEventInput(
                    e,
                    (i) => i,
                  )))?.toList());
  CopyWith$Input$BaseModelMetadataInput<TRes> get metadata {
    final local$metadata = _instance.metadata;
    return local$metadata == null
        ? CopyWith$Input$BaseModelMetadataInput.stub(_then(_instance))
        : CopyWith$Input$BaseModelMetadataInput(
            local$metadata, (e) => call(metadata: e));
  }

  CopyWith$Input$NonMemberInfoInput<TRes> get recipientInfo {
    final local$recipientInfo = _instance.recipientInfo;
    return local$recipientInfo == null
        ? CopyWith$Input$NonMemberInfoInput.stub(_then(_instance))
        : CopyWith$Input$NonMemberInfoInput(
            local$recipientInfo, (e) => call(recipientInfo: e));
  }

  CopyWith$Input$NotificationInput<TRes> get context {
    final local$context = _instance.context;
    return local$context == null
        ? CopyWith$Input$NotificationInput.stub(_then(_instance))
        : CopyWith$Input$NotificationInput(
            local$context, (e) => call(context: e));
  }
}

class _CopyWithStubImpl$Input$NotificationInput<TRes>
    implements CopyWith$Input$NotificationInput<TRes> {
  _CopyWithStubImpl$Input$NotificationInput(this._res);

  TRes _res;

  call({
    String? id,
    String? adminNotes,
    List<Input$ModelEventInput>? events,
    Input$BaseModelMetadataInput? metadata,
    DateTime? createdAt,
    String? createdBy,
    DateTime? updatedAt,
    String? updatedBy,
    DateTime? deletedAt,
    String? deletedBy,
    String? templateId,
    String? templateName,
    String? toUserId,
    String? multiStepActionId,
    String? initiatorId,
    String? replyingToId,
    String? title,
    String? messageText,
    String? shortMessageText,
    String? htmlMessage,
    String? language,
    String? appLink,
    Enum$AppAction? action0,
    Enum$AppAction? action1,
    Enum$AppAction? action2,
    Enum$AppAction? actionTaken,
    bool? sendEmail,
    bool? sendInAppMessage,
    bool? sendPushNotification,
    bool? sendSms,
    DateTime? emailSentAt,
    DateTime? inAppMessageSentAt,
    DateTime? inAppMessageReceivedAt,
    DateTime? pushNotificationSentAt,
    DateTime? smsSentAt,
    String? emailSendReport,
    String? pushNotificationSendReport,
    String? smsSendReport,
    int? sentMessagesCount,
    Input$NonMemberInfoInput? recipientInfo,
    Input$NotificationInput? context,
  }) =>
      _res;
  events(_fn) => _res;
  CopyWith$Input$BaseModelMetadataInput<TRes> get metadata =>
      CopyWith$Input$BaseModelMetadataInput.stub(_res);
  CopyWith$Input$NonMemberInfoInput<TRes> get recipientInfo =>
      CopyWith$Input$NonMemberInfoInput.stub(_res);
  CopyWith$Input$NotificationInput<TRes> get context =>
      CopyWith$Input$NotificationInput.stub(_res);
}

class Input$NonMemberInfoInput {
  factory Input$NonMemberInfoInput({
    String? firstName,
    String? lastName,
    String? email,
    String? phoneNumber,
  }) =>
      Input$NonMemberInfoInput._({
        if (firstName != null) r'firstName': firstName,
        if (lastName != null) r'lastName': lastName,
        if (email != null) r'email': email,
        if (phoneNumber != null) r'phoneNumber': phoneNumber,
      });

  Input$NonMemberInfoInput._(this._$data);

  factory Input$NonMemberInfoInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('firstName')) {
      final l$firstName = data['firstName'];
      result$data['firstName'] = (l$firstName as String?);
    }
    if (data.containsKey('lastName')) {
      final l$lastName = data['lastName'];
      result$data['lastName'] = (l$lastName as String?);
    }
    if (data.containsKey('email')) {
      final l$email = data['email'];
      result$data['email'] = (l$email as String?);
    }
    if (data.containsKey('phoneNumber')) {
      final l$phoneNumber = data['phoneNumber'];
      result$data['phoneNumber'] = (l$phoneNumber as String?);
    }
    return Input$NonMemberInfoInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get firstName => (_$data['firstName'] as String?);
  String? get lastName => (_$data['lastName'] as String?);
  String? get email => (_$data['email'] as String?);
  String? get phoneNumber => (_$data['phoneNumber'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('firstName')) {
      final l$firstName = firstName;
      result$data['firstName'] = l$firstName;
    }
    if (_$data.containsKey('lastName')) {
      final l$lastName = lastName;
      result$data['lastName'] = l$lastName;
    }
    if (_$data.containsKey('email')) {
      final l$email = email;
      result$data['email'] = l$email;
    }
    if (_$data.containsKey('phoneNumber')) {
      final l$phoneNumber = phoneNumber;
      result$data['phoneNumber'] = l$phoneNumber;
    }
    return result$data;
  }

  CopyWith$Input$NonMemberInfoInput<Input$NonMemberInfoInput> get copyWith =>
      CopyWith$Input$NonMemberInfoInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$NonMemberInfoInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$firstName = firstName;
    final lOther$firstName = other.firstName;
    if (_$data.containsKey('firstName') !=
        other._$data.containsKey('firstName')) {
      return false;
    }
    if (l$firstName != lOther$firstName) {
      return false;
    }
    final l$lastName = lastName;
    final lOther$lastName = other.lastName;
    if (_$data.containsKey('lastName') !=
        other._$data.containsKey('lastName')) {
      return false;
    }
    if (l$lastName != lOther$lastName) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (_$data.containsKey('email') != other._$data.containsKey('email')) {
      return false;
    }
    if (l$email != lOther$email) {
      return false;
    }
    final l$phoneNumber = phoneNumber;
    final lOther$phoneNumber = other.phoneNumber;
    if (_$data.containsKey('phoneNumber') !=
        other._$data.containsKey('phoneNumber')) {
      return false;
    }
    if (l$phoneNumber != lOther$phoneNumber) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$firstName = firstName;
    final l$lastName = lastName;
    final l$email = email;
    final l$phoneNumber = phoneNumber;
    return Object.hashAll([
      _$data.containsKey('firstName') ? l$firstName : const {},
      _$data.containsKey('lastName') ? l$lastName : const {},
      _$data.containsKey('email') ? l$email : const {},
      _$data.containsKey('phoneNumber') ? l$phoneNumber : const {},
    ]);
  }
}

abstract class CopyWith$Input$NonMemberInfoInput<TRes> {
  factory CopyWith$Input$NonMemberInfoInput(
    Input$NonMemberInfoInput instance,
    TRes Function(Input$NonMemberInfoInput) then,
  ) = _CopyWithImpl$Input$NonMemberInfoInput;

  factory CopyWith$Input$NonMemberInfoInput.stub(TRes res) =
      _CopyWithStubImpl$Input$NonMemberInfoInput;

  TRes call({
    String? firstName,
    String? lastName,
    String? email,
    String? phoneNumber,
  });
}

class _CopyWithImpl$Input$NonMemberInfoInput<TRes>
    implements CopyWith$Input$NonMemberInfoInput<TRes> {
  _CopyWithImpl$Input$NonMemberInfoInput(
    this._instance,
    this._then,
  );

  final Input$NonMemberInfoInput _instance;

  final TRes Function(Input$NonMemberInfoInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? email = _undefined,
    Object? phoneNumber = _undefined,
  }) =>
      _then(Input$NonMemberInfoInput._({
        ..._instance._$data,
        if (firstName != _undefined) 'firstName': (firstName as String?),
        if (lastName != _undefined) 'lastName': (lastName as String?),
        if (email != _undefined) 'email': (email as String?),
        if (phoneNumber != _undefined) 'phoneNumber': (phoneNumber as String?),
      }));
}

class _CopyWithStubImpl$Input$NonMemberInfoInput<TRes>
    implements CopyWith$Input$NonMemberInfoInput<TRes> {
  _CopyWithStubImpl$Input$NonMemberInfoInput(this._res);

  TRes _res;

  call({
    String? firstName,
    String? lastName,
    String? email,
    String? phoneNumber,
  }) =>
      _res;
}

class Input$SendMultiStepActionNotificationInput {
  factory Input$SendMultiStepActionNotificationInput({
    String? actionId,
    Enum$NotificationMethod? notificationMethod,
  }) =>
      Input$SendMultiStepActionNotificationInput._({
        if (actionId != null) r'actionId': actionId,
        if (notificationMethod != null)
          r'notificationMethod': notificationMethod,
      });

  Input$SendMultiStepActionNotificationInput._(this._$data);

  factory Input$SendMultiStepActionNotificationInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('actionId')) {
      final l$actionId = data['actionId'];
      result$data['actionId'] = (l$actionId as String);
    }
    if (data.containsKey('notificationMethod')) {
      final l$notificationMethod = data['notificationMethod'];
      result$data['notificationMethod'] = l$notificationMethod == null
          ? null
          : fromJson$Enum$NotificationMethod((l$notificationMethod as String));
    }
    return Input$SendMultiStepActionNotificationInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get actionId => (_$data['actionId'] as String?);
  Enum$NotificationMethod? get notificationMethod =>
      (_$data['notificationMethod'] as Enum$NotificationMethod?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('actionId')) {
      final l$actionId = actionId;
      result$data['actionId'] = (l$actionId as String);
    }
    if (_$data.containsKey('notificationMethod')) {
      final l$notificationMethod = notificationMethod;
      result$data['notificationMethod'] = l$notificationMethod == null
          ? null
          : toJson$Enum$NotificationMethod(l$notificationMethod);
    }
    return result$data;
  }

  CopyWith$Input$SendMultiStepActionNotificationInput<
          Input$SendMultiStepActionNotificationInput>
      get copyWith => CopyWith$Input$SendMultiStepActionNotificationInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$SendMultiStepActionNotificationInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$actionId = actionId;
    final lOther$actionId = other.actionId;
    if (_$data.containsKey('actionId') !=
        other._$data.containsKey('actionId')) {
      return false;
    }
    if (l$actionId != lOther$actionId) {
      return false;
    }
    final l$notificationMethod = notificationMethod;
    final lOther$notificationMethod = other.notificationMethod;
    if (_$data.containsKey('notificationMethod') !=
        other._$data.containsKey('notificationMethod')) {
      return false;
    }
    if (l$notificationMethod != lOther$notificationMethod) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$actionId = actionId;
    final l$notificationMethod = notificationMethod;
    return Object.hashAll([
      _$data.containsKey('actionId') ? l$actionId : const {},
      _$data.containsKey('notificationMethod')
          ? l$notificationMethod
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$SendMultiStepActionNotificationInput<TRes> {
  factory CopyWith$Input$SendMultiStepActionNotificationInput(
    Input$SendMultiStepActionNotificationInput instance,
    TRes Function(Input$SendMultiStepActionNotificationInput) then,
  ) = _CopyWithImpl$Input$SendMultiStepActionNotificationInput;

  factory CopyWith$Input$SendMultiStepActionNotificationInput.stub(TRes res) =
      _CopyWithStubImpl$Input$SendMultiStepActionNotificationInput;

  TRes call({
    String? actionId,
    Enum$NotificationMethod? notificationMethod,
  });
}

class _CopyWithImpl$Input$SendMultiStepActionNotificationInput<TRes>
    implements CopyWith$Input$SendMultiStepActionNotificationInput<TRes> {
  _CopyWithImpl$Input$SendMultiStepActionNotificationInput(
    this._instance,
    this._then,
  );

  final Input$SendMultiStepActionNotificationInput _instance;

  final TRes Function(Input$SendMultiStepActionNotificationInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? actionId = _undefined,
    Object? notificationMethod = _undefined,
  }) =>
      _then(Input$SendMultiStepActionNotificationInput._({
        ..._instance._$data,
        if (actionId != _undefined && actionId != null)
          'actionId': (actionId as String),
        if (notificationMethod != _undefined)
          'notificationMethod':
              (notificationMethod as Enum$NotificationMethod?),
      }));
}

class _CopyWithStubImpl$Input$SendMultiStepActionNotificationInput<TRes>
    implements CopyWith$Input$SendMultiStepActionNotificationInput<TRes> {
  _CopyWithStubImpl$Input$SendMultiStepActionNotificationInput(this._res);

  TRes _res;

  call({
    String? actionId,
    Enum$NotificationMethod? notificationMethod,
  }) =>
      _res;
}

class Input$NotificationTemplateInput {
  factory Input$NotificationTemplateInput({
    String? id,
    String? adminNotes,
    List<Input$ModelEventInput>? events,
    Input$BaseModelMetadataInput? metadata,
    DateTime? createdAt,
    String? createdBy,
    DateTime? updatedAt,
    String? updatedBy,
    DateTime? deletedAt,
    String? deletedBy,
    String? templateId,
    Enum$NotificationTemplateName? name,
    String? description,
    String? titleEn,
    String? messageTextEn,
    String? shortMessageTextEn,
    String? htmlMessageEn,
    String? version,
    String? senderName,
    String? senderEmail,
    Enum$AppAction? action0,
    Enum$AppAction? action1,
    Enum$AppAction? action2,
    bool? sendEmail,
    bool? sendInAppMessage,
    bool? sendPushNotification,
    bool? sendSms,
    bool? isCore,
  }) =>
      Input$NotificationTemplateInput._({
        if (id != null) r'id': id,
        if (adminNotes != null) r'adminNotes': adminNotes,
        if (events != null) r'events': events,
        if (metadata != null) r'metadata': metadata,
        if (createdAt != null) r'createdAt': createdAt,
        if (createdBy != null) r'createdBy': createdBy,
        if (updatedAt != null) r'updatedAt': updatedAt,
        if (updatedBy != null) r'updatedBy': updatedBy,
        if (deletedAt != null) r'deletedAt': deletedAt,
        if (deletedBy != null) r'deletedBy': deletedBy,
        if (templateId != null) r'templateId': templateId,
        if (name != null) r'name': name,
        if (description != null) r'description': description,
        if (titleEn != null) r'titleEn': titleEn,
        if (messageTextEn != null) r'messageTextEn': messageTextEn,
        if (shortMessageTextEn != null)
          r'shortMessageTextEn': shortMessageTextEn,
        if (htmlMessageEn != null) r'htmlMessageEn': htmlMessageEn,
        if (version != null) r'version': version,
        if (senderName != null) r'senderName': senderName,
        if (senderEmail != null) r'senderEmail': senderEmail,
        if (action0 != null) r'action0': action0,
        if (action1 != null) r'action1': action1,
        if (action2 != null) r'action2': action2,
        if (sendEmail != null) r'sendEmail': sendEmail,
        if (sendInAppMessage != null) r'sendInAppMessage': sendInAppMessage,
        if (sendPushNotification != null)
          r'sendPushNotification': sendPushNotification,
        if (sendSms != null) r'sendSms': sendSms,
        if (isCore != null) r'isCore': isCore,
      });

  Input$NotificationTemplateInput._(this._$data);

  factory Input$NotificationTemplateInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as String?);
    }
    if (data.containsKey('adminNotes')) {
      final l$adminNotes = data['adminNotes'];
      result$data['adminNotes'] = (l$adminNotes as String?);
    }
    if (data.containsKey('events')) {
      final l$events = data['events'];
      result$data['events'] = (l$events as List<dynamic>?)
          ?.map((e) =>
              Input$ModelEventInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('metadata')) {
      final l$metadata = data['metadata'];
      result$data['metadata'] = l$metadata == null
          ? null
          : Input$BaseModelMetadataInput.fromJson(
              (l$metadata as Map<String, dynamic>));
    }
    if (data.containsKey('createdAt')) {
      final l$createdAt = data['createdAt'];
      result$data['createdAt'] =
          l$createdAt == null ? null : DateTime.parse((l$createdAt as String));
    }
    if (data.containsKey('createdBy')) {
      final l$createdBy = data['createdBy'];
      result$data['createdBy'] = (l$createdBy as String?);
    }
    if (data.containsKey('updatedAt')) {
      final l$updatedAt = data['updatedAt'];
      result$data['updatedAt'] =
          l$updatedAt == null ? null : DateTime.parse((l$updatedAt as String));
    }
    if (data.containsKey('updatedBy')) {
      final l$updatedBy = data['updatedBy'];
      result$data['updatedBy'] = (l$updatedBy as String?);
    }
    if (data.containsKey('deletedAt')) {
      final l$deletedAt = data['deletedAt'];
      result$data['deletedAt'] =
          l$deletedAt == null ? null : DateTime.parse((l$deletedAt as String));
    }
    if (data.containsKey('deletedBy')) {
      final l$deletedBy = data['deletedBy'];
      result$data['deletedBy'] = (l$deletedBy as String?);
    }
    if (data.containsKey('templateId')) {
      final l$templateId = data['templateId'];
      result$data['templateId'] = (l$templateId as String?);
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : fromJson$Enum$NotificationTemplateName((l$name as String));
    }
    if (data.containsKey('description')) {
      final l$description = data['description'];
      result$data['description'] = (l$description as String?);
    }
    if (data.containsKey('titleEn')) {
      final l$titleEn = data['titleEn'];
      result$data['titleEn'] = (l$titleEn as String?);
    }
    if (data.containsKey('messageTextEn')) {
      final l$messageTextEn = data['messageTextEn'];
      result$data['messageTextEn'] = (l$messageTextEn as String?);
    }
    if (data.containsKey('shortMessageTextEn')) {
      final l$shortMessageTextEn = data['shortMessageTextEn'];
      result$data['shortMessageTextEn'] = (l$shortMessageTextEn as String?);
    }
    if (data.containsKey('htmlMessageEn')) {
      final l$htmlMessageEn = data['htmlMessageEn'];
      result$data['htmlMessageEn'] = (l$htmlMessageEn as String?);
    }
    if (data.containsKey('version')) {
      final l$version = data['version'];
      result$data['version'] = (l$version as String?);
    }
    if (data.containsKey('senderName')) {
      final l$senderName = data['senderName'];
      result$data['senderName'] = (l$senderName as String?);
    }
    if (data.containsKey('senderEmail')) {
      final l$senderEmail = data['senderEmail'];
      result$data['senderEmail'] = (l$senderEmail as String?);
    }
    if (data.containsKey('action0')) {
      final l$action0 = data['action0'];
      result$data['action0'] = l$action0 == null
          ? null
          : fromJson$Enum$AppAction((l$action0 as String));
    }
    if (data.containsKey('action1')) {
      final l$action1 = data['action1'];
      result$data['action1'] = l$action1 == null
          ? null
          : fromJson$Enum$AppAction((l$action1 as String));
    }
    if (data.containsKey('action2')) {
      final l$action2 = data['action2'];
      result$data['action2'] = l$action2 == null
          ? null
          : fromJson$Enum$AppAction((l$action2 as String));
    }
    if (data.containsKey('sendEmail')) {
      final l$sendEmail = data['sendEmail'];
      result$data['sendEmail'] = (l$sendEmail as bool?);
    }
    if (data.containsKey('sendInAppMessage')) {
      final l$sendInAppMessage = data['sendInAppMessage'];
      result$data['sendInAppMessage'] = (l$sendInAppMessage as bool?);
    }
    if (data.containsKey('sendPushNotification')) {
      final l$sendPushNotification = data['sendPushNotification'];
      result$data['sendPushNotification'] = (l$sendPushNotification as bool?);
    }
    if (data.containsKey('sendSms')) {
      final l$sendSms = data['sendSms'];
      result$data['sendSms'] = (l$sendSms as bool?);
    }
    if (data.containsKey('isCore')) {
      final l$isCore = data['isCore'];
      result$data['isCore'] = (l$isCore as bool?);
    }
    return Input$NotificationTemplateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get id => (_$data['id'] as String?);
  String? get adminNotes => (_$data['adminNotes'] as String?);
  List<Input$ModelEventInput>? get events =>
      (_$data['events'] as List<Input$ModelEventInput>?);
  Input$BaseModelMetadataInput? get metadata =>
      (_$data['metadata'] as Input$BaseModelMetadataInput?);
  DateTime? get createdAt => (_$data['createdAt'] as DateTime?);
  String? get createdBy => (_$data['createdBy'] as String?);
  DateTime? get updatedAt => (_$data['updatedAt'] as DateTime?);
  String? get updatedBy => (_$data['updatedBy'] as String?);
  DateTime? get deletedAt => (_$data['deletedAt'] as DateTime?);
  String? get deletedBy => (_$data['deletedBy'] as String?);
  String? get templateId => (_$data['templateId'] as String?);
  Enum$NotificationTemplateName? get name =>
      (_$data['name'] as Enum$NotificationTemplateName?);
  String? get description => (_$data['description'] as String?);
  String? get titleEn => (_$data['titleEn'] as String?);
  String? get messageTextEn => (_$data['messageTextEn'] as String?);
  String? get shortMessageTextEn => (_$data['shortMessageTextEn'] as String?);
  String? get htmlMessageEn => (_$data['htmlMessageEn'] as String?);
  String? get version => (_$data['version'] as String?);
  String? get senderName => (_$data['senderName'] as String?);
  String? get senderEmail => (_$data['senderEmail'] as String?);
  Enum$AppAction? get action0 => (_$data['action0'] as Enum$AppAction?);
  Enum$AppAction? get action1 => (_$data['action1'] as Enum$AppAction?);
  Enum$AppAction? get action2 => (_$data['action2'] as Enum$AppAction?);
  bool? get sendEmail => (_$data['sendEmail'] as bool?);
  bool? get sendInAppMessage => (_$data['sendInAppMessage'] as bool?);
  bool? get sendPushNotification => (_$data['sendPushNotification'] as bool?);
  bool? get sendSms => (_$data['sendSms'] as bool?);
  bool? get isCore => (_$data['isCore'] as bool?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('adminNotes')) {
      final l$adminNotes = adminNotes;
      result$data['adminNotes'] = l$adminNotes;
    }
    if (_$data.containsKey('events')) {
      final l$events = events;
      result$data['events'] = l$events?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('metadata')) {
      final l$metadata = metadata;
      result$data['metadata'] = l$metadata?.toJson();
    }
    if (_$data.containsKey('createdAt')) {
      final l$createdAt = createdAt;
      result$data['createdAt'] = l$createdAt?.toIso8601String();
    }
    if (_$data.containsKey('createdBy')) {
      final l$createdBy = createdBy;
      result$data['createdBy'] = l$createdBy;
    }
    if (_$data.containsKey('updatedAt')) {
      final l$updatedAt = updatedAt;
      result$data['updatedAt'] = l$updatedAt?.toIso8601String();
    }
    if (_$data.containsKey('updatedBy')) {
      final l$updatedBy = updatedBy;
      result$data['updatedBy'] = l$updatedBy;
    }
    if (_$data.containsKey('deletedAt')) {
      final l$deletedAt = deletedAt;
      result$data['deletedAt'] = l$deletedAt?.toIso8601String();
    }
    if (_$data.containsKey('deletedBy')) {
      final l$deletedBy = deletedBy;
      result$data['deletedBy'] = l$deletedBy;
    }
    if (_$data.containsKey('templateId')) {
      final l$templateId = templateId;
      result$data['templateId'] = l$templateId;
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] =
          l$name == null ? null : toJson$Enum$NotificationTemplateName(l$name);
    }
    if (_$data.containsKey('description')) {
      final l$description = description;
      result$data['description'] = l$description;
    }
    if (_$data.containsKey('titleEn')) {
      final l$titleEn = titleEn;
      result$data['titleEn'] = l$titleEn;
    }
    if (_$data.containsKey('messageTextEn')) {
      final l$messageTextEn = messageTextEn;
      result$data['messageTextEn'] = l$messageTextEn;
    }
    if (_$data.containsKey('shortMessageTextEn')) {
      final l$shortMessageTextEn = shortMessageTextEn;
      result$data['shortMessageTextEn'] = l$shortMessageTextEn;
    }
    if (_$data.containsKey('htmlMessageEn')) {
      final l$htmlMessageEn = htmlMessageEn;
      result$data['htmlMessageEn'] = l$htmlMessageEn;
    }
    if (_$data.containsKey('version')) {
      final l$version = version;
      result$data['version'] = l$version;
    }
    if (_$data.containsKey('senderName')) {
      final l$senderName = senderName;
      result$data['senderName'] = l$senderName;
    }
    if (_$data.containsKey('senderEmail')) {
      final l$senderEmail = senderEmail;
      result$data['senderEmail'] = l$senderEmail;
    }
    if (_$data.containsKey('action0')) {
      final l$action0 = action0;
      result$data['action0'] =
          l$action0 == null ? null : toJson$Enum$AppAction(l$action0);
    }
    if (_$data.containsKey('action1')) {
      final l$action1 = action1;
      result$data['action1'] =
          l$action1 == null ? null : toJson$Enum$AppAction(l$action1);
    }
    if (_$data.containsKey('action2')) {
      final l$action2 = action2;
      result$data['action2'] =
          l$action2 == null ? null : toJson$Enum$AppAction(l$action2);
    }
    if (_$data.containsKey('sendEmail')) {
      final l$sendEmail = sendEmail;
      result$data['sendEmail'] = l$sendEmail;
    }
    if (_$data.containsKey('sendInAppMessage')) {
      final l$sendInAppMessage = sendInAppMessage;
      result$data['sendInAppMessage'] = l$sendInAppMessage;
    }
    if (_$data.containsKey('sendPushNotification')) {
      final l$sendPushNotification = sendPushNotification;
      result$data['sendPushNotification'] = l$sendPushNotification;
    }
    if (_$data.containsKey('sendSms')) {
      final l$sendSms = sendSms;
      result$data['sendSms'] = l$sendSms;
    }
    if (_$data.containsKey('isCore')) {
      final l$isCore = isCore;
      result$data['isCore'] = l$isCore;
    }
    return result$data;
  }

  CopyWith$Input$NotificationTemplateInput<Input$NotificationTemplateInput>
      get copyWith => CopyWith$Input$NotificationTemplateInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$NotificationTemplateInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$adminNotes = adminNotes;
    final lOther$adminNotes = other.adminNotes;
    if (_$data.containsKey('adminNotes') !=
        other._$data.containsKey('adminNotes')) {
      return false;
    }
    if (l$adminNotes != lOther$adminNotes) {
      return false;
    }
    final l$events = events;
    final lOther$events = other.events;
    if (_$data.containsKey('events') != other._$data.containsKey('events')) {
      return false;
    }
    if (l$events != null && lOther$events != null) {
      if (l$events.length != lOther$events.length) {
        return false;
      }
      for (int i = 0; i < l$events.length; i++) {
        final l$events$entry = l$events[i];
        final lOther$events$entry = lOther$events[i];
        if (l$events$entry != lOther$events$entry) {
          return false;
        }
      }
    } else if (l$events != lOther$events) {
      return false;
    }
    final l$metadata = metadata;
    final lOther$metadata = other.metadata;
    if (_$data.containsKey('metadata') !=
        other._$data.containsKey('metadata')) {
      return false;
    }
    if (l$metadata != lOther$metadata) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (_$data.containsKey('createdAt') !=
        other._$data.containsKey('createdAt')) {
      return false;
    }
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$createdBy = createdBy;
    final lOther$createdBy = other.createdBy;
    if (_$data.containsKey('createdBy') !=
        other._$data.containsKey('createdBy')) {
      return false;
    }
    if (l$createdBy != lOther$createdBy) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (_$data.containsKey('updatedAt') !=
        other._$data.containsKey('updatedAt')) {
      return false;
    }
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    final l$updatedBy = updatedBy;
    final lOther$updatedBy = other.updatedBy;
    if (_$data.containsKey('updatedBy') !=
        other._$data.containsKey('updatedBy')) {
      return false;
    }
    if (l$updatedBy != lOther$updatedBy) {
      return false;
    }
    final l$deletedAt = deletedAt;
    final lOther$deletedAt = other.deletedAt;
    if (_$data.containsKey('deletedAt') !=
        other._$data.containsKey('deletedAt')) {
      return false;
    }
    if (l$deletedAt != lOther$deletedAt) {
      return false;
    }
    final l$deletedBy = deletedBy;
    final lOther$deletedBy = other.deletedBy;
    if (_$data.containsKey('deletedBy') !=
        other._$data.containsKey('deletedBy')) {
      return false;
    }
    if (l$deletedBy != lOther$deletedBy) {
      return false;
    }
    final l$templateId = templateId;
    final lOther$templateId = other.templateId;
    if (_$data.containsKey('templateId') !=
        other._$data.containsKey('templateId')) {
      return false;
    }
    if (l$templateId != lOther$templateId) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (_$data.containsKey('description') !=
        other._$data.containsKey('description')) {
      return false;
    }
    if (l$description != lOther$description) {
      return false;
    }
    final l$titleEn = titleEn;
    final lOther$titleEn = other.titleEn;
    if (_$data.containsKey('titleEn') != other._$data.containsKey('titleEn')) {
      return false;
    }
    if (l$titleEn != lOther$titleEn) {
      return false;
    }
    final l$messageTextEn = messageTextEn;
    final lOther$messageTextEn = other.messageTextEn;
    if (_$data.containsKey('messageTextEn') !=
        other._$data.containsKey('messageTextEn')) {
      return false;
    }
    if (l$messageTextEn != lOther$messageTextEn) {
      return false;
    }
    final l$shortMessageTextEn = shortMessageTextEn;
    final lOther$shortMessageTextEn = other.shortMessageTextEn;
    if (_$data.containsKey('shortMessageTextEn') !=
        other._$data.containsKey('shortMessageTextEn')) {
      return false;
    }
    if (l$shortMessageTextEn != lOther$shortMessageTextEn) {
      return false;
    }
    final l$htmlMessageEn = htmlMessageEn;
    final lOther$htmlMessageEn = other.htmlMessageEn;
    if (_$data.containsKey('htmlMessageEn') !=
        other._$data.containsKey('htmlMessageEn')) {
      return false;
    }
    if (l$htmlMessageEn != lOther$htmlMessageEn) {
      return false;
    }
    final l$version = version;
    final lOther$version = other.version;
    if (_$data.containsKey('version') != other._$data.containsKey('version')) {
      return false;
    }
    if (l$version != lOther$version) {
      return false;
    }
    final l$senderName = senderName;
    final lOther$senderName = other.senderName;
    if (_$data.containsKey('senderName') !=
        other._$data.containsKey('senderName')) {
      return false;
    }
    if (l$senderName != lOther$senderName) {
      return false;
    }
    final l$senderEmail = senderEmail;
    final lOther$senderEmail = other.senderEmail;
    if (_$data.containsKey('senderEmail') !=
        other._$data.containsKey('senderEmail')) {
      return false;
    }
    if (l$senderEmail != lOther$senderEmail) {
      return false;
    }
    final l$action0 = action0;
    final lOther$action0 = other.action0;
    if (_$data.containsKey('action0') != other._$data.containsKey('action0')) {
      return false;
    }
    if (l$action0 != lOther$action0) {
      return false;
    }
    final l$action1 = action1;
    final lOther$action1 = other.action1;
    if (_$data.containsKey('action1') != other._$data.containsKey('action1')) {
      return false;
    }
    if (l$action1 != lOther$action1) {
      return false;
    }
    final l$action2 = action2;
    final lOther$action2 = other.action2;
    if (_$data.containsKey('action2') != other._$data.containsKey('action2')) {
      return false;
    }
    if (l$action2 != lOther$action2) {
      return false;
    }
    final l$sendEmail = sendEmail;
    final lOther$sendEmail = other.sendEmail;
    if (_$data.containsKey('sendEmail') !=
        other._$data.containsKey('sendEmail')) {
      return false;
    }
    if (l$sendEmail != lOther$sendEmail) {
      return false;
    }
    final l$sendInAppMessage = sendInAppMessage;
    final lOther$sendInAppMessage = other.sendInAppMessage;
    if (_$data.containsKey('sendInAppMessage') !=
        other._$data.containsKey('sendInAppMessage')) {
      return false;
    }
    if (l$sendInAppMessage != lOther$sendInAppMessage) {
      return false;
    }
    final l$sendPushNotification = sendPushNotification;
    final lOther$sendPushNotification = other.sendPushNotification;
    if (_$data.containsKey('sendPushNotification') !=
        other._$data.containsKey('sendPushNotification')) {
      return false;
    }
    if (l$sendPushNotification != lOther$sendPushNotification) {
      return false;
    }
    final l$sendSms = sendSms;
    final lOther$sendSms = other.sendSms;
    if (_$data.containsKey('sendSms') != other._$data.containsKey('sendSms')) {
      return false;
    }
    if (l$sendSms != lOther$sendSms) {
      return false;
    }
    final l$isCore = isCore;
    final lOther$isCore = other.isCore;
    if (_$data.containsKey('isCore') != other._$data.containsKey('isCore')) {
      return false;
    }
    if (l$isCore != lOther$isCore) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$adminNotes = adminNotes;
    final l$events = events;
    final l$metadata = metadata;
    final l$createdAt = createdAt;
    final l$createdBy = createdBy;
    final l$updatedAt = updatedAt;
    final l$updatedBy = updatedBy;
    final l$deletedAt = deletedAt;
    final l$deletedBy = deletedBy;
    final l$templateId = templateId;
    final l$name = name;
    final l$description = description;
    final l$titleEn = titleEn;
    final l$messageTextEn = messageTextEn;
    final l$shortMessageTextEn = shortMessageTextEn;
    final l$htmlMessageEn = htmlMessageEn;
    final l$version = version;
    final l$senderName = senderName;
    final l$senderEmail = senderEmail;
    final l$action0 = action0;
    final l$action1 = action1;
    final l$action2 = action2;
    final l$sendEmail = sendEmail;
    final l$sendInAppMessage = sendInAppMessage;
    final l$sendPushNotification = sendPushNotification;
    final l$sendSms = sendSms;
    final l$isCore = isCore;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('adminNotes') ? l$adminNotes : const {},
      _$data.containsKey('events')
          ? l$events == null
              ? null
              : Object.hashAll(l$events.map((v) => v))
          : const {},
      _$data.containsKey('metadata') ? l$metadata : const {},
      _$data.containsKey('createdAt') ? l$createdAt : const {},
      _$data.containsKey('createdBy') ? l$createdBy : const {},
      _$data.containsKey('updatedAt') ? l$updatedAt : const {},
      _$data.containsKey('updatedBy') ? l$updatedBy : const {},
      _$data.containsKey('deletedAt') ? l$deletedAt : const {},
      _$data.containsKey('deletedBy') ? l$deletedBy : const {},
      _$data.containsKey('templateId') ? l$templateId : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('description') ? l$description : const {},
      _$data.containsKey('titleEn') ? l$titleEn : const {},
      _$data.containsKey('messageTextEn') ? l$messageTextEn : const {},
      _$data.containsKey('shortMessageTextEn')
          ? l$shortMessageTextEn
          : const {},
      _$data.containsKey('htmlMessageEn') ? l$htmlMessageEn : const {},
      _$data.containsKey('version') ? l$version : const {},
      _$data.containsKey('senderName') ? l$senderName : const {},
      _$data.containsKey('senderEmail') ? l$senderEmail : const {},
      _$data.containsKey('action0') ? l$action0 : const {},
      _$data.containsKey('action1') ? l$action1 : const {},
      _$data.containsKey('action2') ? l$action2 : const {},
      _$data.containsKey('sendEmail') ? l$sendEmail : const {},
      _$data.containsKey('sendInAppMessage') ? l$sendInAppMessage : const {},
      _$data.containsKey('sendPushNotification')
          ? l$sendPushNotification
          : const {},
      _$data.containsKey('sendSms') ? l$sendSms : const {},
      _$data.containsKey('isCore') ? l$isCore : const {},
    ]);
  }
}

abstract class CopyWith$Input$NotificationTemplateInput<TRes> {
  factory CopyWith$Input$NotificationTemplateInput(
    Input$NotificationTemplateInput instance,
    TRes Function(Input$NotificationTemplateInput) then,
  ) = _CopyWithImpl$Input$NotificationTemplateInput;

  factory CopyWith$Input$NotificationTemplateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$NotificationTemplateInput;

  TRes call({
    String? id,
    String? adminNotes,
    List<Input$ModelEventInput>? events,
    Input$BaseModelMetadataInput? metadata,
    DateTime? createdAt,
    String? createdBy,
    DateTime? updatedAt,
    String? updatedBy,
    DateTime? deletedAt,
    String? deletedBy,
    String? templateId,
    Enum$NotificationTemplateName? name,
    String? description,
    String? titleEn,
    String? messageTextEn,
    String? shortMessageTextEn,
    String? htmlMessageEn,
    String? version,
    String? senderName,
    String? senderEmail,
    Enum$AppAction? action0,
    Enum$AppAction? action1,
    Enum$AppAction? action2,
    bool? sendEmail,
    bool? sendInAppMessage,
    bool? sendPushNotification,
    bool? sendSms,
    bool? isCore,
  });
  TRes events(
      Iterable<Input$ModelEventInput>? Function(
              Iterable<CopyWith$Input$ModelEventInput<Input$ModelEventInput>>?)
          _fn);
  CopyWith$Input$BaseModelMetadataInput<TRes> get metadata;
}

class _CopyWithImpl$Input$NotificationTemplateInput<TRes>
    implements CopyWith$Input$NotificationTemplateInput<TRes> {
  _CopyWithImpl$Input$NotificationTemplateInput(
    this._instance,
    this._then,
  );

  final Input$NotificationTemplateInput _instance;

  final TRes Function(Input$NotificationTemplateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? adminNotes = _undefined,
    Object? events = _undefined,
    Object? metadata = _undefined,
    Object? createdAt = _undefined,
    Object? createdBy = _undefined,
    Object? updatedAt = _undefined,
    Object? updatedBy = _undefined,
    Object? deletedAt = _undefined,
    Object? deletedBy = _undefined,
    Object? templateId = _undefined,
    Object? name = _undefined,
    Object? description = _undefined,
    Object? titleEn = _undefined,
    Object? messageTextEn = _undefined,
    Object? shortMessageTextEn = _undefined,
    Object? htmlMessageEn = _undefined,
    Object? version = _undefined,
    Object? senderName = _undefined,
    Object? senderEmail = _undefined,
    Object? action0 = _undefined,
    Object? action1 = _undefined,
    Object? action2 = _undefined,
    Object? sendEmail = _undefined,
    Object? sendInAppMessage = _undefined,
    Object? sendPushNotification = _undefined,
    Object? sendSms = _undefined,
    Object? isCore = _undefined,
  }) =>
      _then(Input$NotificationTemplateInput._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as String?),
        if (adminNotes != _undefined) 'adminNotes': (adminNotes as String?),
        if (events != _undefined)
          'events': (events as List<Input$ModelEventInput>?),
        if (metadata != _undefined)
          'metadata': (metadata as Input$BaseModelMetadataInput?),
        if (createdAt != _undefined) 'createdAt': (createdAt as DateTime?),
        if (createdBy != _undefined) 'createdBy': (createdBy as String?),
        if (updatedAt != _undefined) 'updatedAt': (updatedAt as DateTime?),
        if (updatedBy != _undefined) 'updatedBy': (updatedBy as String?),
        if (deletedAt != _undefined) 'deletedAt': (deletedAt as DateTime?),
        if (deletedBy != _undefined) 'deletedBy': (deletedBy as String?),
        if (templateId != _undefined) 'templateId': (templateId as String?),
        if (name != _undefined)
          'name': (name as Enum$NotificationTemplateName?),
        if (description != _undefined) 'description': (description as String?),
        if (titleEn != _undefined) 'titleEn': (titleEn as String?),
        if (messageTextEn != _undefined)
          'messageTextEn': (messageTextEn as String?),
        if (shortMessageTextEn != _undefined)
          'shortMessageTextEn': (shortMessageTextEn as String?),
        if (htmlMessageEn != _undefined)
          'htmlMessageEn': (htmlMessageEn as String?),
        if (version != _undefined) 'version': (version as String?),
        if (senderName != _undefined) 'senderName': (senderName as String?),
        if (senderEmail != _undefined) 'senderEmail': (senderEmail as String?),
        if (action0 != _undefined) 'action0': (action0 as Enum$AppAction?),
        if (action1 != _undefined) 'action1': (action1 as Enum$AppAction?),
        if (action2 != _undefined) 'action2': (action2 as Enum$AppAction?),
        if (sendEmail != _undefined) 'sendEmail': (sendEmail as bool?),
        if (sendInAppMessage != _undefined)
          'sendInAppMessage': (sendInAppMessage as bool?),
        if (sendPushNotification != _undefined)
          'sendPushNotification': (sendPushNotification as bool?),
        if (sendSms != _undefined) 'sendSms': (sendSms as bool?),
        if (isCore != _undefined) 'isCore': (isCore as bool?),
      }));
  TRes events(
          Iterable<Input$ModelEventInput>? Function(
                  Iterable<
                      CopyWith$Input$ModelEventInput<Input$ModelEventInput>>?)
              _fn) =>
      call(
          events:
              _fn(_instance.events?.map((e) => CopyWith$Input$ModelEventInput(
                    e,
                    (i) => i,
                  )))?.toList());
  CopyWith$Input$BaseModelMetadataInput<TRes> get metadata {
    final local$metadata = _instance.metadata;
    return local$metadata == null
        ? CopyWith$Input$BaseModelMetadataInput.stub(_then(_instance))
        : CopyWith$Input$BaseModelMetadataInput(
            local$metadata, (e) => call(metadata: e));
  }
}

class _CopyWithStubImpl$Input$NotificationTemplateInput<TRes>
    implements CopyWith$Input$NotificationTemplateInput<TRes> {
  _CopyWithStubImpl$Input$NotificationTemplateInput(this._res);

  TRes _res;

  call({
    String? id,
    String? adminNotes,
    List<Input$ModelEventInput>? events,
    Input$BaseModelMetadataInput? metadata,
    DateTime? createdAt,
    String? createdBy,
    DateTime? updatedAt,
    String? updatedBy,
    DateTime? deletedAt,
    String? deletedBy,
    String? templateId,
    Enum$NotificationTemplateName? name,
    String? description,
    String? titleEn,
    String? messageTextEn,
    String? shortMessageTextEn,
    String? htmlMessageEn,
    String? version,
    String? senderName,
    String? senderEmail,
    Enum$AppAction? action0,
    Enum$AppAction? action1,
    Enum$AppAction? action2,
    bool? sendEmail,
    bool? sendInAppMessage,
    bool? sendPushNotification,
    bool? sendSms,
    bool? isCore,
  }) =>
      _res;
  events(_fn) => _res;
  CopyWith$Input$BaseModelMetadataInput<TRes> get metadata =>
      CopyWith$Input$BaseModelMetadataInput.stub(_res);
}

class Input$Mm2SynchronizationInput {
  factory Input$Mm2SynchronizationInput({
    String? id,
    String? adminNotes,
    List<Input$ModelEventInput>? events,
    Input$BaseModelMetadataInput? metadata,
    DateTime? createdAt,
    String? createdBy,
    DateTime? updatedAt,
    String? updatedBy,
    DateTime? deletedAt,
    String? deletedBy,
    Enum$Mm2SyncDirection? direction,
    String? objectId,
    Enum$Mm2ModelType? mm2ModelType,
    Enum$Mm2SynchronizationMode? syncMode,
    int? limit,
    bool? autorun,
    String? usersSinceUpdatedAt,
    Enum$Mm2SynchronizerLogLevel? logLevel,
    DateTime? expiresAt,
  }) =>
      Input$Mm2SynchronizationInput._({
        if (id != null) r'id': id,
        if (adminNotes != null) r'adminNotes': adminNotes,
        if (events != null) r'events': events,
        if (metadata != null) r'metadata': metadata,
        if (createdAt != null) r'createdAt': createdAt,
        if (createdBy != null) r'createdBy': createdBy,
        if (updatedAt != null) r'updatedAt': updatedAt,
        if (updatedBy != null) r'updatedBy': updatedBy,
        if (deletedAt != null) r'deletedAt': deletedAt,
        if (deletedBy != null) r'deletedBy': deletedBy,
        if (direction != null) r'direction': direction,
        if (objectId != null) r'objectId': objectId,
        if (mm2ModelType != null) r'mm2ModelType': mm2ModelType,
        if (syncMode != null) r'syncMode': syncMode,
        if (limit != null) r'limit': limit,
        if (autorun != null) r'autorun': autorun,
        if (usersSinceUpdatedAt != null)
          r'usersSinceUpdatedAt': usersSinceUpdatedAt,
        if (logLevel != null) r'logLevel': logLevel,
        if (expiresAt != null) r'expiresAt': expiresAt,
      });

  Input$Mm2SynchronizationInput._(this._$data);

  factory Input$Mm2SynchronizationInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as String?);
    }
    if (data.containsKey('adminNotes')) {
      final l$adminNotes = data['adminNotes'];
      result$data['adminNotes'] = (l$adminNotes as String?);
    }
    if (data.containsKey('events')) {
      final l$events = data['events'];
      result$data['events'] = (l$events as List<dynamic>?)
          ?.map((e) =>
              Input$ModelEventInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('metadata')) {
      final l$metadata = data['metadata'];
      result$data['metadata'] = l$metadata == null
          ? null
          : Input$BaseModelMetadataInput.fromJson(
              (l$metadata as Map<String, dynamic>));
    }
    if (data.containsKey('createdAt')) {
      final l$createdAt = data['createdAt'];
      result$data['createdAt'] =
          l$createdAt == null ? null : DateTime.parse((l$createdAt as String));
    }
    if (data.containsKey('createdBy')) {
      final l$createdBy = data['createdBy'];
      result$data['createdBy'] = (l$createdBy as String?);
    }
    if (data.containsKey('updatedAt')) {
      final l$updatedAt = data['updatedAt'];
      result$data['updatedAt'] =
          l$updatedAt == null ? null : DateTime.parse((l$updatedAt as String));
    }
    if (data.containsKey('updatedBy')) {
      final l$updatedBy = data['updatedBy'];
      result$data['updatedBy'] = (l$updatedBy as String?);
    }
    if (data.containsKey('deletedAt')) {
      final l$deletedAt = data['deletedAt'];
      result$data['deletedAt'] =
          l$deletedAt == null ? null : DateTime.parse((l$deletedAt as String));
    }
    if (data.containsKey('deletedBy')) {
      final l$deletedBy = data['deletedBy'];
      result$data['deletedBy'] = (l$deletedBy as String?);
    }
    if (data.containsKey('direction')) {
      final l$direction = data['direction'];
      result$data['direction'] =
          fromJson$Enum$Mm2SyncDirection((l$direction as String));
    }
    if (data.containsKey('objectId')) {
      final l$objectId = data['objectId'];
      result$data['objectId'] = (l$objectId as String?);
    }
    if (data.containsKey('mm2ModelType')) {
      final l$mm2ModelType = data['mm2ModelType'];
      result$data['mm2ModelType'] = l$mm2ModelType == null
          ? null
          : fromJson$Enum$Mm2ModelType((l$mm2ModelType as String));
    }
    if (data.containsKey('syncMode')) {
      final l$syncMode = data['syncMode'];
      result$data['syncMode'] =
          fromJson$Enum$Mm2SynchronizationMode((l$syncMode as String));
    }
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int?);
    }
    if (data.containsKey('autorun')) {
      final l$autorun = data['autorun'];
      result$data['autorun'] = (l$autorun as bool);
    }
    if (data.containsKey('usersSinceUpdatedAt')) {
      final l$usersSinceUpdatedAt = data['usersSinceUpdatedAt'];
      result$data['usersSinceUpdatedAt'] = (l$usersSinceUpdatedAt as String?);
    }
    if (data.containsKey('logLevel')) {
      final l$logLevel = data['logLevel'];
      result$data['logLevel'] = l$logLevel == null
          ? null
          : fromJson$Enum$Mm2SynchronizerLogLevel((l$logLevel as String));
    }
    if (data.containsKey('expiresAt')) {
      final l$expiresAt = data['expiresAt'];
      result$data['expiresAt'] =
          l$expiresAt == null ? null : DateTime.parse((l$expiresAt as String));
    }
    return Input$Mm2SynchronizationInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get id => (_$data['id'] as String?);
  String? get adminNotes => (_$data['adminNotes'] as String?);
  List<Input$ModelEventInput>? get events =>
      (_$data['events'] as List<Input$ModelEventInput>?);
  Input$BaseModelMetadataInput? get metadata =>
      (_$data['metadata'] as Input$BaseModelMetadataInput?);
  DateTime? get createdAt => (_$data['createdAt'] as DateTime?);
  String? get createdBy => (_$data['createdBy'] as String?);
  DateTime? get updatedAt => (_$data['updatedAt'] as DateTime?);
  String? get updatedBy => (_$data['updatedBy'] as String?);
  DateTime? get deletedAt => (_$data['deletedAt'] as DateTime?);
  String? get deletedBy => (_$data['deletedBy'] as String?);
  Enum$Mm2SyncDirection? get direction =>
      (_$data['direction'] as Enum$Mm2SyncDirection?);
  String? get objectId => (_$data['objectId'] as String?);
  Enum$Mm2ModelType? get mm2ModelType =>
      (_$data['mm2ModelType'] as Enum$Mm2ModelType?);
  Enum$Mm2SynchronizationMode? get syncMode =>
      (_$data['syncMode'] as Enum$Mm2SynchronizationMode?);
  int? get limit => (_$data['limit'] as int?);
  bool? get autorun => (_$data['autorun'] as bool?);
  String? get usersSinceUpdatedAt => (_$data['usersSinceUpdatedAt'] as String?);
  Enum$Mm2SynchronizerLogLevel? get logLevel =>
      (_$data['logLevel'] as Enum$Mm2SynchronizerLogLevel?);
  DateTime? get expiresAt => (_$data['expiresAt'] as DateTime?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('adminNotes')) {
      final l$adminNotes = adminNotes;
      result$data['adminNotes'] = l$adminNotes;
    }
    if (_$data.containsKey('events')) {
      final l$events = events;
      result$data['events'] = l$events?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('metadata')) {
      final l$metadata = metadata;
      result$data['metadata'] = l$metadata?.toJson();
    }
    if (_$data.containsKey('createdAt')) {
      final l$createdAt = createdAt;
      result$data['createdAt'] = l$createdAt?.toIso8601String();
    }
    if (_$data.containsKey('createdBy')) {
      final l$createdBy = createdBy;
      result$data['createdBy'] = l$createdBy;
    }
    if (_$data.containsKey('updatedAt')) {
      final l$updatedAt = updatedAt;
      result$data['updatedAt'] = l$updatedAt?.toIso8601String();
    }
    if (_$data.containsKey('updatedBy')) {
      final l$updatedBy = updatedBy;
      result$data['updatedBy'] = l$updatedBy;
    }
    if (_$data.containsKey('deletedAt')) {
      final l$deletedAt = deletedAt;
      result$data['deletedAt'] = l$deletedAt?.toIso8601String();
    }
    if (_$data.containsKey('deletedBy')) {
      final l$deletedBy = deletedBy;
      result$data['deletedBy'] = l$deletedBy;
    }
    if (_$data.containsKey('direction')) {
      final l$direction = direction;
      result$data['direction'] =
          toJson$Enum$Mm2SyncDirection((l$direction as Enum$Mm2SyncDirection));
    }
    if (_$data.containsKey('objectId')) {
      final l$objectId = objectId;
      result$data['objectId'] = l$objectId;
    }
    if (_$data.containsKey('mm2ModelType')) {
      final l$mm2ModelType = mm2ModelType;
      result$data['mm2ModelType'] = l$mm2ModelType == null
          ? null
          : toJson$Enum$Mm2ModelType(l$mm2ModelType);
    }
    if (_$data.containsKey('syncMode')) {
      final l$syncMode = syncMode;
      result$data['syncMode'] = toJson$Enum$Mm2SynchronizationMode(
          (l$syncMode as Enum$Mm2SynchronizationMode));
    }
    if (_$data.containsKey('limit')) {
      final l$limit = limit;
      result$data['limit'] = l$limit;
    }
    if (_$data.containsKey('autorun')) {
      final l$autorun = autorun;
      result$data['autorun'] = (l$autorun as bool);
    }
    if (_$data.containsKey('usersSinceUpdatedAt')) {
      final l$usersSinceUpdatedAt = usersSinceUpdatedAt;
      result$data['usersSinceUpdatedAt'] = l$usersSinceUpdatedAt;
    }
    if (_$data.containsKey('logLevel')) {
      final l$logLevel = logLevel;
      result$data['logLevel'] = l$logLevel == null
          ? null
          : toJson$Enum$Mm2SynchronizerLogLevel(l$logLevel);
    }
    if (_$data.containsKey('expiresAt')) {
      final l$expiresAt = expiresAt;
      result$data['expiresAt'] = l$expiresAt?.toIso8601String();
    }
    return result$data;
  }

  CopyWith$Input$Mm2SynchronizationInput<Input$Mm2SynchronizationInput>
      get copyWith => CopyWith$Input$Mm2SynchronizationInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$Mm2SynchronizationInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$adminNotes = adminNotes;
    final lOther$adminNotes = other.adminNotes;
    if (_$data.containsKey('adminNotes') !=
        other._$data.containsKey('adminNotes')) {
      return false;
    }
    if (l$adminNotes != lOther$adminNotes) {
      return false;
    }
    final l$events = events;
    final lOther$events = other.events;
    if (_$data.containsKey('events') != other._$data.containsKey('events')) {
      return false;
    }
    if (l$events != null && lOther$events != null) {
      if (l$events.length != lOther$events.length) {
        return false;
      }
      for (int i = 0; i < l$events.length; i++) {
        final l$events$entry = l$events[i];
        final lOther$events$entry = lOther$events[i];
        if (l$events$entry != lOther$events$entry) {
          return false;
        }
      }
    } else if (l$events != lOther$events) {
      return false;
    }
    final l$metadata = metadata;
    final lOther$metadata = other.metadata;
    if (_$data.containsKey('metadata') !=
        other._$data.containsKey('metadata')) {
      return false;
    }
    if (l$metadata != lOther$metadata) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (_$data.containsKey('createdAt') !=
        other._$data.containsKey('createdAt')) {
      return false;
    }
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$createdBy = createdBy;
    final lOther$createdBy = other.createdBy;
    if (_$data.containsKey('createdBy') !=
        other._$data.containsKey('createdBy')) {
      return false;
    }
    if (l$createdBy != lOther$createdBy) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (_$data.containsKey('updatedAt') !=
        other._$data.containsKey('updatedAt')) {
      return false;
    }
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    final l$updatedBy = updatedBy;
    final lOther$updatedBy = other.updatedBy;
    if (_$data.containsKey('updatedBy') !=
        other._$data.containsKey('updatedBy')) {
      return false;
    }
    if (l$updatedBy != lOther$updatedBy) {
      return false;
    }
    final l$deletedAt = deletedAt;
    final lOther$deletedAt = other.deletedAt;
    if (_$data.containsKey('deletedAt') !=
        other._$data.containsKey('deletedAt')) {
      return false;
    }
    if (l$deletedAt != lOther$deletedAt) {
      return false;
    }
    final l$deletedBy = deletedBy;
    final lOther$deletedBy = other.deletedBy;
    if (_$data.containsKey('deletedBy') !=
        other._$data.containsKey('deletedBy')) {
      return false;
    }
    if (l$deletedBy != lOther$deletedBy) {
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
    final l$objectId = objectId;
    final lOther$objectId = other.objectId;
    if (_$data.containsKey('objectId') !=
        other._$data.containsKey('objectId')) {
      return false;
    }
    if (l$objectId != lOther$objectId) {
      return false;
    }
    final l$mm2ModelType = mm2ModelType;
    final lOther$mm2ModelType = other.mm2ModelType;
    if (_$data.containsKey('mm2ModelType') !=
        other._$data.containsKey('mm2ModelType')) {
      return false;
    }
    if (l$mm2ModelType != lOther$mm2ModelType) {
      return false;
    }
    final l$syncMode = syncMode;
    final lOther$syncMode = other.syncMode;
    if (_$data.containsKey('syncMode') !=
        other._$data.containsKey('syncMode')) {
      return false;
    }
    if (l$syncMode != lOther$syncMode) {
      return false;
    }
    final l$limit = limit;
    final lOther$limit = other.limit;
    if (_$data.containsKey('limit') != other._$data.containsKey('limit')) {
      return false;
    }
    if (l$limit != lOther$limit) {
      return false;
    }
    final l$autorun = autorun;
    final lOther$autorun = other.autorun;
    if (_$data.containsKey('autorun') != other._$data.containsKey('autorun')) {
      return false;
    }
    if (l$autorun != lOther$autorun) {
      return false;
    }
    final l$usersSinceUpdatedAt = usersSinceUpdatedAt;
    final lOther$usersSinceUpdatedAt = other.usersSinceUpdatedAt;
    if (_$data.containsKey('usersSinceUpdatedAt') !=
        other._$data.containsKey('usersSinceUpdatedAt')) {
      return false;
    }
    if (l$usersSinceUpdatedAt != lOther$usersSinceUpdatedAt) {
      return false;
    }
    final l$logLevel = logLevel;
    final lOther$logLevel = other.logLevel;
    if (_$data.containsKey('logLevel') !=
        other._$data.containsKey('logLevel')) {
      return false;
    }
    if (l$logLevel != lOther$logLevel) {
      return false;
    }
    final l$expiresAt = expiresAt;
    final lOther$expiresAt = other.expiresAt;
    if (_$data.containsKey('expiresAt') !=
        other._$data.containsKey('expiresAt')) {
      return false;
    }
    if (l$expiresAt != lOther$expiresAt) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$adminNotes = adminNotes;
    final l$events = events;
    final l$metadata = metadata;
    final l$createdAt = createdAt;
    final l$createdBy = createdBy;
    final l$updatedAt = updatedAt;
    final l$updatedBy = updatedBy;
    final l$deletedAt = deletedAt;
    final l$deletedBy = deletedBy;
    final l$direction = direction;
    final l$objectId = objectId;
    final l$mm2ModelType = mm2ModelType;
    final l$syncMode = syncMode;
    final l$limit = limit;
    final l$autorun = autorun;
    final l$usersSinceUpdatedAt = usersSinceUpdatedAt;
    final l$logLevel = logLevel;
    final l$expiresAt = expiresAt;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('adminNotes') ? l$adminNotes : const {},
      _$data.containsKey('events')
          ? l$events == null
              ? null
              : Object.hashAll(l$events.map((v) => v))
          : const {},
      _$data.containsKey('metadata') ? l$metadata : const {},
      _$data.containsKey('createdAt') ? l$createdAt : const {},
      _$data.containsKey('createdBy') ? l$createdBy : const {},
      _$data.containsKey('updatedAt') ? l$updatedAt : const {},
      _$data.containsKey('updatedBy') ? l$updatedBy : const {},
      _$data.containsKey('deletedAt') ? l$deletedAt : const {},
      _$data.containsKey('deletedBy') ? l$deletedBy : const {},
      _$data.containsKey('direction') ? l$direction : const {},
      _$data.containsKey('objectId') ? l$objectId : const {},
      _$data.containsKey('mm2ModelType') ? l$mm2ModelType : const {},
      _$data.containsKey('syncMode') ? l$syncMode : const {},
      _$data.containsKey('limit') ? l$limit : const {},
      _$data.containsKey('autorun') ? l$autorun : const {},
      _$data.containsKey('usersSinceUpdatedAt')
          ? l$usersSinceUpdatedAt
          : const {},
      _$data.containsKey('logLevel') ? l$logLevel : const {},
      _$data.containsKey('expiresAt') ? l$expiresAt : const {},
    ]);
  }
}

abstract class CopyWith$Input$Mm2SynchronizationInput<TRes> {
  factory CopyWith$Input$Mm2SynchronizationInput(
    Input$Mm2SynchronizationInput instance,
    TRes Function(Input$Mm2SynchronizationInput) then,
  ) = _CopyWithImpl$Input$Mm2SynchronizationInput;

  factory CopyWith$Input$Mm2SynchronizationInput.stub(TRes res) =
      _CopyWithStubImpl$Input$Mm2SynchronizationInput;

  TRes call({
    String? id,
    String? adminNotes,
    List<Input$ModelEventInput>? events,
    Input$BaseModelMetadataInput? metadata,
    DateTime? createdAt,
    String? createdBy,
    DateTime? updatedAt,
    String? updatedBy,
    DateTime? deletedAt,
    String? deletedBy,
    Enum$Mm2SyncDirection? direction,
    String? objectId,
    Enum$Mm2ModelType? mm2ModelType,
    Enum$Mm2SynchronizationMode? syncMode,
    int? limit,
    bool? autorun,
    String? usersSinceUpdatedAt,
    Enum$Mm2SynchronizerLogLevel? logLevel,
    DateTime? expiresAt,
  });
  TRes events(
      Iterable<Input$ModelEventInput>? Function(
              Iterable<CopyWith$Input$ModelEventInput<Input$ModelEventInput>>?)
          _fn);
  CopyWith$Input$BaseModelMetadataInput<TRes> get metadata;
}

class _CopyWithImpl$Input$Mm2SynchronizationInput<TRes>
    implements CopyWith$Input$Mm2SynchronizationInput<TRes> {
  _CopyWithImpl$Input$Mm2SynchronizationInput(
    this._instance,
    this._then,
  );

  final Input$Mm2SynchronizationInput _instance;

  final TRes Function(Input$Mm2SynchronizationInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? adminNotes = _undefined,
    Object? events = _undefined,
    Object? metadata = _undefined,
    Object? createdAt = _undefined,
    Object? createdBy = _undefined,
    Object? updatedAt = _undefined,
    Object? updatedBy = _undefined,
    Object? deletedAt = _undefined,
    Object? deletedBy = _undefined,
    Object? direction = _undefined,
    Object? objectId = _undefined,
    Object? mm2ModelType = _undefined,
    Object? syncMode = _undefined,
    Object? limit = _undefined,
    Object? autorun = _undefined,
    Object? usersSinceUpdatedAt = _undefined,
    Object? logLevel = _undefined,
    Object? expiresAt = _undefined,
  }) =>
      _then(Input$Mm2SynchronizationInput._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as String?),
        if (adminNotes != _undefined) 'adminNotes': (adminNotes as String?),
        if (events != _undefined)
          'events': (events as List<Input$ModelEventInput>?),
        if (metadata != _undefined)
          'metadata': (metadata as Input$BaseModelMetadataInput?),
        if (createdAt != _undefined) 'createdAt': (createdAt as DateTime?),
        if (createdBy != _undefined) 'createdBy': (createdBy as String?),
        if (updatedAt != _undefined) 'updatedAt': (updatedAt as DateTime?),
        if (updatedBy != _undefined) 'updatedBy': (updatedBy as String?),
        if (deletedAt != _undefined) 'deletedAt': (deletedAt as DateTime?),
        if (deletedBy != _undefined) 'deletedBy': (deletedBy as String?),
        if (direction != _undefined && direction != null)
          'direction': (direction as Enum$Mm2SyncDirection),
        if (objectId != _undefined) 'objectId': (objectId as String?),
        if (mm2ModelType != _undefined)
          'mm2ModelType': (mm2ModelType as Enum$Mm2ModelType?),
        if (syncMode != _undefined && syncMode != null)
          'syncMode': (syncMode as Enum$Mm2SynchronizationMode),
        if (limit != _undefined) 'limit': (limit as int?),
        if (autorun != _undefined && autorun != null)
          'autorun': (autorun as bool),
        if (usersSinceUpdatedAt != _undefined)
          'usersSinceUpdatedAt': (usersSinceUpdatedAt as String?),
        if (logLevel != _undefined)
          'logLevel': (logLevel as Enum$Mm2SynchronizerLogLevel?),
        if (expiresAt != _undefined) 'expiresAt': (expiresAt as DateTime?),
      }));
  TRes events(
          Iterable<Input$ModelEventInput>? Function(
                  Iterable<
                      CopyWith$Input$ModelEventInput<Input$ModelEventInput>>?)
              _fn) =>
      call(
          events:
              _fn(_instance.events?.map((e) => CopyWith$Input$ModelEventInput(
                    e,
                    (i) => i,
                  )))?.toList());
  CopyWith$Input$BaseModelMetadataInput<TRes> get metadata {
    final local$metadata = _instance.metadata;
    return local$metadata == null
        ? CopyWith$Input$BaseModelMetadataInput.stub(_then(_instance))
        : CopyWith$Input$BaseModelMetadataInput(
            local$metadata, (e) => call(metadata: e));
  }
}

class _CopyWithStubImpl$Input$Mm2SynchronizationInput<TRes>
    implements CopyWith$Input$Mm2SynchronizationInput<TRes> {
  _CopyWithStubImpl$Input$Mm2SynchronizationInput(this._res);

  TRes _res;

  call({
    String? id,
    String? adminNotes,
    List<Input$ModelEventInput>? events,
    Input$BaseModelMetadataInput? metadata,
    DateTime? createdAt,
    String? createdBy,
    DateTime? updatedAt,
    String? updatedBy,
    DateTime? deletedAt,
    String? deletedBy,
    Enum$Mm2SyncDirection? direction,
    String? objectId,
    Enum$Mm2ModelType? mm2ModelType,
    Enum$Mm2SynchronizationMode? syncMode,
    int? limit,
    bool? autorun,
    String? usersSinceUpdatedAt,
    Enum$Mm2SynchronizerLogLevel? logLevel,
    DateTime? expiresAt,
  }) =>
      _res;
  events(_fn) => _res;
  CopyWith$Input$BaseModelMetadataInput<TRes> get metadata =>
      CopyWith$Input$BaseModelMetadataInput.stub(_res);
}

class Input$SidMultiStepActionInput {
  factory Input$SidMultiStepActionInput({
    String? id,
    String? adminNotes,
    List<Input$ModelEventInput>? events,
    Input$BaseModelMetadataInput? metadata,
    DateTime? createdAt,
    String? createdBy,
    DateTime? updatedAt,
    String? updatedBy,
    DateTime? deletedAt,
    String? deletedBy,
    String? userId,
    String? userIdent,
    String? userHandle,
    String? email,
    String? phoneNumber,
    String? deviceUuid,
    Enum$MultiStepActionType? actionType,
    Enum$MultiStepActionStatus? actionStatus,
    Enum$NotificationMethod? notificationMethod,
    Enum$MultiStepActionResult? result,
    String? confirmToken,
    int? attemptCount,
    DateTime? notificationSentAt,
    String? notificationResult,
    String? notificationId,
    String? textData,
    String? report,
    String? authToken,
    bool? emailPassed,
    DateTime? emailUpdatedAt,
    DateTime? emailVerifiedAt,
    List<Input$MultiStepActionErrorInput>? errors,
    String? password,
    bool? passwordPassed,
    DateTime? passwordResettedAt,
    DateTime? passwordUpdatedAt,
    bool? phoneNumberPassed,
    DateTime? phoneNumberUpdatedAt,
    DateTime? phoneNumberVerifiedAt,
    DateTime? signedInAt,
    String? tfaBackupCodes,
    DateTime? expiresAt,
  }) =>
      Input$SidMultiStepActionInput._({
        if (id != null) r'id': id,
        if (adminNotes != null) r'adminNotes': adminNotes,
        if (events != null) r'events': events,
        if (metadata != null) r'metadata': metadata,
        if (createdAt != null) r'createdAt': createdAt,
        if (createdBy != null) r'createdBy': createdBy,
        if (updatedAt != null) r'updatedAt': updatedAt,
        if (updatedBy != null) r'updatedBy': updatedBy,
        if (deletedAt != null) r'deletedAt': deletedAt,
        if (deletedBy != null) r'deletedBy': deletedBy,
        if (userId != null) r'userId': userId,
        if (userIdent != null) r'userIdent': userIdent,
        if (userHandle != null) r'userHandle': userHandle,
        if (email != null) r'email': email,
        if (phoneNumber != null) r'phoneNumber': phoneNumber,
        if (deviceUuid != null) r'deviceUuid': deviceUuid,
        if (actionType != null) r'actionType': actionType,
        if (actionStatus != null) r'actionStatus': actionStatus,
        if (notificationMethod != null)
          r'notificationMethod': notificationMethod,
        if (result != null) r'result': result,
        if (confirmToken != null) r'confirmToken': confirmToken,
        if (attemptCount != null) r'attemptCount': attemptCount,
        if (notificationSentAt != null)
          r'notificationSentAt': notificationSentAt,
        if (notificationResult != null)
          r'notificationResult': notificationResult,
        if (notificationId != null) r'notificationId': notificationId,
        if (textData != null) r'textData': textData,
        if (report != null) r'report': report,
        if (authToken != null) r'authToken': authToken,
        if (emailPassed != null) r'emailPassed': emailPassed,
        if (emailUpdatedAt != null) r'emailUpdatedAt': emailUpdatedAt,
        if (emailVerifiedAt != null) r'emailVerifiedAt': emailVerifiedAt,
        if (errors != null) r'errors': errors,
        if (password != null) r'password': password,
        if (passwordPassed != null) r'passwordPassed': passwordPassed,
        if (passwordResettedAt != null)
          r'passwordResettedAt': passwordResettedAt,
        if (passwordUpdatedAt != null) r'passwordUpdatedAt': passwordUpdatedAt,
        if (phoneNumberPassed != null) r'phoneNumberPassed': phoneNumberPassed,
        if (phoneNumberUpdatedAt != null)
          r'phoneNumberUpdatedAt': phoneNumberUpdatedAt,
        if (phoneNumberVerifiedAt != null)
          r'phoneNumberVerifiedAt': phoneNumberVerifiedAt,
        if (signedInAt != null) r'signedInAt': signedInAt,
        if (tfaBackupCodes != null) r'tfaBackupCodes': tfaBackupCodes,
        if (expiresAt != null) r'expiresAt': expiresAt,
      });

  Input$SidMultiStepActionInput._(this._$data);

  factory Input$SidMultiStepActionInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as String?);
    }
    if (data.containsKey('adminNotes')) {
      final l$adminNotes = data['adminNotes'];
      result$data['adminNotes'] = (l$adminNotes as String?);
    }
    if (data.containsKey('events')) {
      final l$events = data['events'];
      result$data['events'] = (l$events as List<dynamic>?)
          ?.map((e) =>
              Input$ModelEventInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('metadata')) {
      final l$metadata = data['metadata'];
      result$data['metadata'] = l$metadata == null
          ? null
          : Input$BaseModelMetadataInput.fromJson(
              (l$metadata as Map<String, dynamic>));
    }
    if (data.containsKey('createdAt')) {
      final l$createdAt = data['createdAt'];
      result$data['createdAt'] =
          l$createdAt == null ? null : DateTime.parse((l$createdAt as String));
    }
    if (data.containsKey('createdBy')) {
      final l$createdBy = data['createdBy'];
      result$data['createdBy'] = (l$createdBy as String?);
    }
    if (data.containsKey('updatedAt')) {
      final l$updatedAt = data['updatedAt'];
      result$data['updatedAt'] =
          l$updatedAt == null ? null : DateTime.parse((l$updatedAt as String));
    }
    if (data.containsKey('updatedBy')) {
      final l$updatedBy = data['updatedBy'];
      result$data['updatedBy'] = (l$updatedBy as String?);
    }
    if (data.containsKey('deletedAt')) {
      final l$deletedAt = data['deletedAt'];
      result$data['deletedAt'] =
          l$deletedAt == null ? null : DateTime.parse((l$deletedAt as String));
    }
    if (data.containsKey('deletedBy')) {
      final l$deletedBy = data['deletedBy'];
      result$data['deletedBy'] = (l$deletedBy as String?);
    }
    if (data.containsKey('userId')) {
      final l$userId = data['userId'];
      result$data['userId'] = (l$userId as String?);
    }
    if (data.containsKey('userIdent')) {
      final l$userIdent = data['userIdent'];
      result$data['userIdent'] = (l$userIdent as String?);
    }
    if (data.containsKey('userHandle')) {
      final l$userHandle = data['userHandle'];
      result$data['userHandle'] = (l$userHandle as String?);
    }
    if (data.containsKey('email')) {
      final l$email = data['email'];
      result$data['email'] = (l$email as String?);
    }
    if (data.containsKey('phoneNumber')) {
      final l$phoneNumber = data['phoneNumber'];
      result$data['phoneNumber'] = (l$phoneNumber as String?);
    }
    if (data.containsKey('deviceUuid')) {
      final l$deviceUuid = data['deviceUuid'];
      result$data['deviceUuid'] = (l$deviceUuid as String?);
    }
    if (data.containsKey('actionType')) {
      final l$actionType = data['actionType'];
      result$data['actionType'] = l$actionType == null
          ? null
          : fromJson$Enum$MultiStepActionType((l$actionType as String));
    }
    if (data.containsKey('actionStatus')) {
      final l$actionStatus = data['actionStatus'];
      result$data['actionStatus'] = l$actionStatus == null
          ? null
          : fromJson$Enum$MultiStepActionStatus((l$actionStatus as String));
    }
    if (data.containsKey('notificationMethod')) {
      final l$notificationMethod = data['notificationMethod'];
      result$data['notificationMethod'] = l$notificationMethod == null
          ? null
          : fromJson$Enum$NotificationMethod((l$notificationMethod as String));
    }
    if (data.containsKey('result')) {
      final l$result = data['result'];
      result$data['result'] = l$result == null
          ? null
          : fromJson$Enum$MultiStepActionResult((l$result as String));
    }
    if (data.containsKey('confirmToken')) {
      final l$confirmToken = data['confirmToken'];
      result$data['confirmToken'] = (l$confirmToken as String?);
    }
    if (data.containsKey('attemptCount')) {
      final l$attemptCount = data['attemptCount'];
      result$data['attemptCount'] = (l$attemptCount as int?);
    }
    if (data.containsKey('notificationSentAt')) {
      final l$notificationSentAt = data['notificationSentAt'];
      result$data['notificationSentAt'] = l$notificationSentAt == null
          ? null
          : DateTime.parse((l$notificationSentAt as String));
    }
    if (data.containsKey('notificationResult')) {
      final l$notificationResult = data['notificationResult'];
      result$data['notificationResult'] = (l$notificationResult as String?);
    }
    if (data.containsKey('notificationId')) {
      final l$notificationId = data['notificationId'];
      result$data['notificationId'] = (l$notificationId as String?);
    }
    if (data.containsKey('textData')) {
      final l$textData = data['textData'];
      result$data['textData'] = (l$textData as String?);
    }
    if (data.containsKey('report')) {
      final l$report = data['report'];
      result$data['report'] = (l$report as String?);
    }
    if (data.containsKey('authToken')) {
      final l$authToken = data['authToken'];
      result$data['authToken'] = (l$authToken as String?);
    }
    if (data.containsKey('emailPassed')) {
      final l$emailPassed = data['emailPassed'];
      result$data['emailPassed'] = (l$emailPassed as bool?);
    }
    if (data.containsKey('emailUpdatedAt')) {
      final l$emailUpdatedAt = data['emailUpdatedAt'];
      result$data['emailUpdatedAt'] = l$emailUpdatedAt == null
          ? null
          : DateTime.parse((l$emailUpdatedAt as String));
    }
    if (data.containsKey('emailVerifiedAt')) {
      final l$emailVerifiedAt = data['emailVerifiedAt'];
      result$data['emailVerifiedAt'] = l$emailVerifiedAt == null
          ? null
          : DateTime.parse((l$emailVerifiedAt as String));
    }
    if (data.containsKey('errors')) {
      final l$errors = data['errors'];
      result$data['errors'] = (l$errors as List<dynamic>?)
          ?.map((e) => Input$MultiStepActionErrorInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('password')) {
      final l$password = data['password'];
      result$data['password'] = (l$password as String?);
    }
    if (data.containsKey('passwordPassed')) {
      final l$passwordPassed = data['passwordPassed'];
      result$data['passwordPassed'] = (l$passwordPassed as bool?);
    }
    if (data.containsKey('passwordResettedAt')) {
      final l$passwordResettedAt = data['passwordResettedAt'];
      result$data['passwordResettedAt'] = l$passwordResettedAt == null
          ? null
          : DateTime.parse((l$passwordResettedAt as String));
    }
    if (data.containsKey('passwordUpdatedAt')) {
      final l$passwordUpdatedAt = data['passwordUpdatedAt'];
      result$data['passwordUpdatedAt'] = l$passwordUpdatedAt == null
          ? null
          : DateTime.parse((l$passwordUpdatedAt as String));
    }
    if (data.containsKey('phoneNumberPassed')) {
      final l$phoneNumberPassed = data['phoneNumberPassed'];
      result$data['phoneNumberPassed'] = (l$phoneNumberPassed as bool?);
    }
    if (data.containsKey('phoneNumberUpdatedAt')) {
      final l$phoneNumberUpdatedAt = data['phoneNumberUpdatedAt'];
      result$data['phoneNumberUpdatedAt'] = l$phoneNumberUpdatedAt == null
          ? null
          : DateTime.parse((l$phoneNumberUpdatedAt as String));
    }
    if (data.containsKey('phoneNumberVerifiedAt')) {
      final l$phoneNumberVerifiedAt = data['phoneNumberVerifiedAt'];
      result$data['phoneNumberVerifiedAt'] = l$phoneNumberVerifiedAt == null
          ? null
          : DateTime.parse((l$phoneNumberVerifiedAt as String));
    }
    if (data.containsKey('signedInAt')) {
      final l$signedInAt = data['signedInAt'];
      result$data['signedInAt'] = l$signedInAt == null
          ? null
          : DateTime.parse((l$signedInAt as String));
    }
    if (data.containsKey('tfaBackupCodes')) {
      final l$tfaBackupCodes = data['tfaBackupCodes'];
      result$data['tfaBackupCodes'] = (l$tfaBackupCodes as String?);
    }
    if (data.containsKey('expiresAt')) {
      final l$expiresAt = data['expiresAt'];
      result$data['expiresAt'] =
          l$expiresAt == null ? null : DateTime.parse((l$expiresAt as String));
    }
    return Input$SidMultiStepActionInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get id => (_$data['id'] as String?);
  String? get adminNotes => (_$data['adminNotes'] as String?);
  List<Input$ModelEventInput>? get events =>
      (_$data['events'] as List<Input$ModelEventInput>?);
  Input$BaseModelMetadataInput? get metadata =>
      (_$data['metadata'] as Input$BaseModelMetadataInput?);
  DateTime? get createdAt => (_$data['createdAt'] as DateTime?);
  String? get createdBy => (_$data['createdBy'] as String?);
  DateTime? get updatedAt => (_$data['updatedAt'] as DateTime?);
  String? get updatedBy => (_$data['updatedBy'] as String?);
  DateTime? get deletedAt => (_$data['deletedAt'] as DateTime?);
  String? get deletedBy => (_$data['deletedBy'] as String?);
  String? get userId => (_$data['userId'] as String?);
  String? get userIdent => (_$data['userIdent'] as String?);
  String? get userHandle => (_$data['userHandle'] as String?);
  String? get email => (_$data['email'] as String?);
  String? get phoneNumber => (_$data['phoneNumber'] as String?);
  String? get deviceUuid => (_$data['deviceUuid'] as String?);
  Enum$MultiStepActionType? get actionType =>
      (_$data['actionType'] as Enum$MultiStepActionType?);
  Enum$MultiStepActionStatus? get actionStatus =>
      (_$data['actionStatus'] as Enum$MultiStepActionStatus?);
  Enum$NotificationMethod? get notificationMethod =>
      (_$data['notificationMethod'] as Enum$NotificationMethod?);
  Enum$MultiStepActionResult? get result =>
      (_$data['result'] as Enum$MultiStepActionResult?);
  String? get confirmToken => (_$data['confirmToken'] as String?);
  int? get attemptCount => (_$data['attemptCount'] as int?);
  DateTime? get notificationSentAt =>
      (_$data['notificationSentAt'] as DateTime?);
  String? get notificationResult => (_$data['notificationResult'] as String?);
  String? get notificationId => (_$data['notificationId'] as String?);
  String? get textData => (_$data['textData'] as String?);
  String? get report => (_$data['report'] as String?);
  String? get authToken => (_$data['authToken'] as String?);
  bool? get emailPassed => (_$data['emailPassed'] as bool?);
  DateTime? get emailUpdatedAt => (_$data['emailUpdatedAt'] as DateTime?);
  DateTime? get emailVerifiedAt => (_$data['emailVerifiedAt'] as DateTime?);
  List<Input$MultiStepActionErrorInput>? get errors =>
      (_$data['errors'] as List<Input$MultiStepActionErrorInput>?);
  String? get password => (_$data['password'] as String?);
  bool? get passwordPassed => (_$data['passwordPassed'] as bool?);
  DateTime? get passwordResettedAt =>
      (_$data['passwordResettedAt'] as DateTime?);
  DateTime? get passwordUpdatedAt => (_$data['passwordUpdatedAt'] as DateTime?);
  bool? get phoneNumberPassed => (_$data['phoneNumberPassed'] as bool?);
  DateTime? get phoneNumberUpdatedAt =>
      (_$data['phoneNumberUpdatedAt'] as DateTime?);
  DateTime? get phoneNumberVerifiedAt =>
      (_$data['phoneNumberVerifiedAt'] as DateTime?);
  DateTime? get signedInAt => (_$data['signedInAt'] as DateTime?);
  String? get tfaBackupCodes => (_$data['tfaBackupCodes'] as String?);
  DateTime? get expiresAt => (_$data['expiresAt'] as DateTime?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('adminNotes')) {
      final l$adminNotes = adminNotes;
      result$data['adminNotes'] = l$adminNotes;
    }
    if (_$data.containsKey('events')) {
      final l$events = events;
      result$data['events'] = l$events?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('metadata')) {
      final l$metadata = metadata;
      result$data['metadata'] = l$metadata?.toJson();
    }
    if (_$data.containsKey('createdAt')) {
      final l$createdAt = createdAt;
      result$data['createdAt'] = l$createdAt?.toIso8601String();
    }
    if (_$data.containsKey('createdBy')) {
      final l$createdBy = createdBy;
      result$data['createdBy'] = l$createdBy;
    }
    if (_$data.containsKey('updatedAt')) {
      final l$updatedAt = updatedAt;
      result$data['updatedAt'] = l$updatedAt?.toIso8601String();
    }
    if (_$data.containsKey('updatedBy')) {
      final l$updatedBy = updatedBy;
      result$data['updatedBy'] = l$updatedBy;
    }
    if (_$data.containsKey('deletedAt')) {
      final l$deletedAt = deletedAt;
      result$data['deletedAt'] = l$deletedAt?.toIso8601String();
    }
    if (_$data.containsKey('deletedBy')) {
      final l$deletedBy = deletedBy;
      result$data['deletedBy'] = l$deletedBy;
    }
    if (_$data.containsKey('userId')) {
      final l$userId = userId;
      result$data['userId'] = l$userId;
    }
    if (_$data.containsKey('userIdent')) {
      final l$userIdent = userIdent;
      result$data['userIdent'] = l$userIdent;
    }
    if (_$data.containsKey('userHandle')) {
      final l$userHandle = userHandle;
      result$data['userHandle'] = l$userHandle;
    }
    if (_$data.containsKey('email')) {
      final l$email = email;
      result$data['email'] = l$email;
    }
    if (_$data.containsKey('phoneNumber')) {
      final l$phoneNumber = phoneNumber;
      result$data['phoneNumber'] = l$phoneNumber;
    }
    if (_$data.containsKey('deviceUuid')) {
      final l$deviceUuid = deviceUuid;
      result$data['deviceUuid'] = l$deviceUuid;
    }
    if (_$data.containsKey('actionType')) {
      final l$actionType = actionType;
      result$data['actionType'] = l$actionType == null
          ? null
          : toJson$Enum$MultiStepActionType(l$actionType);
    }
    if (_$data.containsKey('actionStatus')) {
      final l$actionStatus = actionStatus;
      result$data['actionStatus'] = l$actionStatus == null
          ? null
          : toJson$Enum$MultiStepActionStatus(l$actionStatus);
    }
    if (_$data.containsKey('notificationMethod')) {
      final l$notificationMethod = notificationMethod;
      result$data['notificationMethod'] = l$notificationMethod == null
          ? null
          : toJson$Enum$NotificationMethod(l$notificationMethod);
    }
    if (_$data.containsKey('result')) {
      final l$result = result;
      result$data['result'] =
          l$result == null ? null : toJson$Enum$MultiStepActionResult(l$result);
    }
    if (_$data.containsKey('confirmToken')) {
      final l$confirmToken = confirmToken;
      result$data['confirmToken'] = l$confirmToken;
    }
    if (_$data.containsKey('attemptCount')) {
      final l$attemptCount = attemptCount;
      result$data['attemptCount'] = l$attemptCount;
    }
    if (_$data.containsKey('notificationSentAt')) {
      final l$notificationSentAt = notificationSentAt;
      result$data['notificationSentAt'] =
          l$notificationSentAt?.toIso8601String();
    }
    if (_$data.containsKey('notificationResult')) {
      final l$notificationResult = notificationResult;
      result$data['notificationResult'] = l$notificationResult;
    }
    if (_$data.containsKey('notificationId')) {
      final l$notificationId = notificationId;
      result$data['notificationId'] = l$notificationId;
    }
    if (_$data.containsKey('textData')) {
      final l$textData = textData;
      result$data['textData'] = l$textData;
    }
    if (_$data.containsKey('report')) {
      final l$report = report;
      result$data['report'] = l$report;
    }
    if (_$data.containsKey('authToken')) {
      final l$authToken = authToken;
      result$data['authToken'] = l$authToken;
    }
    if (_$data.containsKey('emailPassed')) {
      final l$emailPassed = emailPassed;
      result$data['emailPassed'] = l$emailPassed;
    }
    if (_$data.containsKey('emailUpdatedAt')) {
      final l$emailUpdatedAt = emailUpdatedAt;
      result$data['emailUpdatedAt'] = l$emailUpdatedAt?.toIso8601String();
    }
    if (_$data.containsKey('emailVerifiedAt')) {
      final l$emailVerifiedAt = emailVerifiedAt;
      result$data['emailVerifiedAt'] = l$emailVerifiedAt?.toIso8601String();
    }
    if (_$data.containsKey('errors')) {
      final l$errors = errors;
      result$data['errors'] = l$errors?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('password')) {
      final l$password = password;
      result$data['password'] = l$password;
    }
    if (_$data.containsKey('passwordPassed')) {
      final l$passwordPassed = passwordPassed;
      result$data['passwordPassed'] = l$passwordPassed;
    }
    if (_$data.containsKey('passwordResettedAt')) {
      final l$passwordResettedAt = passwordResettedAt;
      result$data['passwordResettedAt'] =
          l$passwordResettedAt?.toIso8601String();
    }
    if (_$data.containsKey('passwordUpdatedAt')) {
      final l$passwordUpdatedAt = passwordUpdatedAt;
      result$data['passwordUpdatedAt'] = l$passwordUpdatedAt?.toIso8601String();
    }
    if (_$data.containsKey('phoneNumberPassed')) {
      final l$phoneNumberPassed = phoneNumberPassed;
      result$data['phoneNumberPassed'] = l$phoneNumberPassed;
    }
    if (_$data.containsKey('phoneNumberUpdatedAt')) {
      final l$phoneNumberUpdatedAt = phoneNumberUpdatedAt;
      result$data['phoneNumberUpdatedAt'] =
          l$phoneNumberUpdatedAt?.toIso8601String();
    }
    if (_$data.containsKey('phoneNumberVerifiedAt')) {
      final l$phoneNumberVerifiedAt = phoneNumberVerifiedAt;
      result$data['phoneNumberVerifiedAt'] =
          l$phoneNumberVerifiedAt?.toIso8601String();
    }
    if (_$data.containsKey('signedInAt')) {
      final l$signedInAt = signedInAt;
      result$data['signedInAt'] = l$signedInAt?.toIso8601String();
    }
    if (_$data.containsKey('tfaBackupCodes')) {
      final l$tfaBackupCodes = tfaBackupCodes;
      result$data['tfaBackupCodes'] = l$tfaBackupCodes;
    }
    if (_$data.containsKey('expiresAt')) {
      final l$expiresAt = expiresAt;
      result$data['expiresAt'] = l$expiresAt?.toIso8601String();
    }
    return result$data;
  }

  CopyWith$Input$SidMultiStepActionInput<Input$SidMultiStepActionInput>
      get copyWith => CopyWith$Input$SidMultiStepActionInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$SidMultiStepActionInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$adminNotes = adminNotes;
    final lOther$adminNotes = other.adminNotes;
    if (_$data.containsKey('adminNotes') !=
        other._$data.containsKey('adminNotes')) {
      return false;
    }
    if (l$adminNotes != lOther$adminNotes) {
      return false;
    }
    final l$events = events;
    final lOther$events = other.events;
    if (_$data.containsKey('events') != other._$data.containsKey('events')) {
      return false;
    }
    if (l$events != null && lOther$events != null) {
      if (l$events.length != lOther$events.length) {
        return false;
      }
      for (int i = 0; i < l$events.length; i++) {
        final l$events$entry = l$events[i];
        final lOther$events$entry = lOther$events[i];
        if (l$events$entry != lOther$events$entry) {
          return false;
        }
      }
    } else if (l$events != lOther$events) {
      return false;
    }
    final l$metadata = metadata;
    final lOther$metadata = other.metadata;
    if (_$data.containsKey('metadata') !=
        other._$data.containsKey('metadata')) {
      return false;
    }
    if (l$metadata != lOther$metadata) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (_$data.containsKey('createdAt') !=
        other._$data.containsKey('createdAt')) {
      return false;
    }
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$createdBy = createdBy;
    final lOther$createdBy = other.createdBy;
    if (_$data.containsKey('createdBy') !=
        other._$data.containsKey('createdBy')) {
      return false;
    }
    if (l$createdBy != lOther$createdBy) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (_$data.containsKey('updatedAt') !=
        other._$data.containsKey('updatedAt')) {
      return false;
    }
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    final l$updatedBy = updatedBy;
    final lOther$updatedBy = other.updatedBy;
    if (_$data.containsKey('updatedBy') !=
        other._$data.containsKey('updatedBy')) {
      return false;
    }
    if (l$updatedBy != lOther$updatedBy) {
      return false;
    }
    final l$deletedAt = deletedAt;
    final lOther$deletedAt = other.deletedAt;
    if (_$data.containsKey('deletedAt') !=
        other._$data.containsKey('deletedAt')) {
      return false;
    }
    if (l$deletedAt != lOther$deletedAt) {
      return false;
    }
    final l$deletedBy = deletedBy;
    final lOther$deletedBy = other.deletedBy;
    if (_$data.containsKey('deletedBy') !=
        other._$data.containsKey('deletedBy')) {
      return false;
    }
    if (l$deletedBy != lOther$deletedBy) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (_$data.containsKey('userId') != other._$data.containsKey('userId')) {
      return false;
    }
    if (l$userId != lOther$userId) {
      return false;
    }
    final l$userIdent = userIdent;
    final lOther$userIdent = other.userIdent;
    if (_$data.containsKey('userIdent') !=
        other._$data.containsKey('userIdent')) {
      return false;
    }
    if (l$userIdent != lOther$userIdent) {
      return false;
    }
    final l$userHandle = userHandle;
    final lOther$userHandle = other.userHandle;
    if (_$data.containsKey('userHandle') !=
        other._$data.containsKey('userHandle')) {
      return false;
    }
    if (l$userHandle != lOther$userHandle) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (_$data.containsKey('email') != other._$data.containsKey('email')) {
      return false;
    }
    if (l$email != lOther$email) {
      return false;
    }
    final l$phoneNumber = phoneNumber;
    final lOther$phoneNumber = other.phoneNumber;
    if (_$data.containsKey('phoneNumber') !=
        other._$data.containsKey('phoneNumber')) {
      return false;
    }
    if (l$phoneNumber != lOther$phoneNumber) {
      return false;
    }
    final l$deviceUuid = deviceUuid;
    final lOther$deviceUuid = other.deviceUuid;
    if (_$data.containsKey('deviceUuid') !=
        other._$data.containsKey('deviceUuid')) {
      return false;
    }
    if (l$deviceUuid != lOther$deviceUuid) {
      return false;
    }
    final l$actionType = actionType;
    final lOther$actionType = other.actionType;
    if (_$data.containsKey('actionType') !=
        other._$data.containsKey('actionType')) {
      return false;
    }
    if (l$actionType != lOther$actionType) {
      return false;
    }
    final l$actionStatus = actionStatus;
    final lOther$actionStatus = other.actionStatus;
    if (_$data.containsKey('actionStatus') !=
        other._$data.containsKey('actionStatus')) {
      return false;
    }
    if (l$actionStatus != lOther$actionStatus) {
      return false;
    }
    final l$notificationMethod = notificationMethod;
    final lOther$notificationMethod = other.notificationMethod;
    if (_$data.containsKey('notificationMethod') !=
        other._$data.containsKey('notificationMethod')) {
      return false;
    }
    if (l$notificationMethod != lOther$notificationMethod) {
      return false;
    }
    final l$result = result;
    final lOther$result = other.result;
    if (_$data.containsKey('result') != other._$data.containsKey('result')) {
      return false;
    }
    if (l$result != lOther$result) {
      return false;
    }
    final l$confirmToken = confirmToken;
    final lOther$confirmToken = other.confirmToken;
    if (_$data.containsKey('confirmToken') !=
        other._$data.containsKey('confirmToken')) {
      return false;
    }
    if (l$confirmToken != lOther$confirmToken) {
      return false;
    }
    final l$attemptCount = attemptCount;
    final lOther$attemptCount = other.attemptCount;
    if (_$data.containsKey('attemptCount') !=
        other._$data.containsKey('attemptCount')) {
      return false;
    }
    if (l$attemptCount != lOther$attemptCount) {
      return false;
    }
    final l$notificationSentAt = notificationSentAt;
    final lOther$notificationSentAt = other.notificationSentAt;
    if (_$data.containsKey('notificationSentAt') !=
        other._$data.containsKey('notificationSentAt')) {
      return false;
    }
    if (l$notificationSentAt != lOther$notificationSentAt) {
      return false;
    }
    final l$notificationResult = notificationResult;
    final lOther$notificationResult = other.notificationResult;
    if (_$data.containsKey('notificationResult') !=
        other._$data.containsKey('notificationResult')) {
      return false;
    }
    if (l$notificationResult != lOther$notificationResult) {
      return false;
    }
    final l$notificationId = notificationId;
    final lOther$notificationId = other.notificationId;
    if (_$data.containsKey('notificationId') !=
        other._$data.containsKey('notificationId')) {
      return false;
    }
    if (l$notificationId != lOther$notificationId) {
      return false;
    }
    final l$textData = textData;
    final lOther$textData = other.textData;
    if (_$data.containsKey('textData') !=
        other._$data.containsKey('textData')) {
      return false;
    }
    if (l$textData != lOther$textData) {
      return false;
    }
    final l$report = report;
    final lOther$report = other.report;
    if (_$data.containsKey('report') != other._$data.containsKey('report')) {
      return false;
    }
    if (l$report != lOther$report) {
      return false;
    }
    final l$authToken = authToken;
    final lOther$authToken = other.authToken;
    if (_$data.containsKey('authToken') !=
        other._$data.containsKey('authToken')) {
      return false;
    }
    if (l$authToken != lOther$authToken) {
      return false;
    }
    final l$emailPassed = emailPassed;
    final lOther$emailPassed = other.emailPassed;
    if (_$data.containsKey('emailPassed') !=
        other._$data.containsKey('emailPassed')) {
      return false;
    }
    if (l$emailPassed != lOther$emailPassed) {
      return false;
    }
    final l$emailUpdatedAt = emailUpdatedAt;
    final lOther$emailUpdatedAt = other.emailUpdatedAt;
    if (_$data.containsKey('emailUpdatedAt') !=
        other._$data.containsKey('emailUpdatedAt')) {
      return false;
    }
    if (l$emailUpdatedAt != lOther$emailUpdatedAt) {
      return false;
    }
    final l$emailVerifiedAt = emailVerifiedAt;
    final lOther$emailVerifiedAt = other.emailVerifiedAt;
    if (_$data.containsKey('emailVerifiedAt') !=
        other._$data.containsKey('emailVerifiedAt')) {
      return false;
    }
    if (l$emailVerifiedAt != lOther$emailVerifiedAt) {
      return false;
    }
    final l$errors = errors;
    final lOther$errors = other.errors;
    if (_$data.containsKey('errors') != other._$data.containsKey('errors')) {
      return false;
    }
    if (l$errors != null && lOther$errors != null) {
      if (l$errors.length != lOther$errors.length) {
        return false;
      }
      for (int i = 0; i < l$errors.length; i++) {
        final l$errors$entry = l$errors[i];
        final lOther$errors$entry = lOther$errors[i];
        if (l$errors$entry != lOther$errors$entry) {
          return false;
        }
      }
    } else if (l$errors != lOther$errors) {
      return false;
    }
    final l$password = password;
    final lOther$password = other.password;
    if (_$data.containsKey('password') !=
        other._$data.containsKey('password')) {
      return false;
    }
    if (l$password != lOther$password) {
      return false;
    }
    final l$passwordPassed = passwordPassed;
    final lOther$passwordPassed = other.passwordPassed;
    if (_$data.containsKey('passwordPassed') !=
        other._$data.containsKey('passwordPassed')) {
      return false;
    }
    if (l$passwordPassed != lOther$passwordPassed) {
      return false;
    }
    final l$passwordResettedAt = passwordResettedAt;
    final lOther$passwordResettedAt = other.passwordResettedAt;
    if (_$data.containsKey('passwordResettedAt') !=
        other._$data.containsKey('passwordResettedAt')) {
      return false;
    }
    if (l$passwordResettedAt != lOther$passwordResettedAt) {
      return false;
    }
    final l$passwordUpdatedAt = passwordUpdatedAt;
    final lOther$passwordUpdatedAt = other.passwordUpdatedAt;
    if (_$data.containsKey('passwordUpdatedAt') !=
        other._$data.containsKey('passwordUpdatedAt')) {
      return false;
    }
    if (l$passwordUpdatedAt != lOther$passwordUpdatedAt) {
      return false;
    }
    final l$phoneNumberPassed = phoneNumberPassed;
    final lOther$phoneNumberPassed = other.phoneNumberPassed;
    if (_$data.containsKey('phoneNumberPassed') !=
        other._$data.containsKey('phoneNumberPassed')) {
      return false;
    }
    if (l$phoneNumberPassed != lOther$phoneNumberPassed) {
      return false;
    }
    final l$phoneNumberUpdatedAt = phoneNumberUpdatedAt;
    final lOther$phoneNumberUpdatedAt = other.phoneNumberUpdatedAt;
    if (_$data.containsKey('phoneNumberUpdatedAt') !=
        other._$data.containsKey('phoneNumberUpdatedAt')) {
      return false;
    }
    if (l$phoneNumberUpdatedAt != lOther$phoneNumberUpdatedAt) {
      return false;
    }
    final l$phoneNumberVerifiedAt = phoneNumberVerifiedAt;
    final lOther$phoneNumberVerifiedAt = other.phoneNumberVerifiedAt;
    if (_$data.containsKey('phoneNumberVerifiedAt') !=
        other._$data.containsKey('phoneNumberVerifiedAt')) {
      return false;
    }
    if (l$phoneNumberVerifiedAt != lOther$phoneNumberVerifiedAt) {
      return false;
    }
    final l$signedInAt = signedInAt;
    final lOther$signedInAt = other.signedInAt;
    if (_$data.containsKey('signedInAt') !=
        other._$data.containsKey('signedInAt')) {
      return false;
    }
    if (l$signedInAt != lOther$signedInAt) {
      return false;
    }
    final l$tfaBackupCodes = tfaBackupCodes;
    final lOther$tfaBackupCodes = other.tfaBackupCodes;
    if (_$data.containsKey('tfaBackupCodes') !=
        other._$data.containsKey('tfaBackupCodes')) {
      return false;
    }
    if (l$tfaBackupCodes != lOther$tfaBackupCodes) {
      return false;
    }
    final l$expiresAt = expiresAt;
    final lOther$expiresAt = other.expiresAt;
    if (_$data.containsKey('expiresAt') !=
        other._$data.containsKey('expiresAt')) {
      return false;
    }
    if (l$expiresAt != lOther$expiresAt) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$adminNotes = adminNotes;
    final l$events = events;
    final l$metadata = metadata;
    final l$createdAt = createdAt;
    final l$createdBy = createdBy;
    final l$updatedAt = updatedAt;
    final l$updatedBy = updatedBy;
    final l$deletedAt = deletedAt;
    final l$deletedBy = deletedBy;
    final l$userId = userId;
    final l$userIdent = userIdent;
    final l$userHandle = userHandle;
    final l$email = email;
    final l$phoneNumber = phoneNumber;
    final l$deviceUuid = deviceUuid;
    final l$actionType = actionType;
    final l$actionStatus = actionStatus;
    final l$notificationMethod = notificationMethod;
    final l$result = result;
    final l$confirmToken = confirmToken;
    final l$attemptCount = attemptCount;
    final l$notificationSentAt = notificationSentAt;
    final l$notificationResult = notificationResult;
    final l$notificationId = notificationId;
    final l$textData = textData;
    final l$report = report;
    final l$authToken = authToken;
    final l$emailPassed = emailPassed;
    final l$emailUpdatedAt = emailUpdatedAt;
    final l$emailVerifiedAt = emailVerifiedAt;
    final l$errors = errors;
    final l$password = password;
    final l$passwordPassed = passwordPassed;
    final l$passwordResettedAt = passwordResettedAt;
    final l$passwordUpdatedAt = passwordUpdatedAt;
    final l$phoneNumberPassed = phoneNumberPassed;
    final l$phoneNumberUpdatedAt = phoneNumberUpdatedAt;
    final l$phoneNumberVerifiedAt = phoneNumberVerifiedAt;
    final l$signedInAt = signedInAt;
    final l$tfaBackupCodes = tfaBackupCodes;
    final l$expiresAt = expiresAt;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('adminNotes') ? l$adminNotes : const {},
      _$data.containsKey('events')
          ? l$events == null
              ? null
              : Object.hashAll(l$events.map((v) => v))
          : const {},
      _$data.containsKey('metadata') ? l$metadata : const {},
      _$data.containsKey('createdAt') ? l$createdAt : const {},
      _$data.containsKey('createdBy') ? l$createdBy : const {},
      _$data.containsKey('updatedAt') ? l$updatedAt : const {},
      _$data.containsKey('updatedBy') ? l$updatedBy : const {},
      _$data.containsKey('deletedAt') ? l$deletedAt : const {},
      _$data.containsKey('deletedBy') ? l$deletedBy : const {},
      _$data.containsKey('userId') ? l$userId : const {},
      _$data.containsKey('userIdent') ? l$userIdent : const {},
      _$data.containsKey('userHandle') ? l$userHandle : const {},
      _$data.containsKey('email') ? l$email : const {},
      _$data.containsKey('phoneNumber') ? l$phoneNumber : const {},
      _$data.containsKey('deviceUuid') ? l$deviceUuid : const {},
      _$data.containsKey('actionType') ? l$actionType : const {},
      _$data.containsKey('actionStatus') ? l$actionStatus : const {},
      _$data.containsKey('notificationMethod')
          ? l$notificationMethod
          : const {},
      _$data.containsKey('result') ? l$result : const {},
      _$data.containsKey('confirmToken') ? l$confirmToken : const {},
      _$data.containsKey('attemptCount') ? l$attemptCount : const {},
      _$data.containsKey('notificationSentAt')
          ? l$notificationSentAt
          : const {},
      _$data.containsKey('notificationResult')
          ? l$notificationResult
          : const {},
      _$data.containsKey('notificationId') ? l$notificationId : const {},
      _$data.containsKey('textData') ? l$textData : const {},
      _$data.containsKey('report') ? l$report : const {},
      _$data.containsKey('authToken') ? l$authToken : const {},
      _$data.containsKey('emailPassed') ? l$emailPassed : const {},
      _$data.containsKey('emailUpdatedAt') ? l$emailUpdatedAt : const {},
      _$data.containsKey('emailVerifiedAt') ? l$emailVerifiedAt : const {},
      _$data.containsKey('errors')
          ? l$errors == null
              ? null
              : Object.hashAll(l$errors.map((v) => v))
          : const {},
      _$data.containsKey('password') ? l$password : const {},
      _$data.containsKey('passwordPassed') ? l$passwordPassed : const {},
      _$data.containsKey('passwordResettedAt')
          ? l$passwordResettedAt
          : const {},
      _$data.containsKey('passwordUpdatedAt') ? l$passwordUpdatedAt : const {},
      _$data.containsKey('phoneNumberPassed') ? l$phoneNumberPassed : const {},
      _$data.containsKey('phoneNumberUpdatedAt')
          ? l$phoneNumberUpdatedAt
          : const {},
      _$data.containsKey('phoneNumberVerifiedAt')
          ? l$phoneNumberVerifiedAt
          : const {},
      _$data.containsKey('signedInAt') ? l$signedInAt : const {},
      _$data.containsKey('tfaBackupCodes') ? l$tfaBackupCodes : const {},
      _$data.containsKey('expiresAt') ? l$expiresAt : const {},
    ]);
  }
}

abstract class CopyWith$Input$SidMultiStepActionInput<TRes> {
  factory CopyWith$Input$SidMultiStepActionInput(
    Input$SidMultiStepActionInput instance,
    TRes Function(Input$SidMultiStepActionInput) then,
  ) = _CopyWithImpl$Input$SidMultiStepActionInput;

  factory CopyWith$Input$SidMultiStepActionInput.stub(TRes res) =
      _CopyWithStubImpl$Input$SidMultiStepActionInput;

  TRes call({
    String? id,
    String? adminNotes,
    List<Input$ModelEventInput>? events,
    Input$BaseModelMetadataInput? metadata,
    DateTime? createdAt,
    String? createdBy,
    DateTime? updatedAt,
    String? updatedBy,
    DateTime? deletedAt,
    String? deletedBy,
    String? userId,
    String? userIdent,
    String? userHandle,
    String? email,
    String? phoneNumber,
    String? deviceUuid,
    Enum$MultiStepActionType? actionType,
    Enum$MultiStepActionStatus? actionStatus,
    Enum$NotificationMethod? notificationMethod,
    Enum$MultiStepActionResult? result,
    String? confirmToken,
    int? attemptCount,
    DateTime? notificationSentAt,
    String? notificationResult,
    String? notificationId,
    String? textData,
    String? report,
    String? authToken,
    bool? emailPassed,
    DateTime? emailUpdatedAt,
    DateTime? emailVerifiedAt,
    List<Input$MultiStepActionErrorInput>? errors,
    String? password,
    bool? passwordPassed,
    DateTime? passwordResettedAt,
    DateTime? passwordUpdatedAt,
    bool? phoneNumberPassed,
    DateTime? phoneNumberUpdatedAt,
    DateTime? phoneNumberVerifiedAt,
    DateTime? signedInAt,
    String? tfaBackupCodes,
    DateTime? expiresAt,
  });
  TRes events(
      Iterable<Input$ModelEventInput>? Function(
              Iterable<CopyWith$Input$ModelEventInput<Input$ModelEventInput>>?)
          _fn);
  CopyWith$Input$BaseModelMetadataInput<TRes> get metadata;
  TRes errors(
      Iterable<Input$MultiStepActionErrorInput>? Function(
              Iterable<
                  CopyWith$Input$MultiStepActionErrorInput<
                      Input$MultiStepActionErrorInput>>?)
          _fn);
}

class _CopyWithImpl$Input$SidMultiStepActionInput<TRes>
    implements CopyWith$Input$SidMultiStepActionInput<TRes> {
  _CopyWithImpl$Input$SidMultiStepActionInput(
    this._instance,
    this._then,
  );

  final Input$SidMultiStepActionInput _instance;

  final TRes Function(Input$SidMultiStepActionInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? adminNotes = _undefined,
    Object? events = _undefined,
    Object? metadata = _undefined,
    Object? createdAt = _undefined,
    Object? createdBy = _undefined,
    Object? updatedAt = _undefined,
    Object? updatedBy = _undefined,
    Object? deletedAt = _undefined,
    Object? deletedBy = _undefined,
    Object? userId = _undefined,
    Object? userIdent = _undefined,
    Object? userHandle = _undefined,
    Object? email = _undefined,
    Object? phoneNumber = _undefined,
    Object? deviceUuid = _undefined,
    Object? actionType = _undefined,
    Object? actionStatus = _undefined,
    Object? notificationMethod = _undefined,
    Object? result = _undefined,
    Object? confirmToken = _undefined,
    Object? attemptCount = _undefined,
    Object? notificationSentAt = _undefined,
    Object? notificationResult = _undefined,
    Object? notificationId = _undefined,
    Object? textData = _undefined,
    Object? report = _undefined,
    Object? authToken = _undefined,
    Object? emailPassed = _undefined,
    Object? emailUpdatedAt = _undefined,
    Object? emailVerifiedAt = _undefined,
    Object? errors = _undefined,
    Object? password = _undefined,
    Object? passwordPassed = _undefined,
    Object? passwordResettedAt = _undefined,
    Object? passwordUpdatedAt = _undefined,
    Object? phoneNumberPassed = _undefined,
    Object? phoneNumberUpdatedAt = _undefined,
    Object? phoneNumberVerifiedAt = _undefined,
    Object? signedInAt = _undefined,
    Object? tfaBackupCodes = _undefined,
    Object? expiresAt = _undefined,
  }) =>
      _then(Input$SidMultiStepActionInput._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as String?),
        if (adminNotes != _undefined) 'adminNotes': (adminNotes as String?),
        if (events != _undefined)
          'events': (events as List<Input$ModelEventInput>?),
        if (metadata != _undefined)
          'metadata': (metadata as Input$BaseModelMetadataInput?),
        if (createdAt != _undefined) 'createdAt': (createdAt as DateTime?),
        if (createdBy != _undefined) 'createdBy': (createdBy as String?),
        if (updatedAt != _undefined) 'updatedAt': (updatedAt as DateTime?),
        if (updatedBy != _undefined) 'updatedBy': (updatedBy as String?),
        if (deletedAt != _undefined) 'deletedAt': (deletedAt as DateTime?),
        if (deletedBy != _undefined) 'deletedBy': (deletedBy as String?),
        if (userId != _undefined) 'userId': (userId as String?),
        if (userIdent != _undefined) 'userIdent': (userIdent as String?),
        if (userHandle != _undefined) 'userHandle': (userHandle as String?),
        if (email != _undefined) 'email': (email as String?),
        if (phoneNumber != _undefined) 'phoneNumber': (phoneNumber as String?),
        if (deviceUuid != _undefined) 'deviceUuid': (deviceUuid as String?),
        if (actionType != _undefined)
          'actionType': (actionType as Enum$MultiStepActionType?),
        if (actionStatus != _undefined)
          'actionStatus': (actionStatus as Enum$MultiStepActionStatus?),
        if (notificationMethod != _undefined)
          'notificationMethod':
              (notificationMethod as Enum$NotificationMethod?),
        if (result != _undefined)
          'result': (result as Enum$MultiStepActionResult?),
        if (confirmToken != _undefined)
          'confirmToken': (confirmToken as String?),
        if (attemptCount != _undefined) 'attemptCount': (attemptCount as int?),
        if (notificationSentAt != _undefined)
          'notificationSentAt': (notificationSentAt as DateTime?),
        if (notificationResult != _undefined)
          'notificationResult': (notificationResult as String?),
        if (notificationId != _undefined)
          'notificationId': (notificationId as String?),
        if (textData != _undefined) 'textData': (textData as String?),
        if (report != _undefined) 'report': (report as String?),
        if (authToken != _undefined) 'authToken': (authToken as String?),
        if (emailPassed != _undefined) 'emailPassed': (emailPassed as bool?),
        if (emailUpdatedAt != _undefined)
          'emailUpdatedAt': (emailUpdatedAt as DateTime?),
        if (emailVerifiedAt != _undefined)
          'emailVerifiedAt': (emailVerifiedAt as DateTime?),
        if (errors != _undefined)
          'errors': (errors as List<Input$MultiStepActionErrorInput>?),
        if (password != _undefined) 'password': (password as String?),
        if (passwordPassed != _undefined)
          'passwordPassed': (passwordPassed as bool?),
        if (passwordResettedAt != _undefined)
          'passwordResettedAt': (passwordResettedAt as DateTime?),
        if (passwordUpdatedAt != _undefined)
          'passwordUpdatedAt': (passwordUpdatedAt as DateTime?),
        if (phoneNumberPassed != _undefined)
          'phoneNumberPassed': (phoneNumberPassed as bool?),
        if (phoneNumberUpdatedAt != _undefined)
          'phoneNumberUpdatedAt': (phoneNumberUpdatedAt as DateTime?),
        if (phoneNumberVerifiedAt != _undefined)
          'phoneNumberVerifiedAt': (phoneNumberVerifiedAt as DateTime?),
        if (signedInAt != _undefined) 'signedInAt': (signedInAt as DateTime?),
        if (tfaBackupCodes != _undefined)
          'tfaBackupCodes': (tfaBackupCodes as String?),
        if (expiresAt != _undefined) 'expiresAt': (expiresAt as DateTime?),
      }));
  TRes events(
          Iterable<Input$ModelEventInput>? Function(
                  Iterable<
                      CopyWith$Input$ModelEventInput<Input$ModelEventInput>>?)
              _fn) =>
      call(
          events:
              _fn(_instance.events?.map((e) => CopyWith$Input$ModelEventInput(
                    e,
                    (i) => i,
                  )))?.toList());
  CopyWith$Input$BaseModelMetadataInput<TRes> get metadata {
    final local$metadata = _instance.metadata;
    return local$metadata == null
        ? CopyWith$Input$BaseModelMetadataInput.stub(_then(_instance))
        : CopyWith$Input$BaseModelMetadataInput(
            local$metadata, (e) => call(metadata: e));
  }

  TRes errors(
          Iterable<Input$MultiStepActionErrorInput>? Function(
                  Iterable<
                      CopyWith$Input$MultiStepActionErrorInput<
                          Input$MultiStepActionErrorInput>>?)
              _fn) =>
      call(
          errors: _fn(_instance.errors
              ?.map((e) => CopyWith$Input$MultiStepActionErrorInput(
                    e,
                    (i) => i,
                  )))?.toList());
}

class _CopyWithStubImpl$Input$SidMultiStepActionInput<TRes>
    implements CopyWith$Input$SidMultiStepActionInput<TRes> {
  _CopyWithStubImpl$Input$SidMultiStepActionInput(this._res);

  TRes _res;

  call({
    String? id,
    String? adminNotes,
    List<Input$ModelEventInput>? events,
    Input$BaseModelMetadataInput? metadata,
    DateTime? createdAt,
    String? createdBy,
    DateTime? updatedAt,
    String? updatedBy,
    DateTime? deletedAt,
    String? deletedBy,
    String? userId,
    String? userIdent,
    String? userHandle,
    String? email,
    String? phoneNumber,
    String? deviceUuid,
    Enum$MultiStepActionType? actionType,
    Enum$MultiStepActionStatus? actionStatus,
    Enum$NotificationMethod? notificationMethod,
    Enum$MultiStepActionResult? result,
    String? confirmToken,
    int? attemptCount,
    DateTime? notificationSentAt,
    String? notificationResult,
    String? notificationId,
    String? textData,
    String? report,
    String? authToken,
    bool? emailPassed,
    DateTime? emailUpdatedAt,
    DateTime? emailVerifiedAt,
    List<Input$MultiStepActionErrorInput>? errors,
    String? password,
    bool? passwordPassed,
    DateTime? passwordResettedAt,
    DateTime? passwordUpdatedAt,
    bool? phoneNumberPassed,
    DateTime? phoneNumberUpdatedAt,
    DateTime? phoneNumberVerifiedAt,
    DateTime? signedInAt,
    String? tfaBackupCodes,
    DateTime? expiresAt,
  }) =>
      _res;
  events(_fn) => _res;
  CopyWith$Input$BaseModelMetadataInput<TRes> get metadata =>
      CopyWith$Input$BaseModelMetadataInput.stub(_res);
  errors(_fn) => _res;
}

class Input$MultiStepActionErrorInput {
  factory Input$MultiStepActionErrorInput({
    String? id,
    String? adminNotes,
    List<Input$ModelEventInput>? events,
    Input$BaseModelMetadataInput? metadata,
    DateTime? createdAt,
    String? createdBy,
    DateTime? updatedAt,
    String? updatedBy,
    DateTime? deletedAt,
    String? deletedBy,
    String? key,
    String? messageId,
    String? message,
  }) =>
      Input$MultiStepActionErrorInput._({
        if (id != null) r'id': id,
        if (adminNotes != null) r'adminNotes': adminNotes,
        if (events != null) r'events': events,
        if (metadata != null) r'metadata': metadata,
        if (createdAt != null) r'createdAt': createdAt,
        if (createdBy != null) r'createdBy': createdBy,
        if (updatedAt != null) r'updatedAt': updatedAt,
        if (updatedBy != null) r'updatedBy': updatedBy,
        if (deletedAt != null) r'deletedAt': deletedAt,
        if (deletedBy != null) r'deletedBy': deletedBy,
        if (key != null) r'key': key,
        if (messageId != null) r'messageId': messageId,
        if (message != null) r'message': message,
      });

  Input$MultiStepActionErrorInput._(this._$data);

  factory Input$MultiStepActionErrorInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as String?);
    }
    if (data.containsKey('adminNotes')) {
      final l$adminNotes = data['adminNotes'];
      result$data['adminNotes'] = (l$adminNotes as String?);
    }
    if (data.containsKey('events')) {
      final l$events = data['events'];
      result$data['events'] = (l$events as List<dynamic>?)
          ?.map((e) =>
              Input$ModelEventInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('metadata')) {
      final l$metadata = data['metadata'];
      result$data['metadata'] = l$metadata == null
          ? null
          : Input$BaseModelMetadataInput.fromJson(
              (l$metadata as Map<String, dynamic>));
    }
    if (data.containsKey('createdAt')) {
      final l$createdAt = data['createdAt'];
      result$data['createdAt'] =
          l$createdAt == null ? null : DateTime.parse((l$createdAt as String));
    }
    if (data.containsKey('createdBy')) {
      final l$createdBy = data['createdBy'];
      result$data['createdBy'] = (l$createdBy as String?);
    }
    if (data.containsKey('updatedAt')) {
      final l$updatedAt = data['updatedAt'];
      result$data['updatedAt'] =
          l$updatedAt == null ? null : DateTime.parse((l$updatedAt as String));
    }
    if (data.containsKey('updatedBy')) {
      final l$updatedBy = data['updatedBy'];
      result$data['updatedBy'] = (l$updatedBy as String?);
    }
    if (data.containsKey('deletedAt')) {
      final l$deletedAt = data['deletedAt'];
      result$data['deletedAt'] =
          l$deletedAt == null ? null : DateTime.parse((l$deletedAt as String));
    }
    if (data.containsKey('deletedBy')) {
      final l$deletedBy = data['deletedBy'];
      result$data['deletedBy'] = (l$deletedBy as String?);
    }
    if (data.containsKey('key')) {
      final l$key = data['key'];
      result$data['key'] = (l$key as String?);
    }
    if (data.containsKey('messageId')) {
      final l$messageId = data['messageId'];
      result$data['messageId'] = (l$messageId as String?);
    }
    if (data.containsKey('message')) {
      final l$message = data['message'];
      result$data['message'] = (l$message as String?);
    }
    return Input$MultiStepActionErrorInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get id => (_$data['id'] as String?);
  String? get adminNotes => (_$data['adminNotes'] as String?);
  List<Input$ModelEventInput>? get events =>
      (_$data['events'] as List<Input$ModelEventInput>?);
  Input$BaseModelMetadataInput? get metadata =>
      (_$data['metadata'] as Input$BaseModelMetadataInput?);
  DateTime? get createdAt => (_$data['createdAt'] as DateTime?);
  String? get createdBy => (_$data['createdBy'] as String?);
  DateTime? get updatedAt => (_$data['updatedAt'] as DateTime?);
  String? get updatedBy => (_$data['updatedBy'] as String?);
  DateTime? get deletedAt => (_$data['deletedAt'] as DateTime?);
  String? get deletedBy => (_$data['deletedBy'] as String?);
  String? get key => (_$data['key'] as String?);
  String? get messageId => (_$data['messageId'] as String?);
  String? get message => (_$data['message'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('adminNotes')) {
      final l$adminNotes = adminNotes;
      result$data['adminNotes'] = l$adminNotes;
    }
    if (_$data.containsKey('events')) {
      final l$events = events;
      result$data['events'] = l$events?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('metadata')) {
      final l$metadata = metadata;
      result$data['metadata'] = l$metadata?.toJson();
    }
    if (_$data.containsKey('createdAt')) {
      final l$createdAt = createdAt;
      result$data['createdAt'] = l$createdAt?.toIso8601String();
    }
    if (_$data.containsKey('createdBy')) {
      final l$createdBy = createdBy;
      result$data['createdBy'] = l$createdBy;
    }
    if (_$data.containsKey('updatedAt')) {
      final l$updatedAt = updatedAt;
      result$data['updatedAt'] = l$updatedAt?.toIso8601String();
    }
    if (_$data.containsKey('updatedBy')) {
      final l$updatedBy = updatedBy;
      result$data['updatedBy'] = l$updatedBy;
    }
    if (_$data.containsKey('deletedAt')) {
      final l$deletedAt = deletedAt;
      result$data['deletedAt'] = l$deletedAt?.toIso8601String();
    }
    if (_$data.containsKey('deletedBy')) {
      final l$deletedBy = deletedBy;
      result$data['deletedBy'] = l$deletedBy;
    }
    if (_$data.containsKey('key')) {
      final l$key = key;
      result$data['key'] = l$key;
    }
    if (_$data.containsKey('messageId')) {
      final l$messageId = messageId;
      result$data['messageId'] = l$messageId;
    }
    if (_$data.containsKey('message')) {
      final l$message = message;
      result$data['message'] = l$message;
    }
    return result$data;
  }

  CopyWith$Input$MultiStepActionErrorInput<Input$MultiStepActionErrorInput>
      get copyWith => CopyWith$Input$MultiStepActionErrorInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$MultiStepActionErrorInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$adminNotes = adminNotes;
    final lOther$adminNotes = other.adminNotes;
    if (_$data.containsKey('adminNotes') !=
        other._$data.containsKey('adminNotes')) {
      return false;
    }
    if (l$adminNotes != lOther$adminNotes) {
      return false;
    }
    final l$events = events;
    final lOther$events = other.events;
    if (_$data.containsKey('events') != other._$data.containsKey('events')) {
      return false;
    }
    if (l$events != null && lOther$events != null) {
      if (l$events.length != lOther$events.length) {
        return false;
      }
      for (int i = 0; i < l$events.length; i++) {
        final l$events$entry = l$events[i];
        final lOther$events$entry = lOther$events[i];
        if (l$events$entry != lOther$events$entry) {
          return false;
        }
      }
    } else if (l$events != lOther$events) {
      return false;
    }
    final l$metadata = metadata;
    final lOther$metadata = other.metadata;
    if (_$data.containsKey('metadata') !=
        other._$data.containsKey('metadata')) {
      return false;
    }
    if (l$metadata != lOther$metadata) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (_$data.containsKey('createdAt') !=
        other._$data.containsKey('createdAt')) {
      return false;
    }
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$createdBy = createdBy;
    final lOther$createdBy = other.createdBy;
    if (_$data.containsKey('createdBy') !=
        other._$data.containsKey('createdBy')) {
      return false;
    }
    if (l$createdBy != lOther$createdBy) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (_$data.containsKey('updatedAt') !=
        other._$data.containsKey('updatedAt')) {
      return false;
    }
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    final l$updatedBy = updatedBy;
    final lOther$updatedBy = other.updatedBy;
    if (_$data.containsKey('updatedBy') !=
        other._$data.containsKey('updatedBy')) {
      return false;
    }
    if (l$updatedBy != lOther$updatedBy) {
      return false;
    }
    final l$deletedAt = deletedAt;
    final lOther$deletedAt = other.deletedAt;
    if (_$data.containsKey('deletedAt') !=
        other._$data.containsKey('deletedAt')) {
      return false;
    }
    if (l$deletedAt != lOther$deletedAt) {
      return false;
    }
    final l$deletedBy = deletedBy;
    final lOther$deletedBy = other.deletedBy;
    if (_$data.containsKey('deletedBy') !=
        other._$data.containsKey('deletedBy')) {
      return false;
    }
    if (l$deletedBy != lOther$deletedBy) {
      return false;
    }
    final l$key = key;
    final lOther$key = other.key;
    if (_$data.containsKey('key') != other._$data.containsKey('key')) {
      return false;
    }
    if (l$key != lOther$key) {
      return false;
    }
    final l$messageId = messageId;
    final lOther$messageId = other.messageId;
    if (_$data.containsKey('messageId') !=
        other._$data.containsKey('messageId')) {
      return false;
    }
    if (l$messageId != lOther$messageId) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (_$data.containsKey('message') != other._$data.containsKey('message')) {
      return false;
    }
    if (l$message != lOther$message) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$adminNotes = adminNotes;
    final l$events = events;
    final l$metadata = metadata;
    final l$createdAt = createdAt;
    final l$createdBy = createdBy;
    final l$updatedAt = updatedAt;
    final l$updatedBy = updatedBy;
    final l$deletedAt = deletedAt;
    final l$deletedBy = deletedBy;
    final l$key = key;
    final l$messageId = messageId;
    final l$message = message;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('adminNotes') ? l$adminNotes : const {},
      _$data.containsKey('events')
          ? l$events == null
              ? null
              : Object.hashAll(l$events.map((v) => v))
          : const {},
      _$data.containsKey('metadata') ? l$metadata : const {},
      _$data.containsKey('createdAt') ? l$createdAt : const {},
      _$data.containsKey('createdBy') ? l$createdBy : const {},
      _$data.containsKey('updatedAt') ? l$updatedAt : const {},
      _$data.containsKey('updatedBy') ? l$updatedBy : const {},
      _$data.containsKey('deletedAt') ? l$deletedAt : const {},
      _$data.containsKey('deletedBy') ? l$deletedBy : const {},
      _$data.containsKey('key') ? l$key : const {},
      _$data.containsKey('messageId') ? l$messageId : const {},
      _$data.containsKey('message') ? l$message : const {},
    ]);
  }
}

abstract class CopyWith$Input$MultiStepActionErrorInput<TRes> {
  factory CopyWith$Input$MultiStepActionErrorInput(
    Input$MultiStepActionErrorInput instance,
    TRes Function(Input$MultiStepActionErrorInput) then,
  ) = _CopyWithImpl$Input$MultiStepActionErrorInput;

  factory CopyWith$Input$MultiStepActionErrorInput.stub(TRes res) =
      _CopyWithStubImpl$Input$MultiStepActionErrorInput;

  TRes call({
    String? id,
    String? adminNotes,
    List<Input$ModelEventInput>? events,
    Input$BaseModelMetadataInput? metadata,
    DateTime? createdAt,
    String? createdBy,
    DateTime? updatedAt,
    String? updatedBy,
    DateTime? deletedAt,
    String? deletedBy,
    String? key,
    String? messageId,
    String? message,
  });
  TRes events(
      Iterable<Input$ModelEventInput>? Function(
              Iterable<CopyWith$Input$ModelEventInput<Input$ModelEventInput>>?)
          _fn);
  CopyWith$Input$BaseModelMetadataInput<TRes> get metadata;
}

class _CopyWithImpl$Input$MultiStepActionErrorInput<TRes>
    implements CopyWith$Input$MultiStepActionErrorInput<TRes> {
  _CopyWithImpl$Input$MultiStepActionErrorInput(
    this._instance,
    this._then,
  );

  final Input$MultiStepActionErrorInput _instance;

  final TRes Function(Input$MultiStepActionErrorInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? adminNotes = _undefined,
    Object? events = _undefined,
    Object? metadata = _undefined,
    Object? createdAt = _undefined,
    Object? createdBy = _undefined,
    Object? updatedAt = _undefined,
    Object? updatedBy = _undefined,
    Object? deletedAt = _undefined,
    Object? deletedBy = _undefined,
    Object? key = _undefined,
    Object? messageId = _undefined,
    Object? message = _undefined,
  }) =>
      _then(Input$MultiStepActionErrorInput._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as String?),
        if (adminNotes != _undefined) 'adminNotes': (adminNotes as String?),
        if (events != _undefined)
          'events': (events as List<Input$ModelEventInput>?),
        if (metadata != _undefined)
          'metadata': (metadata as Input$BaseModelMetadataInput?),
        if (createdAt != _undefined) 'createdAt': (createdAt as DateTime?),
        if (createdBy != _undefined) 'createdBy': (createdBy as String?),
        if (updatedAt != _undefined) 'updatedAt': (updatedAt as DateTime?),
        if (updatedBy != _undefined) 'updatedBy': (updatedBy as String?),
        if (deletedAt != _undefined) 'deletedAt': (deletedAt as DateTime?),
        if (deletedBy != _undefined) 'deletedBy': (deletedBy as String?),
        if (key != _undefined) 'key': (key as String?),
        if (messageId != _undefined) 'messageId': (messageId as String?),
        if (message != _undefined) 'message': (message as String?),
      }));
  TRes events(
          Iterable<Input$ModelEventInput>? Function(
                  Iterable<
                      CopyWith$Input$ModelEventInput<Input$ModelEventInput>>?)
              _fn) =>
      call(
          events:
              _fn(_instance.events?.map((e) => CopyWith$Input$ModelEventInput(
                    e,
                    (i) => i,
                  )))?.toList());
  CopyWith$Input$BaseModelMetadataInput<TRes> get metadata {
    final local$metadata = _instance.metadata;
    return local$metadata == null
        ? CopyWith$Input$BaseModelMetadataInput.stub(_then(_instance))
        : CopyWith$Input$BaseModelMetadataInput(
            local$metadata, (e) => call(metadata: e));
  }
}

class _CopyWithStubImpl$Input$MultiStepActionErrorInput<TRes>
    implements CopyWith$Input$MultiStepActionErrorInput<TRes> {
  _CopyWithStubImpl$Input$MultiStepActionErrorInput(this._res);

  TRes _res;

  call({
    String? id,
    String? adminNotes,
    List<Input$ModelEventInput>? events,
    Input$BaseModelMetadataInput? metadata,
    DateTime? createdAt,
    String? createdBy,
    DateTime? updatedAt,
    String? updatedBy,
    DateTime? deletedAt,
    String? deletedBy,
    String? key,
    String? messageId,
    String? message,
  }) =>
      _res;
  events(_fn) => _res;
  CopyWith$Input$BaseModelMetadataInput<TRes> get metadata =>
      CopyWith$Input$BaseModelMetadataInput.stub(_res);
}

class Input$UserIdentInput {
  factory Input$UserIdentInput({
    String? userId,
    String? userIdent,
    String? userHandle,
    String? email,
    String? phoneNumber,
  }) =>
      Input$UserIdentInput._({
        if (userId != null) r'userId': userId,
        if (userIdent != null) r'userIdent': userIdent,
        if (userHandle != null) r'userHandle': userHandle,
        if (email != null) r'email': email,
        if (phoneNumber != null) r'phoneNumber': phoneNumber,
      });

  Input$UserIdentInput._(this._$data);

  factory Input$UserIdentInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('userId')) {
      final l$userId = data['userId'];
      result$data['userId'] = (l$userId as String?);
    }
    if (data.containsKey('userIdent')) {
      final l$userIdent = data['userIdent'];
      result$data['userIdent'] = (l$userIdent as String?);
    }
    if (data.containsKey('userHandle')) {
      final l$userHandle = data['userHandle'];
      result$data['userHandle'] = (l$userHandle as String?);
    }
    if (data.containsKey('email')) {
      final l$email = data['email'];
      result$data['email'] = (l$email as String?);
    }
    if (data.containsKey('phoneNumber')) {
      final l$phoneNumber = data['phoneNumber'];
      result$data['phoneNumber'] = (l$phoneNumber as String?);
    }
    return Input$UserIdentInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get userId => (_$data['userId'] as String?);
  String? get userIdent => (_$data['userIdent'] as String?);
  String? get userHandle => (_$data['userHandle'] as String?);
  String? get email => (_$data['email'] as String?);
  String? get phoneNumber => (_$data['phoneNumber'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('userId')) {
      final l$userId = userId;
      result$data['userId'] = l$userId;
    }
    if (_$data.containsKey('userIdent')) {
      final l$userIdent = userIdent;
      result$data['userIdent'] = l$userIdent;
    }
    if (_$data.containsKey('userHandle')) {
      final l$userHandle = userHandle;
      result$data['userHandle'] = l$userHandle;
    }
    if (_$data.containsKey('email')) {
      final l$email = email;
      result$data['email'] = l$email;
    }
    if (_$data.containsKey('phoneNumber')) {
      final l$phoneNumber = phoneNumber;
      result$data['phoneNumber'] = l$phoneNumber;
    }
    return result$data;
  }

  CopyWith$Input$UserIdentInput<Input$UserIdentInput> get copyWith =>
      CopyWith$Input$UserIdentInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$UserIdentInput) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (_$data.containsKey('userId') != other._$data.containsKey('userId')) {
      return false;
    }
    if (l$userId != lOther$userId) {
      return false;
    }
    final l$userIdent = userIdent;
    final lOther$userIdent = other.userIdent;
    if (_$data.containsKey('userIdent') !=
        other._$data.containsKey('userIdent')) {
      return false;
    }
    if (l$userIdent != lOther$userIdent) {
      return false;
    }
    final l$userHandle = userHandle;
    final lOther$userHandle = other.userHandle;
    if (_$data.containsKey('userHandle') !=
        other._$data.containsKey('userHandle')) {
      return false;
    }
    if (l$userHandle != lOther$userHandle) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (_$data.containsKey('email') != other._$data.containsKey('email')) {
      return false;
    }
    if (l$email != lOther$email) {
      return false;
    }
    final l$phoneNumber = phoneNumber;
    final lOther$phoneNumber = other.phoneNumber;
    if (_$data.containsKey('phoneNumber') !=
        other._$data.containsKey('phoneNumber')) {
      return false;
    }
    if (l$phoneNumber != lOther$phoneNumber) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$userId = userId;
    final l$userIdent = userIdent;
    final l$userHandle = userHandle;
    final l$email = email;
    final l$phoneNumber = phoneNumber;
    return Object.hashAll([
      _$data.containsKey('userId') ? l$userId : const {},
      _$data.containsKey('userIdent') ? l$userIdent : const {},
      _$data.containsKey('userHandle') ? l$userHandle : const {},
      _$data.containsKey('email') ? l$email : const {},
      _$data.containsKey('phoneNumber') ? l$phoneNumber : const {},
    ]);
  }
}

abstract class CopyWith$Input$UserIdentInput<TRes> {
  factory CopyWith$Input$UserIdentInput(
    Input$UserIdentInput instance,
    TRes Function(Input$UserIdentInput) then,
  ) = _CopyWithImpl$Input$UserIdentInput;

  factory CopyWith$Input$UserIdentInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UserIdentInput;

  TRes call({
    String? userId,
    String? userIdent,
    String? userHandle,
    String? email,
    String? phoneNumber,
  });
}

class _CopyWithImpl$Input$UserIdentInput<TRes>
    implements CopyWith$Input$UserIdentInput<TRes> {
  _CopyWithImpl$Input$UserIdentInput(
    this._instance,
    this._then,
  );

  final Input$UserIdentInput _instance;

  final TRes Function(Input$UserIdentInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userId = _undefined,
    Object? userIdent = _undefined,
    Object? userHandle = _undefined,
    Object? email = _undefined,
    Object? phoneNumber = _undefined,
  }) =>
      _then(Input$UserIdentInput._({
        ..._instance._$data,
        if (userId != _undefined) 'userId': (userId as String?),
        if (userIdent != _undefined) 'userIdent': (userIdent as String?),
        if (userHandle != _undefined) 'userHandle': (userHandle as String?),
        if (email != _undefined) 'email': (email as String?),
        if (phoneNumber != _undefined) 'phoneNumber': (phoneNumber as String?),
      }));
}

class _CopyWithStubImpl$Input$UserIdentInput<TRes>
    implements CopyWith$Input$UserIdentInput<TRes> {
  _CopyWithStubImpl$Input$UserIdentInput(this._res);

  TRes _res;

  call({
    String? userId,
    String? userIdent,
    String? userHandle,
    String? email,
    String? phoneNumber,
  }) =>
      _res;
}

class Input$VerifyMultiStepActionTokenInput {
  factory Input$VerifyMultiStepActionTokenInput({
    String? actionId,
    String? token,
    String? newPassword,
  }) =>
      Input$VerifyMultiStepActionTokenInput._({
        if (actionId != null) r'actionId': actionId,
        if (token != null) r'token': token,
        if (newPassword != null) r'newPassword': newPassword,
      });

  Input$VerifyMultiStepActionTokenInput._(this._$data);

  factory Input$VerifyMultiStepActionTokenInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('actionId')) {
      final l$actionId = data['actionId'];
      result$data['actionId'] = (l$actionId as String);
    }
    if (data.containsKey('token')) {
      final l$token = data['token'];
      result$data['token'] = (l$token as String);
    }
    if (data.containsKey('newPassword')) {
      final l$newPassword = data['newPassword'];
      result$data['newPassword'] = (l$newPassword as String?);
    }
    return Input$VerifyMultiStepActionTokenInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get actionId => (_$data['actionId'] as String?);
  String? get token => (_$data['token'] as String?);
  String? get newPassword => (_$data['newPassword'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('actionId')) {
      final l$actionId = actionId;
      result$data['actionId'] = (l$actionId as String);
    }
    if (_$data.containsKey('token')) {
      final l$token = token;
      result$data['token'] = (l$token as String);
    }
    if (_$data.containsKey('newPassword')) {
      final l$newPassword = newPassword;
      result$data['newPassword'] = l$newPassword;
    }
    return result$data;
  }

  CopyWith$Input$VerifyMultiStepActionTokenInput<
          Input$VerifyMultiStepActionTokenInput>
      get copyWith => CopyWith$Input$VerifyMultiStepActionTokenInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$VerifyMultiStepActionTokenInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$actionId = actionId;
    final lOther$actionId = other.actionId;
    if (_$data.containsKey('actionId') !=
        other._$data.containsKey('actionId')) {
      return false;
    }
    if (l$actionId != lOther$actionId) {
      return false;
    }
    final l$token = token;
    final lOther$token = other.token;
    if (_$data.containsKey('token') != other._$data.containsKey('token')) {
      return false;
    }
    if (l$token != lOther$token) {
      return false;
    }
    final l$newPassword = newPassword;
    final lOther$newPassword = other.newPassword;
    if (_$data.containsKey('newPassword') !=
        other._$data.containsKey('newPassword')) {
      return false;
    }
    if (l$newPassword != lOther$newPassword) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$actionId = actionId;
    final l$token = token;
    final l$newPassword = newPassword;
    return Object.hashAll([
      _$data.containsKey('actionId') ? l$actionId : const {},
      _$data.containsKey('token') ? l$token : const {},
      _$data.containsKey('newPassword') ? l$newPassword : const {},
    ]);
  }
}

abstract class CopyWith$Input$VerifyMultiStepActionTokenInput<TRes> {
  factory CopyWith$Input$VerifyMultiStepActionTokenInput(
    Input$VerifyMultiStepActionTokenInput instance,
    TRes Function(Input$VerifyMultiStepActionTokenInput) then,
  ) = _CopyWithImpl$Input$VerifyMultiStepActionTokenInput;

  factory CopyWith$Input$VerifyMultiStepActionTokenInput.stub(TRes res) =
      _CopyWithStubImpl$Input$VerifyMultiStepActionTokenInput;

  TRes call({
    String? actionId,
    String? token,
    String? newPassword,
  });
}

class _CopyWithImpl$Input$VerifyMultiStepActionTokenInput<TRes>
    implements CopyWith$Input$VerifyMultiStepActionTokenInput<TRes> {
  _CopyWithImpl$Input$VerifyMultiStepActionTokenInput(
    this._instance,
    this._then,
  );

  final Input$VerifyMultiStepActionTokenInput _instance;

  final TRes Function(Input$VerifyMultiStepActionTokenInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? actionId = _undefined,
    Object? token = _undefined,
    Object? newPassword = _undefined,
  }) =>
      _then(Input$VerifyMultiStepActionTokenInput._({
        ..._instance._$data,
        if (actionId != _undefined && actionId != null)
          'actionId': (actionId as String),
        if (token != _undefined && token != null) 'token': (token as String),
        if (newPassword != _undefined) 'newPassword': (newPassword as String?),
      }));
}

class _CopyWithStubImpl$Input$VerifyMultiStepActionTokenInput<TRes>
    implements CopyWith$Input$VerifyMultiStepActionTokenInput<TRes> {
  _CopyWithStubImpl$Input$VerifyMultiStepActionTokenInput(this._res);

  TRes _res;

  call({
    String? actionId,
    String? token,
    String? newPassword,
  }) =>
      _res;
}

enum Enum$GroupMembershipRole { admin, coordinator, moderator, owner, $unknown }

String toJson$Enum$GroupMembershipRole(Enum$GroupMembershipRole e) {
  switch (e) {
    case Enum$GroupMembershipRole.admin:
      return r'admin';
    case Enum$GroupMembershipRole.coordinator:
      return r'coordinator';
    case Enum$GroupMembershipRole.moderator:
      return r'moderator';
    case Enum$GroupMembershipRole.owner:
      return r'owner';
    case Enum$GroupMembershipRole.$unknown:
      return r'$unknown';
  }
}

Enum$GroupMembershipRole fromJson$Enum$GroupMembershipRole(String value) {
  switch (value) {
    case r'admin':
      return Enum$GroupMembershipRole.admin;
    case r'coordinator':
      return Enum$GroupMembershipRole.coordinator;
    case r'moderator':
      return Enum$GroupMembershipRole.moderator;
    case r'owner':
      return Enum$GroupMembershipRole.owner;
    default:
      return Enum$GroupMembershipRole.$unknown;
  }
}

enum Enum$ModelEventType { error, warning, info, $unknown }

String toJson$Enum$ModelEventType(Enum$ModelEventType e) {
  switch (e) {
    case Enum$ModelEventType.error:
      return r'error';
    case Enum$ModelEventType.warning:
      return r'warning';
    case Enum$ModelEventType.info:
      return r'info';
    case Enum$ModelEventType.$unknown:
      return r'$unknown';
  }
}

Enum$ModelEventType fromJson$Enum$ModelEventType(String value) {
  switch (value) {
    case r'error':
      return Enum$ModelEventType.error;
    case r'warning':
      return Enum$ModelEventType.warning;
    case r'info':
      return Enum$ModelEventType.info;
    default:
      return Enum$ModelEventType.$unknown;
  }
}

enum Enum$OptionType {
  companyStage,
  companyType,
  educationLevel,
  expertise,
  gender,
  country,
  industry,
  language,
  unset,
  contentTagType,
  $unknown
}

String toJson$Enum$OptionType(Enum$OptionType e) {
  switch (e) {
    case Enum$OptionType.companyStage:
      return r'companyStage';
    case Enum$OptionType.companyType:
      return r'companyType';
    case Enum$OptionType.educationLevel:
      return r'educationLevel';
    case Enum$OptionType.expertise:
      return r'expertise';
    case Enum$OptionType.gender:
      return r'gender';
    case Enum$OptionType.country:
      return r'country';
    case Enum$OptionType.industry:
      return r'industry';
    case Enum$OptionType.language:
      return r'language';
    case Enum$OptionType.unset:
      return r'unset';
    case Enum$OptionType.contentTagType:
      return r'contentTagType';
    case Enum$OptionType.$unknown:
      return r'$unknown';
  }
}

Enum$OptionType fromJson$Enum$OptionType(String value) {
  switch (value) {
    case r'companyStage':
      return Enum$OptionType.companyStage;
    case r'companyType':
      return Enum$OptionType.companyType;
    case r'educationLevel':
      return Enum$OptionType.educationLevel;
    case r'expertise':
      return Enum$OptionType.expertise;
    case r'gender':
      return Enum$OptionType.gender;
    case r'country':
      return Enum$OptionType.country;
    case r'industry':
      return Enum$OptionType.industry;
    case r'language':
      return Enum$OptionType.language;
    case r'unset':
      return Enum$OptionType.unset;
    case r'contentTagType':
      return Enum$OptionType.contentTagType;
    default:
      return Enum$OptionType.$unknown;
  }
}

enum Enum$UiLanguage { ar, en, es, id, ru, so, $unknown }

String toJson$Enum$UiLanguage(Enum$UiLanguage e) {
  switch (e) {
    case Enum$UiLanguage.ar:
      return r'ar';
    case Enum$UiLanguage.en:
      return r'en';
    case Enum$UiLanguage.es:
      return r'es';
    case Enum$UiLanguage.id:
      return r'id';
    case Enum$UiLanguage.ru:
      return r'ru';
    case Enum$UiLanguage.so:
      return r'so';
    case Enum$UiLanguage.$unknown:
      return r'$unknown';
  }
}

Enum$UiLanguage fromJson$Enum$UiLanguage(String value) {
  switch (value) {
    case r'ar':
      return Enum$UiLanguage.ar;
    case r'en':
      return Enum$UiLanguage.en;
    case r'es':
      return Enum$UiLanguage.es;
    case r'id':
      return Enum$UiLanguage.id;
    case r'ru':
      return Enum$UiLanguage.ru;
    case r'so':
      return Enum$UiLanguage.so;
    default:
      return Enum$UiLanguage.$unknown;
  }
}

enum Enum$AuthType { none, oauth, token, hmac, saml, $unknown }

String toJson$Enum$AuthType(Enum$AuthType e) {
  switch (e) {
    case Enum$AuthType.none:
      return r'none';
    case Enum$AuthType.oauth:
      return r'oauth';
    case Enum$AuthType.token:
      return r'token';
    case Enum$AuthType.hmac:
      return r'hmac';
    case Enum$AuthType.saml:
      return r'saml';
    case Enum$AuthType.$unknown:
      return r'$unknown';
  }
}

Enum$AuthType fromJson$Enum$AuthType(String value) {
  switch (value) {
    case r'none':
      return Enum$AuthType.none;
    case r'oauth':
      return Enum$AuthType.oauth;
    case r'token':
      return Enum$AuthType.token;
    case r'hmac':
      return Enum$AuthType.hmac;
    case r'saml':
      return Enum$AuthType.saml;
    default:
      return Enum$AuthType.$unknown;
  }
}

enum Enum$UserRole { admin, support, staff, qa, test, $unknown }

String toJson$Enum$UserRole(Enum$UserRole e) {
  switch (e) {
    case Enum$UserRole.admin:
      return r'admin';
    case Enum$UserRole.support:
      return r'support';
    case Enum$UserRole.staff:
      return r'staff';
    case Enum$UserRole.qa:
      return r'qa';
    case Enum$UserRole.test:
      return r'test';
    case Enum$UserRole.$unknown:
      return r'$unknown';
  }
}

Enum$UserRole fromJson$Enum$UserRole(String value) {
  switch (value) {
    case r'admin':
      return Enum$UserRole.admin;
    case r'support':
      return Enum$UserRole.support;
    case r'staff':
      return Enum$UserRole.staff;
    case r'qa':
      return Enum$UserRole.qa;
    case r'test':
      return Enum$UserRole.test;
    default:
      return Enum$UserRole.$unknown;
  }
}

enum Enum$AppFeature { testFeatures1, testFeatures2, $unknown }

String toJson$Enum$AppFeature(Enum$AppFeature e) {
  switch (e) {
    case Enum$AppFeature.testFeatures1:
      return r'testFeatures1';
    case Enum$AppFeature.testFeatures2:
      return r'testFeatures2';
    case Enum$AppFeature.$unknown:
      return r'$unknown';
  }
}

Enum$AppFeature fromJson$Enum$AppFeature(String value) {
  switch (value) {
    case r'testFeatures1':
      return Enum$AppFeature.testFeatures1;
    case r'testFeatures2':
      return Enum$AppFeature.testFeatures2;
    default:
      return Enum$AppFeature.$unknown;
  }
}

enum Enum$AppAction { editProfile, updateApp, unset, $unknown }

String toJson$Enum$AppAction(Enum$AppAction e) {
  switch (e) {
    case Enum$AppAction.editProfile:
      return r'editProfile';
    case Enum$AppAction.updateApp:
      return r'updateApp';
    case Enum$AppAction.unset:
      return r'unset';
    case Enum$AppAction.$unknown:
      return r'$unknown';
  }
}

Enum$AppAction fromJson$Enum$AppAction(String value) {
  switch (value) {
    case r'editProfile':
      return Enum$AppAction.editProfile;
    case r'updateApp':
      return Enum$AppAction.updateApp;
    case r'unset':
      return Enum$AppAction.unset;
    default:
      return Enum$AppAction.$unknown;
  }
}

enum Enum$ChannelType { unset, mentoring, $unknown }

String toJson$Enum$ChannelType(Enum$ChannelType e) {
  switch (e) {
    case Enum$ChannelType.unset:
      return r'unset';
    case Enum$ChannelType.mentoring:
      return r'mentoring';
    case Enum$ChannelType.$unknown:
      return r'$unknown';
  }
}

Enum$ChannelType fromJson$Enum$ChannelType(String value) {
  switch (value) {
    case r'unset':
      return Enum$ChannelType.unset;
    case r'mentoring':
      return Enum$ChannelType.mentoring;
    default:
      return Enum$ChannelType.$unknown;
  }
}

enum Enum$ChannelInvitationStatus {
  created,
  accepted,
  declined,
  unset,
  $unknown
}

String toJson$Enum$ChannelInvitationStatus(Enum$ChannelInvitationStatus e) {
  switch (e) {
    case Enum$ChannelInvitationStatus.created:
      return r'created';
    case Enum$ChannelInvitationStatus.accepted:
      return r'accepted';
    case Enum$ChannelInvitationStatus.declined:
      return r'declined';
    case Enum$ChannelInvitationStatus.unset:
      return r'unset';
    case Enum$ChannelInvitationStatus.$unknown:
      return r'$unknown';
  }
}

Enum$ChannelInvitationStatus fromJson$Enum$ChannelInvitationStatus(
    String value) {
  switch (value) {
    case r'created':
      return Enum$ChannelInvitationStatus.created;
    case r'accepted':
      return Enum$ChannelInvitationStatus.accepted;
    case r'declined':
      return Enum$ChannelInvitationStatus.declined;
    case r'unset':
      return Enum$ChannelInvitationStatus.unset;
    default:
      return Enum$ChannelInvitationStatus.$unknown;
  }
}

enum Enum$ChannelMessageType { unset, invitation, $unknown }

String toJson$Enum$ChannelMessageType(Enum$ChannelMessageType e) {
  switch (e) {
    case Enum$ChannelMessageType.unset:
      return r'unset';
    case Enum$ChannelMessageType.invitation:
      return r'invitation';
    case Enum$ChannelMessageType.$unknown:
      return r'$unknown';
  }
}

Enum$ChannelMessageType fromJson$Enum$ChannelMessageType(String value) {
  switch (value) {
    case r'unset':
      return Enum$ChannelMessageType.unset;
    case r'invitation':
      return Enum$ChannelMessageType.invitation;
    default:
      return Enum$ChannelMessageType.$unknown;
  }
}

enum Enum$ChannelParticipantRole { owner, admin, moderator, unset, $unknown }

String toJson$Enum$ChannelParticipantRole(Enum$ChannelParticipantRole e) {
  switch (e) {
    case Enum$ChannelParticipantRole.owner:
      return r'owner';
    case Enum$ChannelParticipantRole.admin:
      return r'admin';
    case Enum$ChannelParticipantRole.moderator:
      return r'moderator';
    case Enum$ChannelParticipantRole.unset:
      return r'unset';
    case Enum$ChannelParticipantRole.$unknown:
      return r'$unknown';
  }
}

Enum$ChannelParticipantRole fromJson$Enum$ChannelParticipantRole(String value) {
  switch (value) {
    case r'owner':
      return Enum$ChannelParticipantRole.owner;
    case r'admin':
      return Enum$ChannelParticipantRole.admin;
    case r'moderator':
      return Enum$ChannelParticipantRole.moderator;
    case r'unset':
      return Enum$ChannelParticipantRole.unset;
    default:
      return Enum$ChannelParticipantRole.$unknown;
  }
}

enum Enum$ModelType {
  Company,
  MentorBoard,
  MentoringSession,
  UserInbox,
  UserMetadata,
  UserPreferences,
  BackgroundTask,
  Channel,
  ChannelInbox,
  ChannelInvitation,
  ChannelMessage,
  ChannelParticipant,
  Option,
  ContentTag,
  AppliedGroupRule,
  Group,
  GroupMembership,
  GroupRule,
  GroupRuleConfig,
  Match,
  MatchProfile,
  MatchingEngine,
  UserSearch,
  Notification,
  NotificationTemplate,
  Mm2Integration,
  Mm2Synchronization,
  Mm2SynchronizationResultItem,
  MultiStepAction,
  ServiceRequest,
  User,
  UserDevice,
  unset,
  $unknown
}

String toJson$Enum$ModelType(Enum$ModelType e) {
  switch (e) {
    case Enum$ModelType.Company:
      return r'Company';
    case Enum$ModelType.MentorBoard:
      return r'MentorBoard';
    case Enum$ModelType.MentoringSession:
      return r'MentoringSession';
    case Enum$ModelType.UserInbox:
      return r'UserInbox';
    case Enum$ModelType.UserMetadata:
      return r'UserMetadata';
    case Enum$ModelType.UserPreferences:
      return r'UserPreferences';
    case Enum$ModelType.BackgroundTask:
      return r'BackgroundTask';
    case Enum$ModelType.Channel:
      return r'Channel';
    case Enum$ModelType.ChannelInbox:
      return r'ChannelInbox';
    case Enum$ModelType.ChannelInvitation:
      return r'ChannelInvitation';
    case Enum$ModelType.ChannelMessage:
      return r'ChannelMessage';
    case Enum$ModelType.ChannelParticipant:
      return r'ChannelParticipant';
    case Enum$ModelType.Option:
      return r'Option';
    case Enum$ModelType.ContentTag:
      return r'ContentTag';
    case Enum$ModelType.AppliedGroupRule:
      return r'AppliedGroupRule';
    case Enum$ModelType.Group:
      return r'Group';
    case Enum$ModelType.GroupMembership:
      return r'GroupMembership';
    case Enum$ModelType.GroupRule:
      return r'GroupRule';
    case Enum$ModelType.GroupRuleConfig:
      return r'GroupRuleConfig';
    case Enum$ModelType.Match:
      return r'Match';
    case Enum$ModelType.MatchProfile:
      return r'MatchProfile';
    case Enum$ModelType.MatchingEngine:
      return r'MatchingEngine';
    case Enum$ModelType.UserSearch:
      return r'UserSearch';
    case Enum$ModelType.Notification:
      return r'Notification';
    case Enum$ModelType.NotificationTemplate:
      return r'NotificationTemplate';
    case Enum$ModelType.Mm2Integration:
      return r'Mm2Integration';
    case Enum$ModelType.Mm2Synchronization:
      return r'Mm2Synchronization';
    case Enum$ModelType.Mm2SynchronizationResultItem:
      return r'Mm2SynchronizationResultItem';
    case Enum$ModelType.MultiStepAction:
      return r'MultiStepAction';
    case Enum$ModelType.ServiceRequest:
      return r'ServiceRequest';
    case Enum$ModelType.User:
      return r'User';
    case Enum$ModelType.UserDevice:
      return r'UserDevice';
    case Enum$ModelType.unset:
      return r'unset';
    case Enum$ModelType.$unknown:
      return r'$unknown';
  }
}

Enum$ModelType fromJson$Enum$ModelType(String value) {
  switch (value) {
    case r'Company':
      return Enum$ModelType.Company;
    case r'MentorBoard':
      return Enum$ModelType.MentorBoard;
    case r'MentoringSession':
      return Enum$ModelType.MentoringSession;
    case r'UserInbox':
      return Enum$ModelType.UserInbox;
    case r'UserMetadata':
      return Enum$ModelType.UserMetadata;
    case r'UserPreferences':
      return Enum$ModelType.UserPreferences;
    case r'BackgroundTask':
      return Enum$ModelType.BackgroundTask;
    case r'Channel':
      return Enum$ModelType.Channel;
    case r'ChannelInbox':
      return Enum$ModelType.ChannelInbox;
    case r'ChannelInvitation':
      return Enum$ModelType.ChannelInvitation;
    case r'ChannelMessage':
      return Enum$ModelType.ChannelMessage;
    case r'ChannelParticipant':
      return Enum$ModelType.ChannelParticipant;
    case r'Option':
      return Enum$ModelType.Option;
    case r'ContentTag':
      return Enum$ModelType.ContentTag;
    case r'AppliedGroupRule':
      return Enum$ModelType.AppliedGroupRule;
    case r'Group':
      return Enum$ModelType.Group;
    case r'GroupMembership':
      return Enum$ModelType.GroupMembership;
    case r'GroupRule':
      return Enum$ModelType.GroupRule;
    case r'GroupRuleConfig':
      return Enum$ModelType.GroupRuleConfig;
    case r'Match':
      return Enum$ModelType.Match;
    case r'MatchProfile':
      return Enum$ModelType.MatchProfile;
    case r'MatchingEngine':
      return Enum$ModelType.MatchingEngine;
    case r'UserSearch':
      return Enum$ModelType.UserSearch;
    case r'Notification':
      return Enum$ModelType.Notification;
    case r'NotificationTemplate':
      return Enum$ModelType.NotificationTemplate;
    case r'Mm2Integration':
      return Enum$ModelType.Mm2Integration;
    case r'Mm2Synchronization':
      return Enum$ModelType.Mm2Synchronization;
    case r'Mm2SynchronizationResultItem':
      return Enum$ModelType.Mm2SynchronizationResultItem;
    case r'MultiStepAction':
      return Enum$ModelType.MultiStepAction;
    case r'ServiceRequest':
      return Enum$ModelType.ServiceRequest;
    case r'User':
      return Enum$ModelType.User;
    case r'UserDevice':
      return Enum$ModelType.UserDevice;
    case r'unset':
      return Enum$ModelType.unset;
    default:
      return Enum$ModelType.$unknown;
  }
}

enum Enum$GroupRuleEventType {
  enterGroup,
  exitGroup,
  signUp,
  sendMessage,
  userSearch,
  updateUser,
  unknown,
  $unknown
}

String toJson$Enum$GroupRuleEventType(Enum$GroupRuleEventType e) {
  switch (e) {
    case Enum$GroupRuleEventType.enterGroup:
      return r'enterGroup';
    case Enum$GroupRuleEventType.exitGroup:
      return r'exitGroup';
    case Enum$GroupRuleEventType.signUp:
      return r'signUp';
    case Enum$GroupRuleEventType.sendMessage:
      return r'sendMessage';
    case Enum$GroupRuleEventType.userSearch:
      return r'userSearch';
    case Enum$GroupRuleEventType.updateUser:
      return r'updateUser';
    case Enum$GroupRuleEventType.unknown:
      return r'unknown';
    case Enum$GroupRuleEventType.$unknown:
      return r'$unknown';
  }
}

Enum$GroupRuleEventType fromJson$Enum$GroupRuleEventType(String value) {
  switch (value) {
    case r'enterGroup':
      return Enum$GroupRuleEventType.enterGroup;
    case r'exitGroup':
      return Enum$GroupRuleEventType.exitGroup;
    case r'signUp':
      return Enum$GroupRuleEventType.signUp;
    case r'sendMessage':
      return Enum$GroupRuleEventType.sendMessage;
    case r'userSearch':
      return Enum$GroupRuleEventType.userSearch;
    case r'updateUser':
      return Enum$GroupRuleEventType.updateUser;
    case r'unknown':
      return Enum$GroupRuleEventType.unknown;
    default:
      return Enum$GroupRuleEventType.$unknown;
  }
}

enum Enum$ProfileType { mentee, mentor, both, none, $unknown }

String toJson$Enum$ProfileType(Enum$ProfileType e) {
  switch (e) {
    case Enum$ProfileType.mentee:
      return r'mentee';
    case Enum$ProfileType.mentor:
      return r'mentor';
    case Enum$ProfileType.both:
      return r'both';
    case Enum$ProfileType.none:
      return r'none';
    case Enum$ProfileType.$unknown:
      return r'$unknown';
  }
}

Enum$ProfileType fromJson$Enum$ProfileType(String value) {
  switch (value) {
    case r'mentee':
      return Enum$ProfileType.mentee;
    case r'mentor':
      return Enum$ProfileType.mentor;
    case r'both':
      return Enum$ProfileType.both;
    case r'none':
      return Enum$ProfileType.none;
    default:
      return Enum$ProfileType.$unknown;
  }
}

enum Enum$UserSearchFieldPreference { mustMatch, match, mustNotMatch, $unknown }

String toJson$Enum$UserSearchFieldPreference(Enum$UserSearchFieldPreference e) {
  switch (e) {
    case Enum$UserSearchFieldPreference.mustMatch:
      return r'mustMatch';
    case Enum$UserSearchFieldPreference.match:
      return r'match';
    case Enum$UserSearchFieldPreference.mustNotMatch:
      return r'mustNotMatch';
    case Enum$UserSearchFieldPreference.$unknown:
      return r'$unknown';
  }
}

Enum$UserSearchFieldPreference fromJson$Enum$UserSearchFieldPreference(
    String value) {
  switch (value) {
    case r'mustMatch':
      return Enum$UserSearchFieldPreference.mustMatch;
    case r'match':
      return Enum$UserSearchFieldPreference.match;
    case r'mustNotMatch':
      return Enum$UserSearchFieldPreference.mustNotMatch;
    default:
      return Enum$UserSearchFieldPreference.$unknown;
  }
}

enum Enum$UserSearchSubscriptionType { none, daily, weekly, monthly, $unknown }

String toJson$Enum$UserSearchSubscriptionType(
    Enum$UserSearchSubscriptionType e) {
  switch (e) {
    case Enum$UserSearchSubscriptionType.none:
      return r'none';
    case Enum$UserSearchSubscriptionType.daily:
      return r'daily';
    case Enum$UserSearchSubscriptionType.weekly:
      return r'weekly';
    case Enum$UserSearchSubscriptionType.monthly:
      return r'monthly';
    case Enum$UserSearchSubscriptionType.$unknown:
      return r'$unknown';
  }
}

Enum$UserSearchSubscriptionType fromJson$Enum$UserSearchSubscriptionType(
    String value) {
  switch (value) {
    case r'none':
      return Enum$UserSearchSubscriptionType.none;
    case r'daily':
      return Enum$UserSearchSubscriptionType.daily;
    case r'weekly':
      return Enum$UserSearchSubscriptionType.weekly;
    case r'monthly':
      return Enum$UserSearchSubscriptionType.monthly;
    default:
      return Enum$UserSearchSubscriptionType.$unknown;
  }
}

enum Enum$UserIdentType {
  any,
  authToken,
  email,
  id,
  phoneNumber,
  userHandle,
  $unknown
}

String toJson$Enum$UserIdentType(Enum$UserIdentType e) {
  switch (e) {
    case Enum$UserIdentType.any:
      return r'any';
    case Enum$UserIdentType.authToken:
      return r'authToken';
    case Enum$UserIdentType.email:
      return r'email';
    case Enum$UserIdentType.id:
      return r'id';
    case Enum$UserIdentType.phoneNumber:
      return r'phoneNumber';
    case Enum$UserIdentType.userHandle:
      return r'userHandle';
    case Enum$UserIdentType.$unknown:
      return r'$unknown';
  }
}

Enum$UserIdentType fromJson$Enum$UserIdentType(String value) {
  switch (value) {
    case r'any':
      return Enum$UserIdentType.any;
    case r'authToken':
      return Enum$UserIdentType.authToken;
    case r'email':
      return Enum$UserIdentType.email;
    case r'id':
      return Enum$UserIdentType.id;
    case r'phoneNumber':
      return Enum$UserIdentType.phoneNumber;
    case r'userHandle':
      return Enum$UserIdentType.userHandle;
    default:
      return Enum$UserIdentType.$unknown;
  }
}

enum Enum$SortDirection { asc, desc, $unknown }

String toJson$Enum$SortDirection(Enum$SortDirection e) {
  switch (e) {
    case Enum$SortDirection.asc:
      return r'asc';
    case Enum$SortDirection.desc:
      return r'desc';
    case Enum$SortDirection.$unknown:
      return r'$unknown';
  }
}

Enum$SortDirection fromJson$Enum$SortDirection(String value) {
  switch (value) {
    case r'asc':
      return Enum$SortDirection.asc;
    case r'desc':
      return Enum$SortDirection.desc;
    default:
      return Enum$SortDirection.$unknown;
  }
}

enum Enum$ChannelInvitationDirection { sent, received, $unknown }

String toJson$Enum$ChannelInvitationDirection(
    Enum$ChannelInvitationDirection e) {
  switch (e) {
    case Enum$ChannelInvitationDirection.sent:
      return r'sent';
    case Enum$ChannelInvitationDirection.received:
      return r'received';
    case Enum$ChannelInvitationDirection.$unknown:
      return r'$unknown';
  }
}

Enum$ChannelInvitationDirection fromJson$Enum$ChannelInvitationDirection(
    String value) {
  switch (value) {
    case r'sent':
      return Enum$ChannelInvitationDirection.sent;
    case r'received':
      return Enum$ChannelInvitationDirection.received;
    default:
      return Enum$ChannelInvitationDirection.$unknown;
  }
}

enum Enum$MultiStepActionType {
  resetPassword,
  tokenSignIn,
  unset,
  updateEmail,
  updatePassword,
  updatePhoneNumber,
  verifyEmail,
  verifyPhoneNumber,
  verifyPhoneSignupOnSignup,
  welcome,
  $unknown
}

String toJson$Enum$MultiStepActionType(Enum$MultiStepActionType e) {
  switch (e) {
    case Enum$MultiStepActionType.resetPassword:
      return r'resetPassword';
    case Enum$MultiStepActionType.tokenSignIn:
      return r'tokenSignIn';
    case Enum$MultiStepActionType.unset:
      return r'unset';
    case Enum$MultiStepActionType.updateEmail:
      return r'updateEmail';
    case Enum$MultiStepActionType.updatePassword:
      return r'updatePassword';
    case Enum$MultiStepActionType.updatePhoneNumber:
      return r'updatePhoneNumber';
    case Enum$MultiStepActionType.verifyEmail:
      return r'verifyEmail';
    case Enum$MultiStepActionType.verifyPhoneNumber:
      return r'verifyPhoneNumber';
    case Enum$MultiStepActionType.verifyPhoneSignupOnSignup:
      return r'verifyPhoneSignupOnSignup';
    case Enum$MultiStepActionType.welcome:
      return r'welcome';
    case Enum$MultiStepActionType.$unknown:
      return r'$unknown';
  }
}

Enum$MultiStepActionType fromJson$Enum$MultiStepActionType(String value) {
  switch (value) {
    case r'resetPassword':
      return Enum$MultiStepActionType.resetPassword;
    case r'tokenSignIn':
      return Enum$MultiStepActionType.tokenSignIn;
    case r'unset':
      return Enum$MultiStepActionType.unset;
    case r'updateEmail':
      return Enum$MultiStepActionType.updateEmail;
    case r'updatePassword':
      return Enum$MultiStepActionType.updatePassword;
    case r'updatePhoneNumber':
      return Enum$MultiStepActionType.updatePhoneNumber;
    case r'verifyEmail':
      return Enum$MultiStepActionType.verifyEmail;
    case r'verifyPhoneNumber':
      return Enum$MultiStepActionType.verifyPhoneNumber;
    case r'verifyPhoneSignupOnSignup':
      return Enum$MultiStepActionType.verifyPhoneSignupOnSignup;
    case r'welcome':
      return Enum$MultiStepActionType.welcome;
    default:
      return Enum$MultiStepActionType.$unknown;
  }
}

enum Enum$MultiStepActionStatus {
  created,
  started,
  notificationSent,
  notificationFailed,
  finished,
  expired,
  $unknown
}

String toJson$Enum$MultiStepActionStatus(Enum$MultiStepActionStatus e) {
  switch (e) {
    case Enum$MultiStepActionStatus.created:
      return r'created';
    case Enum$MultiStepActionStatus.started:
      return r'started';
    case Enum$MultiStepActionStatus.notificationSent:
      return r'notificationSent';
    case Enum$MultiStepActionStatus.notificationFailed:
      return r'notificationFailed';
    case Enum$MultiStepActionStatus.finished:
      return r'finished';
    case Enum$MultiStepActionStatus.expired:
      return r'expired';
    case Enum$MultiStepActionStatus.$unknown:
      return r'$unknown';
  }
}

Enum$MultiStepActionStatus fromJson$Enum$MultiStepActionStatus(String value) {
  switch (value) {
    case r'created':
      return Enum$MultiStepActionStatus.created;
    case r'started':
      return Enum$MultiStepActionStatus.started;
    case r'notificationSent':
      return Enum$MultiStepActionStatus.notificationSent;
    case r'notificationFailed':
      return Enum$MultiStepActionStatus.notificationFailed;
    case r'finished':
      return Enum$MultiStepActionStatus.finished;
    case r'expired':
      return Enum$MultiStepActionStatus.expired;
    default:
      return Enum$MultiStepActionStatus.$unknown;
  }
}

enum Enum$NotificationMethod {
  off,
  auto,
  email,
  sms,
  pushNotification,
  inAppNotification,
  $unknown
}

String toJson$Enum$NotificationMethod(Enum$NotificationMethod e) {
  switch (e) {
    case Enum$NotificationMethod.off:
      return r'off';
    case Enum$NotificationMethod.auto:
      return r'auto';
    case Enum$NotificationMethod.email:
      return r'email';
    case Enum$NotificationMethod.sms:
      return r'sms';
    case Enum$NotificationMethod.pushNotification:
      return r'pushNotification';
    case Enum$NotificationMethod.inAppNotification:
      return r'inAppNotification';
    case Enum$NotificationMethod.$unknown:
      return r'$unknown';
  }
}

Enum$NotificationMethod fromJson$Enum$NotificationMethod(String value) {
  switch (value) {
    case r'off':
      return Enum$NotificationMethod.off;
    case r'auto':
      return Enum$NotificationMethod.auto;
    case r'email':
      return Enum$NotificationMethod.email;
    case r'sms':
      return Enum$NotificationMethod.sms;
    case r'pushNotification':
      return Enum$NotificationMethod.pushNotification;
    case r'inAppNotification':
      return Enum$NotificationMethod.inAppNotification;
    default:
      return Enum$NotificationMethod.$unknown;
  }
}

enum Enum$MultiStepActionResult {
  ok,
  confirmTokenMismatch,
  dataValidationFailed,
  deviceNotFound,
  error,
  emailMismatch,
  emailNotVerified,
  invalidEmail,
  invalidPhoneNumber,
  missingEmail,
  missingPhoneNumber,
  notFound,
  phoneNumberMismatch,
  phoneNumberNotVerified,
  passed,
  systemError,
  userNotFound,
  userFailedValidation,
  userNotSignedIn,
  passwordUpdated,
  passwordMismatch,
  unset,
  $unknown
}

String toJson$Enum$MultiStepActionResult(Enum$MultiStepActionResult e) {
  switch (e) {
    case Enum$MultiStepActionResult.ok:
      return r'ok';
    case Enum$MultiStepActionResult.confirmTokenMismatch:
      return r'confirmTokenMismatch';
    case Enum$MultiStepActionResult.dataValidationFailed:
      return r'dataValidationFailed';
    case Enum$MultiStepActionResult.deviceNotFound:
      return r'deviceNotFound';
    case Enum$MultiStepActionResult.error:
      return r'error';
    case Enum$MultiStepActionResult.emailMismatch:
      return r'emailMismatch';
    case Enum$MultiStepActionResult.emailNotVerified:
      return r'emailNotVerified';
    case Enum$MultiStepActionResult.invalidEmail:
      return r'invalidEmail';
    case Enum$MultiStepActionResult.invalidPhoneNumber:
      return r'invalidPhoneNumber';
    case Enum$MultiStepActionResult.missingEmail:
      return r'missingEmail';
    case Enum$MultiStepActionResult.missingPhoneNumber:
      return r'missingPhoneNumber';
    case Enum$MultiStepActionResult.notFound:
      return r'notFound';
    case Enum$MultiStepActionResult.phoneNumberMismatch:
      return r'phoneNumberMismatch';
    case Enum$MultiStepActionResult.phoneNumberNotVerified:
      return r'phoneNumberNotVerified';
    case Enum$MultiStepActionResult.passed:
      return r'passed';
    case Enum$MultiStepActionResult.systemError:
      return r'systemError';
    case Enum$MultiStepActionResult.userNotFound:
      return r'userNotFound';
    case Enum$MultiStepActionResult.userFailedValidation:
      return r'userFailedValidation';
    case Enum$MultiStepActionResult.userNotSignedIn:
      return r'userNotSignedIn';
    case Enum$MultiStepActionResult.passwordUpdated:
      return r'passwordUpdated';
    case Enum$MultiStepActionResult.passwordMismatch:
      return r'passwordMismatch';
    case Enum$MultiStepActionResult.unset:
      return r'unset';
    case Enum$MultiStepActionResult.$unknown:
      return r'$unknown';
  }
}

Enum$MultiStepActionResult fromJson$Enum$MultiStepActionResult(String value) {
  switch (value) {
    case r'ok':
      return Enum$MultiStepActionResult.ok;
    case r'confirmTokenMismatch':
      return Enum$MultiStepActionResult.confirmTokenMismatch;
    case r'dataValidationFailed':
      return Enum$MultiStepActionResult.dataValidationFailed;
    case r'deviceNotFound':
      return Enum$MultiStepActionResult.deviceNotFound;
    case r'error':
      return Enum$MultiStepActionResult.error;
    case r'emailMismatch':
      return Enum$MultiStepActionResult.emailMismatch;
    case r'emailNotVerified':
      return Enum$MultiStepActionResult.emailNotVerified;
    case r'invalidEmail':
      return Enum$MultiStepActionResult.invalidEmail;
    case r'invalidPhoneNumber':
      return Enum$MultiStepActionResult.invalidPhoneNumber;
    case r'missingEmail':
      return Enum$MultiStepActionResult.missingEmail;
    case r'missingPhoneNumber':
      return Enum$MultiStepActionResult.missingPhoneNumber;
    case r'notFound':
      return Enum$MultiStepActionResult.notFound;
    case r'phoneNumberMismatch':
      return Enum$MultiStepActionResult.phoneNumberMismatch;
    case r'phoneNumberNotVerified':
      return Enum$MultiStepActionResult.phoneNumberNotVerified;
    case r'passed':
      return Enum$MultiStepActionResult.passed;
    case r'systemError':
      return Enum$MultiStepActionResult.systemError;
    case r'userNotFound':
      return Enum$MultiStepActionResult.userNotFound;
    case r'userFailedValidation':
      return Enum$MultiStepActionResult.userFailedValidation;
    case r'userNotSignedIn':
      return Enum$MultiStepActionResult.userNotSignedIn;
    case r'passwordUpdated':
      return Enum$MultiStepActionResult.passwordUpdated;
    case r'passwordMismatch':
      return Enum$MultiStepActionResult.passwordMismatch;
    case r'unset':
      return Enum$MultiStepActionResult.unset;
    default:
      return Enum$MultiStepActionResult.$unknown;
  }
}

enum Enum$ServiceRequestType {
  graphQlQueryUserInbox,
  graphQlQueryUserUserSearches,
  graphQlMutationCreateCompany,
  graphQlMutationDeleteCompany,
  graphQlMutationUpdateCompany,
  graphQlMutationAddChannelMessageEvent,
  graphQlMutationArchiveChannelForUserByMe,
  graphQlMutationCreateChannel,
  graphQlMutationCreateChannelInvitation,
  graphQlMutationCreateChannelMessage,
  graphQlMutationCreateChannelParticipant,
  graphQlMutationDeleteChannel,
  graphQlMutationDeleteChannelInvitation,
  graphQlMutationDeleteChannelMessage,
  graphQlMutationDeleteChannelParticipant,
  graphQlMutationDeleteGroup,
  graphQlMutationDeleteGroupMembership,
  graphQlMutationMarkChannelMessagesAsSeenByMe,
  graphQlMutationUpdateChannel,
  graphQlMutationUpdateChannelInvitation,
  graphQlMutationUpdateChannelMessage,
  graphQlMutationUpdateChannelParticipant,
  graphQlQueryChannelInvitations,
  graphQlQueryChannelParticipants,
  graphQlQueryFindChannelInvitationById,
  graphQlQueryFindChannelInvitationsForUser,
  graphQlQueryFindChannelMessageById,
  graphQlQueryFindChannelMessages,
  graphQlQueryFindChannelParticipantById,
  graphQlQueryFindPendingChannelInvitationsForUser,
  graphQlQueryMyInbox,
  graphQlQueryUserChannels,
  graphQlQueryUserCompanies,
  graphQlQueryUserGroupMembers,
  graphQlQueryUserGroups,
  graphQlQueryFindCountries,
  graphQlQueryFindExpertises,
  graphQlQueryFindIndustries,
  graphQlQueryFindOptions,
  unset,
  graphQlQueryContentTag,
  graphQlMutationCreateContentTag,
  graphQlMutationDeleteContentTag,
  graphQlMutationUpdateContentTag,
  graphQlMutationRunDataGenerator,
  graphQlMutationExecuteAdminTask,
  graphQlMutationSignUpOAuthUser,
  graphQlMutationUpsertBackgroundTask,
  graphQlQueryAvailableUserHandle,
  graphQlQueryBackgroundTask,
  graphQlQueryFindChannelById,
  graphQlQueryFindChannels,
  graphQlQueryfindChannelsForUser,
  graphQlQueryNotification,
  graphQlQueryNotificationTemplate,
  graphQlQueryUnreadInAppMessages,
  graphQlQueryUser,
  graphQlQueryUserInboxUser,
  graphQlMutationAddUserToGroup,
  graphQlMutationCreateGroup,
  graphQlMutationCreateGroupMembership,
  graphQlMutationRemoveUserFromAllGroups,
  graphQlMutationRemoveUserFromGroup,
  graphQlMutationUpdateGroup,
  graphQlMutationUpdateGroupMembership,
  graphQlQueryFindGroupById,
  graphQlQueryFindGroupMembershipByIdField,
  graphQlQueryFindGroupMemberships,
  graphQlQueryMyGroupMemberships,
  graphQlMutationCreateUserSearch,
  graphQlMutationDeleteUserSearch,
  graphQlMutationUpdateUserSearch,
  graphQlQueryFindUserSearchById,
  graphQlQueryUserSearchFoundUsers,
  graphQlMutationCreateNotification,
  graphQlMutationCreateNotificationTemplate,
  graphQlMutationDeleteNotification,
  graphQlMutationDeleteNotificationTemplate,
  graphQlMutationMarkInAppMessageReceived,
  graphQlMutationSendMultiStepActionNotification,
  graphQlMutationUpdateNotification,
  graphQlMutationUpdateNotificationTemplate,
  graphQlMutationClearAllSyncInfo,
  graphQlMutationCreateMm2Synchronization,
  graphQlMutationDeleteAllMm2DataInMm3,
  graphQlMutationDeleteMm2Synchronization,
  graphQlMutationRunMm2Synchronization,
  graphQlQueryFindMm2SynchronizationById,
  graphQlQueryGetMm2Integration,
  graphQlMutationCreateMultiStepAction,
  graphQlMutationCreateUserDevice,
  graphQlMutationDeleteUser,
  graphQlMutationSignInUser,
  graphQlMutationSignMeOut,
  graphQlMutationSignUpUser,
  graphQlMutationUpdateUser,
  graphQlMutationUpdateUserDevice,
  graphQlMutationVerifyMultiStepActionToken,
  graphQlQueryFindUserById,
  graphQlQueryFindUserByIdent,
  graphQlQueryFindUserDeviceById,
  graphQlQueryFindUsers,
  graphQlQueryGetAuthenticatedUser,
  graphQlQueryGetMultiStepActionProgress,
  graphQlQueryLatestUserDevice,
  graphQlQueryUserUserDevices,
  $unknown
}

String toJson$Enum$ServiceRequestType(Enum$ServiceRequestType e) {
  switch (e) {
    case Enum$ServiceRequestType.graphQlQueryUserInbox:
      return r'graphQlQueryUserInbox';
    case Enum$ServiceRequestType.graphQlQueryUserUserSearches:
      return r'graphQlQueryUserUserSearches';
    case Enum$ServiceRequestType.graphQlMutationCreateCompany:
      return r'graphQlMutationCreateCompany';
    case Enum$ServiceRequestType.graphQlMutationDeleteCompany:
      return r'graphQlMutationDeleteCompany';
    case Enum$ServiceRequestType.graphQlMutationUpdateCompany:
      return r'graphQlMutationUpdateCompany';
    case Enum$ServiceRequestType.graphQlMutationAddChannelMessageEvent:
      return r'graphQlMutationAddChannelMessageEvent';
    case Enum$ServiceRequestType.graphQlMutationArchiveChannelForUserByMe:
      return r'graphQlMutationArchiveChannelForUserByMe';
    case Enum$ServiceRequestType.graphQlMutationCreateChannel:
      return r'graphQlMutationCreateChannel';
    case Enum$ServiceRequestType.graphQlMutationCreateChannelInvitation:
      return r'graphQlMutationCreateChannelInvitation';
    case Enum$ServiceRequestType.graphQlMutationCreateChannelMessage:
      return r'graphQlMutationCreateChannelMessage';
    case Enum$ServiceRequestType.graphQlMutationCreateChannelParticipant:
      return r'graphQlMutationCreateChannelParticipant';
    case Enum$ServiceRequestType.graphQlMutationDeleteChannel:
      return r'graphQlMutationDeleteChannel';
    case Enum$ServiceRequestType.graphQlMutationDeleteChannelInvitation:
      return r'graphQlMutationDeleteChannelInvitation';
    case Enum$ServiceRequestType.graphQlMutationDeleteChannelMessage:
      return r'graphQlMutationDeleteChannelMessage';
    case Enum$ServiceRequestType.graphQlMutationDeleteChannelParticipant:
      return r'graphQlMutationDeleteChannelParticipant';
    case Enum$ServiceRequestType.graphQlMutationDeleteGroup:
      return r'graphQlMutationDeleteGroup';
    case Enum$ServiceRequestType.graphQlMutationDeleteGroupMembership:
      return r'graphQlMutationDeleteGroupMembership';
    case Enum$ServiceRequestType.graphQlMutationMarkChannelMessagesAsSeenByMe:
      return r'graphQlMutationMarkChannelMessagesAsSeenByMe';
    case Enum$ServiceRequestType.graphQlMutationUpdateChannel:
      return r'graphQlMutationUpdateChannel';
    case Enum$ServiceRequestType.graphQlMutationUpdateChannelInvitation:
      return r'graphQlMutationUpdateChannelInvitation';
    case Enum$ServiceRequestType.graphQlMutationUpdateChannelMessage:
      return r'graphQlMutationUpdateChannelMessage';
    case Enum$ServiceRequestType.graphQlMutationUpdateChannelParticipant:
      return r'graphQlMutationUpdateChannelParticipant';
    case Enum$ServiceRequestType.graphQlQueryChannelInvitations:
      return r'graphQlQueryChannelInvitations';
    case Enum$ServiceRequestType.graphQlQueryChannelParticipants:
      return r'graphQlQueryChannelParticipants';
    case Enum$ServiceRequestType.graphQlQueryFindChannelInvitationById:
      return r'graphQlQueryFindChannelInvitationById';
    case Enum$ServiceRequestType.graphQlQueryFindChannelInvitationsForUser:
      return r'graphQlQueryFindChannelInvitationsForUser';
    case Enum$ServiceRequestType.graphQlQueryFindChannelMessageById:
      return r'graphQlQueryFindChannelMessageById';
    case Enum$ServiceRequestType.graphQlQueryFindChannelMessages:
      return r'graphQlQueryFindChannelMessages';
    case Enum$ServiceRequestType.graphQlQueryFindChannelParticipantById:
      return r'graphQlQueryFindChannelParticipantById';
    case Enum$ServiceRequestType
          .graphQlQueryFindPendingChannelInvitationsForUser:
      return r'graphQlQueryFindPendingChannelInvitationsForUser';
    case Enum$ServiceRequestType.graphQlQueryMyInbox:
      return r'graphQlQueryMyInbox';
    case Enum$ServiceRequestType.graphQlQueryUserChannels:
      return r'graphQlQueryUserChannels';
    case Enum$ServiceRequestType.graphQlQueryUserCompanies:
      return r'graphQlQueryUserCompanies';
    case Enum$ServiceRequestType.graphQlQueryUserGroupMembers:
      return r'graphQlQueryUserGroupMembers';
    case Enum$ServiceRequestType.graphQlQueryUserGroups:
      return r'graphQlQueryUserGroups';
    case Enum$ServiceRequestType.graphQlQueryFindCountries:
      return r'graphQlQueryFindCountries';
    case Enum$ServiceRequestType.graphQlQueryFindExpertises:
      return r'graphQlQueryFindExpertises';
    case Enum$ServiceRequestType.graphQlQueryFindIndustries:
      return r'graphQlQueryFindIndustries';
    case Enum$ServiceRequestType.graphQlQueryFindOptions:
      return r'graphQlQueryFindOptions';
    case Enum$ServiceRequestType.unset:
      return r'unset';
    case Enum$ServiceRequestType.graphQlQueryContentTag:
      return r'graphQlQueryContentTag';
    case Enum$ServiceRequestType.graphQlMutationCreateContentTag:
      return r'graphQlMutationCreateContentTag';
    case Enum$ServiceRequestType.graphQlMutationDeleteContentTag:
      return r'graphQlMutationDeleteContentTag';
    case Enum$ServiceRequestType.graphQlMutationUpdateContentTag:
      return r'graphQlMutationUpdateContentTag';
    case Enum$ServiceRequestType.graphQlMutationRunDataGenerator:
      return r'graphQlMutationRunDataGenerator';
    case Enum$ServiceRequestType.graphQlMutationExecuteAdminTask:
      return r'graphQlMutationExecuteAdminTask';
    case Enum$ServiceRequestType.graphQlMutationSignUpOAuthUser:
      return r'graphQlMutationSignUpOAuthUser';
    case Enum$ServiceRequestType.graphQlMutationUpsertBackgroundTask:
      return r'graphQlMutationUpsertBackgroundTask';
    case Enum$ServiceRequestType.graphQlQueryAvailableUserHandle:
      return r'graphQlQueryAvailableUserHandle';
    case Enum$ServiceRequestType.graphQlQueryBackgroundTask:
      return r'graphQlQueryBackgroundTask';
    case Enum$ServiceRequestType.graphQlQueryFindChannelById:
      return r'graphQlQueryFindChannelById';
    case Enum$ServiceRequestType.graphQlQueryFindChannels:
      return r'graphQlQueryFindChannels';
    case Enum$ServiceRequestType.graphQlQueryfindChannelsForUser:
      return r'graphQlQueryfindChannelsForUser';
    case Enum$ServiceRequestType.graphQlQueryNotification:
      return r'graphQlQueryNotification';
    case Enum$ServiceRequestType.graphQlQueryNotificationTemplate:
      return r'graphQlQueryNotificationTemplate';
    case Enum$ServiceRequestType.graphQlQueryUnreadInAppMessages:
      return r'graphQlQueryUnreadInAppMessages';
    case Enum$ServiceRequestType.graphQlQueryUser:
      return r'graphQlQueryUser';
    case Enum$ServiceRequestType.graphQlQueryUserInboxUser:
      return r'graphQlQueryUserInboxUser';
    case Enum$ServiceRequestType.graphQlMutationAddUserToGroup:
      return r'graphQlMutationAddUserToGroup';
    case Enum$ServiceRequestType.graphQlMutationCreateGroup:
      return r'graphQlMutationCreateGroup';
    case Enum$ServiceRequestType.graphQlMutationCreateGroupMembership:
      return r'graphQlMutationCreateGroupMembership';
    case Enum$ServiceRequestType.graphQlMutationRemoveUserFromAllGroups:
      return r'graphQlMutationRemoveUserFromAllGroups';
    case Enum$ServiceRequestType.graphQlMutationRemoveUserFromGroup:
      return r'graphQlMutationRemoveUserFromGroup';
    case Enum$ServiceRequestType.graphQlMutationUpdateGroup:
      return r'graphQlMutationUpdateGroup';
    case Enum$ServiceRequestType.graphQlMutationUpdateGroupMembership:
      return r'graphQlMutationUpdateGroupMembership';
    case Enum$ServiceRequestType.graphQlQueryFindGroupById:
      return r'graphQlQueryFindGroupById';
    case Enum$ServiceRequestType.graphQlQueryFindGroupMembershipByIdField:
      return r'graphQlQueryFindGroupMembershipByIdField';
    case Enum$ServiceRequestType.graphQlQueryFindGroupMemberships:
      return r'graphQlQueryFindGroupMemberships';
    case Enum$ServiceRequestType.graphQlQueryMyGroupMemberships:
      return r'graphQlQueryMyGroupMemberships';
    case Enum$ServiceRequestType.graphQlMutationCreateUserSearch:
      return r'graphQlMutationCreateUserSearch';
    case Enum$ServiceRequestType.graphQlMutationDeleteUserSearch:
      return r'graphQlMutationDeleteUserSearch';
    case Enum$ServiceRequestType.graphQlMutationUpdateUserSearch:
      return r'graphQlMutationUpdateUserSearch';
    case Enum$ServiceRequestType.graphQlQueryFindUserSearchById:
      return r'graphQlQueryFindUserSearchById';
    case Enum$ServiceRequestType.graphQlQueryUserSearchFoundUsers:
      return r'graphQlQueryUserSearchFoundUsers';
    case Enum$ServiceRequestType.graphQlMutationCreateNotification:
      return r'graphQlMutationCreateNotification';
    case Enum$ServiceRequestType.graphQlMutationCreateNotificationTemplate:
      return r'graphQlMutationCreateNotificationTemplate';
    case Enum$ServiceRequestType.graphQlMutationDeleteNotification:
      return r'graphQlMutationDeleteNotification';
    case Enum$ServiceRequestType.graphQlMutationDeleteNotificationTemplate:
      return r'graphQlMutationDeleteNotificationTemplate';
    case Enum$ServiceRequestType.graphQlMutationMarkInAppMessageReceived:
      return r'graphQlMutationMarkInAppMessageReceived';
    case Enum$ServiceRequestType.graphQlMutationSendMultiStepActionNotification:
      return r'graphQlMutationSendMultiStepActionNotification';
    case Enum$ServiceRequestType.graphQlMutationUpdateNotification:
      return r'graphQlMutationUpdateNotification';
    case Enum$ServiceRequestType.graphQlMutationUpdateNotificationTemplate:
      return r'graphQlMutationUpdateNotificationTemplate';
    case Enum$ServiceRequestType.graphQlMutationClearAllSyncInfo:
      return r'graphQlMutationClearAllSyncInfo';
    case Enum$ServiceRequestType.graphQlMutationCreateMm2Synchronization:
      return r'graphQlMutationCreateMm2Synchronization';
    case Enum$ServiceRequestType.graphQlMutationDeleteAllMm2DataInMm3:
      return r'graphQlMutationDeleteAllMm2DataInMm3';
    case Enum$ServiceRequestType.graphQlMutationDeleteMm2Synchronization:
      return r'graphQlMutationDeleteMm2Synchronization';
    case Enum$ServiceRequestType.graphQlMutationRunMm2Synchronization:
      return r'graphQlMutationRunMm2Synchronization';
    case Enum$ServiceRequestType.graphQlQueryFindMm2SynchronizationById:
      return r'graphQlQueryFindMm2SynchronizationById';
    case Enum$ServiceRequestType.graphQlQueryGetMm2Integration:
      return r'graphQlQueryGetMm2Integration';
    case Enum$ServiceRequestType.graphQlMutationCreateMultiStepAction:
      return r'graphQlMutationCreateMultiStepAction';
    case Enum$ServiceRequestType.graphQlMutationCreateUserDevice:
      return r'graphQlMutationCreateUserDevice';
    case Enum$ServiceRequestType.graphQlMutationDeleteUser:
      return r'graphQlMutationDeleteUser';
    case Enum$ServiceRequestType.graphQlMutationSignInUser:
      return r'graphQlMutationSignInUser';
    case Enum$ServiceRequestType.graphQlMutationSignMeOut:
      return r'graphQlMutationSignMeOut';
    case Enum$ServiceRequestType.graphQlMutationSignUpUser:
      return r'graphQlMutationSignUpUser';
    case Enum$ServiceRequestType.graphQlMutationUpdateUser:
      return r'graphQlMutationUpdateUser';
    case Enum$ServiceRequestType.graphQlMutationUpdateUserDevice:
      return r'graphQlMutationUpdateUserDevice';
    case Enum$ServiceRequestType.graphQlMutationVerifyMultiStepActionToken:
      return r'graphQlMutationVerifyMultiStepActionToken';
    case Enum$ServiceRequestType.graphQlQueryFindUserById:
      return r'graphQlQueryFindUserById';
    case Enum$ServiceRequestType.graphQlQueryFindUserByIdent:
      return r'graphQlQueryFindUserByIdent';
    case Enum$ServiceRequestType.graphQlQueryFindUserDeviceById:
      return r'graphQlQueryFindUserDeviceById';
    case Enum$ServiceRequestType.graphQlQueryFindUsers:
      return r'graphQlQueryFindUsers';
    case Enum$ServiceRequestType.graphQlQueryGetAuthenticatedUser:
      return r'graphQlQueryGetAuthenticatedUser';
    case Enum$ServiceRequestType.graphQlQueryGetMultiStepActionProgress:
      return r'graphQlQueryGetMultiStepActionProgress';
    case Enum$ServiceRequestType.graphQlQueryLatestUserDevice:
      return r'graphQlQueryLatestUserDevice';
    case Enum$ServiceRequestType.graphQlQueryUserUserDevices:
      return r'graphQlQueryUserUserDevices';
    case Enum$ServiceRequestType.$unknown:
      return r'$unknown';
  }
}

Enum$ServiceRequestType fromJson$Enum$ServiceRequestType(String value) {
  switch (value) {
    case r'graphQlQueryUserInbox':
      return Enum$ServiceRequestType.graphQlQueryUserInbox;
    case r'graphQlQueryUserUserSearches':
      return Enum$ServiceRequestType.graphQlQueryUserUserSearches;
    case r'graphQlMutationCreateCompany':
      return Enum$ServiceRequestType.graphQlMutationCreateCompany;
    case r'graphQlMutationDeleteCompany':
      return Enum$ServiceRequestType.graphQlMutationDeleteCompany;
    case r'graphQlMutationUpdateCompany':
      return Enum$ServiceRequestType.graphQlMutationUpdateCompany;
    case r'graphQlMutationAddChannelMessageEvent':
      return Enum$ServiceRequestType.graphQlMutationAddChannelMessageEvent;
    case r'graphQlMutationArchiveChannelForUserByMe':
      return Enum$ServiceRequestType.graphQlMutationArchiveChannelForUserByMe;
    case r'graphQlMutationCreateChannel':
      return Enum$ServiceRequestType.graphQlMutationCreateChannel;
    case r'graphQlMutationCreateChannelInvitation':
      return Enum$ServiceRequestType.graphQlMutationCreateChannelInvitation;
    case r'graphQlMutationCreateChannelMessage':
      return Enum$ServiceRequestType.graphQlMutationCreateChannelMessage;
    case r'graphQlMutationCreateChannelParticipant':
      return Enum$ServiceRequestType.graphQlMutationCreateChannelParticipant;
    case r'graphQlMutationDeleteChannel':
      return Enum$ServiceRequestType.graphQlMutationDeleteChannel;
    case r'graphQlMutationDeleteChannelInvitation':
      return Enum$ServiceRequestType.graphQlMutationDeleteChannelInvitation;
    case r'graphQlMutationDeleteChannelMessage':
      return Enum$ServiceRequestType.graphQlMutationDeleteChannelMessage;
    case r'graphQlMutationDeleteChannelParticipant':
      return Enum$ServiceRequestType.graphQlMutationDeleteChannelParticipant;
    case r'graphQlMutationDeleteGroup':
      return Enum$ServiceRequestType.graphQlMutationDeleteGroup;
    case r'graphQlMutationDeleteGroupMembership':
      return Enum$ServiceRequestType.graphQlMutationDeleteGroupMembership;
    case r'graphQlMutationMarkChannelMessagesAsSeenByMe':
      return Enum$ServiceRequestType
          .graphQlMutationMarkChannelMessagesAsSeenByMe;
    case r'graphQlMutationUpdateChannel':
      return Enum$ServiceRequestType.graphQlMutationUpdateChannel;
    case r'graphQlMutationUpdateChannelInvitation':
      return Enum$ServiceRequestType.graphQlMutationUpdateChannelInvitation;
    case r'graphQlMutationUpdateChannelMessage':
      return Enum$ServiceRequestType.graphQlMutationUpdateChannelMessage;
    case r'graphQlMutationUpdateChannelParticipant':
      return Enum$ServiceRequestType.graphQlMutationUpdateChannelParticipant;
    case r'graphQlQueryChannelInvitations':
      return Enum$ServiceRequestType.graphQlQueryChannelInvitations;
    case r'graphQlQueryChannelParticipants':
      return Enum$ServiceRequestType.graphQlQueryChannelParticipants;
    case r'graphQlQueryFindChannelInvitationById':
      return Enum$ServiceRequestType.graphQlQueryFindChannelInvitationById;
    case r'graphQlQueryFindChannelInvitationsForUser':
      return Enum$ServiceRequestType.graphQlQueryFindChannelInvitationsForUser;
    case r'graphQlQueryFindChannelMessageById':
      return Enum$ServiceRequestType.graphQlQueryFindChannelMessageById;
    case r'graphQlQueryFindChannelMessages':
      return Enum$ServiceRequestType.graphQlQueryFindChannelMessages;
    case r'graphQlQueryFindChannelParticipantById':
      return Enum$ServiceRequestType.graphQlQueryFindChannelParticipantById;
    case r'graphQlQueryFindPendingChannelInvitationsForUser':
      return Enum$ServiceRequestType
          .graphQlQueryFindPendingChannelInvitationsForUser;
    case r'graphQlQueryMyInbox':
      return Enum$ServiceRequestType.graphQlQueryMyInbox;
    case r'graphQlQueryUserChannels':
      return Enum$ServiceRequestType.graphQlQueryUserChannels;
    case r'graphQlQueryUserCompanies':
      return Enum$ServiceRequestType.graphQlQueryUserCompanies;
    case r'graphQlQueryUserGroupMembers':
      return Enum$ServiceRequestType.graphQlQueryUserGroupMembers;
    case r'graphQlQueryUserGroups':
      return Enum$ServiceRequestType.graphQlQueryUserGroups;
    case r'graphQlQueryFindCountries':
      return Enum$ServiceRequestType.graphQlQueryFindCountries;
    case r'graphQlQueryFindExpertises':
      return Enum$ServiceRequestType.graphQlQueryFindExpertises;
    case r'graphQlQueryFindIndustries':
      return Enum$ServiceRequestType.graphQlQueryFindIndustries;
    case r'graphQlQueryFindOptions':
      return Enum$ServiceRequestType.graphQlQueryFindOptions;
    case r'unset':
      return Enum$ServiceRequestType.unset;
    case r'graphQlQueryContentTag':
      return Enum$ServiceRequestType.graphQlQueryContentTag;
    case r'graphQlMutationCreateContentTag':
      return Enum$ServiceRequestType.graphQlMutationCreateContentTag;
    case r'graphQlMutationDeleteContentTag':
      return Enum$ServiceRequestType.graphQlMutationDeleteContentTag;
    case r'graphQlMutationUpdateContentTag':
      return Enum$ServiceRequestType.graphQlMutationUpdateContentTag;
    case r'graphQlMutationRunDataGenerator':
      return Enum$ServiceRequestType.graphQlMutationRunDataGenerator;
    case r'graphQlMutationExecuteAdminTask':
      return Enum$ServiceRequestType.graphQlMutationExecuteAdminTask;
    case r'graphQlMutationSignUpOAuthUser':
      return Enum$ServiceRequestType.graphQlMutationSignUpOAuthUser;
    case r'graphQlMutationUpsertBackgroundTask':
      return Enum$ServiceRequestType.graphQlMutationUpsertBackgroundTask;
    case r'graphQlQueryAvailableUserHandle':
      return Enum$ServiceRequestType.graphQlQueryAvailableUserHandle;
    case r'graphQlQueryBackgroundTask':
      return Enum$ServiceRequestType.graphQlQueryBackgroundTask;
    case r'graphQlQueryFindChannelById':
      return Enum$ServiceRequestType.graphQlQueryFindChannelById;
    case r'graphQlQueryFindChannels':
      return Enum$ServiceRequestType.graphQlQueryFindChannels;
    case r'graphQlQueryfindChannelsForUser':
      return Enum$ServiceRequestType.graphQlQueryfindChannelsForUser;
    case r'graphQlQueryNotification':
      return Enum$ServiceRequestType.graphQlQueryNotification;
    case r'graphQlQueryNotificationTemplate':
      return Enum$ServiceRequestType.graphQlQueryNotificationTemplate;
    case r'graphQlQueryUnreadInAppMessages':
      return Enum$ServiceRequestType.graphQlQueryUnreadInAppMessages;
    case r'graphQlQueryUser':
      return Enum$ServiceRequestType.graphQlQueryUser;
    case r'graphQlQueryUserInboxUser':
      return Enum$ServiceRequestType.graphQlQueryUserInboxUser;
    case r'graphQlMutationAddUserToGroup':
      return Enum$ServiceRequestType.graphQlMutationAddUserToGroup;
    case r'graphQlMutationCreateGroup':
      return Enum$ServiceRequestType.graphQlMutationCreateGroup;
    case r'graphQlMutationCreateGroupMembership':
      return Enum$ServiceRequestType.graphQlMutationCreateGroupMembership;
    case r'graphQlMutationRemoveUserFromAllGroups':
      return Enum$ServiceRequestType.graphQlMutationRemoveUserFromAllGroups;
    case r'graphQlMutationRemoveUserFromGroup':
      return Enum$ServiceRequestType.graphQlMutationRemoveUserFromGroup;
    case r'graphQlMutationUpdateGroup':
      return Enum$ServiceRequestType.graphQlMutationUpdateGroup;
    case r'graphQlMutationUpdateGroupMembership':
      return Enum$ServiceRequestType.graphQlMutationUpdateGroupMembership;
    case r'graphQlQueryFindGroupById':
      return Enum$ServiceRequestType.graphQlQueryFindGroupById;
    case r'graphQlQueryFindGroupMembershipByIdField':
      return Enum$ServiceRequestType.graphQlQueryFindGroupMembershipByIdField;
    case r'graphQlQueryFindGroupMemberships':
      return Enum$ServiceRequestType.graphQlQueryFindGroupMemberships;
    case r'graphQlQueryMyGroupMemberships':
      return Enum$ServiceRequestType.graphQlQueryMyGroupMemberships;
    case r'graphQlMutationCreateUserSearch':
      return Enum$ServiceRequestType.graphQlMutationCreateUserSearch;
    case r'graphQlMutationDeleteUserSearch':
      return Enum$ServiceRequestType.graphQlMutationDeleteUserSearch;
    case r'graphQlMutationUpdateUserSearch':
      return Enum$ServiceRequestType.graphQlMutationUpdateUserSearch;
    case r'graphQlQueryFindUserSearchById':
      return Enum$ServiceRequestType.graphQlQueryFindUserSearchById;
    case r'graphQlQueryUserSearchFoundUsers':
      return Enum$ServiceRequestType.graphQlQueryUserSearchFoundUsers;
    case r'graphQlMutationCreateNotification':
      return Enum$ServiceRequestType.graphQlMutationCreateNotification;
    case r'graphQlMutationCreateNotificationTemplate':
      return Enum$ServiceRequestType.graphQlMutationCreateNotificationTemplate;
    case r'graphQlMutationDeleteNotification':
      return Enum$ServiceRequestType.graphQlMutationDeleteNotification;
    case r'graphQlMutationDeleteNotificationTemplate':
      return Enum$ServiceRequestType.graphQlMutationDeleteNotificationTemplate;
    case r'graphQlMutationMarkInAppMessageReceived':
      return Enum$ServiceRequestType.graphQlMutationMarkInAppMessageReceived;
    case r'graphQlMutationSendMultiStepActionNotification':
      return Enum$ServiceRequestType
          .graphQlMutationSendMultiStepActionNotification;
    case r'graphQlMutationUpdateNotification':
      return Enum$ServiceRequestType.graphQlMutationUpdateNotification;
    case r'graphQlMutationUpdateNotificationTemplate':
      return Enum$ServiceRequestType.graphQlMutationUpdateNotificationTemplate;
    case r'graphQlMutationClearAllSyncInfo':
      return Enum$ServiceRequestType.graphQlMutationClearAllSyncInfo;
    case r'graphQlMutationCreateMm2Synchronization':
      return Enum$ServiceRequestType.graphQlMutationCreateMm2Synchronization;
    case r'graphQlMutationDeleteAllMm2DataInMm3':
      return Enum$ServiceRequestType.graphQlMutationDeleteAllMm2DataInMm3;
    case r'graphQlMutationDeleteMm2Synchronization':
      return Enum$ServiceRequestType.graphQlMutationDeleteMm2Synchronization;
    case r'graphQlMutationRunMm2Synchronization':
      return Enum$ServiceRequestType.graphQlMutationRunMm2Synchronization;
    case r'graphQlQueryFindMm2SynchronizationById':
      return Enum$ServiceRequestType.graphQlQueryFindMm2SynchronizationById;
    case r'graphQlQueryGetMm2Integration':
      return Enum$ServiceRequestType.graphQlQueryGetMm2Integration;
    case r'graphQlMutationCreateMultiStepAction':
      return Enum$ServiceRequestType.graphQlMutationCreateMultiStepAction;
    case r'graphQlMutationCreateUserDevice':
      return Enum$ServiceRequestType.graphQlMutationCreateUserDevice;
    case r'graphQlMutationDeleteUser':
      return Enum$ServiceRequestType.graphQlMutationDeleteUser;
    case r'graphQlMutationSignInUser':
      return Enum$ServiceRequestType.graphQlMutationSignInUser;
    case r'graphQlMutationSignMeOut':
      return Enum$ServiceRequestType.graphQlMutationSignMeOut;
    case r'graphQlMutationSignUpUser':
      return Enum$ServiceRequestType.graphQlMutationSignUpUser;
    case r'graphQlMutationUpdateUser':
      return Enum$ServiceRequestType.graphQlMutationUpdateUser;
    case r'graphQlMutationUpdateUserDevice':
      return Enum$ServiceRequestType.graphQlMutationUpdateUserDevice;
    case r'graphQlMutationVerifyMultiStepActionToken':
      return Enum$ServiceRequestType.graphQlMutationVerifyMultiStepActionToken;
    case r'graphQlQueryFindUserById':
      return Enum$ServiceRequestType.graphQlQueryFindUserById;
    case r'graphQlQueryFindUserByIdent':
      return Enum$ServiceRequestType.graphQlQueryFindUserByIdent;
    case r'graphQlQueryFindUserDeviceById':
      return Enum$ServiceRequestType.graphQlQueryFindUserDeviceById;
    case r'graphQlQueryFindUsers':
      return Enum$ServiceRequestType.graphQlQueryFindUsers;
    case r'graphQlQueryGetAuthenticatedUser':
      return Enum$ServiceRequestType.graphQlQueryGetAuthenticatedUser;
    case r'graphQlQueryGetMultiStepActionProgress':
      return Enum$ServiceRequestType.graphQlQueryGetMultiStepActionProgress;
    case r'graphQlQueryLatestUserDevice':
      return Enum$ServiceRequestType.graphQlQueryLatestUserDevice;
    case r'graphQlQueryUserUserDevices':
      return Enum$ServiceRequestType.graphQlQueryUserUserDevices;
    default:
      return Enum$ServiceRequestType.$unknown;
  }
}

enum Enum$ServiceRequestResult { ok, error, unset, $unknown }

String toJson$Enum$ServiceRequestResult(Enum$ServiceRequestResult e) {
  switch (e) {
    case Enum$ServiceRequestResult.ok:
      return r'ok';
    case Enum$ServiceRequestResult.error:
      return r'error';
    case Enum$ServiceRequestResult.unset:
      return r'unset';
    case Enum$ServiceRequestResult.$unknown:
      return r'$unknown';
  }
}

Enum$ServiceRequestResult fromJson$Enum$ServiceRequestResult(String value) {
  switch (value) {
    case r'ok':
      return Enum$ServiceRequestResult.ok;
    case r'error':
      return Enum$ServiceRequestResult.error;
    case r'unset':
      return Enum$ServiceRequestResult.unset;
    default:
      return Enum$ServiceRequestResult.$unknown;
  }
}

enum Enum$ServiceRequestMessageId {
  systemError,
  invalidInput,
  groupRuleFailed,
  unknown,
  $unknown
}

String toJson$Enum$ServiceRequestMessageId(Enum$ServiceRequestMessageId e) {
  switch (e) {
    case Enum$ServiceRequestMessageId.systemError:
      return r'systemError';
    case Enum$ServiceRequestMessageId.invalidInput:
      return r'invalidInput';
    case Enum$ServiceRequestMessageId.groupRuleFailed:
      return r'groupRuleFailed';
    case Enum$ServiceRequestMessageId.unknown:
      return r'unknown';
    case Enum$ServiceRequestMessageId.$unknown:
      return r'$unknown';
  }
}

Enum$ServiceRequestMessageId fromJson$Enum$ServiceRequestMessageId(
    String value) {
  switch (value) {
    case r'systemError':
      return Enum$ServiceRequestMessageId.systemError;
    case r'invalidInput':
      return Enum$ServiceRequestMessageId.invalidInput;
    case r'groupRuleFailed':
      return Enum$ServiceRequestMessageId.groupRuleFailed;
    case r'unknown':
      return Enum$ServiceRequestMessageId.unknown;
    default:
      return Enum$ServiceRequestMessageId.$unknown;
  }
}

enum Enum$ErrorCode {
  companyNameMissing,
  companyNameTaken,
  contentTagAlreadyExist,
  contentTagModelTypeMissing,
  contentTagObjectIdMissing,
  contentTagTypeMissing,
  alreadyGroupMember,
  groupLevelTooDeep,
  groupNameMissing,
  groupNameTaken,
  groupNotActive,
  groupRuleFailed,
  groupSlugMissing,
  groupSlugTaken,
  notAGroupMember,
  parentGroupNotFound,
  matchingEngineNameMissing,
  matchingEngineNameTaken,
  alreadyExists,
  alreadyInitialized,
  dataValidationFailed,
  exceedsLimit,
  invalidInput,
  noLiveWebsocketConnectionAvailable,
  noNotificationMethodAvailable,
  notFound,
  notImplemented,
  notInitialized,
  notSupported,
  serviceNotAvailable,
  systemError,
  timeout,
  tooManyRequests,
  unknown,
  unauthorized,
  userAlreadyExists,
  userDeviceNotFound,
  userNotActive,
  userNotFound,
  passwordNoMatch,
  phoneNumberNotSupported,
  currentPasswordIncorrect,
  currentPasswordMissing,
  invalidPhoneNumber,
  invalidPushNotificationToken,
  authTokenNoMatch,
  $unknown
}

String toJson$Enum$ErrorCode(Enum$ErrorCode e) {
  switch (e) {
    case Enum$ErrorCode.companyNameMissing:
      return r'companyNameMissing';
    case Enum$ErrorCode.companyNameTaken:
      return r'companyNameTaken';
    case Enum$ErrorCode.contentTagAlreadyExist:
      return r'contentTagAlreadyExist';
    case Enum$ErrorCode.contentTagModelTypeMissing:
      return r'contentTagModelTypeMissing';
    case Enum$ErrorCode.contentTagObjectIdMissing:
      return r'contentTagObjectIdMissing';
    case Enum$ErrorCode.contentTagTypeMissing:
      return r'contentTagTypeMissing';
    case Enum$ErrorCode.alreadyGroupMember:
      return r'alreadyGroupMember';
    case Enum$ErrorCode.groupLevelTooDeep:
      return r'groupLevelTooDeep';
    case Enum$ErrorCode.groupNameMissing:
      return r'groupNameMissing';
    case Enum$ErrorCode.groupNameTaken:
      return r'groupNameTaken';
    case Enum$ErrorCode.groupNotActive:
      return r'groupNotActive';
    case Enum$ErrorCode.groupRuleFailed:
      return r'groupRuleFailed';
    case Enum$ErrorCode.groupSlugMissing:
      return r'groupSlugMissing';
    case Enum$ErrorCode.groupSlugTaken:
      return r'groupSlugTaken';
    case Enum$ErrorCode.notAGroupMember:
      return r'notAGroupMember';
    case Enum$ErrorCode.parentGroupNotFound:
      return r'parentGroupNotFound';
    case Enum$ErrorCode.matchingEngineNameMissing:
      return r'matchingEngineNameMissing';
    case Enum$ErrorCode.matchingEngineNameTaken:
      return r'matchingEngineNameTaken';
    case Enum$ErrorCode.alreadyExists:
      return r'alreadyExists';
    case Enum$ErrorCode.alreadyInitialized:
      return r'alreadyInitialized';
    case Enum$ErrorCode.dataValidationFailed:
      return r'dataValidationFailed';
    case Enum$ErrorCode.exceedsLimit:
      return r'exceedsLimit';
    case Enum$ErrorCode.invalidInput:
      return r'invalidInput';
    case Enum$ErrorCode.noLiveWebsocketConnectionAvailable:
      return r'noLiveWebsocketConnectionAvailable';
    case Enum$ErrorCode.noNotificationMethodAvailable:
      return r'noNotificationMethodAvailable';
    case Enum$ErrorCode.notFound:
      return r'notFound';
    case Enum$ErrorCode.notImplemented:
      return r'notImplemented';
    case Enum$ErrorCode.notInitialized:
      return r'notInitialized';
    case Enum$ErrorCode.notSupported:
      return r'notSupported';
    case Enum$ErrorCode.serviceNotAvailable:
      return r'serviceNotAvailable';
    case Enum$ErrorCode.systemError:
      return r'systemError';
    case Enum$ErrorCode.timeout:
      return r'timeout';
    case Enum$ErrorCode.tooManyRequests:
      return r'tooManyRequests';
    case Enum$ErrorCode.unknown:
      return r'unknown';
    case Enum$ErrorCode.unauthorized:
      return r'unauthorized';
    case Enum$ErrorCode.userAlreadyExists:
      return r'userAlreadyExists';
    case Enum$ErrorCode.userDeviceNotFound:
      return r'userDeviceNotFound';
    case Enum$ErrorCode.userNotActive:
      return r'userNotActive';
    case Enum$ErrorCode.userNotFound:
      return r'userNotFound';
    case Enum$ErrorCode.passwordNoMatch:
      return r'passwordNoMatch';
    case Enum$ErrorCode.phoneNumberNotSupported:
      return r'phoneNumberNotSupported';
    case Enum$ErrorCode.currentPasswordIncorrect:
      return r'currentPasswordIncorrect';
    case Enum$ErrorCode.currentPasswordMissing:
      return r'currentPasswordMissing';
    case Enum$ErrorCode.invalidPhoneNumber:
      return r'invalidPhoneNumber';
    case Enum$ErrorCode.invalidPushNotificationToken:
      return r'invalidPushNotificationToken';
    case Enum$ErrorCode.authTokenNoMatch:
      return r'authTokenNoMatch';
    case Enum$ErrorCode.$unknown:
      return r'$unknown';
  }
}

Enum$ErrorCode fromJson$Enum$ErrorCode(String value) {
  switch (value) {
    case r'companyNameMissing':
      return Enum$ErrorCode.companyNameMissing;
    case r'companyNameTaken':
      return Enum$ErrorCode.companyNameTaken;
    case r'contentTagAlreadyExist':
      return Enum$ErrorCode.contentTagAlreadyExist;
    case r'contentTagModelTypeMissing':
      return Enum$ErrorCode.contentTagModelTypeMissing;
    case r'contentTagObjectIdMissing':
      return Enum$ErrorCode.contentTagObjectIdMissing;
    case r'contentTagTypeMissing':
      return Enum$ErrorCode.contentTagTypeMissing;
    case r'alreadyGroupMember':
      return Enum$ErrorCode.alreadyGroupMember;
    case r'groupLevelTooDeep':
      return Enum$ErrorCode.groupLevelTooDeep;
    case r'groupNameMissing':
      return Enum$ErrorCode.groupNameMissing;
    case r'groupNameTaken':
      return Enum$ErrorCode.groupNameTaken;
    case r'groupNotActive':
      return Enum$ErrorCode.groupNotActive;
    case r'groupRuleFailed':
      return Enum$ErrorCode.groupRuleFailed;
    case r'groupSlugMissing':
      return Enum$ErrorCode.groupSlugMissing;
    case r'groupSlugTaken':
      return Enum$ErrorCode.groupSlugTaken;
    case r'notAGroupMember':
      return Enum$ErrorCode.notAGroupMember;
    case r'parentGroupNotFound':
      return Enum$ErrorCode.parentGroupNotFound;
    case r'matchingEngineNameMissing':
      return Enum$ErrorCode.matchingEngineNameMissing;
    case r'matchingEngineNameTaken':
      return Enum$ErrorCode.matchingEngineNameTaken;
    case r'alreadyExists':
      return Enum$ErrorCode.alreadyExists;
    case r'alreadyInitialized':
      return Enum$ErrorCode.alreadyInitialized;
    case r'dataValidationFailed':
      return Enum$ErrorCode.dataValidationFailed;
    case r'exceedsLimit':
      return Enum$ErrorCode.exceedsLimit;
    case r'invalidInput':
      return Enum$ErrorCode.invalidInput;
    case r'noLiveWebsocketConnectionAvailable':
      return Enum$ErrorCode.noLiveWebsocketConnectionAvailable;
    case r'noNotificationMethodAvailable':
      return Enum$ErrorCode.noNotificationMethodAvailable;
    case r'notFound':
      return Enum$ErrorCode.notFound;
    case r'notImplemented':
      return Enum$ErrorCode.notImplemented;
    case r'notInitialized':
      return Enum$ErrorCode.notInitialized;
    case r'notSupported':
      return Enum$ErrorCode.notSupported;
    case r'serviceNotAvailable':
      return Enum$ErrorCode.serviceNotAvailable;
    case r'systemError':
      return Enum$ErrorCode.systemError;
    case r'timeout':
      return Enum$ErrorCode.timeout;
    case r'tooManyRequests':
      return Enum$ErrorCode.tooManyRequests;
    case r'unknown':
      return Enum$ErrorCode.unknown;
    case r'unauthorized':
      return Enum$ErrorCode.unauthorized;
    case r'userAlreadyExists':
      return Enum$ErrorCode.userAlreadyExists;
    case r'userDeviceNotFound':
      return Enum$ErrorCode.userDeviceNotFound;
    case r'userNotActive':
      return Enum$ErrorCode.userNotActive;
    case r'userNotFound':
      return Enum$ErrorCode.userNotFound;
    case r'passwordNoMatch':
      return Enum$ErrorCode.passwordNoMatch;
    case r'phoneNumberNotSupported':
      return Enum$ErrorCode.phoneNumberNotSupported;
    case r'currentPasswordIncorrect':
      return Enum$ErrorCode.currentPasswordIncorrect;
    case r'currentPasswordMissing':
      return Enum$ErrorCode.currentPasswordMissing;
    case r'invalidPhoneNumber':
      return Enum$ErrorCode.invalidPhoneNumber;
    case r'invalidPushNotificationToken':
      return Enum$ErrorCode.invalidPushNotificationToken;
    case r'authTokenNoMatch':
      return Enum$ErrorCode.authTokenNoMatch;
    default:
      return Enum$ErrorCode.$unknown;
  }
}

enum Enum$ServiceRequestSource { graphQlApi, restApi, mm2, system, $unknown }

String toJson$Enum$ServiceRequestSource(Enum$ServiceRequestSource e) {
  switch (e) {
    case Enum$ServiceRequestSource.graphQlApi:
      return r'graphQlApi';
    case Enum$ServiceRequestSource.restApi:
      return r'restApi';
    case Enum$ServiceRequestSource.mm2:
      return r'mm2';
    case Enum$ServiceRequestSource.system:
      return r'system';
    case Enum$ServiceRequestSource.$unknown:
      return r'$unknown';
  }
}

Enum$ServiceRequestSource fromJson$Enum$ServiceRequestSource(String value) {
  switch (value) {
    case r'graphQlApi':
      return Enum$ServiceRequestSource.graphQlApi;
    case r'restApi':
      return Enum$ServiceRequestSource.restApi;
    case r'mm2':
      return Enum$ServiceRequestSource.mm2;
    case r'system':
      return Enum$ServiceRequestSource.system;
    default:
      return Enum$ServiceRequestSource.$unknown;
  }
}

enum Enum$ChannelMessageEvent { received, seen, unset, $unknown }

String toJson$Enum$ChannelMessageEvent(Enum$ChannelMessageEvent e) {
  switch (e) {
    case Enum$ChannelMessageEvent.received:
      return r'received';
    case Enum$ChannelMessageEvent.seen:
      return r'seen';
    case Enum$ChannelMessageEvent.unset:
      return r'unset';
    case Enum$ChannelMessageEvent.$unknown:
      return r'$unknown';
  }
}

Enum$ChannelMessageEvent fromJson$Enum$ChannelMessageEvent(String value) {
  switch (value) {
    case r'received':
      return Enum$ChannelMessageEvent.received;
    case r'seen':
      return Enum$ChannelMessageEvent.seen;
    case r'unset':
      return Enum$ChannelMessageEvent.unset;
    default:
      return Enum$ChannelMessageEvent.$unknown;
  }
}

enum Enum$NotificationTemplateName { unset, tfa, welcome, $unknown }

String toJson$Enum$NotificationTemplateName(Enum$NotificationTemplateName e) {
  switch (e) {
    case Enum$NotificationTemplateName.unset:
      return r'unset';
    case Enum$NotificationTemplateName.tfa:
      return r'tfa';
    case Enum$NotificationTemplateName.welcome:
      return r'welcome';
    case Enum$NotificationTemplateName.$unknown:
      return r'$unknown';
  }
}

Enum$NotificationTemplateName fromJson$Enum$NotificationTemplateName(
    String value) {
  switch (value) {
    case r'unset':
      return Enum$NotificationTemplateName.unset;
    case r'tfa':
      return Enum$NotificationTemplateName.tfa;
    case r'welcome':
      return Enum$NotificationTemplateName.welcome;
    default:
      return Enum$NotificationTemplateName.$unknown;
  }
}

enum Enum$Mm2SyncDirection { mm2ToMm3, mm3ToMm2, $unknown }

String toJson$Enum$Mm2SyncDirection(Enum$Mm2SyncDirection e) {
  switch (e) {
    case Enum$Mm2SyncDirection.mm2ToMm3:
      return r'mm2ToMm3';
    case Enum$Mm2SyncDirection.mm3ToMm2:
      return r'mm3ToMm2';
    case Enum$Mm2SyncDirection.$unknown:
      return r'$unknown';
  }
}

Enum$Mm2SyncDirection fromJson$Enum$Mm2SyncDirection(String value) {
  switch (value) {
    case r'mm2ToMm3':
      return Enum$Mm2SyncDirection.mm2ToMm3;
    case r'mm3ToMm2':
      return Enum$Mm2SyncDirection.mm3ToMm2;
    default:
      return Enum$Mm2SyncDirection.$unknown;
  }
}

enum Enum$Mm2ModelType {
  Community,
  Organization,
  Conversation,
  Message,
  User,
  MenteeExpertise,
  MenteeWebsite,
  MentorExpertise,
  Profile,
  SpokenLanguage,
  $unknown
}

String toJson$Enum$Mm2ModelType(Enum$Mm2ModelType e) {
  switch (e) {
    case Enum$Mm2ModelType.Community:
      return r'Community';
    case Enum$Mm2ModelType.Organization:
      return r'Organization';
    case Enum$Mm2ModelType.Conversation:
      return r'Conversation';
    case Enum$Mm2ModelType.Message:
      return r'Message';
    case Enum$Mm2ModelType.User:
      return r'User';
    case Enum$Mm2ModelType.MenteeExpertise:
      return r'MenteeExpertise';
    case Enum$Mm2ModelType.MenteeWebsite:
      return r'MenteeWebsite';
    case Enum$Mm2ModelType.MentorExpertise:
      return r'MentorExpertise';
    case Enum$Mm2ModelType.Profile:
      return r'Profile';
    case Enum$Mm2ModelType.SpokenLanguage:
      return r'SpokenLanguage';
    case Enum$Mm2ModelType.$unknown:
      return r'$unknown';
  }
}

Enum$Mm2ModelType fromJson$Enum$Mm2ModelType(String value) {
  switch (value) {
    case r'Community':
      return Enum$Mm2ModelType.Community;
    case r'Organization':
      return Enum$Mm2ModelType.Organization;
    case r'Conversation':
      return Enum$Mm2ModelType.Conversation;
    case r'Message':
      return Enum$Mm2ModelType.Message;
    case r'User':
      return Enum$Mm2ModelType.User;
    case r'MenteeExpertise':
      return Enum$Mm2ModelType.MenteeExpertise;
    case r'MenteeWebsite':
      return Enum$Mm2ModelType.MenteeWebsite;
    case r'MentorExpertise':
      return Enum$Mm2ModelType.MentorExpertise;
    case r'Profile':
      return Enum$Mm2ModelType.Profile;
    case r'SpokenLanguage':
      return Enum$Mm2ModelType.SpokenLanguage;
    default:
      return Enum$Mm2ModelType.$unknown;
  }
}

enum Enum$Mm2SynchronizationMode { full, incremental, updated, $unknown }

String toJson$Enum$Mm2SynchronizationMode(Enum$Mm2SynchronizationMode e) {
  switch (e) {
    case Enum$Mm2SynchronizationMode.full:
      return r'full';
    case Enum$Mm2SynchronizationMode.incremental:
      return r'incremental';
    case Enum$Mm2SynchronizationMode.updated:
      return r'updated';
    case Enum$Mm2SynchronizationMode.$unknown:
      return r'$unknown';
  }
}

Enum$Mm2SynchronizationMode fromJson$Enum$Mm2SynchronizationMode(String value) {
  switch (value) {
    case r'full':
      return Enum$Mm2SynchronizationMode.full;
    case r'incremental':
      return Enum$Mm2SynchronizationMode.incremental;
    case r'updated':
      return Enum$Mm2SynchronizationMode.updated;
    default:
      return Enum$Mm2SynchronizationMode.$unknown;
  }
}

enum Enum$SyncActionTaken {
  created,
  updated,
  deleted,
  skipped,
  unset,
  $unknown
}

String toJson$Enum$SyncActionTaken(Enum$SyncActionTaken e) {
  switch (e) {
    case Enum$SyncActionTaken.created:
      return r'created';
    case Enum$SyncActionTaken.updated:
      return r'updated';
    case Enum$SyncActionTaken.deleted:
      return r'deleted';
    case Enum$SyncActionTaken.skipped:
      return r'skipped';
    case Enum$SyncActionTaken.unset:
      return r'unset';
    case Enum$SyncActionTaken.$unknown:
      return r'$unknown';
  }
}

Enum$SyncActionTaken fromJson$Enum$SyncActionTaken(String value) {
  switch (value) {
    case r'created':
      return Enum$SyncActionTaken.created;
    case r'updated':
      return Enum$SyncActionTaken.updated;
    case r'deleted':
      return Enum$SyncActionTaken.deleted;
    case r'skipped':
      return Enum$SyncActionTaken.skipped;
    case r'unset':
      return Enum$SyncActionTaken.unset;
    default:
      return Enum$SyncActionTaken.$unknown;
  }
}

enum Enum$Mm2SynchronizerLogLevel { none, info, error, $unknown }

String toJson$Enum$Mm2SynchronizerLogLevel(Enum$Mm2SynchronizerLogLevel e) {
  switch (e) {
    case Enum$Mm2SynchronizerLogLevel.none:
      return r'none';
    case Enum$Mm2SynchronizerLogLevel.info:
      return r'info';
    case Enum$Mm2SynchronizerLogLevel.error:
      return r'error';
    case Enum$Mm2SynchronizerLogLevel.$unknown:
      return r'$unknown';
  }
}

Enum$Mm2SynchronizerLogLevel fromJson$Enum$Mm2SynchronizerLogLevel(
    String value) {
  switch (value) {
    case r'none':
      return Enum$Mm2SynchronizerLogLevel.none;
    case r'info':
      return Enum$Mm2SynchronizerLogLevel.info;
    case r'error':
      return Enum$Mm2SynchronizerLogLevel.error;
    default:
      return Enum$Mm2SynchronizerLogLevel.$unknown;
  }
}

enum Enum$ChannelChangedEventType {
  channelUpdated,
  channelDeleted,
  invitationCreated,
  invitationUpdated,
  invitationDeleted,
  messageCreated,
  messageUpdated,
  messageDeleted,
  messageStatusChanged,
  participantCreated,
  participantUpdated,
  participantDeleted,
  $unknown
}

String toJson$Enum$ChannelChangedEventType(Enum$ChannelChangedEventType e) {
  switch (e) {
    case Enum$ChannelChangedEventType.channelUpdated:
      return r'channelUpdated';
    case Enum$ChannelChangedEventType.channelDeleted:
      return r'channelDeleted';
    case Enum$ChannelChangedEventType.invitationCreated:
      return r'invitationCreated';
    case Enum$ChannelChangedEventType.invitationUpdated:
      return r'invitationUpdated';
    case Enum$ChannelChangedEventType.invitationDeleted:
      return r'invitationDeleted';
    case Enum$ChannelChangedEventType.messageCreated:
      return r'messageCreated';
    case Enum$ChannelChangedEventType.messageUpdated:
      return r'messageUpdated';
    case Enum$ChannelChangedEventType.messageDeleted:
      return r'messageDeleted';
    case Enum$ChannelChangedEventType.messageStatusChanged:
      return r'messageStatusChanged';
    case Enum$ChannelChangedEventType.participantCreated:
      return r'participantCreated';
    case Enum$ChannelChangedEventType.participantUpdated:
      return r'participantUpdated';
    case Enum$ChannelChangedEventType.participantDeleted:
      return r'participantDeleted';
    case Enum$ChannelChangedEventType.$unknown:
      return r'$unknown';
  }
}

Enum$ChannelChangedEventType fromJson$Enum$ChannelChangedEventType(
    String value) {
  switch (value) {
    case r'channelUpdated':
      return Enum$ChannelChangedEventType.channelUpdated;
    case r'channelDeleted':
      return Enum$ChannelChangedEventType.channelDeleted;
    case r'invitationCreated':
      return Enum$ChannelChangedEventType.invitationCreated;
    case r'invitationUpdated':
      return Enum$ChannelChangedEventType.invitationUpdated;
    case r'invitationDeleted':
      return Enum$ChannelChangedEventType.invitationDeleted;
    case r'messageCreated':
      return Enum$ChannelChangedEventType.messageCreated;
    case r'messageUpdated':
      return Enum$ChannelChangedEventType.messageUpdated;
    case r'messageDeleted':
      return Enum$ChannelChangedEventType.messageDeleted;
    case r'messageStatusChanged':
      return Enum$ChannelChangedEventType.messageStatusChanged;
    case r'participantCreated':
      return Enum$ChannelChangedEventType.participantCreated;
    case r'participantUpdated':
      return Enum$ChannelChangedEventType.participantUpdated;
    case r'participantDeleted':
      return Enum$ChannelChangedEventType.participantDeleted;
    default:
      return Enum$ChannelChangedEventType.$unknown;
  }
}

enum Enum$ObjectChangedEventType { created, updated, deleted, $unknown }

String toJson$Enum$ObjectChangedEventType(Enum$ObjectChangedEventType e) {
  switch (e) {
    case Enum$ObjectChangedEventType.created:
      return r'created';
    case Enum$ObjectChangedEventType.updated:
      return r'updated';
    case Enum$ObjectChangedEventType.deleted:
      return r'deleted';
    case Enum$ObjectChangedEventType.$unknown:
      return r'$unknown';
  }
}

Enum$ObjectChangedEventType fromJson$Enum$ObjectChangedEventType(String value) {
  switch (value) {
    case r'created':
      return Enum$ObjectChangedEventType.created;
    case r'updated':
      return Enum$ObjectChangedEventType.updated;
    case r'deleted':
      return Enum$ObjectChangedEventType.deleted;
    default:
      return Enum$ObjectChangedEventType.$unknown;
  }
}

enum Enum$__TypeKind {
  SCALAR,
  OBJECT,
  INTERFACE,
  UNION,
  ENUM,
  INPUT_OBJECT,
  LIST,
  NON_NULL,
  $unknown
}

String toJson$Enum$__TypeKind(Enum$__TypeKind e) {
  switch (e) {
    case Enum$__TypeKind.SCALAR:
      return r'SCALAR';
    case Enum$__TypeKind.OBJECT:
      return r'OBJECT';
    case Enum$__TypeKind.INTERFACE:
      return r'INTERFACE';
    case Enum$__TypeKind.UNION:
      return r'UNION';
    case Enum$__TypeKind.ENUM:
      return r'ENUM';
    case Enum$__TypeKind.INPUT_OBJECT:
      return r'INPUT_OBJECT';
    case Enum$__TypeKind.LIST:
      return r'LIST';
    case Enum$__TypeKind.NON_NULL:
      return r'NON_NULL';
    case Enum$__TypeKind.$unknown:
      return r'$unknown';
  }
}

Enum$__TypeKind fromJson$Enum$__TypeKind(String value) {
  switch (value) {
    case r'SCALAR':
      return Enum$__TypeKind.SCALAR;
    case r'OBJECT':
      return Enum$__TypeKind.OBJECT;
    case r'INTERFACE':
      return Enum$__TypeKind.INTERFACE;
    case r'UNION':
      return Enum$__TypeKind.UNION;
    case r'ENUM':
      return Enum$__TypeKind.ENUM;
    case r'INPUT_OBJECT':
      return Enum$__TypeKind.INPUT_OBJECT;
    case r'LIST':
      return Enum$__TypeKind.LIST;
    case r'NON_NULL':
      return Enum$__TypeKind.NON_NULL;
    default:
      return Enum$__TypeKind.$unknown;
  }
}

enum Enum$__DirectiveLocation {
  QUERY,
  MUTATION,
  SUBSCRIPTION,
  FIELD,
  FRAGMENT_DEFINITION,
  FRAGMENT_SPREAD,
  INLINE_FRAGMENT,
  VARIABLE_DEFINITION,
  SCHEMA,
  SCALAR,
  OBJECT,
  FIELD_DEFINITION,
  ARGUMENT_DEFINITION,
  INTERFACE,
  UNION,
  ENUM,
  ENUM_VALUE,
  INPUT_OBJECT,
  INPUT_FIELD_DEFINITION,
  $unknown
}

String toJson$Enum$__DirectiveLocation(Enum$__DirectiveLocation e) {
  switch (e) {
    case Enum$__DirectiveLocation.QUERY:
      return r'QUERY';
    case Enum$__DirectiveLocation.MUTATION:
      return r'MUTATION';
    case Enum$__DirectiveLocation.SUBSCRIPTION:
      return r'SUBSCRIPTION';
    case Enum$__DirectiveLocation.FIELD:
      return r'FIELD';
    case Enum$__DirectiveLocation.FRAGMENT_DEFINITION:
      return r'FRAGMENT_DEFINITION';
    case Enum$__DirectiveLocation.FRAGMENT_SPREAD:
      return r'FRAGMENT_SPREAD';
    case Enum$__DirectiveLocation.INLINE_FRAGMENT:
      return r'INLINE_FRAGMENT';
    case Enum$__DirectiveLocation.VARIABLE_DEFINITION:
      return r'VARIABLE_DEFINITION';
    case Enum$__DirectiveLocation.SCHEMA:
      return r'SCHEMA';
    case Enum$__DirectiveLocation.SCALAR:
      return r'SCALAR';
    case Enum$__DirectiveLocation.OBJECT:
      return r'OBJECT';
    case Enum$__DirectiveLocation.FIELD_DEFINITION:
      return r'FIELD_DEFINITION';
    case Enum$__DirectiveLocation.ARGUMENT_DEFINITION:
      return r'ARGUMENT_DEFINITION';
    case Enum$__DirectiveLocation.INTERFACE:
      return r'INTERFACE';
    case Enum$__DirectiveLocation.UNION:
      return r'UNION';
    case Enum$__DirectiveLocation.ENUM:
      return r'ENUM';
    case Enum$__DirectiveLocation.ENUM_VALUE:
      return r'ENUM_VALUE';
    case Enum$__DirectiveLocation.INPUT_OBJECT:
      return r'INPUT_OBJECT';
    case Enum$__DirectiveLocation.INPUT_FIELD_DEFINITION:
      return r'INPUT_FIELD_DEFINITION';
    case Enum$__DirectiveLocation.$unknown:
      return r'$unknown';
  }
}

Enum$__DirectiveLocation fromJson$Enum$__DirectiveLocation(String value) {
  switch (value) {
    case r'QUERY':
      return Enum$__DirectiveLocation.QUERY;
    case r'MUTATION':
      return Enum$__DirectiveLocation.MUTATION;
    case r'SUBSCRIPTION':
      return Enum$__DirectiveLocation.SUBSCRIPTION;
    case r'FIELD':
      return Enum$__DirectiveLocation.FIELD;
    case r'FRAGMENT_DEFINITION':
      return Enum$__DirectiveLocation.FRAGMENT_DEFINITION;
    case r'FRAGMENT_SPREAD':
      return Enum$__DirectiveLocation.FRAGMENT_SPREAD;
    case r'INLINE_FRAGMENT':
      return Enum$__DirectiveLocation.INLINE_FRAGMENT;
    case r'VARIABLE_DEFINITION':
      return Enum$__DirectiveLocation.VARIABLE_DEFINITION;
    case r'SCHEMA':
      return Enum$__DirectiveLocation.SCHEMA;
    case r'SCALAR':
      return Enum$__DirectiveLocation.SCALAR;
    case r'OBJECT':
      return Enum$__DirectiveLocation.OBJECT;
    case r'FIELD_DEFINITION':
      return Enum$__DirectiveLocation.FIELD_DEFINITION;
    case r'ARGUMENT_DEFINITION':
      return Enum$__DirectiveLocation.ARGUMENT_DEFINITION;
    case r'INTERFACE':
      return Enum$__DirectiveLocation.INTERFACE;
    case r'UNION':
      return Enum$__DirectiveLocation.UNION;
    case r'ENUM':
      return Enum$__DirectiveLocation.ENUM;
    case r'ENUM_VALUE':
      return Enum$__DirectiveLocation.ENUM_VALUE;
    case r'INPUT_OBJECT':
      return Enum$__DirectiveLocation.INPUT_OBJECT;
    case r'INPUT_FIELD_DEFINITION':
      return Enum$__DirectiveLocation.INPUT_FIELD_DEFINITION;
    default:
      return Enum$__DirectiveLocation.$unknown;
  }
}

const possibleTypesMap = <String, Set<String>>{
  'BaseModelMetadata': {'UserMetadata'},
  'IGroupMembership': {
    'GroupMembership',
    'MenteesGroupMembership',
    'MentorsGroupMembership',
  },
};
