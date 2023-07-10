// ignore_for_file: unnecessary_getters_setters
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PMatchesStruct extends FFFirebaseStruct {
  PMatchesStruct({
    String? addNewMatcheRC,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _addNewMatcheRC = addNewMatcheRC,
        super(firestoreUtilData);

  // "addNewMatcheRC" field.
  String? _addNewMatcheRC;
  String get addNewMatcheRC => _addNewMatcheRC ?? '';
  set addNewMatcheRC(String? val) => _addNewMatcheRC = val;
  bool hasAddNewMatcheRC() => _addNewMatcheRC != null;

  static PMatchesStruct fromMap(Map<String, dynamic> data) => PMatchesStruct(
        addNewMatcheRC: data['addNewMatcheRC'] as String?,
      );

  static PMatchesStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? PMatchesStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'addNewMatcheRC': _addNewMatcheRC,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'addNewMatcheRC': serializeParam(
          _addNewMatcheRC,
          ParamType.String,
        ),
      }.withoutNulls;

  static PMatchesStruct fromSerializableMap(Map<String, dynamic> data) =>
      PMatchesStruct(
        addNewMatcheRC: deserializeParam(
          data['addNewMatcheRC'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PMatchesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PMatchesStruct && addNewMatcheRC == other.addNewMatcheRC;
  }

  @override
  int get hashCode => const ListEquality().hash([addNewMatcheRC]);
}

PMatchesStruct createPMatchesStruct({
  String? addNewMatcheRC,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PMatchesStruct(
      addNewMatcheRC: addNewMatcheRC,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

PMatchesStruct? updatePMatchesStruct(
  PMatchesStruct? pMatches, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    pMatches
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addPMatchesStructData(
  Map<String, dynamic> firestoreData,
  PMatchesStruct? pMatches,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (pMatches == null) {
    return;
  }
  if (pMatches.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && pMatches.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final pMatchesData = getPMatchesFirestoreData(pMatches, forFieldValue);
  final nestedData = pMatchesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = pMatches.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPMatchesFirestoreData(
  PMatchesStruct? pMatches, [
  bool forFieldValue = false,
]) {
  if (pMatches == null) {
    return {};
  }
  final firestoreData = mapToFirestore(pMatches.toMap());

  // Add any Firestore field values
  pMatches.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPMatchesListFirestoreData(
  List<PMatchesStruct>? pMatchess,
) =>
    pMatchess?.map((e) => getPMatchesFirestoreData(e, true)).toList() ?? [];
