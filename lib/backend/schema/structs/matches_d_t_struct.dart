// ignore_for_file: unnecessary_getters_setters
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MatchesDTStruct extends FFFirebaseStruct {
  MatchesDTStruct({
    int? fixtureID,
    DateTime? fixtureDate,
    int? fixtureTimestamp,
    int? fixturePeriodFirst,
    int? fixturePeriodSecond,
    bool? teamHomeWinner,
    bool? teamAwayWinner,
    String? fixtureStatusLong,
    String? fixtureStatusShort,
    int? fixtureStatusElapsed,
    int? goalsHome,
    int? goalsAway,
    int? scoreHalftimeHome,
    int? scoreHalftimeAway,
    int? scoreFulltimeHome,
    int? scoreFulltimeAway,
    int? scoreExtratimeHome,
    int? scoreExtratimeAway,
    int? scorePenaltyHome,
    int? scorePenaltyAway,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _fixtureID = fixtureID,
        _fixtureDate = fixtureDate,
        _fixtureTimestamp = fixtureTimestamp,
        _fixturePeriodFirst = fixturePeriodFirst,
        _fixturePeriodSecond = fixturePeriodSecond,
        _teamHomeWinner = teamHomeWinner,
        _teamAwayWinner = teamAwayWinner,
        _fixtureStatusLong = fixtureStatusLong,
        _fixtureStatusShort = fixtureStatusShort,
        _fixtureStatusElapsed = fixtureStatusElapsed,
        _goalsHome = goalsHome,
        _goalsAway = goalsAway,
        _scoreHalftimeHome = scoreHalftimeHome,
        _scoreHalftimeAway = scoreHalftimeAway,
        _scoreFulltimeHome = scoreFulltimeHome,
        _scoreFulltimeAway = scoreFulltimeAway,
        _scoreExtratimeHome = scoreExtratimeHome,
        _scoreExtratimeAway = scoreExtratimeAway,
        _scorePenaltyHome = scorePenaltyHome,
        _scorePenaltyAway = scorePenaltyAway,
        super(firestoreUtilData);

  // "fixtureID" field.
  int? _fixtureID;
  int get fixtureID => _fixtureID ?? 0;
  set fixtureID(int? val) => _fixtureID = val;
  void incrementFixtureID(int amount) => _fixtureID = fixtureID + amount;
  bool hasFixtureID() => _fixtureID != null;

  // "fixtureDate" field.
  DateTime? _fixtureDate;
  DateTime? get fixtureDate => _fixtureDate;
  set fixtureDate(DateTime? val) => _fixtureDate = val;
  bool hasFixtureDate() => _fixtureDate != null;

  // "fixtureTimestamp" field.
  int? _fixtureTimestamp;
  int get fixtureTimestamp => _fixtureTimestamp ?? 0;
  set fixtureTimestamp(int? val) => _fixtureTimestamp = val;
  void incrementFixtureTimestamp(int amount) =>
      _fixtureTimestamp = fixtureTimestamp + amount;
  bool hasFixtureTimestamp() => _fixtureTimestamp != null;

  // "fixturePeriodFirst" field.
  int? _fixturePeriodFirst;
  int get fixturePeriodFirst => _fixturePeriodFirst ?? 0;
  set fixturePeriodFirst(int? val) => _fixturePeriodFirst = val;
  void incrementFixturePeriodFirst(int amount) =>
      _fixturePeriodFirst = fixturePeriodFirst + amount;
  bool hasFixturePeriodFirst() => _fixturePeriodFirst != null;

  // "fixturePeriodSecond" field.
  int? _fixturePeriodSecond;
  int get fixturePeriodSecond => _fixturePeriodSecond ?? 0;
  set fixturePeriodSecond(int? val) => _fixturePeriodSecond = val;
  void incrementFixturePeriodSecond(int amount) =>
      _fixturePeriodSecond = fixturePeriodSecond + amount;
  bool hasFixturePeriodSecond() => _fixturePeriodSecond != null;

  // "teamHomeWinner" field.
  bool? _teamHomeWinner;
  bool get teamHomeWinner => _teamHomeWinner ?? false;
  set teamHomeWinner(bool? val) => _teamHomeWinner = val;
  bool hasTeamHomeWinner() => _teamHomeWinner != null;

  // "teamAwayWinner" field.
  bool? _teamAwayWinner;
  bool get teamAwayWinner => _teamAwayWinner ?? false;
  set teamAwayWinner(bool? val) => _teamAwayWinner = val;
  bool hasTeamAwayWinner() => _teamAwayWinner != null;

  // "fixtureStatusLong" field.
  String? _fixtureStatusLong;
  String get fixtureStatusLong => _fixtureStatusLong ?? '';
  set fixtureStatusLong(String? val) => _fixtureStatusLong = val;
  bool hasFixtureStatusLong() => _fixtureStatusLong != null;

  // "fixtureStatusShort" field.
  String? _fixtureStatusShort;
  String get fixtureStatusShort => _fixtureStatusShort ?? '';
  set fixtureStatusShort(String? val) => _fixtureStatusShort = val;
  bool hasFixtureStatusShort() => _fixtureStatusShort != null;

  // "fixtureStatusElapsed" field.
  int? _fixtureStatusElapsed;
  int get fixtureStatusElapsed => _fixtureStatusElapsed ?? 0;
  set fixtureStatusElapsed(int? val) => _fixtureStatusElapsed = val;
  void incrementFixtureStatusElapsed(int amount) =>
      _fixtureStatusElapsed = fixtureStatusElapsed + amount;
  bool hasFixtureStatusElapsed() => _fixtureStatusElapsed != null;

  // "goalsHome" field.
  int? _goalsHome;
  int get goalsHome => _goalsHome ?? 0;
  set goalsHome(int? val) => _goalsHome = val;
  void incrementGoalsHome(int amount) => _goalsHome = goalsHome + amount;
  bool hasGoalsHome() => _goalsHome != null;

  // "goalsAway" field.
  int? _goalsAway;
  int get goalsAway => _goalsAway ?? 0;
  set goalsAway(int? val) => _goalsAway = val;
  void incrementGoalsAway(int amount) => _goalsAway = goalsAway + amount;
  bool hasGoalsAway() => _goalsAway != null;

  // "scoreHalftimeHome" field.
  int? _scoreHalftimeHome;
  int get scoreHalftimeHome => _scoreHalftimeHome ?? 0;
  set scoreHalftimeHome(int? val) => _scoreHalftimeHome = val;
  void incrementScoreHalftimeHome(int amount) =>
      _scoreHalftimeHome = scoreHalftimeHome + amount;
  bool hasScoreHalftimeHome() => _scoreHalftimeHome != null;

  // "scoreHalftimeAway" field.
  int? _scoreHalftimeAway;
  int get scoreHalftimeAway => _scoreHalftimeAway ?? 0;
  set scoreHalftimeAway(int? val) => _scoreHalftimeAway = val;
  void incrementScoreHalftimeAway(int amount) =>
      _scoreHalftimeAway = scoreHalftimeAway + amount;
  bool hasScoreHalftimeAway() => _scoreHalftimeAway != null;

  // "scoreFulltimeHome" field.
  int? _scoreFulltimeHome;
  int get scoreFulltimeHome => _scoreFulltimeHome ?? 0;
  set scoreFulltimeHome(int? val) => _scoreFulltimeHome = val;
  void incrementScoreFulltimeHome(int amount) =>
      _scoreFulltimeHome = scoreFulltimeHome + amount;
  bool hasScoreFulltimeHome() => _scoreFulltimeHome != null;

  // "scoreFulltimeAway" field.
  int? _scoreFulltimeAway;
  int get scoreFulltimeAway => _scoreFulltimeAway ?? 0;
  set scoreFulltimeAway(int? val) => _scoreFulltimeAway = val;
  void incrementScoreFulltimeAway(int amount) =>
      _scoreFulltimeAway = scoreFulltimeAway + amount;
  bool hasScoreFulltimeAway() => _scoreFulltimeAway != null;

  // "scoreExtratimeHome" field.
  int? _scoreExtratimeHome;
  int get scoreExtratimeHome => _scoreExtratimeHome ?? 0;
  set scoreExtratimeHome(int? val) => _scoreExtratimeHome = val;
  void incrementScoreExtratimeHome(int amount) =>
      _scoreExtratimeHome = scoreExtratimeHome + amount;
  bool hasScoreExtratimeHome() => _scoreExtratimeHome != null;

  // "scoreExtratimeAway" field.
  int? _scoreExtratimeAway;
  int get scoreExtratimeAway => _scoreExtratimeAway ?? 0;
  set scoreExtratimeAway(int? val) => _scoreExtratimeAway = val;
  void incrementScoreExtratimeAway(int amount) =>
      _scoreExtratimeAway = scoreExtratimeAway + amount;
  bool hasScoreExtratimeAway() => _scoreExtratimeAway != null;

  // "scorePenaltyHome" field.
  int? _scorePenaltyHome;
  int get scorePenaltyHome => _scorePenaltyHome ?? 0;
  set scorePenaltyHome(int? val) => _scorePenaltyHome = val;
  void incrementScorePenaltyHome(int amount) =>
      _scorePenaltyHome = scorePenaltyHome + amount;
  bool hasScorePenaltyHome() => _scorePenaltyHome != null;

  // "scorePenaltyAway" field.
  int? _scorePenaltyAway;
  int get scorePenaltyAway => _scorePenaltyAway ?? 0;
  set scorePenaltyAway(int? val) => _scorePenaltyAway = val;
  void incrementScorePenaltyAway(int amount) =>
      _scorePenaltyAway = scorePenaltyAway + amount;
  bool hasScorePenaltyAway() => _scorePenaltyAway != null;

  static MatchesDTStruct fromMap(Map<String, dynamic> data) => MatchesDTStruct(
        fixtureID: castToType<int>(data['fixtureID']),
        fixtureDate: data['fixtureDate'] as DateTime?,
        fixtureTimestamp: castToType<int>(data['fixtureTimestamp']),
        fixturePeriodFirst: castToType<int>(data['fixturePeriodFirst']),
        fixturePeriodSecond: castToType<int>(data['fixturePeriodSecond']),
        teamHomeWinner: data['teamHomeWinner'] as bool?,
        teamAwayWinner: data['teamAwayWinner'] as bool?,
        fixtureStatusLong: data['fixtureStatusLong'] as String?,
        fixtureStatusShort: data['fixtureStatusShort'] as String?,
        fixtureStatusElapsed: castToType<int>(data['fixtureStatusElapsed']),
        goalsHome: castToType<int>(data['goalsHome']),
        goalsAway: castToType<int>(data['goalsAway']),
        scoreHalftimeHome: castToType<int>(data['scoreHalftimeHome']),
        scoreHalftimeAway: castToType<int>(data['scoreHalftimeAway']),
        scoreFulltimeHome: castToType<int>(data['scoreFulltimeHome']),
        scoreFulltimeAway: castToType<int>(data['scoreFulltimeAway']),
        scoreExtratimeHome: castToType<int>(data['scoreExtratimeHome']),
        scoreExtratimeAway: castToType<int>(data['scoreExtratimeAway']),
        scorePenaltyHome: castToType<int>(data['scorePenaltyHome']),
        scorePenaltyAway: castToType<int>(data['scorePenaltyAway']),
      );

  static MatchesDTStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? MatchesDTStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'fixtureID': _fixtureID,
        'fixtureDate': _fixtureDate,
        'fixtureTimestamp': _fixtureTimestamp,
        'fixturePeriodFirst': _fixturePeriodFirst,
        'fixturePeriodSecond': _fixturePeriodSecond,
        'teamHomeWinner': _teamHomeWinner,
        'teamAwayWinner': _teamAwayWinner,
        'fixtureStatusLong': _fixtureStatusLong,
        'fixtureStatusShort': _fixtureStatusShort,
        'fixtureStatusElapsed': _fixtureStatusElapsed,
        'goalsHome': _goalsHome,
        'goalsAway': _goalsAway,
        'scoreHalftimeHome': _scoreHalftimeHome,
        'scoreHalftimeAway': _scoreHalftimeAway,
        'scoreFulltimeHome': _scoreFulltimeHome,
        'scoreFulltimeAway': _scoreFulltimeAway,
        'scoreExtratimeHome': _scoreExtratimeHome,
        'scoreExtratimeAway': _scoreExtratimeAway,
        'scorePenaltyHome': _scorePenaltyHome,
        'scorePenaltyAway': _scorePenaltyAway,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'fixtureID': serializeParam(
          _fixtureID,
          ParamType.int,
        ),
        'fixtureDate': serializeParam(
          _fixtureDate,
          ParamType.DateTime,
        ),
        'fixtureTimestamp': serializeParam(
          _fixtureTimestamp,
          ParamType.int,
        ),
        'fixturePeriodFirst': serializeParam(
          _fixturePeriodFirst,
          ParamType.int,
        ),
        'fixturePeriodSecond': serializeParam(
          _fixturePeriodSecond,
          ParamType.int,
        ),
        'teamHomeWinner': serializeParam(
          _teamHomeWinner,
          ParamType.bool,
        ),
        'teamAwayWinner': serializeParam(
          _teamAwayWinner,
          ParamType.bool,
        ),
        'fixtureStatusLong': serializeParam(
          _fixtureStatusLong,
          ParamType.String,
        ),
        'fixtureStatusShort': serializeParam(
          _fixtureStatusShort,
          ParamType.String,
        ),
        'fixtureStatusElapsed': serializeParam(
          _fixtureStatusElapsed,
          ParamType.int,
        ),
        'goalsHome': serializeParam(
          _goalsHome,
          ParamType.int,
        ),
        'goalsAway': serializeParam(
          _goalsAway,
          ParamType.int,
        ),
        'scoreHalftimeHome': serializeParam(
          _scoreHalftimeHome,
          ParamType.int,
        ),
        'scoreHalftimeAway': serializeParam(
          _scoreHalftimeAway,
          ParamType.int,
        ),
        'scoreFulltimeHome': serializeParam(
          _scoreFulltimeHome,
          ParamType.int,
        ),
        'scoreFulltimeAway': serializeParam(
          _scoreFulltimeAway,
          ParamType.int,
        ),
        'scoreExtratimeHome': serializeParam(
          _scoreExtratimeHome,
          ParamType.int,
        ),
        'scoreExtratimeAway': serializeParam(
          _scoreExtratimeAway,
          ParamType.int,
        ),
        'scorePenaltyHome': serializeParam(
          _scorePenaltyHome,
          ParamType.int,
        ),
        'scorePenaltyAway': serializeParam(
          _scorePenaltyAway,
          ParamType.int,
        ),
      }.withoutNulls;

  static MatchesDTStruct fromSerializableMap(Map<String, dynamic> data) =>
      MatchesDTStruct(
        fixtureID: deserializeParam(
          data['fixtureID'],
          ParamType.int,
          false,
        ),
        fixtureDate: deserializeParam(
          data['fixtureDate'],
          ParamType.DateTime,
          false,
        ),
        fixtureTimestamp: deserializeParam(
          data['fixtureTimestamp'],
          ParamType.int,
          false,
        ),
        fixturePeriodFirst: deserializeParam(
          data['fixturePeriodFirst'],
          ParamType.int,
          false,
        ),
        fixturePeriodSecond: deserializeParam(
          data['fixturePeriodSecond'],
          ParamType.int,
          false,
        ),
        teamHomeWinner: deserializeParam(
          data['teamHomeWinner'],
          ParamType.bool,
          false,
        ),
        teamAwayWinner: deserializeParam(
          data['teamAwayWinner'],
          ParamType.bool,
          false,
        ),
        fixtureStatusLong: deserializeParam(
          data['fixtureStatusLong'],
          ParamType.String,
          false,
        ),
        fixtureStatusShort: deserializeParam(
          data['fixtureStatusShort'],
          ParamType.String,
          false,
        ),
        fixtureStatusElapsed: deserializeParam(
          data['fixtureStatusElapsed'],
          ParamType.int,
          false,
        ),
        goalsHome: deserializeParam(
          data['goalsHome'],
          ParamType.int,
          false,
        ),
        goalsAway: deserializeParam(
          data['goalsAway'],
          ParamType.int,
          false,
        ),
        scoreHalftimeHome: deserializeParam(
          data['scoreHalftimeHome'],
          ParamType.int,
          false,
        ),
        scoreHalftimeAway: deserializeParam(
          data['scoreHalftimeAway'],
          ParamType.int,
          false,
        ),
        scoreFulltimeHome: deserializeParam(
          data['scoreFulltimeHome'],
          ParamType.int,
          false,
        ),
        scoreFulltimeAway: deserializeParam(
          data['scoreFulltimeAway'],
          ParamType.int,
          false,
        ),
        scoreExtratimeHome: deserializeParam(
          data['scoreExtratimeHome'],
          ParamType.int,
          false,
        ),
        scoreExtratimeAway: deserializeParam(
          data['scoreExtratimeAway'],
          ParamType.int,
          false,
        ),
        scorePenaltyHome: deserializeParam(
          data['scorePenaltyHome'],
          ParamType.int,
          false,
        ),
        scorePenaltyAway: deserializeParam(
          data['scorePenaltyAway'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'MatchesDTStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MatchesDTStruct &&
        fixtureID == other.fixtureID &&
        fixtureDate == other.fixtureDate &&
        fixtureTimestamp == other.fixtureTimestamp &&
        fixturePeriodFirst == other.fixturePeriodFirst &&
        fixturePeriodSecond == other.fixturePeriodSecond &&
        teamHomeWinner == other.teamHomeWinner &&
        teamAwayWinner == other.teamAwayWinner &&
        fixtureStatusLong == other.fixtureStatusLong &&
        fixtureStatusShort == other.fixtureStatusShort &&
        fixtureStatusElapsed == other.fixtureStatusElapsed &&
        goalsHome == other.goalsHome &&
        goalsAway == other.goalsAway &&
        scoreHalftimeHome == other.scoreHalftimeHome &&
        scoreHalftimeAway == other.scoreHalftimeAway &&
        scoreFulltimeHome == other.scoreFulltimeHome &&
        scoreFulltimeAway == other.scoreFulltimeAway &&
        scoreExtratimeHome == other.scoreExtratimeHome &&
        scoreExtratimeAway == other.scoreExtratimeAway &&
        scorePenaltyHome == other.scorePenaltyHome &&
        scorePenaltyAway == other.scorePenaltyAway;
  }

  @override
  int get hashCode => const ListEquality().hash([
        fixtureID,
        fixtureDate,
        fixtureTimestamp,
        fixturePeriodFirst,
        fixturePeriodSecond,
        teamHomeWinner,
        teamAwayWinner,
        fixtureStatusLong,
        fixtureStatusShort,
        fixtureStatusElapsed,
        goalsHome,
        goalsAway,
        scoreHalftimeHome,
        scoreHalftimeAway,
        scoreFulltimeHome,
        scoreFulltimeAway,
        scoreExtratimeHome,
        scoreExtratimeAway,
        scorePenaltyHome,
        scorePenaltyAway
      ]);
}

MatchesDTStruct createMatchesDTStruct({
  int? fixtureID,
  DateTime? fixtureDate,
  int? fixtureTimestamp,
  int? fixturePeriodFirst,
  int? fixturePeriodSecond,
  bool? teamHomeWinner,
  bool? teamAwayWinner,
  String? fixtureStatusLong,
  String? fixtureStatusShort,
  int? fixtureStatusElapsed,
  int? goalsHome,
  int? goalsAway,
  int? scoreHalftimeHome,
  int? scoreHalftimeAway,
  int? scoreFulltimeHome,
  int? scoreFulltimeAway,
  int? scoreExtratimeHome,
  int? scoreExtratimeAway,
  int? scorePenaltyHome,
  int? scorePenaltyAway,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    MatchesDTStruct(
      fixtureID: fixtureID,
      fixtureDate: fixtureDate,
      fixtureTimestamp: fixtureTimestamp,
      fixturePeriodFirst: fixturePeriodFirst,
      fixturePeriodSecond: fixturePeriodSecond,
      teamHomeWinner: teamHomeWinner,
      teamAwayWinner: teamAwayWinner,
      fixtureStatusLong: fixtureStatusLong,
      fixtureStatusShort: fixtureStatusShort,
      fixtureStatusElapsed: fixtureStatusElapsed,
      goalsHome: goalsHome,
      goalsAway: goalsAway,
      scoreHalftimeHome: scoreHalftimeHome,
      scoreHalftimeAway: scoreHalftimeAway,
      scoreFulltimeHome: scoreFulltimeHome,
      scoreFulltimeAway: scoreFulltimeAway,
      scoreExtratimeHome: scoreExtratimeHome,
      scoreExtratimeAway: scoreExtratimeAway,
      scorePenaltyHome: scorePenaltyHome,
      scorePenaltyAway: scorePenaltyAway,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

MatchesDTStruct? updateMatchesDTStruct(
  MatchesDTStruct? matchesDT, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    matchesDT
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addMatchesDTStructData(
  Map<String, dynamic> firestoreData,
  MatchesDTStruct? matchesDT,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (matchesDT == null) {
    return;
  }
  if (matchesDT.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && matchesDT.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final matchesDTData = getMatchesDTFirestoreData(matchesDT, forFieldValue);
  final nestedData = matchesDTData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = matchesDT.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getMatchesDTFirestoreData(
  MatchesDTStruct? matchesDT, [
  bool forFieldValue = false,
]) {
  if (matchesDT == null) {
    return {};
  }
  final firestoreData = mapToFirestore(matchesDT.toMap());

  // Add any Firestore field values
  matchesDT.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getMatchesDTListFirestoreData(
  List<MatchesDTStruct>? matchesDTs,
) =>
    matchesDTs?.map((e) => getMatchesDTFirestoreData(e, true)).toList() ?? [];
