import 'dart:async';

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

  // "teamName" field.
  String? _teamName;
  String get teamName => _teamName ?? '';
  bool hasTeamName() => _teamName != null;

  // "teamNameAr" field.
  String? _teamNameAr;
  String get teamNameAr => _teamNameAr ?? '';
  bool hasTeamNameAr() => _teamNameAr != null;

  // "teamCode" field.
  String? _teamCode;
  String get teamCode => _teamCode ?? '';
  bool hasTeamCode() => _teamCode != null;

  // "teamCountry" field.
  String? _teamCountry;
  String get teamCountry => _teamCountry ?? '';
  bool hasTeamCountry() => _teamCountry != null;

  // "teamLogo" field.
  String? _teamLogo;
  String get teamLogo => _teamLogo ?? '';
  bool hasTeamLogo() => _teamLogo != null;

  void _initializeFields() {
    _teamID = snapshotData['teamID'] as int?;
    _teamName = snapshotData['teamName'] as String?;
    _teamNameAr = snapshotData['teamNameAr'] as String?;
    _teamCode = snapshotData['teamCode'] as String?;
    _teamCountry = snapshotData['teamCountry'] as String?;
    _teamLogo = snapshotData['teamLogo'] as String?;
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
  String? teamName,
  String? teamNameAr,
  String? teamCode,
  String? teamCountry,
  String? teamLogo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'teamID': teamID,
      'teamName': teamName,
      'teamNameAr': teamNameAr,
      'teamCode': teamCode,
      'teamCountry': teamCountry,
      'teamLogo': teamLogo,
    }.withoutNulls,
  );

  return firestoreData;
}
