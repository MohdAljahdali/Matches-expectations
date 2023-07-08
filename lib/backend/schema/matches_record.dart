import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MatchesRecord extends FirestoreRecord {
  MatchesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "MatcheID" field.
  String? _matcheID;
  String get matcheID => _matcheID ?? '';
  bool hasMatcheID() => _matcheID != null;

  // "fixtureID" field.
  int? _fixtureID;
  int get fixtureID => _fixtureID ?? 0;
  bool hasFixtureID() => _fixtureID != null;

  // "fixtureDate" field.
  DateTime? _fixtureDate;
  DateTime? get fixtureDate => _fixtureDate;
  bool hasFixtureDate() => _fixtureDate != null;

  // "fixtureTimestamp" field.
  int? _fixtureTimestamp;
  int get fixtureTimestamp => _fixtureTimestamp ?? 0;
  bool hasFixtureTimestamp() => _fixtureTimestamp != null;

  // "fixturePeriodFirst" field.
  int? _fixturePeriodFirst;
  int get fixturePeriodFirst => _fixturePeriodFirst ?? 0;
  bool hasFixturePeriodFirst() => _fixturePeriodFirst != null;

  // "fixturePeriodSecond" field.
  int? _fixturePeriodSecond;
  int get fixturePeriodSecond => _fixturePeriodSecond ?? 0;
  bool hasFixturePeriodSecond() => _fixturePeriodSecond != null;

  // "tournamentsRef" field.
  DocumentReference? _tournamentsRef;
  DocumentReference? get tournamentsRef => _tournamentsRef;
  bool hasTournamentsRef() => _tournamentsRef != null;

  // "tournamentseasonYear" field.
  String? _tournamentseasonYear;
  String get tournamentseasonYear => _tournamentseasonYear ?? '';
  bool hasTournamentseasonYear() => _tournamentseasonYear != null;

  // "tournamentName" field.
  String? _tournamentName;
  String get tournamentName => _tournamentName ?? '';
  bool hasTournamentName() => _tournamentName != null;

  // "tournamentNameAr" field.
  String? _tournamentNameAr;
  String get tournamentNameAr => _tournamentNameAr ?? '';
  bool hasTournamentNameAr() => _tournamentNameAr != null;

  // "tournamentType" field.
  String? _tournamentType;
  String get tournamentType => _tournamentType ?? '';
  bool hasTournamentType() => _tournamentType != null;

  // "tournamentLogo" field.
  String? _tournamentLogo;
  String get tournamentLogo => _tournamentLogo ?? '';
  bool hasTournamentLogo() => _tournamentLogo != null;

  // "tournamentroleHomeWin" field.
  bool? _tournamentroleHomeWin;
  bool get tournamentroleHomeWin => _tournamentroleHomeWin ?? false;
  bool hasTournamentroleHomeWin() => _tournamentroleHomeWin != null;

  // "tournamentroleHomeWinPoints" field.
  int? _tournamentroleHomeWinPoints;
  int get tournamentroleHomeWinPoints => _tournamentroleHomeWinPoints ?? 0;
  bool hasTournamentroleHomeWinPoints() => _tournamentroleHomeWinPoints != null;

  // "tournamentroleAwayWin" field.
  bool? _tournamentroleAwayWin;
  bool get tournamentroleAwayWin => _tournamentroleAwayWin ?? false;
  bool hasTournamentroleAwayWin() => _tournamentroleAwayWin != null;

  // "tournamentroleAwayWinPoints" field.
  int? _tournamentroleAwayWinPoints;
  int get tournamentroleAwayWinPoints => _tournamentroleAwayWinPoints ?? 0;
  bool hasTournamentroleAwayWinPoints() => _tournamentroleAwayWinPoints != null;

  // "tournamentroleDraw" field.
  bool? _tournamentroleDraw;
  bool get tournamentroleDraw => _tournamentroleDraw ?? false;
  bool hasTournamentroleDraw() => _tournamentroleDraw != null;

  // "tournamentroleDrawPoints" field.
  int? _tournamentroleDrawPoints;
  int get tournamentroleDrawPoints => _tournamentroleDrawPoints ?? 0;
  bool hasTournamentroleDrawPoints() => _tournamentroleDrawPoints != null;

  // "tournamentroleHomeGoals" field.
  bool? _tournamentroleHomeGoals;
  bool get tournamentroleHomeGoals => _tournamentroleHomeGoals ?? false;
  bool hasTournamentroleHomeGoals() => _tournamentroleHomeGoals != null;

  // "tournamentroleHomeGoalsPoints" field.
  int? _tournamentroleHomeGoalsPoints;
  int get tournamentroleHomeGoalsPoints => _tournamentroleHomeGoalsPoints ?? 0;
  bool hasTournamentroleHomeGoalsPoints() =>
      _tournamentroleHomeGoalsPoints != null;

  // "tournamentroleAwayGoals" field.
  bool? _tournamentroleAwayGoals;
  bool get tournamentroleAwayGoals => _tournamentroleAwayGoals ?? false;
  bool hasTournamentroleAwayGoals() => _tournamentroleAwayGoals != null;

  // "tournamentroleAwayGoalsPoints" field.
  int? _tournamentroleAwayGoalsPoints;
  int get tournamentroleAwayGoalsPoints => _tournamentroleAwayGoalsPoints ?? 0;
  bool hasTournamentroleAwayGoalsPoints() =>
      _tournamentroleAwayGoalsPoints != null;

  // "teamHomeRef" field.
  DocumentReference? _teamHomeRef;
  DocumentReference? get teamHomeRef => _teamHomeRef;
  bool hasTeamHomeRef() => _teamHomeRef != null;

  // "teamHomeName" field.
  String? _teamHomeName;
  String get teamHomeName => _teamHomeName ?? '';
  bool hasTeamHomeName() => _teamHomeName != null;

  // "teamHomeNameAr" field.
  String? _teamHomeNameAr;
  String get teamHomeNameAr => _teamHomeNameAr ?? '';
  bool hasTeamHomeNameAr() => _teamHomeNameAr != null;

  // "teamHomeCode" field.
  String? _teamHomeCode;
  String get teamHomeCode => _teamHomeCode ?? '';
  bool hasTeamHomeCode() => _teamHomeCode != null;

  // "teamHomeLogo" field.
  String? _teamHomeLogo;
  String get teamHomeLogo => _teamHomeLogo ?? '';
  bool hasTeamHomeLogo() => _teamHomeLogo != null;

  // "teamHomeWinner" field.
  bool? _teamHomeWinner;
  bool get teamHomeWinner => _teamHomeWinner ?? false;
  bool hasTeamHomeWinner() => _teamHomeWinner != null;

  // "teamAwayRef" field.
  DocumentReference? _teamAwayRef;
  DocumentReference? get teamAwayRef => _teamAwayRef;
  bool hasTeamAwayRef() => _teamAwayRef != null;

  // "teamAwayName" field.
  String? _teamAwayName;
  String get teamAwayName => _teamAwayName ?? '';
  bool hasTeamAwayName() => _teamAwayName != null;

  // "teamAwayNameAr" field.
  String? _teamAwayNameAr;
  String get teamAwayNameAr => _teamAwayNameAr ?? '';
  bool hasTeamAwayNameAr() => _teamAwayNameAr != null;

  // "teamAwayCode" field.
  String? _teamAwayCode;
  String get teamAwayCode => _teamAwayCode ?? '';
  bool hasTeamAwayCode() => _teamAwayCode != null;

  // "teamHAwayLogo" field.
  String? _teamHAwayLogo;
  String get teamHAwayLogo => _teamHAwayLogo ?? '';
  bool hasTeamHAwayLogo() => _teamHAwayLogo != null;

  // "teamAwayWinner" field.
  bool? _teamAwayWinner;
  bool get teamAwayWinner => _teamAwayWinner ?? false;
  bool hasTeamAwayWinner() => _teamAwayWinner != null;

  // "fixtureStatusGeneral" field.
  String? _fixtureStatusGeneral;
  String get fixtureStatusGeneral => _fixtureStatusGeneral ?? '';
  bool hasFixtureStatusGeneral() => _fixtureStatusGeneral != null;

  // "fixtureStatusLong" field.
  String? _fixtureStatusLong;
  String get fixtureStatusLong => _fixtureStatusLong ?? '';
  bool hasFixtureStatusLong() => _fixtureStatusLong != null;

  // "fixtureStatusShort" field.
  String? _fixtureStatusShort;
  String get fixtureStatusShort => _fixtureStatusShort ?? '';
  bool hasFixtureStatusShort() => _fixtureStatusShort != null;

  // "fixtureStatusElapsed" field.
  String? _fixtureStatusElapsed;
  String get fixtureStatusElapsed => _fixtureStatusElapsed ?? '';
  bool hasFixtureStatusElapsed() => _fixtureStatusElapsed != null;

  // "goalsHome" field.
  int? _goalsHome;
  int get goalsHome => _goalsHome ?? 0;
  bool hasGoalsHome() => _goalsHome != null;

  // "goalsAway" field.
  int? _goalsAway;
  int get goalsAway => _goalsAway ?? 0;
  bool hasGoalsAway() => _goalsAway != null;

  // "scoreHalftimeHome" field.
  int? _scoreHalftimeHome;
  int get scoreHalftimeHome => _scoreHalftimeHome ?? 0;
  bool hasScoreHalftimeHome() => _scoreHalftimeHome != null;

  // "scoreHalftimeAway" field.
  int? _scoreHalftimeAway;
  int get scoreHalftimeAway => _scoreHalftimeAway ?? 0;
  bool hasScoreHalftimeAway() => _scoreHalftimeAway != null;

  // "scoreFulltimeHome" field.
  int? _scoreFulltimeHome;
  int get scoreFulltimeHome => _scoreFulltimeHome ?? 0;
  bool hasScoreFulltimeHome() => _scoreFulltimeHome != null;

  // "scoreFulltimeAway" field.
  int? _scoreFulltimeAway;
  int get scoreFulltimeAway => _scoreFulltimeAway ?? 0;
  bool hasScoreFulltimeAway() => _scoreFulltimeAway != null;

  // "scoreExtratimeHome" field.
  int? _scoreExtratimeHome;
  int get scoreExtratimeHome => _scoreExtratimeHome ?? 0;
  bool hasScoreExtratimeHome() => _scoreExtratimeHome != null;

  // "scoreExtratimeAway" field.
  int? _scoreExtratimeAway;
  int get scoreExtratimeAway => _scoreExtratimeAway ?? 0;
  bool hasScoreExtratimeAway() => _scoreExtratimeAway != null;

  // "scorePenaltyHome" field.
  int? _scorePenaltyHome;
  int get scorePenaltyHome => _scorePenaltyHome ?? 0;
  bool hasScorePenaltyHome() => _scorePenaltyHome != null;

  // "scorePenaltyAway" field.
  int? _scorePenaltyAway;
  int get scorePenaltyAway => _scorePenaltyAway ?? 0;
  bool hasScorePenaltyAway() => _scorePenaltyAway != null;

  void _initializeFields() {
    _matcheID = snapshotData['MatcheID'] as String?;
    _fixtureID = castToType<int>(snapshotData['fixtureID']);
    _fixtureDate = snapshotData['fixtureDate'] as DateTime?;
    _fixtureTimestamp = castToType<int>(snapshotData['fixtureTimestamp']);
    _fixturePeriodFirst = castToType<int>(snapshotData['fixturePeriodFirst']);
    _fixturePeriodSecond = castToType<int>(snapshotData['fixturePeriodSecond']);
    _tournamentsRef = snapshotData['tournamentsRef'] as DocumentReference?;
    _tournamentseasonYear = snapshotData['tournamentseasonYear'] as String?;
    _tournamentName = snapshotData['tournamentName'] as String?;
    _tournamentNameAr = snapshotData['tournamentNameAr'] as String?;
    _tournamentType = snapshotData['tournamentType'] as String?;
    _tournamentLogo = snapshotData['tournamentLogo'] as String?;
    _tournamentroleHomeWin = snapshotData['tournamentroleHomeWin'] as bool?;
    _tournamentroleHomeWinPoints =
        castToType<int>(snapshotData['tournamentroleHomeWinPoints']);
    _tournamentroleAwayWin = snapshotData['tournamentroleAwayWin'] as bool?;
    _tournamentroleAwayWinPoints =
        castToType<int>(snapshotData['tournamentroleAwayWinPoints']);
    _tournamentroleDraw = snapshotData['tournamentroleDraw'] as bool?;
    _tournamentroleDrawPoints =
        castToType<int>(snapshotData['tournamentroleDrawPoints']);
    _tournamentroleHomeGoals = snapshotData['tournamentroleHomeGoals'] as bool?;
    _tournamentroleHomeGoalsPoints =
        castToType<int>(snapshotData['tournamentroleHomeGoalsPoints']);
    _tournamentroleAwayGoals = snapshotData['tournamentroleAwayGoals'] as bool?;
    _tournamentroleAwayGoalsPoints =
        castToType<int>(snapshotData['tournamentroleAwayGoalsPoints']);
    _teamHomeRef = snapshotData['teamHomeRef'] as DocumentReference?;
    _teamHomeName = snapshotData['teamHomeName'] as String?;
    _teamHomeNameAr = snapshotData['teamHomeNameAr'] as String?;
    _teamHomeCode = snapshotData['teamHomeCode'] as String?;
    _teamHomeLogo = snapshotData['teamHomeLogo'] as String?;
    _teamHomeWinner = snapshotData['teamHomeWinner'] as bool?;
    _teamAwayRef = snapshotData['teamAwayRef'] as DocumentReference?;
    _teamAwayName = snapshotData['teamAwayName'] as String?;
    _teamAwayNameAr = snapshotData['teamAwayNameAr'] as String?;
    _teamAwayCode = snapshotData['teamAwayCode'] as String?;
    _teamHAwayLogo = snapshotData['teamHAwayLogo'] as String?;
    _teamAwayWinner = snapshotData['teamAwayWinner'] as bool?;
    _fixtureStatusGeneral = snapshotData['fixtureStatusGeneral'] as String?;
    _fixtureStatusLong = snapshotData['fixtureStatusLong'] as String?;
    _fixtureStatusShort = snapshotData['fixtureStatusShort'] as String?;
    _fixtureStatusElapsed = snapshotData['fixtureStatusElapsed'] as String?;
    _goalsHome = castToType<int>(snapshotData['goalsHome']);
    _goalsAway = castToType<int>(snapshotData['goalsAway']);
    _scoreHalftimeHome = castToType<int>(snapshotData['scoreHalftimeHome']);
    _scoreHalftimeAway = castToType<int>(snapshotData['scoreHalftimeAway']);
    _scoreFulltimeHome = castToType<int>(snapshotData['scoreFulltimeHome']);
    _scoreFulltimeAway = castToType<int>(snapshotData['scoreFulltimeAway']);
    _scoreExtratimeHome = castToType<int>(snapshotData['scoreExtratimeHome']);
    _scoreExtratimeAway = castToType<int>(snapshotData['scoreExtratimeAway']);
    _scorePenaltyHome = castToType<int>(snapshotData['scorePenaltyHome']);
    _scorePenaltyAway = castToType<int>(snapshotData['scorePenaltyAway']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Matches');

  static Stream<MatchesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MatchesRecord.fromSnapshot(s));

  static Future<MatchesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MatchesRecord.fromSnapshot(s));

  static MatchesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MatchesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MatchesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MatchesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MatchesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MatchesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMatchesRecordData({
  String? matcheID,
  int? fixtureID,
  DateTime? fixtureDate,
  int? fixtureTimestamp,
  int? fixturePeriodFirst,
  int? fixturePeriodSecond,
  DocumentReference? tournamentsRef,
  String? tournamentseasonYear,
  String? tournamentName,
  String? tournamentNameAr,
  String? tournamentType,
  String? tournamentLogo,
  bool? tournamentroleHomeWin,
  int? tournamentroleHomeWinPoints,
  bool? tournamentroleAwayWin,
  int? tournamentroleAwayWinPoints,
  bool? tournamentroleDraw,
  int? tournamentroleDrawPoints,
  bool? tournamentroleHomeGoals,
  int? tournamentroleHomeGoalsPoints,
  bool? tournamentroleAwayGoals,
  int? tournamentroleAwayGoalsPoints,
  DocumentReference? teamHomeRef,
  String? teamHomeName,
  String? teamHomeNameAr,
  String? teamHomeCode,
  String? teamHomeLogo,
  bool? teamHomeWinner,
  DocumentReference? teamAwayRef,
  String? teamAwayName,
  String? teamAwayNameAr,
  String? teamAwayCode,
  String? teamHAwayLogo,
  bool? teamAwayWinner,
  String? fixtureStatusGeneral,
  String? fixtureStatusLong,
  String? fixtureStatusShort,
  String? fixtureStatusElapsed,
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
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'MatcheID': matcheID,
      'fixtureID': fixtureID,
      'fixtureDate': fixtureDate,
      'fixtureTimestamp': fixtureTimestamp,
      'fixturePeriodFirst': fixturePeriodFirst,
      'fixturePeriodSecond': fixturePeriodSecond,
      'tournamentsRef': tournamentsRef,
      'tournamentseasonYear': tournamentseasonYear,
      'tournamentName': tournamentName,
      'tournamentNameAr': tournamentNameAr,
      'tournamentType': tournamentType,
      'tournamentLogo': tournamentLogo,
      'tournamentroleHomeWin': tournamentroleHomeWin,
      'tournamentroleHomeWinPoints': tournamentroleHomeWinPoints,
      'tournamentroleAwayWin': tournamentroleAwayWin,
      'tournamentroleAwayWinPoints': tournamentroleAwayWinPoints,
      'tournamentroleDraw': tournamentroleDraw,
      'tournamentroleDrawPoints': tournamentroleDrawPoints,
      'tournamentroleHomeGoals': tournamentroleHomeGoals,
      'tournamentroleHomeGoalsPoints': tournamentroleHomeGoalsPoints,
      'tournamentroleAwayGoals': tournamentroleAwayGoals,
      'tournamentroleAwayGoalsPoints': tournamentroleAwayGoalsPoints,
      'teamHomeRef': teamHomeRef,
      'teamHomeName': teamHomeName,
      'teamHomeNameAr': teamHomeNameAr,
      'teamHomeCode': teamHomeCode,
      'teamHomeLogo': teamHomeLogo,
      'teamHomeWinner': teamHomeWinner,
      'teamAwayRef': teamAwayRef,
      'teamAwayName': teamAwayName,
      'teamAwayNameAr': teamAwayNameAr,
      'teamAwayCode': teamAwayCode,
      'teamHAwayLogo': teamHAwayLogo,
      'teamAwayWinner': teamAwayWinner,
      'fixtureStatusGeneral': fixtureStatusGeneral,
      'fixtureStatusLong': fixtureStatusLong,
      'fixtureStatusShort': fixtureStatusShort,
      'fixtureStatusElapsed': fixtureStatusElapsed,
      'goalsHome': goalsHome,
      'goalsAway': goalsAway,
      'scoreHalftimeHome': scoreHalftimeHome,
      'scoreHalftimeAway': scoreHalftimeAway,
      'scoreFulltimeHome': scoreFulltimeHome,
      'scoreFulltimeAway': scoreFulltimeAway,
      'scoreExtratimeHome': scoreExtratimeHome,
      'scoreExtratimeAway': scoreExtratimeAway,
      'scorePenaltyHome': scorePenaltyHome,
      'scorePenaltyAway': scorePenaltyAway,
    }.withoutNulls,
  );

  return firestoreData;
}

