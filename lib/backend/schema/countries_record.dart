import 'dart:async';

import 'package:collection/collection.dart';

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

  // "code" field.
  String? _code;
  String get code => _code ?? '';
  bool hasCode() => _code != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "nameEn" field.
  String? _nameEn;
  String get nameEn => _nameEn ?? '';
  bool hasNameEn() => _nameEn != null;

  // "nameAr" field.
  String? _nameAr;
  String get nameAr => _nameAr ?? '';
  bool hasNameAr() => _nameAr != null;

  // "isActive" field.
  bool? _isActive;
  bool get isActive => _isActive ?? false;
  bool hasIsActive() => _isActive != null;

  // "flagSvg" field.
  String? _flagSvg;
  String get flagSvg => _flagSvg ?? '';
  bool hasFlagSvg() => _flagSvg != null;

  // "flagW20" field.
  String? _flagW20;
  String get flagW20 => _flagW20 ?? '';
  bool hasFlagW20() => _flagW20 != null;

  // "flagW40" field.
  String? _flagW40;
  String get flagW40 => _flagW40 ?? '';
  bool hasFlagW40() => _flagW40 != null;

  // "flagW80" field.
  String? _flagW80;
  String get flagW80 => _flagW80 ?? '';
  bool hasFlagW80() => _flagW80 != null;

  // "flagW160" field.
  String? _flagW160;
  String get flagW160 => _flagW160 ?? '';
  bool hasFlagW160() => _flagW160 != null;

  // "flagW320" field.
  String? _flagW320;
  String get flagW320 => _flagW320 ?? '';
  bool hasFlagW320() => _flagW320 != null;

  void _initializeFields() {
    _code = snapshotData['code'] as String?;
    _name = snapshotData['name'] as String?;
    _nameEn = snapshotData['nameEn'] as String?;
    _nameAr = snapshotData['nameAr'] as String?;
    _isActive = snapshotData['isActive'] as bool?;
    _flagSvg = snapshotData['flagSvg'] as String?;
    _flagW20 = snapshotData['flagW20'] as String?;
    _flagW40 = snapshotData['flagW40'] as String?;
    _flagW80 = snapshotData['flagW80'] as String?;
    _flagW160 = snapshotData['flagW160'] as String?;
    _flagW320 = snapshotData['flagW320'] as String?;
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
  String? code,
  String? name,
  String? nameEn,
  String? nameAr,
  bool? isActive,
  String? flagSvg,
  String? flagW20,
  String? flagW40,
  String? flagW80,
  String? flagW160,
  String? flagW320,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'code': code,
      'name': name,
      'nameEn': nameEn,
      'nameAr': nameAr,
      'isActive': isActive,
      'flagSvg': flagSvg,
      'flagW20': flagW20,
      'flagW40': flagW40,
      'flagW80': flagW80,
      'flagW160': flagW160,
      'flagW320': flagW320,
    }.withoutNulls,
  );

  return firestoreData;
}

class CountriesRecordDocumentEquality implements Equality<CountriesRecord> {
  const CountriesRecordDocumentEquality();

  @override
  bool equals(CountriesRecord? e1, CountriesRecord? e2) {
    return e1?.code == e2?.code &&
        e1?.name == e2?.name &&
        e1?.nameEn == e2?.nameEn &&
        e1?.nameAr == e2?.nameAr &&
        e1?.isActive == e2?.isActive &&
        e1?.flagSvg == e2?.flagSvg &&
        e1?.flagW20 == e2?.flagW20 &&
        e1?.flagW40 == e2?.flagW40 &&
        e1?.flagW80 == e2?.flagW80 &&
        e1?.flagW160 == e2?.flagW160 &&
        e1?.flagW320 == e2?.flagW320;
  }

  @override
  int hash(CountriesRecord? e) => const ListEquality().hash([
        e?.code,
        e?.name,
        e?.nameEn,
        e?.nameAr,
        e?.isActive,
        e?.flagSvg,
        e?.flagW20,
        e?.flagW40,
        e?.flagW80,
        e?.flagW160,
        e?.flagW320
      ]);

  @override
  bool isValidKey(Object? o) => o is CountriesRecord;
}
