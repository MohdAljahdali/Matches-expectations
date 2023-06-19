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

  // "randomCode" field.
  String? _randomCode;
  String get randomCode => _randomCode ?? '';
  bool hasRandomCode() => _randomCode != null;

  // "is_Active" field.
  bool? _isActive;
  bool get isActive => _isActive ?? false;
  bool hasIsActive() => _isActive != null;

  // "setEndMatche" field.
  String? _setEndMatche;
  String get setEndMatche => _setEndMatche ?? '';
  bool hasSetEndMatche() => _setEndMatche != null;

  // "setHomeWin" field.
  bool? _setHomeWin;
  bool get setHomeWin => _setHomeWin ?? false;
  bool hasSetHomeWin() => _setHomeWin != null;

  // "setHomeWinPoints" field.
  int? _setHomeWinPoints;
  int get setHomeWinPoints => _setHomeWinPoints ?? 0;
  bool hasSetHomeWinPoints() => _setHomeWinPoints != null;

  // "setAwayWin" field.
  bool? _setAwayWin;
  bool get setAwayWin => _setAwayWin ?? false;
  bool hasSetAwayWin() => _setAwayWin != null;

  // "setAwayWinPoints" field.
  int? _setAwayWinPoints;
  int get setAwayWinPoints => _setAwayWinPoints ?? 0;
  bool hasSetAwayWinPoints() => _setAwayWinPoints != null;

  // "setDraw" field.
  bool? _setDraw;
  bool get setDraw => _setDraw ?? false;
  bool hasSetDraw() => _setDraw != null;

  // "setDrawPoints" field.
  int? _setDrawPoints;
  int get setDrawPoints => _setDrawPoints ?? 0;
  bool hasSetDrawPoints() => _setDrawPoints != null;

  // "setHomeGoals" field.
  bool? _setHomeGoals;
  bool get setHomeGoals => _setHomeGoals ?? false;
  bool hasSetHomeGoals() => _setHomeGoals != null;

  // "setHomeGoalsPoints" field.
  int? _setHomeGoalsPoints;
  int get setHomeGoalsPoints => _setHomeGoalsPoints ?? 0;
  bool hasSetHomeGoalsPoints() => _setHomeGoalsPoints != null;

  // "setAwayGoals" field.
  bool? _setAwayGoals;
  bool get setAwayGoals => _setAwayGoals ?? false;
  bool hasSetAwayGoals() => _setAwayGoals != null;

  // "setAwayGoalsPoints" field.
  int? _setAwayGoalsPoints;
  int get setAwayGoalsPoints => _setAwayGoalsPoints ?? 0;
  bool hasSetAwayGoalsPoints() => _setAwayGoalsPoints != null;

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
    _randomCode = snapshotData['randomCode'] as String?;
    _isActive = snapshotData['is_Active'] as bool?;
    _setEndMatche = snapshotData['setEndMatche'] as String?;
    _setHomeWin = snapshotData['setHomeWin'] as bool?;
    _setHomeWinPoints = snapshotData['setHomeWinPoints'] as int?;
    _setAwayWin = snapshotData['setAwayWin'] as bool?;
    _setAwayWinPoints = snapshotData['setAwayWinPoints'] as int?;
    _setDraw = snapshotData['setDraw'] as bool?;
    _setDrawPoints = snapshotData['setDrawPoints'] as int?;
    _setHomeGoals = snapshotData['setHomeGoals'] as bool?;
    _setHomeGoalsPoints = snapshotData['setHomeGoalsPoints'] as int?;
    _setAwayGoals = snapshotData['setAwayGoals'] as bool?;
    _setAwayGoalsPoints = snapshotData['setAwayGoalsPoints'] as int?;
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
  String? randomCode,
  bool? isActive,
  String? setEndMatche,
  bool? setHomeWin,
  int? setHomeWinPoints,
  bool? setAwayWin,
  int? setAwayWinPoints,
  bool? setDraw,
  int? setDrawPoints,
  bool? setHomeGoals,
  int? setHomeGoalsPoints,
  bool? setAwayGoals,
  int? setAwayGoalsPoints,
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
      'randomCode': randomCode,
      'is_Active': isActive,
      'setEndMatche': setEndMatche,
      'setHomeWin': setHomeWin,
      'setHomeWinPoints': setHomeWinPoints,
      'setAwayWin': setAwayWin,
      'setAwayWinPoints': setAwayWinPoints,
      'setDraw': setDraw,
      'setDrawPoints': setDrawPoints,
      'setHomeGoals': setHomeGoals,
      'setHomeGoalsPoints': setHomeGoalsPoints,
      'setAwayGoals': setAwayGoals,
      'setAwayGoalsPoints': setAwayGoalsPoints,
    }.withoutNulls,
  );

  return firestoreData;
}
