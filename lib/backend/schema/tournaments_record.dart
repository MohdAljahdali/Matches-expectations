import 'dart:async';

import 'package:collection/collection.dart';

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

  // "tournamentsRef" field.
  String? _tournamentsRef;
  String get tournamentsRef => _tournamentsRef ?? '';
  bool hasTournamentsRef() => _tournamentsRef != null;

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

  // "roleEndMatche" field.
  String? _roleEndMatche;
  String get roleEndMatche => _roleEndMatche ?? '';
  bool hasRoleEndMatche() => _roleEndMatche != null;

  // "roleMatcheHasPenalty" field.
  bool? _roleMatcheHasPenalty;
  bool get roleMatcheHasPenalty => _roleMatcheHasPenalty ?? false;
  bool hasRoleMatcheHasPenalty() => _roleMatcheHasPenalty != null;

  // "roleHomeWin" field.
  bool? _roleHomeWin;
  bool get roleHomeWin => _roleHomeWin ?? false;
  bool hasRoleHomeWin() => _roleHomeWin != null;

  // "roleHomeWinPoints" field.
  int? _roleHomeWinPoints;
  int get roleHomeWinPoints => _roleHomeWinPoints ?? 0;
  bool hasRoleHomeWinPoints() => _roleHomeWinPoints != null;

  // "roleAwayWin" field.
  bool? _roleAwayWin;
  bool get roleAwayWin => _roleAwayWin ?? false;
  bool hasRoleAwayWin() => _roleAwayWin != null;

  // "roleAwayWinPoints" field.
  int? _roleAwayWinPoints;
  int get roleAwayWinPoints => _roleAwayWinPoints ?? 0;
  bool hasRoleAwayWinPoints() => _roleAwayWinPoints != null;

  // "roleDraw" field.
  bool? _roleDraw;
  bool get roleDraw => _roleDraw ?? false;
  bool hasRoleDraw() => _roleDraw != null;

  // "roleDrawPoints" field.
  int? _roleDrawPoints;
  int get roleDrawPoints => _roleDrawPoints ?? 0;
  bool hasRoleDrawPoints() => _roleDrawPoints != null;

  // "roleHomeGoals" field.
  bool? _roleHomeGoals;
  bool get roleHomeGoals => _roleHomeGoals ?? false;
  bool hasRoleHomeGoals() => _roleHomeGoals != null;

  // "roleHomeGoalsPoints" field.
  int? _roleHomeGoalsPoints;
  int get roleHomeGoalsPoints => _roleHomeGoalsPoints ?? 0;
  bool hasRoleHomeGoalsPoints() => _roleHomeGoalsPoints != null;

  // "roleAwayGoals" field.
  bool? _roleAwayGoals;
  bool get roleAwayGoals => _roleAwayGoals ?? false;
  bool hasRoleAwayGoals() => _roleAwayGoals != null;

  // "roleAwayGoalsPoints" field.
  int? _roleAwayGoalsPoints;
  int get roleAwayGoalsPoints => _roleAwayGoalsPoints ?? 0;
  bool hasRoleAwayGoalsPoints() => _roleAwayGoalsPoints != null;

  // "addRandomCode" field.
  String? _addRandomCode;
  String get addRandomCode => _addRandomCode ?? '';
  bool hasAddRandomCode() => _addRandomCode != null;

  // "Teams" field.
  List<DocumentReference>? _teams;
  List<DocumentReference> get teams => _teams ?? const [];
  bool hasTeams() => _teams != null;

  // "active" field.
  bool? _active;
  bool get active => _active ?? false;
  bool hasActive() => _active != null;

  void _initializeFields() {
    _tournamentsID = castToType<int>(snapshotData['tournamentsID']);
    _tournamentsRef = snapshotData['tournamentsRef'] as String?;
    _seasonYear = castToType<int>(snapshotData['seasonYear']);
    _seasonStart = snapshotData['seasonStart'] as String?;
    _seasonEnd = snapshotData['seasonEnd'] as String?;
    _name = snapshotData['name'] as String?;
    _nameAr = snapshotData['nameAr'] as String?;
    _type = snapshotData['type'] as String?;
    _logo = snapshotData['logo'] as String?;
    _countryName = snapshotData['countryName'] as String?;
    _countryCode = snapshotData['countryCode'] as String?;
    _countryFlog = snapshotData['countryFlog'] as String?;
    _roleEndMatche = snapshotData['roleEndMatche'] as String?;
    _roleMatcheHasPenalty = snapshotData['roleMatcheHasPenalty'] as bool?;
    _roleHomeWin = snapshotData['roleHomeWin'] as bool?;
    _roleHomeWinPoints = castToType<int>(snapshotData['roleHomeWinPoints']);
    _roleAwayWin = snapshotData['roleAwayWin'] as bool?;
    _roleAwayWinPoints = castToType<int>(snapshotData['roleAwayWinPoints']);
    _roleDraw = snapshotData['roleDraw'] as bool?;
    _roleDrawPoints = castToType<int>(snapshotData['roleDrawPoints']);
    _roleHomeGoals = snapshotData['roleHomeGoals'] as bool?;
    _roleHomeGoalsPoints = castToType<int>(snapshotData['roleHomeGoalsPoints']);
    _roleAwayGoals = snapshotData['roleAwayGoals'] as bool?;
    _roleAwayGoalsPoints = castToType<int>(snapshotData['roleAwayGoalsPoints']);
    _addRandomCode = snapshotData['addRandomCode'] as String?;
    _teams = getDataList(snapshotData['Teams']);
    _active = snapshotData['active'] as bool?;
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
  String? tournamentsRef,
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
  String? roleEndMatche,
  bool? roleMatcheHasPenalty,
  bool? roleHomeWin,
  int? roleHomeWinPoints,
  bool? roleAwayWin,
  int? roleAwayWinPoints,
  bool? roleDraw,
  int? roleDrawPoints,
  bool? roleHomeGoals,
  int? roleHomeGoalsPoints,
  bool? roleAwayGoals,
  int? roleAwayGoalsPoints,
  String? addRandomCode,
  bool? active,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'tournamentsID': tournamentsID,
      'tournamentsRef': tournamentsRef,
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
      'roleEndMatche': roleEndMatche,
      'roleMatcheHasPenalty': roleMatcheHasPenalty,
      'roleHomeWin': roleHomeWin,
      'roleHomeWinPoints': roleHomeWinPoints,
      'roleAwayWin': roleAwayWin,
      'roleAwayWinPoints': roleAwayWinPoints,
      'roleDraw': roleDraw,
      'roleDrawPoints': roleDrawPoints,
      'roleHomeGoals': roleHomeGoals,
      'roleHomeGoalsPoints': roleHomeGoalsPoints,
      'roleAwayGoals': roleAwayGoals,
      'roleAwayGoalsPoints': roleAwayGoalsPoints,
      'addRandomCode': addRandomCode,
      'active': active,
    }.withoutNulls,
  );

  return firestoreData;
}

