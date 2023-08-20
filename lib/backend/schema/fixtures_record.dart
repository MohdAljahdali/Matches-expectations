import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FixturesRecord extends FirestoreRecord {
  FixturesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  bool hasId() => _id != null;

  // "timezone" field.
  String? _timezone;
  String get timezone => _timezone ?? '';
  bool hasTimezone() => _timezone != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "timestamp" field.
  int? _timestamp;
  int get timestamp => _timestamp ?? 0;
  bool hasTimestamp() => _timestamp != null;

  // "firstPeriod" field.
  int? _firstPeriod;
  int get firstPeriod => _firstPeriod ?? 0;
  bool hasFirstPeriod() => _firstPeriod != null;

  // "secondPeriod" field.
  int? _secondPeriod;
  int get secondPeriod => _secondPeriod ?? 0;
  bool hasSecondPeriod() => _secondPeriod != null;

  // "statusLongEn" field.
  String? _statusLongEn;
  String get statusLongEn => _statusLongEn ?? '';
  bool hasStatusLongEn() => _statusLongEn != null;

  // "statusLongAr" field.
  String? _statusLongAr;
  String get statusLongAr => _statusLongAr ?? '';
  bool hasStatusLongAr() => _statusLongAr != null;

  // "StatusGeneralEn" field.
  String? _statusGeneralEn;
  String get statusGeneralEn => _statusGeneralEn ?? '';
  bool hasStatusGeneralEn() => _statusGeneralEn != null;

  // "StatusGeneralAr" field.
  String? _statusGeneralAr;
  String get statusGeneralAr => _statusGeneralAr ?? '';
  bool hasStatusGeneralAr() => _statusGeneralAr != null;

  // "StatusShort" field.
  String? _statusShort;
  String get statusShort => _statusShort ?? '';
  bool hasStatusShort() => _statusShort != null;

  // "statusElapsed" field.
  int? _statusElapsed;
  int get statusElapsed => _statusElapsed ?? 0;
  bool hasStatusElapsed() => _statusElapsed != null;

  // "venues" field.
  FixtureVenueStruct? _venues;
  FixtureVenueStruct get venues => _venues ?? FixtureVenueStruct();
  bool hasVenues() => _venues != null;

  void _initializeFields() {
    _id = castToType<int>(snapshotData['id']);
    _timezone = snapshotData['timezone'] as String?;
    _date = snapshotData['date'] as DateTime?;
    _timestamp = castToType<int>(snapshotData['timestamp']);
    _firstPeriod = castToType<int>(snapshotData['firstPeriod']);
    _secondPeriod = castToType<int>(snapshotData['secondPeriod']);
    _statusLongEn = snapshotData['statusLongEn'] as String?;
    _statusLongAr = snapshotData['statusLongAr'] as String?;
    _statusGeneralEn = snapshotData['StatusGeneralEn'] as String?;
    _statusGeneralAr = snapshotData['StatusGeneralAr'] as String?;
    _statusShort = snapshotData['StatusShort'] as String?;
    _statusElapsed = castToType<int>(snapshotData['statusElapsed']);
    _venues = FixtureVenueStruct.maybeFromMap(snapshotData['venues']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('fixtures');

  static Stream<FixturesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FixturesRecord.fromSnapshot(s));

  static Future<FixturesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FixturesRecord.fromSnapshot(s));

  static FixturesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FixturesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FixturesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FixturesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FixturesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FixturesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFixturesRecordData({
  int? id,
  String? timezone,
  DateTime? date,
  int? timestamp,
  int? firstPeriod,
  int? secondPeriod,
  String? statusLongEn,
  String? statusLongAr,
  String? statusGeneralEn,
  String? statusGeneralAr,
  String? statusShort,
  int? statusElapsed,
  FixtureVenueStruct? venues,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'timezone': timezone,
      'date': date,
      'timestamp': timestamp,
      'firstPeriod': firstPeriod,
      'secondPeriod': secondPeriod,
      'statusLongEn': statusLongEn,
      'statusLongAr': statusLongAr,
      'StatusGeneralEn': statusGeneralEn,
      'StatusGeneralAr': statusGeneralAr,
      'StatusShort': statusShort,
      'statusElapsed': statusElapsed,
      'venues': FixtureVenueStruct().toMap(),
    }.withoutNulls,
  );

  // Handle nested data for "venues" field.
  addFixtureVenueStructData(firestoreData, venues, 'venues');

  return firestoreData;
}

class FixturesRecordDocumentEquality implements Equality<FixturesRecord> {
  const FixturesRecordDocumentEquality();

  @override
  bool equals(FixturesRecord? e1, FixturesRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.timezone == e2?.timezone &&
        e1?.date == e2?.date &&
        e1?.timestamp == e2?.timestamp &&
        e1?.firstPeriod == e2?.firstPeriod &&
        e1?.secondPeriod == e2?.secondPeriod &&
        e1?.statusLongEn == e2?.statusLongEn &&
        e1?.statusLongAr == e2?.statusLongAr &&
        e1?.statusGeneralEn == e2?.statusGeneralEn &&
        e1?.statusGeneralAr == e2?.statusGeneralAr &&
        e1?.statusShort == e2?.statusShort &&
        e1?.statusElapsed == e2?.statusElapsed &&
        e1?.venues == e2?.venues;
  }

  @override
  int hash(FixturesRecord? e) => const ListEquality().hash([
        e?.id,
        e?.timezone,
        e?.date,
        e?.timestamp,
        e?.firstPeriod,
        e?.secondPeriod,
        e?.statusLongEn,
        e?.statusLongAr,
        e?.statusGeneralEn,
        e?.statusGeneralAr,
        e?.statusShort,
        e?.statusElapsed,
        e?.venues
      ]);

  @override
  bool isValidKey(Object? o) => o is FixturesRecord;
}
