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

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  bool hasId() => _id != null;

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

  // "nameEn" field.
  String? _nameEn;
  String get nameEn => _nameEn ?? '';
  bool hasNameEn() => _nameEn != null;

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

  // "countryRef" field.
  DocumentReference? _countryRef;
  DocumentReference? get countryRef => _countryRef;
  bool hasCountryRef() => _countryRef != null;

  // "isActive" field.
  bool? _isActive;
  bool get isActive => _isActive ?? false;
  bool hasIsActive() => _isActive != null;

  // "addRandomCode" field.
  String? _addRandomCode;
  String get addRandomCode => _addRandomCode ?? '';
  bool hasAddRandomCode() => _addRandomCode != null;

  // "roleHasDoubleMatches" field.
  bool? _roleHasDoubleMatches;
  bool get roleHasDoubleMatches => _roleHasDoubleMatches ?? false;
  bool hasRoleHasDoubleMatches() => _roleHasDoubleMatches != null;

  // "roundsList" field.
  List<TournamentRoundsStruct>? _roundsList;
  List<TournamentRoundsStruct> get roundsList => _roundsList ?? const [];
  bool hasRoundsList() => _roundsList != null;

  // "teamsList" field.
  List<TeamStruct>? _teamsList;
  List<TeamStruct> get teamsList => _teamsList ?? const [];
  bool hasTeamsList() => _teamsList != null;

  // "usersList" field.
  List<DocumentReference>? _usersList;
  List<DocumentReference> get usersList => _usersList ?? const [];
  bool hasUsersList() => _usersList != null;

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

  // "roleHomeYellowCard" field.
  bool? _roleHomeYellowCard;
  bool get roleHomeYellowCard => _roleHomeYellowCard ?? false;
  bool hasRoleHomeYellowCard() => _roleHomeYellowCard != null;

  // "roleHomeYellowCardPoints" field.
  int? _roleHomeYellowCardPoints;
  int get roleHomeYellowCardPoints => _roleHomeYellowCardPoints ?? 0;
  bool hasRoleHomeYellowCardPoints() => _roleHomeYellowCardPoints != null;

  // "roleAwayYellowCard" field.
  bool? _roleAwayYellowCard;
  bool get roleAwayYellowCard => _roleAwayYellowCard ?? false;
  bool hasRoleAwayYellowCard() => _roleAwayYellowCard != null;

  // "roleAwayYellowCardPoints" field.
  int? _roleAwayYellowCardPoints;
  int get roleAwayYellowCardPoints => _roleAwayYellowCardPoints ?? 0;
  bool hasRoleAwayYellowCardPoints() => _roleAwayYellowCardPoints != null;

  // "roleHomeRedCard" field.
  bool? _roleHomeRedCard;
  bool get roleHomeRedCard => _roleHomeRedCard ?? false;
  bool hasRoleHomeRedCard() => _roleHomeRedCard != null;

  // "roleHomeRedCardPoints" field.
  int? _roleHomeRedCardPoints;
  int get roleHomeRedCardPoints => _roleHomeRedCardPoints ?? 0;
  bool hasRoleHomeRedCardPoints() => _roleHomeRedCardPoints != null;

  // "roleAwayRedCard" field.
  bool? _roleAwayRedCard;
  bool get roleAwayRedCard => _roleAwayRedCard ?? false;
  bool hasRoleAwayRedCard() => _roleAwayRedCard != null;

  // "roleAwayRedCardPoints" field.
  int? _roleAwayRedCardPoints;
  int get roleAwayRedCardPoints => _roleAwayRedCardPoints ?? 0;
  bool hasRoleAwayRedCardPoints() => _roleAwayRedCardPoints != null;

  void _initializeFields() {
    _id = castToType<int>(snapshotData['id']);
    _seasonYear = castToType<int>(snapshotData['seasonYear']);
    _seasonStart = snapshotData['seasonStart'] as String?;
    _seasonEnd = snapshotData['seasonEnd'] as String?;
    _name = snapshotData['name'] as String?;
    _nameEn = snapshotData['nameEn'] as String?;
    _nameAr = snapshotData['nameAr'] as String?;
    _type = snapshotData['type'] as String?;
    _logo = snapshotData['logo'] as String?;
    _countryRef = snapshotData['countryRef'] as DocumentReference?;
    _isActive = snapshotData['isActive'] as bool?;
    _addRandomCode = snapshotData['addRandomCode'] as String?;
    _roleHasDoubleMatches = snapshotData['roleHasDoubleMatches'] as bool?;
    _roundsList = getStructList(
      snapshotData['roundsList'],
      TournamentRoundsStruct.fromMap,
    );
    _teamsList = getStructList(
      snapshotData['teamsList'],
      TeamStruct.fromMap,
    );
    _usersList = getDataList(snapshotData['usersList']);
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
    _roleHomeYellowCard = snapshotData['roleHomeYellowCard'] as bool?;
    _roleHomeYellowCardPoints =
        castToType<int>(snapshotData['roleHomeYellowCardPoints']);
    _roleAwayYellowCard = snapshotData['roleAwayYellowCard'] as bool?;
    _roleAwayYellowCardPoints =
        castToType<int>(snapshotData['roleAwayYellowCardPoints']);
    _roleHomeRedCard = snapshotData['roleHomeRedCard'] as bool?;
    _roleHomeRedCardPoints =
        castToType<int>(snapshotData['roleHomeRedCardPoints']);
    _roleAwayRedCard = snapshotData['roleAwayRedCard'] as bool?;
    _roleAwayRedCardPoints =
        castToType<int>(snapshotData['roleAwayRedCardPoints']);
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
  int? id,
  int? seasonYear,
  String? seasonStart,
  String? seasonEnd,
  String? name,
  String? nameEn,
  String? nameAr,
  String? type,
  String? logo,
  DocumentReference? countryRef,
  bool? isActive,
  String? addRandomCode,
  bool? roleHasDoubleMatches,
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
  bool? roleHomeYellowCard,
  int? roleHomeYellowCardPoints,
  bool? roleAwayYellowCard,
  int? roleAwayYellowCardPoints,
  bool? roleHomeRedCard,
  int? roleHomeRedCardPoints,
  bool? roleAwayRedCard,
  int? roleAwayRedCardPoints,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'seasonYear': seasonYear,
      'seasonStart': seasonStart,
      'seasonEnd': seasonEnd,
      'name': name,
      'nameEn': nameEn,
      'nameAr': nameAr,
      'type': type,
      'logo': logo,
      'countryRef': countryRef,
      'isActive': isActive,
      'addRandomCode': addRandomCode,
      'roleHasDoubleMatches': roleHasDoubleMatches,
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
      'roleHomeYellowCard': roleHomeYellowCard,
      'roleHomeYellowCardPoints': roleHomeYellowCardPoints,
      'roleAwayYellowCard': roleAwayYellowCard,
      'roleAwayYellowCardPoints': roleAwayYellowCardPoints,
      'roleHomeRedCard': roleHomeRedCard,
      'roleHomeRedCardPoints': roleHomeRedCardPoints,
      'roleAwayRedCard': roleAwayRedCard,
      'roleAwayRedCardPoints': roleAwayRedCardPoints,
    }.withoutNulls,
  );

  return firestoreData;
}

