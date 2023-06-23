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
    String? randomCode,
    String? setEndMatche,
    bool? setMatcheHasPenalty,
    bool? setHomeWin,
    int? setHomeWinPoints,
    bool? setAwayWin,
    int? setAwayWinPoints,
    bool? setDraw,
    int? setDrawPoints,
    bool? setHomeGoals,
    int? setHomeGoalsPoints,
    bool? setAwayGoals,
    int? setAwayGoalsPoints,
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
        _randomCode = randomCode,
        _setEndMatche = setEndMatche,
        _setMatcheHasPenalty = setMatcheHasPenalty,
        _setHomeWin = setHomeWin,
        _setHomeWinPoints = setHomeWinPoints,
        _setAwayWin = setAwayWin,
        _setAwayWinPoints = setAwayWinPoints,
        _setDraw = setDraw,
        _setDrawPoints = setDrawPoints,
        _setHomeGoals = setHomeGoals,
        _setHomeGoalsPoints = setHomeGoalsPoints,
        _setAwayGoals = setAwayGoals,
        _setAwayGoalsPoints = setAwayGoalsPoints,
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

  // "randomCode" field.
  String? _randomCode;
  String get randomCode => _randomCode ?? '';
  set randomCode(String? val) => _randomCode = val;
  bool hasRandomCode() => _randomCode != null;

  // "setEndMatche" field.
  String? _setEndMatche;
  String get setEndMatche => _setEndMatche ?? '';
  set setEndMatche(String? val) => _setEndMatche = val;
  bool hasSetEndMatche() => _setEndMatche != null;

  // "setMatcheHasPenalty" field.
  bool? _setMatcheHasPenalty;
  bool get setMatcheHasPenalty => _setMatcheHasPenalty ?? false;
  set setMatcheHasPenalty(bool? val) => _setMatcheHasPenalty = val;
  bool hasSetMatcheHasPenalty() => _setMatcheHasPenalty != null;

  // "setHomeWin" field.
  bool? _setHomeWin;
  bool get setHomeWin => _setHomeWin ?? false;
  set setHomeWin(bool? val) => _setHomeWin = val;
  bool hasSetHomeWin() => _setHomeWin != null;

  // "setHomeWinPoints" field.
  int? _setHomeWinPoints;
  int get setHomeWinPoints => _setHomeWinPoints ?? 0;
  set setHomeWinPoints(int? val) => _setHomeWinPoints = val;
  void incrementSetHomeWinPoints(int amount) =>
      _setHomeWinPoints = setHomeWinPoints + amount;
  bool hasSetHomeWinPoints() => _setHomeWinPoints != null;

  // "setAwayWin" field.
  bool? _setAwayWin;
  bool get setAwayWin => _setAwayWin ?? false;
  set setAwayWin(bool? val) => _setAwayWin = val;
  bool hasSetAwayWin() => _setAwayWin != null;

  // "setAwayWinPoints" field.
  int? _setAwayWinPoints;
  int get setAwayWinPoints => _setAwayWinPoints ?? 0;
  set setAwayWinPoints(int? val) => _setAwayWinPoints = val;
  void incrementSetAwayWinPoints(int amount) =>
      _setAwayWinPoints = setAwayWinPoints + amount;
  bool hasSetAwayWinPoints() => _setAwayWinPoints != null;

  // "setDraw" field.
  bool? _setDraw;
  bool get setDraw => _setDraw ?? false;
  set setDraw(bool? val) => _setDraw = val;
  bool hasSetDraw() => _setDraw != null;

  // "setDrawPoints" field.
  int? _setDrawPoints;
  int get setDrawPoints => _setDrawPoints ?? 0;
  set setDrawPoints(int? val) => _setDrawPoints = val;
  void incrementSetDrawPoints(int amount) =>
      _setDrawPoints = setDrawPoints + amount;
  bool hasSetDrawPoints() => _setDrawPoints != null;

  // "setHomeGoals" field.
  bool? _setHomeGoals;
  bool get setHomeGoals => _setHomeGoals ?? false;
  set setHomeGoals(bool? val) => _setHomeGoals = val;
  bool hasSetHomeGoals() => _setHomeGoals != null;

  // "setHomeGoalsPoints" field.
  int? _setHomeGoalsPoints;
  int get setHomeGoalsPoints => _setHomeGoalsPoints ?? 0;
  set setHomeGoalsPoints(int? val) => _setHomeGoalsPoints = val;
  void incrementSetHomeGoalsPoints(int amount) =>
      _setHomeGoalsPoints = setHomeGoalsPoints + amount;
  bool hasSetHomeGoalsPoints() => _setHomeGoalsPoints != null;

  // "setAwayGoals" field.
  bool? _setAwayGoals;
  bool get setAwayGoals => _setAwayGoals ?? false;
  set setAwayGoals(bool? val) => _setAwayGoals = val;
  bool hasSetAwayGoals() => _setAwayGoals != null;

  // "setAwayGoalsPoints" field.
  int? _setAwayGoalsPoints;
  int get setAwayGoalsPoints => _setAwayGoalsPoints ?? 0;
  set setAwayGoalsPoints(int? val) => _setAwayGoalsPoints = val;
  void incrementSetAwayGoalsPoints(int amount) =>
      _setAwayGoalsPoints = setAwayGoalsPoints + amount;
  bool hasSetAwayGoalsPoints() => _setAwayGoalsPoints != null;

  static TournamentsDTStruct fromMap(Map<String, dynamic> data) =>
      TournamentsDTStruct(
        tournamentsID: castToType<int>(data['tournamentsID']),
        seasonYear: castToType<int>(data['seasonYear']),
        seasonStart: data['seasonStart'] as String?,
        seasonEnd: data['seasonEnd'] as String?,
        name: data['name'] as String?,
        nameAr: data['nameAr'] as String?,
        type: data['type'] as String?,
        logo: data['logo'] as String?,
        countryName: data['countryName'] as String?,
        countryCode: data['countryCode'] as String?,
        countryFlog: data['countryFlog'] as String?,
        randomCode: data['randomCode'] as String?,
        setEndMatche: data['setEndMatche'] as String?,
        setMatcheHasPenalty: data['setMatcheHasPenalty'] as bool?,
        setHomeWin: data['setHomeWin'] as bool?,
        setHomeWinPoints: castToType<int>(data['setHomeWinPoints']),
        setAwayWin: data['setAwayWin'] as bool?,
        setAwayWinPoints: castToType<int>(data['setAwayWinPoints']),
        setDraw: data['setDraw'] as bool?,
        setDrawPoints: castToType<int>(data['setDrawPoints']),
        setHomeGoals: data['setHomeGoals'] as bool?,
        setHomeGoalsPoints: castToType<int>(data['setHomeGoalsPoints']),
        setAwayGoals: data['setAwayGoals'] as bool?,
        setAwayGoalsPoints: castToType<int>(data['setAwayGoalsPoints']),
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
        'randomCode': _randomCode,
        'setEndMatche': _setEndMatche,
        'setMatcheHasPenalty': _setMatcheHasPenalty,
        'setHomeWin': _setHomeWin,
        'setHomeWinPoints': _setHomeWinPoints,
        'setAwayWin': _setAwayWin,
        'setAwayWinPoints': _setAwayWinPoints,
        'setDraw': _setDraw,
        'setDrawPoints': _setDrawPoints,
        'setHomeGoals': _setHomeGoals,
        'setHomeGoalsPoints': _setHomeGoalsPoints,
        'setAwayGoals': _setAwayGoals,
        'setAwayGoalsPoints': _setAwayGoalsPoints,
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
        'randomCode': serializeParam(
          _randomCode,
          ParamType.String,
        ),
        'setEndMatche': serializeParam(
          _setEndMatche,
          ParamType.String,
        ),
        'setMatcheHasPenalty': serializeParam(
          _setMatcheHasPenalty,
          ParamType.bool,
        ),
        'setHomeWin': serializeParam(
          _setHomeWin,
          ParamType.bool,
        ),
        'setHomeWinPoints': serializeParam(
          _setHomeWinPoints,
          ParamType.int,
        ),
        'setAwayWin': serializeParam(
          _setAwayWin,
          ParamType.bool,
        ),
        'setAwayWinPoints': serializeParam(
          _setAwayWinPoints,
          ParamType.int,
        ),
        'setDraw': serializeParam(
          _setDraw,
          ParamType.bool,
        ),
        'setDrawPoints': serializeParam(
          _setDrawPoints,
          ParamType.int,
        ),
        'setHomeGoals': serializeParam(
          _setHomeGoals,
          ParamType.bool,
        ),
        'setHomeGoalsPoints': serializeParam(
          _setHomeGoalsPoints,
          ParamType.int,
        ),
        'setAwayGoals': serializeParam(
          _setAwayGoals,
          ParamType.bool,
        ),
        'setAwayGoalsPoints': serializeParam(
          _setAwayGoalsPoints,
          ParamType.int,
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
        randomCode: deserializeParam(
          data['randomCode'],
          ParamType.String,
          false,
        ),
        setEndMatche: deserializeParam(
          data['setEndMatche'],
          ParamType.String,
          false,
        ),
        setMatcheHasPenalty: deserializeParam(
          data['setMatcheHasPenalty'],
          ParamType.bool,
          false,
        ),
        setHomeWin: deserializeParam(
          data['setHomeWin'],
          ParamType.bool,
          false,
        ),
        setHomeWinPoints: deserializeParam(
          data['setHomeWinPoints'],
          ParamType.int,
          false,
        ),
        setAwayWin: deserializeParam(
          data['setAwayWin'],
          ParamType.bool,
          false,
        ),
        setAwayWinPoints: deserializeParam(
          data['setAwayWinPoints'],
          ParamType.int,
          false,
        ),
        setDraw: deserializeParam(
          data['setDraw'],
          ParamType.bool,
          false,
        ),
        setDrawPoints: deserializeParam(
          data['setDrawPoints'],
          ParamType.int,
          false,
        ),
        setHomeGoals: deserializeParam(
          data['setHomeGoals'],
          ParamType.bool,
          false,
        ),
        setHomeGoalsPoints: deserializeParam(
          data['setHomeGoalsPoints'],
          ParamType.int,
          false,
        ),
        setAwayGoals: deserializeParam(
          data['setAwayGoals'],
          ParamType.bool,
          false,
        ),
        setAwayGoalsPoints: deserializeParam(
          data['setAwayGoalsPoints'],
          ParamType.int,
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
        countryFlog == other.countryFlog &&
        randomCode == other.randomCode &&
        setEndMatche == other.setEndMatche &&
        setMatcheHasPenalty == other.setMatcheHasPenalty &&
        setHomeWin == other.setHomeWin &&
        setHomeWinPoints == other.setHomeWinPoints &&
        setAwayWin == other.setAwayWin &&
        setAwayWinPoints == other.setAwayWinPoints &&
        setDraw == other.setDraw &&
        setDrawPoints == other.setDrawPoints &&
        setHomeGoals == other.setHomeGoals &&
        setHomeGoalsPoints == other.setHomeGoalsPoints &&
        setAwayGoals == other.setAwayGoals &&
        setAwayGoalsPoints == other.setAwayGoalsPoints;
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
        countryFlog,
        randomCode,
        setEndMatche,
        setMatcheHasPenalty,
        setHomeWin,
        setHomeWinPoints,
        setAwayWin,
        setAwayWinPoints,
        setDraw,
        setDrawPoints,
        setHomeGoals,
        setHomeGoalsPoints,
        setAwayGoals,
        setAwayGoalsPoints
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
  String? randomCode,
  String? setEndMatche,
  bool? setMatcheHasPenalty,
  bool? setHomeWin,
  int? setHomeWinPoints,
  bool? setAwayWin,
  int? setAwayWinPoints,
  bool? setDraw,
  int? setDrawPoints,
  bool? setHomeGoals,
  int? setHomeGoalsPoints,
  bool? setAwayGoals,
  int? setAwayGoalsPoints,
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
      randomCode: randomCode,
      setEndMatche: setEndMatche,
      setMatcheHasPenalty: setMatcheHasPenalty,
      setHomeWin: setHomeWin,
      setHomeWinPoints: setHomeWinPoints,
      setAwayWin: setAwayWin,
      setAwayWinPoints: setAwayWinPoints,
      setDraw: setDraw,
      setDrawPoints: setDrawPoints,
      setHomeGoals: setHomeGoals,
      setHomeGoalsPoints: setHomeGoalsPoints,
      setAwayGoals: setAwayGoals,
      setAwayGoalsPoints: setAwayGoalsPoints,
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
  bool create = false,
}) =>
    tournamentsDT
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

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
