// ignore_for_file: unnecessary_getters_setters
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TesmsDataTypeStruct extends FFFirebaseStruct {
  TesmsDataTypeStruct({
    String? id,
    int? teamID,
    String? teamName,
    String? teamNameAr,
    String? teamCode,
    String? teamLogo,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _teamID = teamID,
        _teamName = teamName,
        _teamNameAr = teamNameAr,
        _teamCode = teamCode,
        _teamLogo = teamLogo,
        super(firestoreUtilData);

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;
  bool hasId() => _id != null;

  // "teamID" field.
  int? _teamID;
  int get teamID => _teamID ?? 0;
  set teamID(int? val) => _teamID = val;
  void incrementTeamID(int amount) => _teamID = teamID + amount;
  bool hasTeamID() => _teamID != null;

  // "teamName" field.
  String? _teamName;
  String get teamName => _teamName ?? '';
  set teamName(String? val) => _teamName = val;
  bool hasTeamName() => _teamName != null;

  // "teamNameAr" field.
  String? _teamNameAr;
  String get teamNameAr => _teamNameAr ?? '';
  set teamNameAr(String? val) => _teamNameAr = val;
  bool hasTeamNameAr() => _teamNameAr != null;

  // "teamCode" field.
  String? _teamCode;
  String get teamCode => _teamCode ?? '';
  set teamCode(String? val) => _teamCode = val;
  bool hasTeamCode() => _teamCode != null;

  // "teamLogo" field.
  String? _teamLogo;
  String get teamLogo => _teamLogo ?? '';
  set teamLogo(String? val) => _teamLogo = val;
  bool hasTeamLogo() => _teamLogo != null;

  static TesmsDataTypeStruct fromMap(Map<String, dynamic> data) =>
      TesmsDataTypeStruct(
        id: data['id'] as String?,
        teamID: data['teamID'] as int?,
        teamName: data['teamName'] as String?,
        teamNameAr: data['teamNameAr'] as String?,
        teamCode: data['teamCode'] as String?,
        teamLogo: data['teamLogo'] as String?,
      );

  static TesmsDataTypeStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? TesmsDataTypeStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'teamID': _teamID,
        'teamName': _teamName,
        'teamNameAr': _teamNameAr,
        'teamCode': _teamCode,
        'teamLogo': _teamLogo,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'teamID': serializeParam(
          _teamID,
          ParamType.int,
        ),
        'teamName': serializeParam(
          _teamName,
          ParamType.String,
        ),
        'teamNameAr': serializeParam(
          _teamNameAr,
          ParamType.String,
        ),
        'teamCode': serializeParam(
          _teamCode,
          ParamType.String,
        ),
        'teamLogo': serializeParam(
          _teamLogo,
          ParamType.String,
        ),
      }.withoutNulls;

  static TesmsDataTypeStruct fromSerializableMap(Map<String, dynamic> data) =>
      TesmsDataTypeStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        teamID: deserializeParam(
          data['teamID'],
          ParamType.int,
          false,
        ),
        teamName: deserializeParam(
          data['teamName'],
          ParamType.String,
          false,
        ),
        teamNameAr: deserializeParam(
          data['teamNameAr'],
          ParamType.String,
          false,
        ),
        teamCode: deserializeParam(
          data['teamCode'],
          ParamType.String,
          false,
        ),
        teamLogo: deserializeParam(
          data['teamLogo'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TesmsDataTypeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TesmsDataTypeStruct &&
        id == other.id &&
        teamID == other.teamID &&
        teamName == other.teamName &&
        teamNameAr == other.teamNameAr &&
        teamCode == other.teamCode &&
        teamLogo == other.teamLogo;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, teamID, teamName, teamNameAr, teamCode, teamLogo]);
}

TesmsDataTypeStruct createTesmsDataTypeStruct({
  String? id,
  int? teamID,
  String? teamName,
  String? teamNameAr,
  String? teamCode,
  String? teamLogo,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    TesmsDataTypeStruct(
      id: id,
      teamID: teamID,
      teamName: teamName,
      teamNameAr: teamNameAr,
      teamCode: teamCode,
      teamLogo: teamLogo,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

TesmsDataTypeStruct? updateTesmsDataTypeStruct(
  TesmsDataTypeStruct? tesmsDataType, {
  bool clearUnsetFields = true,
}) =>
    tesmsDataType
      ?..firestoreUtilData =
          FirestoreUtilData(clearUnsetFields: clearUnsetFields);

void addTesmsDataTypeStructData(
  Map<String, dynamic> firestoreData,
  TesmsDataTypeStruct? tesmsDataType,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (tesmsDataType == null) {
    return;
  }
  if (tesmsDataType.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && tesmsDataType.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final tesmsDataTypeData =
      getTesmsDataTypeFirestoreData(tesmsDataType, forFieldValue);
  final nestedData =
      tesmsDataTypeData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = tesmsDataType.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getTesmsDataTypeFirestoreData(
  TesmsDataTypeStruct? tesmsDataType, [
  bool forFieldValue = false,
]) {
  if (tesmsDataType == null) {
    return {};
  }
  final firestoreData = mapToFirestore(tesmsDataType.toMap());

  // Add any Firestore field values
  tesmsDataType.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getTesmsDataTypeListFirestoreData(
  List<TesmsDataTypeStruct>? tesmsDataTypes,
) =>
    tesmsDataTypes
        ?.map((e) => getTesmsDataTypeFirestoreData(e, true))
        .toList() ??
    [];
