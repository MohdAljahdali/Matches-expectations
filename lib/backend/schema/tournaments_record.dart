import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TournamentsRecord extends FirestoreRecord {
  TournamentsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "tournamentsID" field.
  int? _tournamentsID;
  int get tournamentsID => _tournamentsID ?? 0;
  bool hasTournamentsID() => _tournamentsID != null;

  // "seasonYear" field.
  int? _seasonYear;
  int get seasonYear => _seasonYear ?? 0;
  bool hasSeasonYear() => _seasonYear != null;

  // "seasonStart" field.
  String? _seasonStart;
  String get seasonStart => _seasonStart ?? '';
  bool hasSeasonStart() => _seasonStart != null;

  // "seasonEnd" field.
  String? _seasonEnd;
  String get seasonEnd => _seasonEnd ?? '';
  bool hasSeasonEnd() => _seasonEnd != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "nameAr" field.
  String? _nameAr;
  String get nameAr => _nameAr ?? '';
  bool hasNameAr() => _nameAr != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "logo" field.
  String? _logo;
  String get logo => _logo ?? '';
  bool hasLogo() => _logo != null;

  // "countryName" field.
  String? _countryName;
  String get countryName => _countryName ?? '';
  bool hasCountryName() => _countryName != null;

  // "countryCode" field.
  String? _countryCode;
  String get countryCode => _countryCode ?? '';
  bool hasCountryCode() => _countryCode != null;

  // "countryFlog" field.
  String? _countryFlog;
  String get countryFlog => _countryFlog ?? '';
  bool hasCountryFlog() => _countryFlog != null;

  // "isActive" field.
  bool? _isActive;
  bool get isActive => _isActive ?? false;
  bool hasIsActive() => _isActive != null;

  void _initializeFields() {
    _tournamentsID = snapshotData['tournamentsID'] as int?;
    _seasonYear = snapshotData['seasonYear'] as int?;
    _seasonStart = snapshotData['seasonStart'] as String?;
    _seasonEnd = snapshotData['seasonEnd'] as String?;
    _name = snapshotData['name'] as String?;
    _nameAr = snapshotData['nameAr'] as String?;
    _type = snapshotData['type'] as String?;
    _logo = snapshotData['logo'] as String?;
    _countryName = snapshotData['countryName'] as String?;
    _countryCode = snapshotData['countryCode'] as String?;
    _countryFlog = snapshotData['countryFlog'] as String?;
    _isActive = snapshotData['isActive'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Tournaments');

  static Stream<TournamentsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TournamentsRecord.fromSnapshot(s));

  static Future<TournamentsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TournamentsRecord.fromSnapshot(s));

  static TournamentsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TournamentsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TournamentsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TournamentsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TournamentsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TournamentsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTournamentsRecordData({
  int? tournamentsID,
  int? seasonYear,
  String? seasonStart,
  String? seasonEnd,
  String? name,
  String? nameAr,
  String? type,
  String? logo,
  String? countryName,
  String? countryCode,
  String? countryFlog,
  bool? isActive,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'tournamentsID': tournamentsID,
      'seasonYear': seasonYear,
      'seasonStart': seasonStart,
      'seasonEnd': seasonEnd,
      'name': name,
      'nameAr': nameAr,
      'type': type,
      'logo': logo,
      'countryName': countryName,
      'countryCode': countryCode,
      'countryFlog': countryFlog,
      'isActive': isActive,
    }.withoutNulls,
  );

  return firestoreData;
}
