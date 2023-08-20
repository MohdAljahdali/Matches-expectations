// ignore_for_file: unnecessary_getters_setters
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TeamStruct extends FFFirebaseStruct {
  TeamStruct({
    int? id,
    String? name,
    String? nameEn,
    String? nameAr,
    String? code,
    DocumentReference? countryRef,
    String? countryName,
    String? countryNameEn,
    String? countryNameAr,
    String? flagSvg,
    String? flagW20,
    String? flagW40,
    String? flagW80,
    String? flagW160,
    String? flagW320,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _name = name,
        _nameEn = nameEn,
        _nameAr = nameAr,
        _code = code,
        _countryRef = countryRef,
        _countryName = countryName,
        _countryNameEn = countryNameEn,
        _countryNameAr = countryNameAr,
        _flagSvg = flagSvg,
        _flagW20 = flagW20,
        _flagW40 = flagW40,
        _flagW80 = flagW80,
        _flagW160 = flagW160,
        _flagW320 = flagW320,
        super(firestoreUtilData);

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;
  void incrementId(int amount) => _id = id + amount;
  bool hasId() => _id != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "nameEn" field.
  String? _nameEn;
  String get nameEn => _nameEn ?? '';
  set nameEn(String? val) => _nameEn = val;
  bool hasNameEn() => _nameEn != null;

  // "nameAr" field.
  String? _nameAr;
  String get nameAr => _nameAr ?? '';
  set nameAr(String? val) => _nameAr = val;
  bool hasNameAr() => _nameAr != null;

  // "code" field.
  String? _code;
  String get code => _code ?? '';
  set code(String? val) => _code = val;
  bool hasCode() => _code != null;

  // "countryRef" field.
  DocumentReference? _countryRef;
  DocumentReference? get countryRef => _countryRef;
  set countryRef(DocumentReference? val) => _countryRef = val;
  bool hasCountryRef() => _countryRef != null;

  // "countryName" field.
  String? _countryName;
  String get countryName => _countryName ?? '';
  set countryName(String? val) => _countryName = val;
  bool hasCountryName() => _countryName != null;

  // "countryNameEn" field.
  String? _countryNameEn;
  String get countryNameEn => _countryNameEn ?? '';
  set countryNameEn(String? val) => _countryNameEn = val;
  bool hasCountryNameEn() => _countryNameEn != null;

  // "countryNameAr" field.
  String? _countryNameAr;
  String get countryNameAr => _countryNameAr ?? '';
  set countryNameAr(String? val) => _countryNameAr = val;
  bool hasCountryNameAr() => _countryNameAr != null;

  // "flagSvg" field.
  String? _flagSvg;
  String get flagSvg => _flagSvg ?? '';
  set flagSvg(String? val) => _flagSvg = val;
  bool hasFlagSvg() => _flagSvg != null;

  // "flagW20" field.
  String? _flagW20;
  String get flagW20 => _flagW20 ?? '';
  set flagW20(String? val) => _flagW20 = val;
  bool hasFlagW20() => _flagW20 != null;

  // "flagW40" field.
  String? _flagW40;
  String get flagW40 => _flagW40 ?? '';
  set flagW40(String? val) => _flagW40 = val;
  bool hasFlagW40() => _flagW40 != null;

  // "flagW80" field.
  String? _flagW80;
  String get flagW80 => _flagW80 ?? '';
  set flagW80(String? val) => _flagW80 = val;
  bool hasFlagW80() => _flagW80 != null;

  // "flagW160" field.
  String? _flagW160;
  String get flagW160 => _flagW160 ?? '';
  set flagW160(String? val) => _flagW160 = val;
  bool hasFlagW160() => _flagW160 != null;

  // "flagW320" field.
  String? _flagW320;
  String get flagW320 => _flagW320 ?? '';
  set flagW320(String? val) => _flagW320 = val;
  bool hasFlagW320() => _flagW320 != null;

  static TeamStruct fromMap(Map<String, dynamic> data) => TeamStruct(
        id: castToType<int>(data['id']),
        name: data['name'] as String?,
        nameEn: data['nameEn'] as String?,
        nameAr: data['nameAr'] as String?,
        code: data['code'] as String?,
        countryRef: data['countryRef'] as DocumentReference?,
        countryName: data['countryName'] as String?,
        countryNameEn: data['countryNameEn'] as String?,
        countryNameAr: data['countryNameAr'] as String?,
        flagSvg: data['flagSvg'] as String?,
        flagW20: data['flagW20'] as String?,
        flagW40: data['flagW40'] as String?,
        flagW80: data['flagW80'] as String?,
        flagW160: data['flagW160'] as String?,
        flagW320: data['flagW320'] as String?,
      );

  static TeamStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? TeamStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'nameEn': _nameEn,
        'nameAr': _nameAr,
        'code': _code,
        'countryRef': _countryRef,
        'countryName': _countryName,
        'countryNameEn': _countryNameEn,
        'countryNameAr': _countryNameAr,
        'flagSvg': _flagSvg,
        'flagW20': _flagW20,
        'flagW40': _flagW40,
        'flagW80': _flagW80,
        'flagW160': _flagW160,
        'flagW320': _flagW320,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'nameEn': serializeParam(
          _nameEn,
          ParamType.String,
        ),
        'nameAr': serializeParam(
          _nameAr,
          ParamType.String,
        ),
        'code': serializeParam(
          _code,
          ParamType.String,
        ),
        'countryRef': serializeParam(
          _countryRef,
          ParamType.DocumentReference,
        ),
        'countryName': serializeParam(
          _countryName,
          ParamType.String,
        ),
        'countryNameEn': serializeParam(
          _countryNameEn,
          ParamType.String,
        ),
        'countryNameAr': serializeParam(
          _countryNameAr,
          ParamType.String,
        ),
        'flagSvg': serializeParam(
          _flagSvg,
          ParamType.String,
        ),
        'flagW20': serializeParam(
          _flagW20,
          ParamType.String,
        ),
        'flagW40': serializeParam(
          _flagW40,
          ParamType.String,
        ),
        'flagW80': serializeParam(
          _flagW80,
          ParamType.String,
        ),
        'flagW160': serializeParam(
          _flagW160,
          ParamType.String,
        ),
        'flagW320': serializeParam(
          _flagW320,
          ParamType.String,
        ),
      }.withoutNulls;

  static TeamStruct fromSerializableMap(Map<String, dynamic> data) =>
      TeamStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        nameEn: deserializeParam(
          data['nameEn'],
          ParamType.String,
          false,
        ),
        nameAr: deserializeParam(
          data['nameAr'],
          ParamType.String,
          false,
        ),
        code: deserializeParam(
          data['code'],
          ParamType.String,
          false,
        ),
        countryRef: deserializeParam(
          data['countryRef'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['Countries'],
        ),
        countryName: deserializeParam(
          data['countryName'],
          ParamType.String,
          false,
        ),
        countryNameEn: deserializeParam(
          data['countryNameEn'],
          ParamType.String,
          false,
        ),
        countryNameAr: deserializeParam(
          data['countryNameAr'],
          ParamType.String,
          false,
        ),
        flagSvg: deserializeParam(
          data['flagSvg'],
          ParamType.String,
          false,
        ),
        flagW20: deserializeParam(
          data['flagW20'],
          ParamType.String,
          false,
        ),
        flagW40: deserializeParam(
          data['flagW40'],
          ParamType.String,
          false,
        ),
        flagW80: deserializeParam(
          data['flagW80'],
          ParamType.String,
          false,
        ),
        flagW160: deserializeParam(
          data['flagW160'],
          ParamType.String,
          false,
        ),
        flagW320: deserializeParam(
          data['flagW320'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TeamStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TeamStruct &&
        id == other.id &&
        name == other.name &&
        nameEn == other.nameEn &&
        nameAr == other.nameAr &&
        code == other.code &&
        countryRef == other.countryRef &&
        countryName == other.countryName &&
        countryNameEn == other.countryNameEn &&
        countryNameAr == other.countryNameAr &&
        flagSvg == other.flagSvg &&
        flagW20 == other.flagW20 &&
        flagW40 == other.flagW40 &&
        flagW80 == other.flagW80 &&
        flagW160 == other.flagW160 &&
        flagW320 == other.flagW320;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        name,
        nameEn,
        nameAr,
        code,
        countryRef,
        countryName,
        countryNameEn,
        countryNameAr,
        flagSvg,
        flagW20,
        flagW40,
        flagW80,
        flagW160,
        flagW320
      ]);
}

TeamStruct createTeamStruct({
  int? id,
  String? name,
  String? nameEn,
  String? nameAr,
  String? code,
  DocumentReference? countryRef,
  String? countryName,
  String? countryNameEn,
  String? countryNameAr,
  String? flagSvg,
  String? flagW20,
  String? flagW40,
  String? flagW80,
  String? flagW160,
  String? flagW320,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    TeamStruct(
      id: id,
      name: name,
      nameEn: nameEn,
      nameAr: nameAr,
      code: code,
      countryRef: countryRef,
      countryName: countryName,
      countryNameEn: countryNameEn,
      countryNameAr: countryNameAr,
      flagSvg: flagSvg,
      flagW20: flagW20,
      flagW40: flagW40,
      flagW80: flagW80,
      flagW160: flagW160,
      flagW320: flagW320,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

TeamStruct? updateTeamStruct(
  TeamStruct? team, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    team
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addTeamStructData(
  Map<String, dynamic> firestoreData,
  TeamStruct? team,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (team == null) {
    return;
  }
  if (team.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue && team.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final teamData = getTeamFirestoreData(team, forFieldValue);
  final nestedData = teamData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = team.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getTeamFirestoreData(
  TeamStruct? team, [
  bool forFieldValue = false,
]) {
  if (team == null) {
    return {};
  }
  final firestoreData = mapToFirestore(team.toMap());

  // Add any Firestore field values
  team.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getTeamListFirestoreData(
  List<TeamStruct>? teams,
) =>
    teams?.map((e) => getTeamFirestoreData(e, true)).toList() ?? [];
