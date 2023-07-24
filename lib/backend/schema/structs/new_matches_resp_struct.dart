// ignore_for_file: unnecessary_getters_setters
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NewMatchesRespStruct extends FFFirebaseStruct {
  NewMatchesRespStruct({
    int? fixtureId,
    String? fixtureDate,
    DateTime? fixtureTimestamp,
    DateTime? fixturePeriodsFirst,
    DateTime? fixturePeriodsSecond,
    String? venueId,
    String? venueName,
    String? venueCity,
    String? statusLong,
    String? statusShort,
    int? leagueId,
    int? leagueSeason,
    int? teamsHomeId,
    int? teamsAwayId,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _fixtureId = fixtureId,
        _fixtureDate = fixtureDate,
        _fixtureTimestamp = fixtureTimestamp,
        _fixturePeriodsFirst = fixturePeriodsFirst,
        _fixturePeriodsSecond = fixturePeriodsSecond,
        _venueId = venueId,
        _venueName = venueName,
        _venueCity = venueCity,
        _statusLong = statusLong,
        _statusShort = statusShort,
        _leagueId = leagueId,
        _leagueSeason = leagueSeason,
        _teamsHomeId = teamsHomeId,
        _teamsAwayId = teamsAwayId,
        super(firestoreUtilData);

  // "fixtureId" field.
  int? _fixtureId;
  int get fixtureId => _fixtureId ?? 0;
  set fixtureId(int? val) => _fixtureId = val;
  void incrementFixtureId(int amount) => _fixtureId = fixtureId + amount;
  bool hasFixtureId() => _fixtureId != null;

  // "fixtureDate" field.
  String? _fixtureDate;
  String get fixtureDate => _fixtureDate ?? '';
  set fixtureDate(String? val) => _fixtureDate = val;
  bool hasFixtureDate() => _fixtureDate != null;

  // "fixtureTimestamp" field.
  DateTime? _fixtureTimestamp;
  DateTime? get fixtureTimestamp => _fixtureTimestamp;
  set fixtureTimestamp(DateTime? val) => _fixtureTimestamp = val;
  bool hasFixtureTimestamp() => _fixtureTimestamp != null;

  // "fixturePeriodsFirst" field.
  DateTime? _fixturePeriodsFirst;
  DateTime? get fixturePeriodsFirst => _fixturePeriodsFirst;
  set fixturePeriodsFirst(DateTime? val) => _fixturePeriodsFirst = val;
  bool hasFixturePeriodsFirst() => _fixturePeriodsFirst != null;

  // "fixturePeriodsSecond" field.
  DateTime? _fixturePeriodsSecond;
  DateTime? get fixturePeriodsSecond => _fixturePeriodsSecond;
  set fixturePeriodsSecond(DateTime? val) => _fixturePeriodsSecond = val;
  bool hasFixturePeriodsSecond() => _fixturePeriodsSecond != null;

  // "venueId" field.
  String? _venueId;
  String get venueId => _venueId ?? '';
  set venueId(String? val) => _venueId = val;
  bool hasVenueId() => _venueId != null;

  // "venueName" field.
  String? _venueName;
  String get venueName => _venueName ?? '';
  set venueName(String? val) => _venueName = val;
  bool hasVenueName() => _venueName != null;

  // "venueCity" field.
  String? _venueCity;
  String get venueCity => _venueCity ?? '';
  set venueCity(String? val) => _venueCity = val;
  bool hasVenueCity() => _venueCity != null;

  // "statusLong" field.
  String? _statusLong;
  String get statusLong => _statusLong ?? '';
  set statusLong(String? val) => _statusLong = val;
  bool hasStatusLong() => _statusLong != null;

  // "statusShort" field.
  String? _statusShort;
  String get statusShort => _statusShort ?? '';
  set statusShort(String? val) => _statusShort = val;
  bool hasStatusShort() => _statusShort != null;

  // "leagueId" field.
  int? _leagueId;
  int get leagueId => _leagueId ?? 0;
  set leagueId(int? val) => _leagueId = val;
  void incrementLeagueId(int amount) => _leagueId = leagueId + amount;
  bool hasLeagueId() => _leagueId != null;

  // "leagueSeason" field.
  int? _leagueSeason;
  int get leagueSeason => _leagueSeason ?? 0;
  set leagueSeason(int? val) => _leagueSeason = val;
  void incrementLeagueSeason(int amount) =>
      _leagueSeason = leagueSeason + amount;
  bool hasLeagueSeason() => _leagueSeason != null;

  // "teamsHomeId" field.
  int? _teamsHomeId;
  int get teamsHomeId => _teamsHomeId ?? 0;
  set teamsHomeId(int? val) => _teamsHomeId = val;
  void incrementTeamsHomeId(int amount) => _teamsHomeId = teamsHomeId + amount;
  bool hasTeamsHomeId() => _teamsHomeId != null;

  // "teamsAwayId" field.
  int? _teamsAwayId;
  int get teamsAwayId => _teamsAwayId ?? 0;
  set teamsAwayId(int? val) => _teamsAwayId = val;
  void incrementTeamsAwayId(int amount) => _teamsAwayId = teamsAwayId + amount;
  bool hasTeamsAwayId() => _teamsAwayId != null;

  static NewMatchesRespStruct fromMap(Map<String, dynamic> data) =>
      NewMatchesRespStruct(
        fixtureId: castToType<int>(data['fixtureId']),
        fixtureDate: data['fixtureDate'] as String?,
        fixtureTimestamp: data['fixtureTimestamp'] as DateTime?,
        fixturePeriodsFirst: data['fixturePeriodsFirst'] as DateTime?,
        fixturePeriodsSecond: data['fixturePeriodsSecond'] as DateTime?,
        venueId: data['venueId'] as String?,
        venueName: data['venueName'] as String?,
        venueCity: data['venueCity'] as String?,
        statusLong: data['statusLong'] as String?,
        statusShort: data['statusShort'] as String?,
        leagueId: castToType<int>(data['leagueId']),
        leagueSeason: castToType<int>(data['leagueSeason']),
        teamsHomeId: castToType<int>(data['teamsHomeId']),
        teamsAwayId: castToType<int>(data['teamsAwayId']),
      );

  static NewMatchesRespStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? NewMatchesRespStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'fixtureId': _fixtureId,
        'fixtureDate': _fixtureDate,
        'fixtureTimestamp': _fixtureTimestamp,
        'fixturePeriodsFirst': _fixturePeriodsFirst,
        'fixturePeriodsSecond': _fixturePeriodsSecond,
        'venueId': _venueId,
        'venueName': _venueName,
        'venueCity': _venueCity,
        'statusLong': _statusLong,
        'statusShort': _statusShort,
        'leagueId': _leagueId,
        'leagueSeason': _leagueSeason,
        'teamsHomeId': _teamsHomeId,
        'teamsAwayId': _teamsAwayId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'fixtureId': serializeParam(
          _fixtureId,
          ParamType.int,
        ),
        'fixtureDate': serializeParam(
          _fixtureDate,
          ParamType.String,
        ),
        'fixtureTimestamp': serializeParam(
          _fixtureTimestamp,
          ParamType.DateTime,
        ),
        'fixturePeriodsFirst': serializeParam(
          _fixturePeriodsFirst,
          ParamType.DateTime,
        ),
        'fixturePeriodsSecond': serializeParam(
          _fixturePeriodsSecond,
          ParamType.DateTime,
        ),
        'venueId': serializeParam(
          _venueId,
          ParamType.String,
        ),
        'venueName': serializeParam(
          _venueName,
          ParamType.String,
        ),
        'venueCity': serializeParam(
          _venueCity,
          ParamType.String,
        ),
        'statusLong': serializeParam(
          _statusLong,
          ParamType.String,
        ),
        'statusShort': serializeParam(
          _statusShort,
          ParamType.String,
        ),
        'leagueId': serializeParam(
          _leagueId,
          ParamType.int,
        ),
        'leagueSeason': serializeParam(
          _leagueSeason,
          ParamType.int,
        ),
        'teamsHomeId': serializeParam(
          _teamsHomeId,
          ParamType.int,
        ),
        'teamsAwayId': serializeParam(
          _teamsAwayId,
          ParamType.int,
        ),
      }.withoutNulls;

  static NewMatchesRespStruct fromSerializableMap(Map<String, dynamic> data) =>
      NewMatchesRespStruct(
        fixtureId: deserializeParam(
          data['fixtureId'],
          ParamType.int,
          false,
        ),
        fixtureDate: deserializeParam(
          data['fixtureDate'],
          ParamType.String,
          false,
        ),
        fixtureTimestamp: deserializeParam(
          data['fixtureTimestamp'],
          ParamType.DateTime,
          false,
        ),
        fixturePeriodsFirst: deserializeParam(
          data['fixturePeriodsFirst'],
          ParamType.DateTime,
          false,
        ),
        fixturePeriodsSecond: deserializeParam(
          data['fixturePeriodsSecond'],
          ParamType.DateTime,
          false,
        ),
        venueId: deserializeParam(
          data['venueId'],
          ParamType.String,
          false,
        ),
        venueName: deserializeParam(
          data['venueName'],
          ParamType.String,
          false,
        ),
        venueCity: deserializeParam(
          data['venueCity'],
          ParamType.String,
          false,
        ),
        statusLong: deserializeParam(
          data['statusLong'],
          ParamType.String,
          false,
        ),
        statusShort: deserializeParam(
          data['statusShort'],
          ParamType.String,
          false,
        ),
        leagueId: deserializeParam(
          data['leagueId'],
          ParamType.int,
          false,
        ),
        leagueSeason: deserializeParam(
          data['leagueSeason'],
          ParamType.int,
          false,
        ),
        teamsHomeId: deserializeParam(
          data['teamsHomeId'],
          ParamType.int,
          false,
        ),
        teamsAwayId: deserializeParam(
          data['teamsAwayId'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'NewMatchesRespStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is NewMatchesRespStruct &&
        fixtureId == other.fixtureId &&
        fixtureDate == other.fixtureDate &&
        fixtureTimestamp == other.fixtureTimestamp &&
        fixturePeriodsFirst == other.fixturePeriodsFirst &&
        fixturePeriodsSecond == other.fixturePeriodsSecond &&
        venueId == other.venueId &&
        venueName == other.venueName &&
        venueCity == other.venueCity &&
        statusLong == other.statusLong &&
        statusShort == other.statusShort &&
        leagueId == other.leagueId &&
        leagueSeason == other.leagueSeason &&
        teamsHomeId == other.teamsHomeId &&
        teamsAwayId == other.teamsAwayId;
  }

  @override
  int get hashCode => const ListEquality().hash([
        fixtureId,
        fixtureDate,
        fixtureTimestamp,
        fixturePeriodsFirst,
        fixturePeriodsSecond,
        venueId,
        venueName,
        venueCity,
        statusLong,
        statusShort,
        leagueId,
        leagueSeason,
        teamsHomeId,
        teamsAwayId
      ]);
}

NewMatchesRespStruct createNewMatchesRespStruct({
  int? fixtureId,
  String? fixtureDate,
  DateTime? fixtureTimestamp,
  DateTime? fixturePeriodsFirst,
  DateTime? fixturePeriodsSecond,
  String? venueId,
  String? venueName,
  String? venueCity,
  String? statusLong,
  String? statusShort,
  int? leagueId,
  int? leagueSeason,
  int? teamsHomeId,
  int? teamsAwayId,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    NewMatchesRespStruct(
      fixtureId: fixtureId,
      fixtureDate: fixtureDate,
      fixtureTimestamp: fixtureTimestamp,
      fixturePeriodsFirst: fixturePeriodsFirst,
      fixturePeriodsSecond: fixturePeriodsSecond,
      venueId: venueId,
      venueName: venueName,
      venueCity: venueCity,
      statusLong: statusLong,
      statusShort: statusShort,
      leagueId: leagueId,
      leagueSeason: leagueSeason,
      teamsHomeId: teamsHomeId,
      teamsAwayId: teamsAwayId,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

NewMatchesRespStruct? updateNewMatchesRespStruct(
  NewMatchesRespStruct? newMatchesResp, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    newMatchesResp
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addNewMatchesRespStructData(
  Map<String, dynamic> firestoreData,
  NewMatchesRespStruct? newMatchesResp,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (newMatchesResp == null) {
    return;
  }
  if (newMatchesResp.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && newMatchesResp.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final newMatchesRespData =
      getNewMatchesRespFirestoreData(newMatchesResp, forFieldValue);
  final nestedData =
      newMatchesRespData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = newMatchesResp.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getNewMatchesRespFirestoreData(
  NewMatchesRespStruct? newMatchesResp, [
  bool forFieldValue = false,
]) {
  if (newMatchesResp == null) {
    return {};
  }
  final firestoreData = mapToFirestore(newMatchesResp.toMap());

  // Add any Firestore field values
  newMatchesResp.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getNewMatchesRespListFirestoreData(
  List<NewMatchesRespStruct>? newMatchesResps,
) =>
    newMatchesResps
        ?.map((e) => getNewMatchesRespFirestoreData(e, true))
        .toList() ??
    [];
