import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TeamsRecord extends FirestoreRecord {
  TeamsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "teamID" field.
  int? _teamID;
  int get teamID => _teamID ?? 0;
  bool hasTeamID() => _teamID != null;

  // "teamRef" field.
  String? _teamRef;
  String get teamRef => _teamRef ?? '';
  bool hasTeamRef() => _teamRef != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "nameAr" field.
  String? _nameAr;
  String get nameAr => _nameAr ?? '';
  bool hasNameAr() => _nameAr != null;

  // "code" field.
  String? _code;
  String get code => _code ?? '';
  bool hasCode() => _code != null;

  // "country" field.
  String? _country;
  String get country => _country ?? '';
  bool hasCountry() => _country != null;

  // "logo" field.
  String? _logo;
  String get logo => _logo ?? '';
  bool hasLogo() => _logo != null;

  // "tournamentsList" field.
  List<DocumentReference>? _tournamentsList;
  List<DocumentReference> get tournamentsList => _tournamentsList ?? const [];
  bool hasTournamentsList() => _tournamentsList != null;

  void _initializeFields() {
    _teamID = castToType<int>(snapshotData['teamID']);
    _teamRef = snapshotData['teamRef'] as String?;
    _name = snapshotData['name'] as String?;
    _nameAr = snapshotData['nameAr'] as String?;
    _code = snapshotData['code'] as String?;
    _country = snapshotData['country'] as String?;
    _logo = snapshotData['logo'] as String?;
    _tournamentsList = getDataList(snapshotData['tournamentsList']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Teams');

  static Stream<TeamsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TeamsRecord.fromSnapshot(s));

  static Future<TeamsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TeamsRecord.fromSnapshot(s));

  static TeamsRecord fromSnapshot(DocumentSnapshot snapshot) => TeamsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TeamsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TeamsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TeamsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TeamsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTeamsRecordData({
  int? teamID,
  String? teamRef,
  String? name,
  String? nameAr,
  String? code,
  String? country,
  String? logo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'teamID': teamID,
      'teamRef': teamRef,
      'name': name,
      'nameAr': nameAr,
      'code': code,
      'country': country,
      'logo': logo,
    }.withoutNulls,
  );

  return firestoreData;
}

class TeamsRecordDocumentEquality implements Equality<TeamsRecord> {
  const TeamsRecordDocumentEquality();

  @override
  bool equals(TeamsRecord? e1, TeamsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.teamID == e2?.teamID &&
        e1?.teamRef == e2?.teamRef &&
        e1?.name == e2?.name &&
        e1?.nameAr == e2?.nameAr &&
        e1?.code == e2?.code &&
        e1?.country == e2?.country &&
        e1?.logo == e2?.logo &&
        listEquality.equals(e1?.tournamentsList, e2?.tournamentsList);
  }

  @override
  int hash(TeamsRecord? e) => const ListEquality().hash([
        e?.teamID,
        e?.teamRef,
        e?.name,
        e?.nameAr,
        e?.code,
        e?.country,
        e?.logo,
        e?.tournamentsList
      ]);

  @override
  bool isValidKey(Object? o) => o is TeamsRecord;
}
