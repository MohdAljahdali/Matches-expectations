// ignore_for_file: unnecessary_getters_setters
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ApiRequestStruct extends FFFirebaseStruct {
  ApiRequestStruct({
    String? get,
    List<String>? parameters,
    int? pagingCurrent,
    int? pagingTotal,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _get = get,
        _parameters = parameters,
        _pagingCurrent = pagingCurrent,
        _pagingTotal = pagingTotal,
        super(firestoreUtilData);

  // "get" field.
  String? _get;
  String get get => _get ?? '';
  set get(String? val) => _get = val;
  bool hasGet() => _get != null;

  // "parameters" field.
  List<String>? _parameters;
  List<String> get parameters => _parameters ?? const [];
  set parameters(List<String>? val) => _parameters = val;
  void updateParameters(Function(List<String>) updateFn) =>
      updateFn(_parameters ??= []);
  bool hasParameters() => _parameters != null;

  // "pagingCurrent" field.
  int? _pagingCurrent;
  int get pagingCurrent => _pagingCurrent ?? 0;
  set pagingCurrent(int? val) => _pagingCurrent = val;
  void incrementPagingCurrent(int amount) =>
      _pagingCurrent = pagingCurrent + amount;
  bool hasPagingCurrent() => _pagingCurrent != null;

  // "pagingTotal" field.
  int? _pagingTotal;
  int get pagingTotal => _pagingTotal ?? 0;
  set pagingTotal(int? val) => _pagingTotal = val;
  void incrementPagingTotal(int amount) => _pagingTotal = pagingTotal + amount;
  bool hasPagingTotal() => _pagingTotal != null;

  static ApiRequestStruct fromMap(Map<String, dynamic> data) =>
      ApiRequestStruct(
        get: data['get'] as String?,
        parameters: getDataList(data['parameters']),
        pagingCurrent: castToType<int>(data['pagingCurrent']),
        pagingTotal: castToType<int>(data['pagingTotal']),
      );

  static ApiRequestStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? ApiRequestStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'get': _get,
        'parameters': _parameters,
        'pagingCurrent': _pagingCurrent,
        'pagingTotal': _pagingTotal,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'get': serializeParam(
          _get,
          ParamType.String,
        ),
        'parameters': serializeParam(
          _parameters,
          ParamType.String,
          true,
        ),
        'pagingCurrent': serializeParam(
          _pagingCurrent,
          ParamType.int,
        ),
        'pagingTotal': serializeParam(
          _pagingTotal,
          ParamType.int,
        ),
      }.withoutNulls;

  static ApiRequestStruct fromSerializableMap(Map<String, dynamic> data) =>
      ApiRequestStruct(
        get: deserializeParam(
          data['get'],
          ParamType.String,
          false,
        ),
        parameters: deserializeParam<String>(
          data['parameters'],
          ParamType.String,
          true,
        ),
        pagingCurrent: deserializeParam(
          data['pagingCurrent'],
          ParamType.int,
          false,
        ),
        pagingTotal: deserializeParam(
          data['pagingTotal'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ApiRequestStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ApiRequestStruct &&
        get == other.get &&
        listEquality.equals(parameters, other.parameters) &&
        pagingCurrent == other.pagingCurrent &&
        pagingTotal == other.pagingTotal;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([get, parameters, pagingCurrent, pagingTotal]);
}

ApiRequestStruct createApiRequestStruct({
  String? get,
  int? pagingCurrent,
  int? pagingTotal,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ApiRequestStruct(
      get: get,
      pagingCurrent: pagingCurrent,
      pagingTotal: pagingTotal,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ApiRequestStruct? updateApiRequestStruct(
  ApiRequestStruct? apiRequest, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    apiRequest
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addApiRequestStructData(
  Map<String, dynamic> firestoreData,
  ApiRequestStruct? apiRequest,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (apiRequest == null) {
    return;
  }
  if (apiRequest.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && apiRequest.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final apiRequestData = getApiRequestFirestoreData(apiRequest, forFieldValue);
  final nestedData = apiRequestData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = apiRequest.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getApiRequestFirestoreData(
  ApiRequestStruct? apiRequest, [
  bool forFieldValue = false,
]) {
  if (apiRequest == null) {
    return {};
  }
  final firestoreData = mapToFirestore(apiRequest.toMap());

  // Add any Firestore field values
  apiRequest.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getApiRequestListFirestoreData(
  List<ApiRequestStruct>? apiRequests,
) =>
    apiRequests?.map((e) => getApiRequestFirestoreData(e, true)).toList() ?? [];
