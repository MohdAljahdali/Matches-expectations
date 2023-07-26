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

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "rank" field.
  int? _rank;
  int get rank => _rank ?? 0;
  bool hasRank() => _rank != null;

  // "oldRank" field.
  int? _oldRank;
  int get oldRank => _oldRank ?? 0;
  bool hasOldRank() => _oldRank != null;

  // "homeGoals" field.
  int? _homeGoals;
  int get homeGoals => _homeGoals ?? 0;
  bool hasHomeGoals() => _homeGoals != null;

  // "awayGoals" field.
  int? _awayGoals;
  int get awayGoals => _awayGoals ?? 0;
  bool hasAwayGoals() => _awayGoals != null;

  // "homeGoalsPoints" field.
  int? _homeGoalsPoints;
  int get homeGoalsPoints => _homeGoalsPoints ?? 0;
  bool hasHomeGoalsPoints() => _homeGoalsPoints != null;

  // "awayGoalsPoints" field.
  int? _awayGoalsPoints;
  int get awayGoalsPoints => _awayGoalsPoints ?? 0;
  bool hasAwayGoalsPoints() => _awayGoalsPoints != null;

  // "winPoints" field.
  int? _winPoints;
  int get winPoints => _winPoints ?? 0;
  bool hasWinPoints() => _winPoints != null;

  // "drawPoints" field.
  int? _drawPoints;
  int get drawPoints => _drawPoints ?? 0;
  bool hasDrawPoints() => _drawPoints != null;

  // "totalPoints" field.
  int? _totalPoints;
  int get totalPoints => _totalPoints ?? 0;
  bool hasTotalPoints() => _totalPoints != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _rank = castToType<int>(snapshotData['rank']);
    _oldRank = castToType<int>(snapshotData['oldRank']);
    _homeGoals = castToType<int>(snapshotData['homeGoals']);
    _awayGoals = castToType<int>(snapshotData['awayGoals']);
    _homeGoalsPoints = castToType<int>(snapshotData['homeGoalsPoints']);
    _awayGoalsPoints = castToType<int>(snapshotData['awayGoalsPoints']);
    _winPoints = castToType<int>(snapshotData['winPoints']);
    _drawPoints = castToType<int>(snapshotData['drawPoints']);
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
  String? name,
  int? rank,
  int? oldRank,
  int? homeGoals,
  int? awayGoals,
  int? homeGoalsPoints,
  int? awayGoalsPoints,
  int? winPoints,
  int? drawPoints,
  int? totalPoints,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'rank': rank,
      'oldRank': oldRank,
      'homeGoals': homeGoals,
      'awayGoals': awayGoals,
      'homeGoalsPoints': homeGoalsPoints,
      'awayGoalsPoints': awayGoalsPoints,
      'winPoints': winPoints,
      'drawPoints': drawPoints,
      'totalPoints': totalPoints,
    }.withoutNulls,
  );

  return firestoreData;
}

class MStandingsRecordDocumentEquality implements Equality<MStandingsRecord> {
  const MStandingsRecordDocumentEquality();

  @override
  bool equals(MStandingsRecord? e1, MStandingsRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.rank == e2?.rank &&
        e1?.oldRank == e2?.oldRank &&
        e1?.homeGoals == e2?.homeGoals &&
        e1?.awayGoals == e2?.awayGoals &&
        e1?.homeGoalsPoints == e2?.homeGoalsPoints &&
        e1?.awayGoalsPoints == e2?.awayGoalsPoints &&
        e1?.winPoints == e2?.winPoints &&
        e1?.drawPoints == e2?.drawPoints &&
        e1?.totalPoints == e2?.totalPoints;
  }

  @override
  int hash(MStandingsRecord? e) => const ListEquality().hash([
        e?.name,
        e?.rank,
        e?.oldRank,
        e?.homeGoals,
        e?.awayGoals,
        e?.homeGoalsPoints,
        e?.awayGoalsPoints,
        e?.winPoints,
        e?.drawPoints,
        e?.totalPoints
      ]);

  @override
  bool isValidKey(Object? o) => o is MStandingsRecord;
}
