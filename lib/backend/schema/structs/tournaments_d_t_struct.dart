// ignore_for_file: unnecessary_getters_setters
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TournamentsDTStruct extends FFFirebaseStruct {
  TournamentsDTStruct({
    int? tournamentsID,
    int? seasonYear,
    String? seasonStart,
    String? seasonEnd,
    String? name,
    String? nameAr,
    String? type,
    String? logo,
    String? countryName,
    String? countryCode,
    String? countryFlog,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _tournamentsID = tournamentsID,
        _seasonYear = seasonYear,
        _seasonStart = seasonStart,
        _seasonEnd = seasonEnd,
        _name = name,
        _nameAr = nameAr,
        _type = type,
        _logo = logo,
        _countryName = countryName,
        _countryCode = countryCode,
        _countryFlog = countryFlog,
        super(firestoreUtilData);

  // "tournamentsID" field.
  int? _tournamentsID;
  int get tournamentsID => _tournamentsID ?? 0;
  set tournamentsID(int? val) => _tournamentsID = val;
  void incrementTournamentsID(int amount) =>
      _tournamentsID = tournamentsID + amount;
  bool hasTournamentsID() => _tournamentsID != null;

  // "seasonYear" field.
  int? _seasonYear;
  int get seasonYear => _seasonYear ?? 0;
  set seasonYear(int? val) => _seasonYear = val;
  void incrementSeasonYear(int amount) => _seasonYear = seasonYear + amount;
  bool hasSeasonYear() => _seasonYear != null;

  // "seasonStart" field.
  String? _seasonStart;
  String get seasonStart => _seasonStart ?? '';
  set seasonStart(String? val) => _seasonStart = val;
  bool hasSeasonStart() => _seasonStart != null;

  // "seasonEnd" field.
  String? _seasonEnd;
  String get seasonEnd => _seasonEnd ?? '';
  set seasonEnd(String? val) => _seasonEnd = val;
  bool hasSeasonEnd() => _seasonEnd != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "nameAr" field.
  String? _nameAr;
  String get nameAr => _nameAr ?? '';
  set nameAr(String? val) => _nameAr = val;
  bool hasNameAr() => _nameAr != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  set type(String? val) => _type = val;
  bool hasType() => _type != null;

  // "logo" field.
  String? _logo;
  String get logo => _logo ?? '';
  set logo(String? val) => _logo = val;
  bool hasLogo() => _logo != null;

  // "countryName" field.
  String? _countryName;
  String get countryName => _countryName ?? '';
  set countryName(String? val) => _countryName = val;
  bool hasCountryName() => _countryName != null;

  // "countryCode" field.
  String? _countryCode;
  String get countryCode => _countryCode ?? '';
  set countryCode(String? val) => _countryCode = val;
  bool hasCountryCode() => _countryCode != null;

  // "countryFlog" field.
  String? _countryFlog;
  String get countryFlog => _countryFlog ?? '';
  set countryFlog(String? val) => _countryFlog = val;
  bool hasCountryFlog() => _countryFlog != null;

  static TournamentsDTStruct fromMap(Map<String, dynamic> data) =>
      TournamentsDTStruct(
        tournamentsID: data['tournamentsID'] as int?,
        seasonYear: data['seasonYear'] as int?,
        seasonStart: data['seasonStart'] as String?,
        seasonEnd: data['seasonEnd'] as String?,
        name: data['name'] as String?,
        nameAr: data['nameAr'] as String?,
        type: data['type'] as String?,
        logo: data['logo'] as String?,
        countryName: data['countryName'] as String?,
        countryCode: data['countryCode'] as String?,
        countryFlog: data['countryFlog'] as String?,
      );

  static TournamentsDTStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? TournamentsDTStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'tournamentsID': _tournamentsID,
        'seasonYear': _seasonYear,
        'seasonStart': _seasonStart,
        'seasonEnd': _seasonEnd,
        'name': _name,
        'nameAr': _nameAr,
        'type': _type,
        'logo': _logo,
        'countryName': _countryName,
        'countryCode': _countryCode,
        'countryFlog': _countryFlog,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'tournamentsID': serializeParam(
          _tournamentsID,
          ParamType.int,
        ),
        'seasonYear': serializeParam(
          _seasonYear,
          ParamType.int,
        ),
        'seasonStart': serializeParam(
          _seasonStart,
          ParamType.String,
        ),
        'seasonEnd': serializeParam(
          _seasonEnd,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'nameAr': serializeParam(
          _nameAr,
          ParamType.String,
        ),
        'type': serializeParam(
          _type,
          ParamType.String,
        ),
        'logo': serializeParam(
          _logo,
          ParamType.String,
        ),
        'countryName': serializeParam(
          _countryName,
          ParamType.String,
        ),
        'countryCode': serializeParam(
          _countryCode,
          ParamType.String,
        ),
        'countryFlog': serializeParam(
          _countryFlog,
          ParamType.String,
        ),
      }.withoutNulls;

  static TournamentsDTStruct fromSerializableMap(Map<String, dynamic> data) =>
      TournamentsDTStruct(
        tournamentsID: deserializeParam(
          data['tournamentsID'],
          ParamType.int,
          false,
        ),
        seasonYear: deserializeParam(
          data['seasonYear'],
          ParamType.int,
          false,
        ),
        seasonStart: deserializeParam(
          data['seasonStart'],
          ParamType.String,
          false,
        ),
        seasonEnd: deserializeParam(
          data['seasonEnd'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        nameAr: deserializeParam(
          data['nameAr'],
          ParamType.String,
          false,
        ),
        type: deserializeParam(
          data['type'],
          ParamType.String,
          false,
        ),
        logo: deserializeParam(
          data['logo'],
          ParamType.String,
          false,
        ),
        countryName: deserializeParam(
          data['countryName'],
          ParamType.String,
          false,
        ),
        countryCode: deserializeParam(
          data['countryCode'],
          ParamType.String,
          false,
        ),
        countryFlog: deserializeParam(
          data['countryFlog'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TournamentsDTStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TournamentsDTStruct &&
        tournamentsID == other.tournamentsID &&
        seasonYear == other.seasonYear &&
        seasonStart == other.seasonStart &&
        seasonEnd == other.seasonEnd &&
        name == other.name &&
        nameAr == other.nameAr &&
        type == other.type &&
        logo == other.logo &&
        countryName == other.countryName &&
        countryCode == other.countryCode &&
        countryFlog == other.countryFlog;
  }

  @override
  int get hashCode => const ListEquality().hash([
        tournamentsID,
        seasonYear,
        seasonStart,
        seasonEnd,
        name,
        nameAr,
        type,
        logo,
        countryName,
        countryCode,
        countryFlog
      ]);
}

TournamentsDTStruct createTournamentsDTStruct({
  int? tournamentsID,
  int? seasonYear,
  String? seasonStart,
  String? seasonEnd,
  String? name,
  String? nameAr,
  String? type,
  String? logo,
  String? countryName,
  String? countryCode,
  String? countryFlog,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    TournamentsDTStruct(
      tournamentsID: tournamentsID,
      seasonYear: seasonYear,
      seasonStart: seasonStart,
      seasonEnd: seasonEnd,
      name: name,
      nameAr: nameAr,
      type: type,
      logo: logo,
      countryName: countryName,
      countryCode: countryCode,
      countryFlog: countryFlog,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

TournamentsDTStruct? updateTournamentsDTStruct(
  TournamentsDTStruct? tournamentsDT, {
  bool clearUnsetFields = true,
}) =>
    tournamentsDT
      ?..firestoreUtilData =
          FirestoreUtilData(clearUnsetFields: clearUnsetFields);

void addTournamentsDTStructData(
  Map<String, dynamic> firestoreData,
  TournamentsDTStruct? tournamentsDT,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (tournamentsDT == null) {
    return;
  }
  if (tournamentsDT.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && tournamentsDT.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final tournamentsDTData =
      getTournamentsDTFirestoreData(tournamentsDT, forFieldValue);
  final nestedData =
      tournamentsDTData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = tournamentsDT.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getTournamentsDTFirestoreData(
  TournamentsDTStruct? tournamentsDT, [
  bool forFieldValue = false,
]) {
  if (tournamentsDT == null) {
    return {};
  }
  final firestoreData = mapToFirestore(tournamentsDT.toMap());

  // Add any Firestore field values
  tournamentsDT.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getTournamentsDTListFirestoreData(
  List<TournamentsDTStruct>? tournamentsDTs,
) =>
    tournamentsDTs
        ?.map((e) => getTournamentsDTFirestoreData(e, true))
        .toList() ??
    [];
