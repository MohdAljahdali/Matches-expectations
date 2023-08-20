import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VenuesRecord extends FirestoreRecord {
  VenuesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "nameEn" field.
  String? _nameEn;
  String get nameEn => _nameEn ?? '';
  bool hasNameEn() => _nameEn != null;

  // "nameAr" field.
  String? _nameAr;
  String get nameAr => _nameAr ?? '';
  bool hasNameAr() => _nameAr != null;

  // "cityEn" field.
  String? _cityEn;
  String get cityEn => _cityEn ?? '';
  bool hasCityEn() => _cityEn != null;

  // "cityAR" field.
  String? _cityAR;
  String get cityAR => _cityAR ?? '';
  bool hasCityAR() => _cityAR != null;

  // "countryRef" field.
  DocumentReference? _countryRef;
  DocumentReference? get countryRef => _countryRef;
  bool hasCountryRef() => _countryRef != null;

  // "countryEn" field.
  String? _countryEn;
  String get countryEn => _countryEn ?? '';
  bool hasCountryEn() => _countryEn != null;

  // "countryAr" field.
  String? _countryAr;
  String get countryAr => _countryAr ?? '';
  bool hasCountryAr() => _countryAr != null;

  // "capacity" field.
  int? _capacity;
  int get capacity => _capacity ?? 0;
  bool hasCapacity() => _capacity != null;

  // "surface" field.
  String? _surface;
  String get surface => _surface ?? '';
  bool hasSurface() => _surface != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  void _initializeFields() {
    _id = snapshotData['id'] as String?;
    _nameEn = snapshotData['nameEn'] as String?;
    _nameAr = snapshotData['nameAr'] as String?;
    _cityEn = snapshotData['cityEn'] as String?;
    _cityAR = snapshotData['cityAR'] as String?;
    _countryRef = snapshotData['countryRef'] as DocumentReference?;
    _countryEn = snapshotData['countryEn'] as String?;
    _countryAr = snapshotData['countryAr'] as String?;
    _capacity = castToType<int>(snapshotData['capacity']);
    _surface = snapshotData['surface'] as String?;
    _image = snapshotData['image'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('venues');

  static Stream<VenuesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => VenuesRecord.fromSnapshot(s));

  static Future<VenuesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => VenuesRecord.fromSnapshot(s));

  static VenuesRecord fromSnapshot(DocumentSnapshot snapshot) => VenuesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static VenuesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      VenuesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'VenuesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is VenuesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createVenuesRecordData({
  String? id,
  String? nameEn,
  String? nameAr,
  String? cityEn,
  String? cityAR,
  DocumentReference? countryRef,
  String? countryEn,
  String? countryAr,
  int? capacity,
  String? surface,
  String? image,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'nameEn': nameEn,
      'nameAr': nameAr,
      'cityEn': cityEn,
      'cityAR': cityAR,
      'countryRef': countryRef,
      'countryEn': countryEn,
      'countryAr': countryAr,
      'capacity': capacity,
      'surface': surface,
      'image': image,
    }.withoutNulls,
  );

  return firestoreData;
}

class VenuesRecordDocumentEquality implements Equality<VenuesRecord> {
  const VenuesRecordDocumentEquality();

  @override
  bool equals(VenuesRecord? e1, VenuesRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.nameEn == e2?.nameEn &&
        e1?.nameAr == e2?.nameAr &&
        e1?.cityEn == e2?.cityEn &&
        e1?.cityAR == e2?.cityAR &&
        e1?.countryRef == e2?.countryRef &&
        e1?.countryEn == e2?.countryEn &&
        e1?.countryAr == e2?.countryAr &&
        e1?.capacity == e2?.capacity &&
        e1?.surface == e2?.surface &&
        e1?.image == e2?.image;
  }

  @override
  int hash(VenuesRecord? e) => const ListEquality().hash([
        e?.id,
        e?.nameEn,
        e?.nameAr,
        e?.cityEn,
        e?.cityAR,
        e?.countryRef,
        e?.countryEn,
        e?.countryAr,
        e?.capacity,
        e?.surface,
        e?.image
      ]);

  @override
  bool isValidKey(Object? o) => o is VenuesRecord;
}
