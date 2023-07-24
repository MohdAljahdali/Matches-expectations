// ignore_for_file: unnecessary_getters_setters
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NewMatchesStruct extends FFFirebaseStruct {
  NewMatchesStruct({
    String? league,
    String? season,
    String? from,
    String? to,
    String? status,
    List<NewMatchesRespStruct>? response,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _league = league,
        _season = season,
        _from = from,
        _to = to,
        _status = status,
        _response = response,
        super(firestoreUtilData);

  // "league" field.
  String? _league;
  String get league => _league ?? '';
  set league(String? val) => _league = val;
  bool hasLeague() => _league != null;

  // "season" field.
  String? _season;
  String get season => _season ?? '';
  set season(String? val) => _season = val;
  bool hasSeason() => _season != null;

  // "from" field.
  String? _from;
  String get from => _from ?? '';
  set from(String? val) => _from = val;
  bool hasFrom() => _from != null;

  // "to" field.
  String? _to;
  String get to => _to ?? '';
  set to(String? val) => _to = val;
  bool hasTo() => _to != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;
  bool hasStatus() => _status != null;

  // "response" field.
  List<NewMatchesRespStruct>? _response;
  List<NewMatchesRespStruct> get response => _response ?? const [];
  set response(List<NewMatchesRespStruct>? val) => _response = val;
  void updateResponse(Function(List<NewMatchesRespStruct>) updateFn) =>
      updateFn(_response ??= []);
  bool hasResponse() => _response != null;

  static NewMatchesStruct fromMap(Map<String, dynamic> data) =>
      NewMatchesStruct(
        league: data['league'] as String?,
        season: data['season'] as String?,
        from: data['from'] as String?,
        to: data['to'] as String?,
        status: data['status'] as String?,
        response: getStructList(
          data['response'],
          NewMatchesRespStruct.fromMap,
        ),
      );

  static NewMatchesStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? NewMatchesStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'league': _league,
        'season': _season,
        'from': _from,
        'to': _to,
        'status': _status,
        'response': _response?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'league': serializeParam(
          _league,
          ParamType.String,
        ),
        'season': serializeParam(
          _season,
          ParamType.String,
        ),
        'from': serializeParam(
          _from,
          ParamType.String,
        ),
        'to': serializeParam(
          _to,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'response': serializeParam(
          _response,
          ParamType.DataStruct,
          true,
        ),
      }.withoutNulls;

  static NewMatchesStruct fromSerializableMap(Map<String, dynamic> data) =>
      NewMatchesStruct(
        league: deserializeParam(
          data['league'],
          ParamType.String,
          false,
        ),
        season: deserializeParam(
          data['season'],
          ParamType.String,
          false,
        ),
        from: deserializeParam(
          data['from'],
          ParamType.String,
          false,
        ),
        to: deserializeParam(
          data['to'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        response: deserializeStructParam<NewMatchesRespStruct>(
          data['response'],
          ParamType.DataStruct,
          true,
          structBuilder: NewMatchesRespStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'NewMatchesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is NewMatchesStruct &&
        league == other.league &&
        season == other.season &&
        from == other.from &&
        to == other.to &&
        status == other.status &&
        listEquality.equals(response, other.response);
  }

  @override
  int get hashCode =>
      const ListEquality().hash([league, season, from, to, status, response]);
}

NewMatchesStruct createNewMatchesStruct({
  String? league,
  String? season,
  String? from,
  String? to,
  String? status,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    NewMatchesStruct(
      league: league,
      season: season,
      from: from,
      to: to,
      status: status,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

NewMatchesStruct? updateNewMatchesStruct(
  NewMatchesStruct? newMatches, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    newMatches
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addNewMatchesStructData(
  Map<String, dynamic> firestoreData,
  NewMatchesStruct? newMatches,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (newMatches == null) {
    return;
  }
  if (newMatches.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && newMatches.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final newMatchesData = getNewMatchesFirestoreData(newMatches, forFieldValue);
  final nestedData = newMatchesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = newMatches.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getNewMatchesFirestoreData(
  NewMatchesStruct? newMatches, [
  bool forFieldValue = false,
]) {
  if (newMatches == null) {
    return {};
  }
  final firestoreData = mapToFirestore(newMatches.toMap());

  // Add any Firestore field values
  newMatches.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getNewMatchesListFirestoreData(
  List<NewMatchesStruct>? newMatchess,
) =>
    newMatchess?.map((e) => getNewMatchesFirestoreData(e, true)).toList() ?? [];
