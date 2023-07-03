import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TournamentTeamsRecord extends FirestoreRecord {
  TournamentTeamsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "teamRef" field.
  DocumentReference? _teamRef;
  DocumentReference? get teamRef => _teamRef;
  bool hasTeamRef() => _teamRef != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _teamRef = snapshotData['teamRef'] as DocumentReference?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('TournamentTeams')
          : FirebaseFirestore.instance.collectionGroup('TournamentTeams');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('TournamentTeams').doc();

  static Stream<TournamentTeamsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TournamentTeamsRecord.fromSnapshot(s));

  static Future<TournamentTeamsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TournamentTeamsRecord.fromSnapshot(s));

  static TournamentTeamsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TournamentTeamsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TournamentTeamsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TournamentTeamsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TournamentTeamsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TournamentTeamsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTournamentTeamsRecordData({
  DocumentReference? teamRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'teamRef': teamRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class TournamentTeamsRecordDocumentEquality
    implements Equality<TournamentTeamsRecord> {
  const TournamentTeamsRecordDocumentEquality();

  @override
  bool equals(TournamentTeamsRecord? e1, TournamentTeamsRecord? e2) {
    return e1?.teamRef == e2?.teamRef;
  }

  @override
  int hash(TournamentTeamsRecord? e) => const ListEquality().hash([e?.teamRef]);

  @override
  bool isValidKey(Object? o) => o is TournamentTeamsRecord;
}