class TournamentsRecordDocumentEquality implements Equality<TournamentsRecord> {
  const TournamentsRecordDocumentEquality();

  @override
  bool equals(TournamentsRecord? e1, TournamentsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.id == e2?.id &&
        e1?.seasonYear == e2?.seasonYear &&
        e1?.seasonStart == e2?.seasonStart &&
        e1?.seasonEnd == e2?.seasonEnd &&
        e1?.name == e2?.name &&
        e1?.nameEn == e2?.nameEn &&
        e1?.nameAr == e2?.nameAr &&
        e1?.type == e2?.type &&
        e1?.logo == e2?.logo &&
        e1?.countryRef == e2?.countryRef &&
        e1?.isActive == e2?.isActive &&
        e1?.addRandomCode == e2?.addRandomCode &&
        e1?.roleHasDoubleMatches == e2?.roleHasDoubleMatches &&
        listEquality.equals(e1?.roundsList, e2?.roundsList) &&
        listEquality.equals(e1?.teamsList, e2?.teamsList) &&
        listEquality.equals(e1?.usersList, e2?.usersList) &&
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
        e1?.roleHomeYellowCard == e2?.roleHomeYellowCard &&
        e1?.roleHomeYellowCardPoints == e2?.roleHomeYellowCardPoints &&
        e1?.roleAwayYellowCard == e2?.roleAwayYellowCard &&
        e1?.roleAwayYellowCardPoints == e2?.roleAwayYellowCardPoints &&
        e1?.roleHomeRedCard == e2?.roleHomeRedCard &&
        e1?.roleHomeRedCardPoints == e2?.roleHomeRedCardPoints &&
        e1?.roleAwayRedCard == e2?.roleAwayRedCard &&
        e1?.roleAwayRedCardPoints == e2?.roleAwayRedCardPoints;
  }

  @override
  int hash(TournamentsRecord? e) => const ListEquality().hash([
        e?.id,
        e?.seasonYear,
        e?.seasonStart,
        e?.seasonEnd,
        e?.name,
        e?.nameEn,
        e?.nameAr,
        e?.type,
        e?.logo,
        e?.countryRef,
        e?.isActive,
        e?.addRandomCode,
        e?.roleHasDoubleMatches,
        e?.roundsList,
        e?.teamsList,
        e?.usersList,
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
        e?.roleHomeYellowCard,
        e?.roleHomeYellowCardPoints,
        e?.roleAwayYellowCard,
        e?.roleAwayYellowCardPoints,
        e?.roleHomeRedCard,
        e?.roleHomeRedCardPoints,
        e?.roleAwayRedCard,
        e?.roleAwayRedCardPoints
      ]);

  @override
  bool isValidKey(Object? o) => o is TournamentsRecord;
}
