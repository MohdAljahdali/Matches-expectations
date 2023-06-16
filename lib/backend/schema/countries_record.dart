import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CountriesRecord extends FirestoreRecord {
  CountriesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

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

  // "flag" field.
  String? _flag;
  String get flag => _flag ?? '';
  bool hasFlag() => _flag != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _nameAr = snapshotData['nameAr'] as String?;
    _code = snapshotData['code'] as String?;
    _flag = snapshotData['flag'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Countries');

  static Stream<CountriesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CountriesRecord.fromSnapshot(s));

  static Future<CountriesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CountriesRecord.fromSnapshot(s));

  static CountriesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CountriesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CountriesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CountriesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CountriesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CountriesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCountriesRecordData({
  String? name,
  String? nameAr,
  String? code,
  String? flag,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'nameAr': nameAr,
      'code': code,
      'flag': flag,
    }.withoutNulls,
  );

  return firestoreData;
}
