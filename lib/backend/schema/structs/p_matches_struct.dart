// ignore_for_file: unnecessary_getters_setters
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PMatchesStruct extends FFFirebaseStruct {
  PMatchesStruct({
    bool? filterIsActive,
    bool? filterIsDouble,
    DateTime? filterDateStart,
    DateTime? filterDateEnd,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _filterIsActive = filterIsActive,
        _filterIsDouble = filterIsDouble,
        _filterDateStart = filterDateStart,
        _filterDateEnd = filterDateEnd,
        super(firestoreUtilData);

  // "filterIsActive" field.
  bool? _filterIsActive;
  bool get filterIsActive => _filterIsActive ?? false;
  set filterIsActive(bool? val) => _filterIsActive = val;
  bool hasFilterIsActive() => _filterIsActive != null;

  // "filterIsDouble" field.
  bool? _filterIsDouble;
  bool get filterIsDouble => _filterIsDouble ?? false;
  set filterIsDouble(bool? val) => _filterIsDouble = val;
  bool hasFilterIsDouble() => _filterIsDouble != null;

  // "filterDateStart" field.
  DateTime? _filterDateStart;
  DateTime? get filterDateStart => _filterDateStart;
  set filterDateStart(DateTime? val) => _filterDateStart = val;
  bool hasFilterDateStart() => _filterDateStart != null;

  // "filterDateEnd" field.
  DateTime? _filterDateEnd;
  DateTime? get filterDateEnd => _filterDateEnd;
  set filterDateEnd(DateTime? val) => _filterDateEnd = val;
  bool hasFilterDateEnd() => _filterDateEnd != null;

  static PMatchesStruct fromMap(Map<String, dynamic> data) => PMatchesStruct(
        filterIsActive: data['filterIsActive'] as bool?,
        filterIsDouble: data['filterIsDouble'] as bool?,
        filterDateStart: data['filterDateStart'] as DateTime?,
        filterDateEnd: data['filterDateEnd'] as DateTime?,
      );

  static PMatchesStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? PMatchesStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'filterIsActive': _filterIsActive,
        'filterIsDouble': _filterIsDouble,
        'filterDateStart': _filterDateStart,
        'filterDateEnd': _filterDateEnd,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'filterIsActive': serializeParam(
          _filterIsActive,
          ParamType.bool,
        ),
        'filterIsDouble': serializeParam(
          _filterIsDouble,
          ParamType.bool,
        ),
        'filterDateStart': serializeParam(
          _filterDateStart,
          ParamType.DateTime,
        ),
        'filterDateEnd': serializeParam(
          _filterDateEnd,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static PMatchesStruct fromSerializableMap(Map<String, dynamic> data) =>
      PMatchesStruct(
        filterIsActive: deserializeParam(
          data['filterIsActive'],
          ParamType.bool,
          false,
        ),
        filterIsDouble: deserializeParam(
          data['filterIsDouble'],
          ParamType.bool,
          false,
        ),
        filterDateStart: deserializeParam(
          data['filterDateStart'],
          ParamType.DateTime,
          false,
        ),
        filterDateEnd: deserializeParam(
          data['filterDateEnd'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'PMatchesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PMatchesStruct &&
        filterIsActive == other.filterIsActive &&
        filterIsDouble == other.filterIsDouble &&
        filterDateStart == other.filterDateStart &&
        filterDateEnd == other.filterDateEnd;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([filterIsActive, filterIsDouble, filterDateStart, filterDateEnd]);
}

PMatchesStruct createPMatchesStruct({
  bool? filterIsActive,
  bool? filterIsDouble,
  DateTime? filterDateStart,
  DateTime? filterDateEnd,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PMatchesStruct(
      filterIsActive: filterIsActive,
      filterIsDouble: filterIsDouble,
      filterDateStart: filterDateStart,
      filterDateEnd: filterDateEnd,
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