class MatchesRecordDocumentEquality implements Equality<MatchesRecord> {
  const MatchesRecordDocumentEquality();

  @override
  bool equals(MatchesRecord? e1, MatchesRecord? e2) {
    return e1?.matcheID == e2?.matcheID &&
        e1?.fixtureID == e2?.fixtureID &&
        e1?.fixtureDate == e2?.fixtureDate &&
        e1?.fixtureTimestamp == e2?.fixtureTimestamp &&
        e1?.fixturePeriodFirst == e2?.fixturePeriodFirst &&
        e1?.fixturePeriodSecond == e2?.fixturePeriodSecond &&
        e1?.tournamentsRef == e2?.tournamentsRef &&
        e1?.tournamentseasonYear == e2?.tournamentseasonYear &&
        e1?.tournamentName == e2?.tournamentName &&
        e1?.tournamentNameAr == e2?.tournamentNameAr &&
        e1?.tournamentType == e2?.tournamentType &&
        e1?.tournamentLogo == e2?.tournamentLogo &&
        e1?.tournamentroleHomeWin == e2?.tournamentroleHomeWin &&
        e1?.tournamentroleHomeWinPoints == e2?.tournamentroleHomeWinPoints &&
        e1?.tournamentroleAwayWin == e2?.tournamentroleAwayWin &&
        e1?.tournamentroleAwayWinPoints == e2?.tournamentroleAwayWinPoints &&
        e1?.tournamentroleDraw == e2?.tournamentroleDraw &&
        e1?.tournamentroleDrawPoints == e2?.tournamentroleDrawPoints &&
        e1?.tournamentroleHomeGoals == e2?.tournamentroleHomeGoals &&
        e1?.tournamentroleHomeGoalsPoints ==
            e2?.tournamentroleHomeGoalsPoints &&
        e1?.tournamentroleAwayGoals == e2?.tournamentroleAwayGoals &&
        e1?.tournamentroleAwayGoalsPoints ==
            e2?.tournamentroleAwayGoalsPoints &&
        e1?.teamHomeRef == e2?.teamHomeRef &&
        e1?.teamHomeName == e2?.teamHomeName &&
        e1?.teamHomeNameAr == e2?.teamHomeNameAr &&
        e1?.teamHomeCode == e2?.teamHomeCode &&
        e1?.teamHomeLogo == e2?.teamHomeLogo &&
        e1?.teamHomeWinner == e2?.teamHomeWinner &&
        e1?.teamAwayRef == e2?.teamAwayRef &&
        e1?.teamAwayName == e2?.teamAwayName &&
        e1?.teamAwayNameAr == e2?.teamAwayNameAr &&
        e1?.teamAwayCode == e2?.teamAwayCode &&
        e1?.teamHAwayLogo == e2?.teamHAwayLogo &&
        e1?.teamAwayWinner == e2?.teamAwayWinner &&
        e1?.fixtureStatusGeneral == e2?.fixtureStatusGeneral &&
        e1?.fixtureStatusLong == e2?.fixtureStatusLong &&
        e1?.fixtureStatusShort == e2?.fixtureStatusShort &&
        e1?.fixtureStatusElapsed == e2?.fixtureStatusElapsed &&
        e1?.goalsHome == e2?.goalsHome &&
        e1?.goalsAway == e2?.goalsAway &&
        e1?.scoreHalftimeHome == e2?.scoreHalftimeHome &&
        e1?.scoreHalftimeAway == e2?.scoreHalftimeAway &&
        e1?.scoreFulltimeHome == e2?.scoreFulltimeHome &&
        e1?.scoreFulltimeAway == e2?.scoreFulltimeAway &&
        e1?.scoreExtratimeHome == e2?.scoreExtratimeHome &&
        e1?.scoreExtratimeAway == e2?.scoreExtratimeAway &&
        e1?.scorePenaltyHome == e2?.scorePenaltyHome &&
        e1?.scorePenaltyAway == e2?.scorePenaltyAway;
  }

