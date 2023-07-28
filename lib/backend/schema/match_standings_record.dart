import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MatchStandingsRecord extends FirestoreRecord {
  MatchStandingsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "tournamentRef" field.
  DocumentReference? _tournamentRef;
  DocumentReference? get tournamentRef => _tournamentRef;
  bool hasTournamentRef() => _tournamentRef != null;

  // "matcheRef" field.
  DocumentReference? _matcheRef;
  DocumentReference? get matcheRef => _matcheRef;
  bool hasMatcheRef() => _matcheRef != null;

  // "userRef" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "userName" field.
  String? _userName;
  String get userName => _userName ?? '';
  bool hasUserName() => _userName != null;

  // "homeGoals" field.
  int? _homeGoals;
  int get homeGoals => _homeGoals ?? 0;
  bool hasHomeGoals() => _homeGoals != null;

  // "awayGoals" field.
  int? _awayGoals;
  int get awayGoals => _awayGoals ?? 0;
  bool hasAwayGoals() => _awayGoals != null;

  // "newPosition" field.
  int? _newPosition;
  int get newPosition => _newPosition ?? 0;
  bool hasNewPosition() => _newPosition != null;

  // "oldPosition" field.
  int? _oldPosition;
  int get oldPosition => _oldPosition ?? 0;
  bool hasOldPosition() => _oldPosition != null;

  // "homeGoalsPoints" field.
  int? _homeGoalsPoints;
  int get homeGoalsPoints => _homeGoalsPoints ?? 0;
  bool hasHomeGoalsPoints() => _homeGoalsPoints != null;

  // "awayGoalsPoints" field.
  int? _awayGoalsPoints;
  int get awayGoalsPoints => _awayGoalsPoints ?? 0;
  bool hasAwayGoalsPoints() => _awayGoalsPoints != null;

  // "drawPoints" field.
  int? _drawPoints;
  int get drawPoints => _drawPoints ?? 0;
  bool hasDrawPoints() => _drawPoints != null;

  // "wonPoints" field.
  int? _wonPoints;
  int get wonPoints => _wonPoints ?? 0;
  bool hasWonPoints() => _wonPoints != null;

  // "totalPoints" field.
  int? _totalPoints;
  int get totalPoints => _totalPoints ?? 0;
  bool hasTotalPoints() => _totalPoints != null;

  // "userUpdate" field.
  int? _userUpdate;
  int get userUpdate => _userUpdate ?? 0;
  bool hasUserUpdate() => _userUpdate != null;

  void _initializeFields() {
    _tournamentRef = snapshotData['tournamentRef'] as DocumentReference?;
    _matcheRef = snapshotData['matcheRef'] as DocumentReference?;
    _userRef = snapshotData['userRef'] as DocumentReference?;
    _userName = snapshotData['userName'] as String?;
    _homeGoals = castToType<int>(snapshotData['homeGoals']);
    _awayGoals = castToType<int>(snapshotData['awayGoals']);
    _newPosition = castToType<int>(snapshotData['newPosition']);
    _oldPosition = castToType<int>(snapshotData['oldPosition']);
    _homeGoalsPoints = castToType<int>(snapshotData['homeGoalsPoints']);
    _awayGoalsPoints = castToType<int>(snapshotData['awayGoalsPoints']);
    _drawPoints = castToType<int>(snapshotData['drawPoints']);
    _wonPoints = castToType<int>(snapshotData['wonPoints']);
    _totalPoints = castToType<int>(snapshotData['totalPoints']);
    _userUpdate = castToType<int>(snapshotData['userUpdate']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('MatchStandings');

  static Stream<MatchStandingsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MatchStandingsRecord.fromSnapshot(s));

  static Future<MatchStandingsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MatchStandingsRecord.fromSnapshot(s));

  static MatchStandingsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MatchStandingsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MatchStandingsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MatchStandingsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MatchStandingsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MatchStandingsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMatchStandingsRecordData({
  DocumentReference? tournamentRef,
  DocumentReference? matcheRef,
  DocumentReference? userRef,
  String? userName,
  int? homeGoals,
  int? awayGoals,
  int? newPosition,
  int? oldPosition,
  int? homeGoalsPoints,
  int? awayGoalsPoints,
  int? drawPoints,
  int? wonPoints,
  int? totalPoints,
  int? userUpdate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'tournamentRef': tournamentRef,
      'matcheRef': matcheRef,
      'userRef': userRef,
      'userName': userName,
      'homeGoals': homeGoals,
      'awayGoals': awayGoals,
      'newPosition': newPosition,
      'oldPosition': oldPosition,
      'homeGoalsPoints': homeGoalsPoints,
      'awayGoalsPoints': awayGoalsPoints,
      'drawPoints': drawPoints,
      'wonPoints': wonPoints,
      'totalPoints': totalPoints,
      'userUpdate': userUpdate,
    }.withoutNulls,
  );

  return firestoreData;
}

class MatchStandingsRecordDocumentEquality
    implements Equality<MatchStandingsRecord> {
  const MatchStandingsRecordDocumentEquality();

  @override
  bool equals(MatchStandingsRecord? e1, MatchStandingsRecord? e2) {
    return e1?.tournamentRef == e2?.tournamentRef &&
        e1?.matcheRef == e2?.matcheRef &&
        e1?.userRef == e2?.userRef &&
        e1?.userName == e2?.userName &&
        e1?.homeGoals == e2?.homeGoals &&
        e1?.awayGoals == e2?.awayGoals &&
        e1?.newPosition == e2?.newPosition &&
        e1?.oldPosition == e2?.oldPosition &&
        e1?.homeGoalsPoints == e2?.homeGoalsPoints &&
        e1?.awayGoalsPoints == e2?.awayGoalsPoints &&
        e1?.drawPoints == e2?.drawPoints &&
        e1?.wonPoints == e2?.wonPoints &&
        e1?.totalPoints == e2?.totalPoints &&
        e1?.userUpdate == e2?.userUpdate;
  }

  @override
  int hash(MatchStandingsRecord? e) => const ListEquality().hash([
        e?.tournamentRef,
        e?.matcheRef,
        e?.userRef,
        e?.userName,
        e?.homeGoals,
        e?.awayGoals,
        e?.newPosition,
        e?.oldPosition,
        e?.homeGoalsPoints,
        e?.awayGoalsPoints,
        e?.drawPoints,
        e?.wonPoints,
        e?.totalPoints,
        e?.userUpdate
      ]);

  @override
  bool isValidKey(Object? o) => o is MatchStandingsRecord;
}
