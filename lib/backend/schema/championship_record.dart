import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChampionshipRecord extends FirestoreRecord {
  ChampionshipRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  void _initializeFields() {
    _name = snapshotData['Name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('championship');

  static Stream<ChampionshipRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ChampionshipRecord.fromSnapshot(s));

  static Future<ChampionshipRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ChampionshipRecord.fromSnapshot(s));

  static ChampionshipRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ChampionshipRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ChampionshipRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ChampionshipRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ChampionshipRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createChampionshipRecordData({
  String? name,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Name': name,
    }.withoutNulls,
  );

  return firestoreData;
}