  @override
  int hash(MatchesRecord? e) => const ListEquality().hash([
        e?.matcheID,
        e?.fixtureID,
        e?.fixtureDate,
        e?.fixtureTimestamp,
        e?.fixturePeriodFirst,
        e?.fixturePeriodSecond,
        e?.tournamentsRef,
        e?.tournamentseasonYear,
        e?.tournamentName,
        e?.tournamentNameAr,
        e?.tournamentType,
        e?.tournamentLogo,
        e?.tournamentroleHomeWin,
        e?.tournamentroleHomeWinPoints,
        e?.tournamentroleAwayWin,
        e?.tournamentroleAwayWinPoints,
        e?.tournamentroleDraw,
        e?.tournamentroleDrawPoints,
        e?.tournamentroleHomeGoals,
        e?.tournamentroleHomeGoalsPoints,
        e?.tournamentroleAwayGoals,
        e?.tournamentroleAwayGoalsPoints,
        e?.teamHomeRef,
        e?.teamHomeName,
        e?.teamHomeNameAr,
        e?.teamHomeCode,
        e?.teamHomeLogo,
        e?.teamHomeWinner,
        e?.teamAwayRef,
        e?.teamAwayName,
        e?.teamAwayNameAr,
        e?.teamAwayCode,
        e?.teamHAwayLogo,
        e?.teamAwayWinner,
        e?.fixtureStatusGeneral,
        e?.fixtureStatusLong,
        e?.fixtureStatusShort,
        e?.fixtureStatusElapsed,
        e?.goalsHome,
        e?.goalsAway,
        e?.scoreHalftimeHome,
        e?.scoreHalftimeAway,
        e?.scoreFulltimeHome,
        e?.scoreFulltimeAway,
        e?.scoreExtratimeHome,
        e?.scoreExtratimeAway,
        e?.scorePenaltyHome,
        e?.scorePenaltyAway
      ]);

  @override
  bool isValidKey(Object? o) => o is MatchesRecord;
}
