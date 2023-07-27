// ignore_for_file: unnecessary_getters_setters
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PAdminTournamentsLiatStruct extends FFFirebaseStruct {
  PAdminTournamentsLiatStruct({
    bool? active,
    String? translated,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _active = active,
        _translated = translated,
        super(firestoreUtilData);

  // "Active" field.
  bool? _active;
  bool get active => _active ?? false;
  set active(bool? val) => _active = val;
  bool hasActive() => _active != null;

  // "Translated" field.
  String? _translated;
  String get translated => _translated ?? '';
  set translated(String? val) => _translated = val;
  bool hasTranslated() => _translated != null;

  static PAdminTournamentsLiatStruct fromMap(Map<String, dynamic> data) =>
      PAdminTournamentsLiatStruct(
        active: data['Active'] as bool?,
        translated: data['Translated'] as String?,
      );

  static PAdminTournamentsLiatStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic>
          ? PAdminTournamentsLiatStruct.fromMap(data)
          : null;

  Map<String, dynamic> toMap() => {
        'Active': _active,
        'Translated': _translated,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Active': serializeParam(
          _active,
          ParamType.bool,
        ),
        'Translated': serializeParam(
          _translated,
          ParamType.String,
        ),
      }.withoutNulls;

  static PAdminTournamentsLiatStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      PAdminTournamentsLiatStruct(
        active: deserializeParam(
          data['Active'],
          ParamType.bool,
          false,
        ),
        translated: deserializeParam(
          data['Translated'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PAdminTournamentsLiatStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PAdminTournamentsLiatStruct &&
        active == other.active &&
        translated == other.translated;
  }

  @override
  int get hashCode => const ListEquality().hash([active, translated]);
}

PAdminTournamentsLiatStruct createPAdminTournamentsLiatStruct({
  bool? active,
  String? translated,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PAdminTournamentsLiatStruct(
      active: active,
      translated: translated,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

PAdminTournamentsLiatStruct? updatePAdminTournamentsLiatStruct(
  PAdminTournamentsLiatStruct? pAdminTournamentsLiat, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    pAdminTournamentsLiat
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addPAdminTournamentsLiatStructData(
  Map<String, dynamic> firestoreData,
  PAdminTournamentsLiatStruct? pAdminTournamentsLiat,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (pAdminTournamentsLiat == null) {
    return;
  }
  if (pAdminTournamentsLiat.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue &&
      pAdminTournamentsLiat.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final pAdminTournamentsLiatData = getPAdminTournamentsLiatFirestoreData(
      pAdminTournamentsLiat, forFieldValue);
  final nestedData =
      pAdminTournamentsLiatData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      pAdminTournamentsLiat.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPAdminTournamentsLiatFirestoreData(
  PAdminTournamentsLiatStruct? pAdminTournamentsLiat, [
  bool forFieldValue = false,
]) {
  if (pAdminTournamentsLiat == null) {
    return {};
  }
  final firestoreData = mapToFirestore(pAdminTournamentsLiat.toMap());

  // Add any Firestore field values
  pAdminTournamentsLiat.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPAdminTournamentsLiatListFirestoreData(
  List<PAdminTournamentsLiatStruct>? pAdminTournamentsLiats,
) =>
    pAdminTournamentsLiats
        ?.map((e) => getPAdminTournamentsLiatFirestoreData(e, true))
        .toList() ??
    [];
