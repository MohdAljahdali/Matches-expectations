import 'dart:async';

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
  String? _fixturePeriodFirst;
  String get fixturePeriodFirst => _fixturePeriodFirst ?? '';
  bool hasFixturePeriodFirst() => _fixturePeriodFirst != null;

  // "fixturePeriodSecond" field.
  String? _fixturePeriodSecond;
  String get fixturePeriodSecond => _fixturePeriodSecond ?? '';
  bool hasFixturePeriodSecond() => _fixturePeriodSecond != null;

  // "leagueRound" field.
  String? _leagueRound;
  String get leagueRound => _leagueRound ?? '';
  bool hasLeagueRound() => _leagueRound != null;

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

  // "fixtureStatusLong" field.
  String? _fixtureStatusLong;
  String get fixtureStatusLong => _fixtureStatusLong ?? '';
  bool hasFixtureStatusLong() => _fixtureStatusLong != null;

  // "fixtureStatusShort" field.
  String? _fixtureStatusShort;
  String get fixtureStatusShort => _fixtureStatusShort ?? '';
  bool hasFixtureStatusShort() => _fixtureStatusShort != null;

  // "fixtureStatusElapsed" field.
  int? _fixtureStatusElapsed;
  int get fixtureStatusElapsed => _fixtureStatusElapsed ?? 0;
  bool hasFixtureStatusElapsed() => _fixtureStatusElapsed != null;

  // "isActive" field.
  bool? _isActive;
  bool get isActive => _isActive ?? false;
  bool hasIsActive() => _isActive != null;

  // "isDouble" field.
  bool? _isDouble;
  bool get isDouble => _isDouble ?? false;
  bool hasIsDouble() => _isDouble != null;

  void _initializeFields() {
    _fixtureID = snapshotData['fixtureID'] as int?;
    _fixtureDate = snapshotData['fixtureDate'] as DateTime?;
    _fixtureTimestamp = snapshotData['fixtureTimestamp'] as int?;
    _fixturePeriodFirst = snapshotData['fixturePeriodFirst'] as String?;
    _fixturePeriodSecond = snapshotData['fixturePeriodSecond'] as String?;
    _leagueRound = snapshotData['leagueRound'] as String?;
    _goalsHome = snapshotData['goalsHome'] as int?;
    _goalsAway = snapshotData['goalsAway'] as int?;
    _scoreHalftimeHome = snapshotData['scoreHalftimeHome'] as int?;
    _scoreHalftimeAway = snapshotData['scoreHalftimeAway'] as int?;
    _scoreFulltimeHome = snapshotData['scoreFulltimeHome'] as int?;
    _scoreExtratimeHome = snapshotData['scoreExtratimeHome'] as int?;
    _scoreExtratimeAway = snapshotData['scoreExtratimeAway'] as int?;
    _scorePenaltyHome = snapshotData['scorePenaltyHome'] as int?;
    _scorePenaltyAway = snapshotData['scorePenaltyAway'] as int?;
    _fixtureStatusLong = snapshotData['fixtureStatusLong'] as String?;
    _fixtureStatusShort = snapshotData['fixtureStatusShort'] as String?;
    _fixtureStatusElapsed = snapshotData['fixtureStatusElapsed'] as int?;
    _isActive = snapshotData['isActive'] as bool?;
    _isDouble = snapshotData['isDouble'] as bool?;
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
  int? fixtureID,
  DateTime? fixtureDate,
  int? fixtureTimestamp,
  String? fixturePeriodFirst,
  String? fixturePeriodSecond,
  String? leagueRound,
  int? goalsHome,
  int? goalsAway,
  int? scoreHalftimeHome,
  int? scoreHalftimeAway,
  int? scoreFulltimeHome,
  int? scoreExtratimeHome,
  int? scoreExtratimeAway,
  int? scorePenaltyHome,
  int? scorePenaltyAway,
  String? fixtureStatusLong,
  String? fixtureStatusShort,
  int? fixtureStatusElapsed,
  bool? isActive,
  bool? isDouble,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'fixtureID': fixtureID,
      'fixtureDate': fixtureDate,
      'fixtureTimestamp': fixtureTimestamp,
      'fixturePeriodFirst': fixturePeriodFirst,
      'fixturePeriodSecond': fixturePeriodSecond,
      'leagueRound': leagueRound,
      'goalsHome': goalsHome,
      'goalsAway': goalsAway,
      'scoreHalftimeHome': scoreHalftimeHome,
      'scoreHalftimeAway': scoreHalftimeAway,
      'scoreFulltimeHome': scoreFulltimeHome,
      'scoreExtratimeHome': scoreExtratimeHome,
      'scoreExtratimeAway': scoreExtratimeAway,
      'scorePenaltyHome': scorePenaltyHome,
      'scorePenaltyAway': scorePenaltyAway,
      'fixtureStatusLong': fixtureStatusLong,
      'fixtureStatusShort': fixtureStatusShort,
      'fixtureStatusElapsed': fixtureStatusElapsed,
      'isActive': isActive,
      'isDouble': isDouble,
    }.withoutNulls,
  );

  return firestoreData;
}
