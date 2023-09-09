import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FixturesRecord extends FirestoreRecord {
  FixturesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  bool hasId() => _id != null;

  // "timezone" field.
  String? _timezone;
  String get timezone => _timezone ?? '';
  bool hasTimezone() => _timezone != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  bool hasTimestamp() => _timestamp != null;

  // "firstPeriod" field.
  DateTime? _firstPeriod;
  DateTime? get firstPeriod => _firstPeriod;
  bool hasFirstPeriod() => _firstPeriod != null;

  // "firstPeriodTamp" field.
  int? _firstPeriodTamp;
  int get firstPeriodTamp => _firstPeriodTamp ?? 0;
  bool hasFirstPeriodTamp() => _firstPeriodTamp != null;

  // "secondPeriod" field.
  DateTime? _secondPeriod;
  DateTime? get secondPeriod => _secondPeriod;
  bool hasSecondPeriod() => _secondPeriod != null;

  // "secondPeriodTamp" field.
  int? _secondPeriodTamp;
  int get secondPeriodTamp => _secondPeriodTamp ?? 0;
  bool hasSecondPeriodTamp() => _secondPeriodTamp != null;

  // "tournamentRef" field.
  DocumentReference? _tournamentRef;
  DocumentReference? get tournamentRef => _tournamentRef;
  bool hasTournamentRef() => _tournamentRef != null;

  // "tournamentID" field.
  int? _tournamentID;
  int get tournamentID => _tournamentID ?? 0;
  bool hasTournamentID() => _tournamentID != null;

  // "tournamentSeasonYear" field.
  int? _tournamentSeasonYear;
  int get tournamentSeasonYear => _tournamentSeasonYear ?? 0;
  bool hasTournamentSeasonYear() => _tournamentSeasonYear != null;

  // "statusShort" field.
  String? _statusShort;
  String get statusShort => _statusShort ?? '';
  bool hasStatusShort() => _statusShort != null;

  // "statusLongEn" field.
  String? _statusLongEn;
  String get statusLongEn => _statusLongEn ?? '';
  bool hasStatusLongEn() => _statusLongEn != null;

  // "statusLongAr" field.
  String? _statusLongAr;
  String get statusLongAr => _statusLongAr ?? '';
  bool hasStatusLongAr() => _statusLongAr != null;

  // "statusGeneralEn" field.
  String? _statusGeneralEn;
  String get statusGeneralEn => _statusGeneralEn ?? '';
  bool hasStatusGeneralEn() => _statusGeneralEn != null;

  // "statusGeneralAr" field.
  String? _statusGeneralAr;
  String get statusGeneralAr => _statusGeneralAr ?? '';
  bool hasStatusGeneralAr() => _statusGeneralAr != null;

  // "statusElapsed" field.
  int? _statusElapsed;
  int get statusElapsed => _statusElapsed ?? 0;
  bool hasStatusElapsed() => _statusElapsed != null;

  // "venueRef" field.
  DocumentReference? _venueRef;
  DocumentReference? get venueRef => _venueRef;
  bool hasVenueRef() => _venueRef != null;

  // "teamHomeRef" field.
  DocumentReference? _teamHomeRef;
  DocumentReference? get teamHomeRef => _teamHomeRef;
  bool hasTeamHomeRef() => _teamHomeRef != null;

  // "teamHomeWinner" field.
  bool? _teamHomeWinner;
  bool get teamHomeWinner => _teamHomeWinner ?? false;
  bool hasTeamHomeWinner() => _teamHomeWinner != null;

  // "teamAwayRef" field.
  DocumentReference? _teamAwayRef;
  DocumentReference? get teamAwayRef => _teamAwayRef;
  bool hasTeamAwayRef() => _teamAwayRef != null;

  // "teamAwayWinner" field.
  bool? _teamAwayWinner;
  bool get teamAwayWinner => _teamAwayWinner ?? false;
  bool hasTeamAwayWinner() => _teamAwayWinner != null;

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
    _id = castToType<int>(snapshotData['id']);
    _timezone = snapshotData['timezone'] as String?;
    _date = snapshotData['date'] as DateTime?;
    _timestamp = snapshotData['timestamp'] as DateTime?;
    _firstPeriod = snapshotData['firstPeriod'] as DateTime?;
    _firstPeriodTamp = castToType<int>(snapshotData['firstPeriodTamp']);
    _secondPeriod = snapshotData['secondPeriod'] as DateTime?;
    _secondPeriodTamp = castToType<int>(snapshotData['secondPeriodTamp']);
    _tournamentRef = snapshotData['tournamentRef'] as DocumentReference?;
    _tournamentID = castToType<int>(snapshotData['tournamentID']);
    _tournamentSeasonYear =
        castToType<int>(snapshotData['tournamentSeasonYear']);
    _statusShort = snapshotData['statusShort'] as String?;
    _statusLongEn = snapshotData['statusLongEn'] as String?;
    _statusLongAr = snapshotData['statusLongAr'] as String?;
    _statusGeneralEn = snapshotData['statusGeneralEn'] as String?;
    _statusGeneralAr = snapshotData['statusGeneralAr'] as String?;
    _statusElapsed = castToType<int>(snapshotData['statusElapsed']);
    _venueRef = snapshotData['venueRef'] as DocumentReference?;
    _teamHomeRef = snapshotData['teamHomeRef'] as DocumentReference?;
    _teamHomeWinner = snapshotData['teamHomeWinner'] as bool?;
    _teamAwayRef = snapshotData['teamAwayRef'] as DocumentReference?;
    _teamAwayWinner = snapshotData['teamAwayWinner'] as bool?;
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
      FirebaseFirestore.instance.collection('fixtures');

  static Stream<FixturesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FixturesRecord.fromSnapshot(s));

  static Future<FixturesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FixturesRecord.fromSnapshot(s));

  static FixturesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FixturesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FixturesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FixturesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FixturesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FixturesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFixturesRecordData({
  int? id,
  String? timezone,
  DateTime? date,
  DateTime? timestamp,
  DateTime? firstPeriod,
  int? firstPeriodTamp,
  DateTime? secondPeriod,
  int? secondPeriodTamp,
  DocumentReference? tournamentRef,
  int? tournamentID,
  int? tournamentSeasonYear,
  String? statusShort,
  String? statusLongEn,
  String? statusLongAr,
  String? statusGeneralEn,
  String? statusGeneralAr,
  int? statusElapsed,
  DocumentReference? venueRef,
  DocumentReference? teamHomeRef,
  bool? teamHomeWinner,
  DocumentReference? teamAwayRef,
  bool? teamAwayWinner,
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
      'id': id,
      'timezone': timezone,
      'date': date,
      'timestamp': timestamp,
      'firstPeriod': firstPeriod,
      'firstPeriodTamp': firstPeriodTamp,
      'secondPeriod': secondPeriod,
      'secondPeriodTamp': secondPeriodTamp,
      'tournamentRef': tournamentRef,
      'tournamentID': tournamentID,
      'tournamentSeasonYear': tournamentSeasonYear,
      'statusShort': statusShort,
      'statusLongEn': statusLongEn,
      'statusLongAr': statusLongAr,
      'statusGeneralEn': statusGeneralEn,
      'statusGeneralAr': statusGeneralAr,
      'statusElapsed': statusElapsed,
      'venueRef': venueRef,
      'teamHomeRef': teamHomeRef,
      'teamHomeWinner': teamHomeWinner,
      'teamAwayRef': teamAwayRef,
      'teamAwayWinner': teamAwayWinner,
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

class FixturesRecordDocumentEquality implements Equality<FixturesRecord> {
  const FixturesRecordDocumentEquality();

  @override
  bool equals(FixturesRecord? e1, FixturesRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.timezone == e2?.timezone &&
        e1?.date == e2?.date &&
        e1?.timestamp == e2?.timestamp &&
        e1?.firstPeriod == e2?.firstPeriod &&
        e1?.firstPeriodTamp == e2?.firstPeriodTamp &&
        e1?.secondPeriod == e2?.secondPeriod &&
        e1?.secondPeriodTamp == e2?.secondPeriodTamp &&
        e1?.tournamentRef == e2?.tournamentRef &&
        e1?.tournamentID == e2?.tournamentID &&
        e1?.tournamentSeasonYear == e2?.tournamentSeasonYear &&
        e1?.statusShort == e2?.statusShort &&
        e1?.statusLongEn == e2?.statusLongEn &&
        e1?.statusLongAr == e2?.statusLongAr &&
        e1?.statusGeneralEn == e2?.statusGeneralEn &&
        e1?.statusGeneralAr == e2?.statusGeneralAr &&
        e1?.statusElapsed == e2?.statusElapsed &&
        e1?.venueRef == e2?.venueRef &&
        e1?.teamHomeRef == e2?.teamHomeRef &&
        e1?.teamHomeWinner == e2?.teamHomeWinner &&
        e1?.teamAwayRef == e2?.teamAwayRef &&
        e1?.teamAwayWinner == e2?.teamAwayWinner &&
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
  int hash(FixturesRecord? e) => const ListEquality().hash([
        e?.id,
        e?.timezone,
        e?.date,
        e?.timestamp,
        e?.firstPeriod,
        e?.firstPeriodTamp,
        e?.secondPeriod,
        e?.secondPeriodTamp,
        e?.tournamentRef,
        e?.tournamentID,
        e?.tournamentSeasonYear,
        e?.statusShort,
        e?.statusLongEn,
        e?.statusLongAr,
        e?.statusGeneralEn,
        e?.statusGeneralAr,
        e?.statusElapsed,
        e?.venueRef,
        e?.teamHomeRef,
        e?.teamHomeWinner,
        e?.teamAwayRef,
        e?.teamAwayWinner,
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
  bool isValidKey(Object? o) => o is FixturesRecord;
}