class TournamentsRecordDocumentEquality implements Equality<TournamentsRecord> {
  const TournamentsRecordDocumentEquality();

  @override
  bool equals(TournamentsRecord? e1, TournamentsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.tournamentsID == e2?.tournamentsID &&
        e1?.tournamentsRef == e2?.tournamentsRef &&
        e1?.seasonYear == e2?.seasonYear &&
        e1?.seasonStart == e2?.seasonStart &&
        e1?.seasonEnd == e2?.seasonEnd &&
        e1?.name == e2?.name &&
        e1?.nameAr == e2?.nameAr &&
        e1?.type == e2?.type &&
        e1?.logo == e2?.logo &&
        e1?.countryName == e2?.countryName &&
        e1?.countryCode == e2?.countryCode &&
        e1?.countryFlog == e2?.countryFlog &&
        e1?.roleEndMatche == e2?.roleEndMatche &&
        e1?.roleMatcheHasPenalty == e2?.roleMatcheHasPenalty &&
        e1?.roleHomeWin == e2?.roleHomeWin &&
        e1?.roleHomeWinPoints == e2?.roleHomeWinPoints &&
        e1?.roleAwayWin == e2?.roleAwayWin &&
        e1?.roleAwayWinPoints == e2?.roleAwayWinPoints &&
        e1?.roleDraw == e2?.roleDraw &&
        e1?.roleDrawPoints == e2?.roleDrawPoints &&
        e1?.roleHomeGoals == e2?.roleHomeGoals &&
        e1?.roleHomeGoalsPoints == e2?.roleHomeGoalsPoints &&
        e1?.roleAwayGoals == e2?.roleAwayGoals &&
        e1?.roleAwayGoalsPoints == e2?.roleAwayGoalsPoints &&
        e1?.addRandomCode == e2?.addRandomCode &&
        listEquality.equals(e1?.teams, e2?.teams) &&
        e1?.active == e2?.active;
  }

  @override
  int hash(TournamentsRecord? e) => const ListEquality().hash([
        e?.tournamentsID,
        e?.tournamentsRef,
        e?.seasonYear,
        e?.seasonStart,
        e?.seasonEnd,
        e?.name,
        e?.nameAr,
        e?.type,
        e?.logo,
        e?.countryName,
        e?.countryCode,
        e?.countryFlog,
        e?.roleEndMatche,
        e?.roleMatcheHasPenalty,
        e?.roleHomeWin,
        e?.roleHomeWinPoints,
        e?.roleAwayWin,
        e?.roleAwayWinPoints,
        e?.roleDraw,
        e?.roleDrawPoints,
        e?.roleHomeGoals,
        e?.roleHomeGoalsPoints,
        e?.roleAwayGoals,
        e?.roleAwayGoalsPoints,
        e?.addRandomCode,
        e?.teams,
        e?.active
      ]);

  @override
  bool isValidKey(Object? o) => o is TournamentsRecord;
}
