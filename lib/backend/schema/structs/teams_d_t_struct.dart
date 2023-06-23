// ignore_for_file: unnecessary_getters_setters
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TeamsDTStruct extends FFFirebaseStruct {
  TeamsDTStruct({
    int? teamID,
    String? teamName,
    String? teamNameAr,
    String? teamCode,
    String? teamCountry,
    String? teamLogo,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _teamID = teamID,
        _teamName = teamName,
        _teamNameAr = teamNameAr,
        _teamCode = teamCode,
        _teamCountry = teamCountry,
        _teamLogo = teamLogo,
        super(firestoreUtilData);

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

  // "teamCountry" field.
  String? _teamCountry;
  String get teamCountry => _teamCountry ?? '';
  set teamCountry(String? val) => _teamCountry = val;
  bool hasTeamCountry() => _teamCountry != null;

  // "teamLogo" field.
  String? _teamLogo;
  String get teamLogo => _teamLogo ?? '';
  set teamLogo(String? val) => _teamLogo = val;
  bool hasTeamLogo() => _teamLogo != null;

  static TeamsDTStruct fromMap(Map<String, dynamic> data) => TeamsDTStruct(
        teamID: castToType<int>(data['teamID']),
        teamName: data['teamName'] as String?,
        teamNameAr: data['teamNameAr'] as String?,
        teamCode: data['teamCode'] as String?,
        teamCountry: data['teamCountry'] as String?,
        teamLogo: data['teamLogo'] as String?,
      );

  static TeamsDTStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? TeamsDTStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'teamID': _teamID,
        'teamName': _teamName,
        'teamNameAr': _teamNameAr,
        'teamCode': _teamCode,
        'teamCountry': _teamCountry,
        'teamLogo': _teamLogo,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
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
        'teamCountry': serializeParam(
          _teamCountry,
          ParamType.String,
        ),
        'teamLogo': serializeParam(
          _teamLogo,
          ParamType.String,
        ),
      }.withoutNulls;

  static TeamsDTStruct fromSerializableMap(Map<String, dynamic> data) =>
      TeamsDTStruct(
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
        teamCountry: deserializeParam(
          data['teamCountry'],
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
  String toString() => 'TeamsDTStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TeamsDTStruct &&
        teamID == other.teamID &&
        teamName == other.teamName &&
        teamNameAr == other.teamNameAr &&
        teamCode == other.teamCode &&
        teamCountry == other.teamCountry &&
        teamLogo == other.teamLogo;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([teamID, teamName, teamNameAr, teamCode, teamCountry, teamLogo]);
}

TeamsDTStruct createTeamsDTStruct({
  int? teamID,
  String? teamName,
  String? teamNameAr,
  String? teamCode,
  String? teamCountry,
  String? teamLogo,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    TeamsDTStruct(
      teamID: teamID,
      teamName: teamName,
      teamNameAr: teamNameAr,
      teamCode: teamCode,
      teamCountry: teamCountry,
      teamLogo: teamLogo,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

TeamsDTStruct? updateTeamsDTStruct(
  TeamsDTStruct? teamsDT, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    teamsDT
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addTeamsDTStructData(
  Map<String, dynamic> firestoreData,
  TeamsDTStruct? teamsDT,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (teamsDT == null) {
    return;
  }
  if (teamsDT.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && teamsDT.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final teamsDTData = getTeamsDTFirestoreData(teamsDT, forFieldValue);
  final nestedData = teamsDTData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = teamsDT.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getTeamsDTFirestoreData(
  TeamsDTStruct? teamsDT, [
  bool forFieldValue = false,
]) {
  if (teamsDT == null) {
    return {};
  }
  final firestoreData = mapToFirestore(teamsDT.toMap());

  // Add any Firestore field values
  teamsDT.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getTeamsDTListFirestoreData(
  List<TeamsDTStruct>? teamsDTs,
) =>
    teamsDTs?.map((e) => getTeamsDTFirestoreData(e, true)).toList() ?? [];
