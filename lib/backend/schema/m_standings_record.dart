import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MStandingsRecord extends FirestoreRecord {
  MStandingsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "userID" field.
  String? _userID;
  String get userID => _userID ?? '';
  bool hasUserID() => _userID != null;

  // "userName" field.
  String? _userName;
  String get userName => _userName ?? '';
  bool hasUserName() => _userName != null;

  // "rank" field.
  int? _rank;
  int get rank => _rank ?? 0;
  bool hasRank() => _rank != null;

  // "oldRank" field.
  int? _oldRank;
  int get oldRank => _oldRank ?? 0;
  bool hasOldRank() => _oldRank != null;

  // "goalHomePoints" field.
  int? _goalHomePoints;
  int get goalHomePoints => _goalHomePoints ?? 0;
  bool hasGoalHomePoints() => _goalHomePoints != null;

  // "goalAwayPoints" field.
  int? _goalAwayPoints;
  int get goalAwayPoints => _goalAwayPoints ?? 0;
  bool hasGoalAwayPoints() => _goalAwayPoints != null;

  // "winPoints" field.
  int? _winPoints;
  int get winPoints => _winPoints ?? 0;
  bool hasWinPoints() => _winPoints != null;

  // "drawPoints" field.
  int? _drawPoints;
  int get drawPoints => _drawPoints ?? 0;
  bool hasDrawPoints() => _drawPoints != null;

  // "doublePoints" field.
  int? _doublePoints;
  int get doublePoints => _doublePoints ?? 0;
  bool hasDoublePoints() => _doublePoints != null;

  // "totalPoints" field.
  int? _totalPoints;
  int get totalPoints => _totalPoints ?? 0;
  bool hasTotalPoints() => _totalPoints != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _userID = snapshotData['userID'] as String?;
    _userName = snapshotData['userName'] as String?;
    _rank = castToType<int>(snapshotData['rank']);
    _oldRank = castToType<int>(snapshotData['oldRank']);
    _goalHomePoints = castToType<int>(snapshotData['goalHomePoints']);
    _goalAwayPoints = castToType<int>(snapshotData['goalAwayPoints']);
    _winPoints = castToType<int>(snapshotData['winPoints']);
    _drawPoints = castToType<int>(snapshotData['drawPoints']);
    _doublePoints = castToType<int>(snapshotData['doublePoints']);
    _totalPoints = castToType<int>(snapshotData['totalPoints']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('MStandings')
          : FirebaseFirestore.instance.collectionGroup('MStandings');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('MStandings').doc();

  static Stream<MStandingsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MStandingsRecord.fromSnapshot(s));

  static Future<MStandingsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MStandingsRecord.fromSnapshot(s));

  static MStandingsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MStandingsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MStandingsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MStandingsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MStandingsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MStandingsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMStandingsRecordData({
  String? userID,
  String? userName,
  int? rank,
  int? oldRank,
  int? goalHomePoints,
  int? goalAwayPoints,
  int? winPoints,
  int? drawPoints,
  int? doublePoints,
  int? totalPoints,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userID': userID,
      'userName': userName,
      'rank': rank,
      'oldRank': oldRank,
      'goalHomePoints': goalHomePoints,
      'goalAwayPoints': goalAwayPoints,
      'winPoints': winPoints,
      'drawPoints': drawPoints,
      'doublePoints': doublePoints,
      'totalPoints': totalPoints,
    }.withoutNulls,
  );

  return firestoreData;
}

class MStandingsRecordDocumentEquality implements Equality<MStandingsRecord> {
  const MStandingsRecordDocumentEquality();

  @override
  bool equals(MStandingsRecord? e1, MStandingsRecord? e2) {
    return e1?.userID == e2?.userID &&
        e1?.userName == e2?.userName &&
        e1?.rank == e2?.rank &&
        e1?.oldRank == e2?.oldRank &&
        e1?.goalHomePoints == e2?.goalHomePoints &&
        e1?.goalAwayPoints == e2?.goalAwayPoints &&
        e1?.winPoints == e2?.winPoints &&
        e1?.drawPoints == e2?.drawPoints &&
        e1?.doublePoints == e2?.doublePoints &&
        e1?.totalPoints == e2?.totalPoints;
  }

  @override
  int hash(MStandingsRecord? e) => const ListEquality().hash([
        e?.userID,
        e?.userName,
        e?.rank,
        e?.oldRank,
        e?.goalHomePoints,
        e?.goalAwayPoints,
        e?.winPoints,
        e?.drawPoints,
        e?.doublePoints,
        e?.totalPoints
      ]);

  @override
  bool isValidKey(Object? o) => o is MStandingsRecord;
}
