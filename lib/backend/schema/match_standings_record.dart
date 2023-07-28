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

  // "standingID" field.
  String? _standingID;
  String get standingID => _standingID ?? '';
  bool hasStandingID() => _standingID != null;

  // "tournamentID" field.
  String? _tournamentID;
  String get tournamentID => _tournamentID ?? '';
  bool hasTournamentID() => _tournamentID != null;

  // "teamName" field.
  String? _teamName;
  String get teamName => _teamName ?? '';
  bool hasTeamName() => _teamName != null;

  // "played" field.
  int? _played;
  int get played => _played ?? 0;
  bool hasPlayed() => _played != null;

  // "won" field.
  int? _won;
  int get won => _won ?? 0;
  bool hasWon() => _won != null;

  // "draw" field.
  int? _draw;
  int get draw => _draw ?? 0;
  bool hasDraw() => _draw != null;

  // "lost" field.
  int? _lost;
  int get lost => _lost ?? 0;
  bool hasLost() => _lost != null;

  // "goalsFor" field.
  int? _goalsFor;
  int get goalsFor => _goalsFor ?? 0;
  bool hasGoalsFor() => _goalsFor != null;

  // "goalsAgainst" field.
  int? _goalsAgainst;
  int get goalsAgainst => _goalsAgainst ?? 0;
  bool hasGoalsAgainst() => _goalsAgainst != null;

  // "points" field.
  int? _points;
  int get points => _points ?? 0;
  bool hasPoints() => _points != null;

  // "position" field.
  int? _position;
  int get position => _position ?? 0;
  bool hasPosition() => _position != null;

  // "addRandomCode" field.
  String? _addRandomCode;
  String get addRandomCode => _addRandomCode ?? '';
  bool hasAddRandomCode() => _addRandomCode != null;

  // "tournamentReference" field.
  DocumentReference? _tournamentReference;
  DocumentReference? get tournamentReference => _tournamentReference;
  bool hasTournamentReference() => _tournamentReference != null;

  // "isActive" field.
  bool? _isActive;
  bool get isActive => _isActive ?? false;
  bool hasIsActive() => _isActive != null;

  void _initializeFields() {
    _standingID = snapshotData['standingID'] as String?;
    _tournamentID = snapshotData['tournamentID'] as String?;
    _teamName = snapshotData['teamName'] as String?;
    _played = castToType<int>(snapshotData['played']);
    _won = castToType<int>(snapshotData['won']);
    _draw = castToType<int>(snapshotData['draw']);
    _lost = castToType<int>(snapshotData['lost']);
    _goalsFor = castToType<int>(snapshotData['goalsFor']);
    _goalsAgainst = castToType<int>(snapshotData['goalsAgainst']);
    _points = castToType<int>(snapshotData['points']);
    _position = castToType<int>(snapshotData['position']);
    _addRandomCode = snapshotData['addRandomCode'] as String?;
    _tournamentReference =
        snapshotData['tournamentReference'] as DocumentReference?;
    _isActive = snapshotData['isActive'] as bool?;
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
  String? standingID,
  String? tournamentID,
  String? teamName,
  int? played,
  int? won,
  int? draw,
  int? lost,
  int? goalsFor,
  int? goalsAgainst,
  int? points,
  int? position,
  String? addRandomCode,
  DocumentReference? tournamentReference,
  bool? isActive,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'standingID': standingID,
      'tournamentID': tournamentID,
      'teamName': teamName,
      'played': played,
      'won': won,
      'draw': draw,
      'lost': lost,
      'goalsFor': goalsFor,
      'goalsAgainst': goalsAgainst,
      'points': points,
      'position': position,
      'addRandomCode': addRandomCode,
      'tournamentReference': tournamentReference,
      'isActive': isActive,
    }.withoutNulls,
  );

  return firestoreData;
}

class MatchStandingsRecordDocumentEquality
    implements Equality<MatchStandingsRecord> {
  const MatchStandingsRecordDocumentEquality();

  @override
  bool equals(MatchStandingsRecord? e1, MatchStandingsRecord? e2) {
    return e1?.standingID == e2?.standingID &&
        e1?.tournamentID == e2?.tournamentID &&
        e1?.teamName == e2?.teamName &&
        e1?.played == e2?.played &&
        e1?.won == e2?.won &&
        e1?.draw == e2?.draw &&
        e1?.lost == e2?.lost &&
        e1?.goalsFor == e2?.goalsFor &&
        e1?.goalsAgainst == e2?.goalsAgainst &&
        e1?.points == e2?.points &&
        e1?.position == e2?.position &&
        e1?.addRandomCode == e2?.addRandomCode &&
        e1?.tournamentReference == e2?.tournamentReference &&
        e1?.isActive == e2?.isActive;
  }

  @override
  int hash(MatchStandingsRecord? e) => const ListEquality().hash([
        e?.standingID,
        e?.tournamentID,
        e?.teamName,
        e?.played,
        e?.won,
        e?.draw,
        e?.lost,
        e?.goalsFor,
        e?.goalsAgainst,
        e?.points,
        e?.position,
        e?.addRandomCode,
        e?.tournamentReference,
        e?.isActive
      ]);

  @override
  bool isValidKey(Object? o) => o is MatchStandingsRecord;
}
