// ignore_for_file: unnecessary_getters_setters
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PTournamentsStruct extends FFFirebaseStruct {
  PTournamentsStruct({
    String? lastAddedTournaments,
    bool? active,
    String? translation,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _lastAddedTournaments = lastAddedTournaments,
        _active = active,
        _translation = translation,
        super(firestoreUtilData);

  // "lastAddedTournaments" field.
  String? _lastAddedTournaments;
  String get lastAddedTournaments => _lastAddedTournaments ?? '';
  set lastAddedTournaments(String? val) => _lastAddedTournaments = val;
  bool hasLastAddedTournaments() => _lastAddedTournaments != null;

  // "Active" field.
  bool? _active;
  bool get active => _active ?? false;
  set active(bool? val) => _active = val;
  bool hasActive() => _active != null;

  // "Translation" field.
  String? _translation;
  String get translation => _translation ?? '';
  set translation(String? val) => _translation = val;
  bool hasTranslation() => _translation != null;

  static PTournamentsStruct fromMap(Map<String, dynamic> data) =>
      PTournamentsStruct(
        lastAddedTournaments: data['lastAddedTournaments'] as String?,
        active: data['Active'] as bool?,
        translation: data['Translation'] as String?,
      );

  static PTournamentsStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? PTournamentsStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'lastAddedTournaments': _lastAddedTournaments,
        'Active': _active,
        'Translation': _translation,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'lastAddedTournaments': serializeParam(
          _lastAddedTournaments,
          ParamType.String,
        ),
        'Active': serializeParam(
          _active,
          ParamType.bool,
        ),
        'Translation': serializeParam(
          _translation,
          ParamType.String,
        ),
      }.withoutNulls;

  static PTournamentsStruct fromSerializableMap(Map<String, dynamic> data) =>
      PTournamentsStruct(
        lastAddedTournaments: deserializeParam(
          data['lastAddedTournaments'],
          ParamType.String,
          false,
        ),
        active: deserializeParam(
          data['Active'],
          ParamType.bool,
          false,
        ),
        translation: deserializeParam(
          data['Translation'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PTournamentsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PTournamentsStruct &&
        lastAddedTournaments == other.lastAddedTournaments &&
        active == other.active &&
        translation == other.translation;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([lastAddedTournaments, active, translation]);
}

PTournamentsStruct createPTournamentsStruct({
  String? lastAddedTournaments,
  bool? active,
  String? translation,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PTournamentsStruct(
      lastAddedTournaments: lastAddedTournaments,
      active: active,
      translation: translation,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

PTournamentsStruct? updatePTournamentsStruct(
  PTournamentsStruct? pTournaments, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    pTournaments
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addPTournamentsStructData(
  Map<String, dynamic> firestoreData,
  PTournamentsStruct? pTournaments,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (pTournaments == null) {
    return;
  }
  if (pTournaments.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && pTournaments.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final pTournamentsData =
      getPTournamentsFirestoreData(pTournaments, forFieldValue);
  final nestedData =
      pTournamentsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = pTournaments.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPTournamentsFirestoreData(
  PTournamentsStruct? pTournaments, [
  bool forFieldValue = false,
]) {
  if (pTournaments == null) {
    return {};
  }
  final firestoreData = mapToFirestore(pTournaments.toMap());

  // Add any Firestore field values
  pTournaments.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPTournamentsListFirestoreData(
  List<PTournamentsStruct>? pTournamentss,
) =>
    pTournamentss?.map((e) => getPTournamentsFirestoreData(e, true)).toList() ??
    [];
