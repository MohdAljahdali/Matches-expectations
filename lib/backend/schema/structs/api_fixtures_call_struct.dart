// ignore_for_file: unnecessary_getters_setters
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ApiFixturesCallStruct extends FFFirebaseStruct {
  ApiFixturesCallStruct({
    List<int>? fixtureId,
    List<DateTime>? fixtureDate,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _fixtureId = fixtureId,
        _fixtureDate = fixtureDate,
        super(firestoreUtilData);

  // "fixtureId" field.
  List<int>? _fixtureId;
  List<int> get fixtureId => _fixtureId ?? const [];
  set fixtureId(List<int>? val) => _fixtureId = val;
  void updateFixtureId(Function(List<int>) updateFn) =>
      updateFn(_fixtureId ??= []);
  bool hasFixtureId() => _fixtureId != null;

  // "fixtureDate" field.
  List<DateTime>? _fixtureDate;
  List<DateTime> get fixtureDate => _fixtureDate ?? const [];
  set fixtureDate(List<DateTime>? val) => _fixtureDate = val;
  void updateFixtureDate(Function(List<DateTime>) updateFn) =>
      updateFn(_fixtureDate ??= []);
  bool hasFixtureDate() => _fixtureDate != null;

  static ApiFixturesCallStruct fromMap(Map<String, dynamic> data) =>
      ApiFixturesCallStruct(
        fixtureId: getDataList(data['fixtureId']),
        fixtureDate: getDataList(data['fixtureDate']),
      );

  static ApiFixturesCallStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? ApiFixturesCallStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'fixtureId': _fixtureId,
        'fixtureDate': _fixtureDate,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'fixtureId': serializeParam(
          _fixtureId,
          ParamType.int,
          true,
        ),
        'fixtureDate': serializeParam(
          _fixtureDate,
          ParamType.DateTime,
          true,
        ),
      }.withoutNulls;

  static ApiFixturesCallStruct fromSerializableMap(Map<String, dynamic> data) =>
      ApiFixturesCallStruct(
        fixtureId: deserializeParam<int>(
          data['fixtureId'],
          ParamType.int,
          true,
        ),
        fixtureDate: deserializeParam<DateTime>(
          data['fixtureDate'],
          ParamType.DateTime,
          true,
        ),
      );

  @override
  String toString() => 'ApiFixturesCallStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ApiFixturesCallStruct &&
        listEquality.equals(fixtureId, other.fixtureId) &&
        listEquality.equals(fixtureDate, other.fixtureDate);
  }

  @override
  int get hashCode => const ListEquality().hash([fixtureId, fixtureDate]);
}

ApiFixturesCallStruct createApiFixturesCallStruct({
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ApiFixturesCallStruct(
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ApiFixturesCallStruct? updateApiFixturesCallStruct(
  ApiFixturesCallStruct? apiFixturesCall, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    apiFixturesCall
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addApiFixturesCallStructData(
  Map<String, dynamic> firestoreData,
  ApiFixturesCallStruct? apiFixturesCall,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (apiFixturesCall == null) {
    return;
  }
  if (apiFixturesCall.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && apiFixturesCall.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final apiFixturesCallData =
      getApiFixturesCallFirestoreData(apiFixturesCall, forFieldValue);
  final nestedData =
      apiFixturesCallData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = apiFixturesCall.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getApiFixturesCallFirestoreData(
  ApiFixturesCallStruct? apiFixturesCall, [
  bool forFieldValue = false,
]) {
  if (apiFixturesCall == null) {
    return {};
  }
  final firestoreData = mapToFirestore(apiFixturesCall.toMap());

  // Add any Firestore field values
  apiFixturesCall.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getApiFixturesCallListFirestoreData(
  List<ApiFixturesCallStruct>? apiFixturesCalls,
) =>
    apiFixturesCalls
        ?.map((e) => getApiFixturesCallFirestoreData(e, true))
        .toList() ??
    [];
