// ignore_for_file: unnecessary_getters_setters
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CountriesDTStruct extends FFFirebaseStruct {
  CountriesDTStruct({
    String? name,
    String? nameAr,
    String? code,
    String? flag,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _name = name,
        _nameAr = nameAr,
        _code = code,
        _flag = flag,
        super(firestoreUtilData);

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

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

  // "flag" field.
  String? _flag;
  String get flag => _flag ?? '';
  set flag(String? val) => _flag = val;
  bool hasFlag() => _flag != null;

  static CountriesDTStruct fromMap(Map<String, dynamic> data) =>
      CountriesDTStruct(
        name: data['name'] as String?,
        nameAr: data['nameAr'] as String?,
        code: data['code'] as String?,
        flag: data['flag'] as String?,
      );

  static CountriesDTStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? CountriesDTStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'nameAr': _nameAr,
        'code': _code,
        'flag': _flag,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
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
        'flag': serializeParam(
          _flag,
          ParamType.String,
        ),
      }.withoutNulls;

  static CountriesDTStruct fromSerializableMap(Map<String, dynamic> data) =>
      CountriesDTStruct(
        name: deserializeParam(
          data['name'],
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
        flag: deserializeParam(
          data['flag'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CountriesDTStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CountriesDTStruct &&
        name == other.name &&
        nameAr == other.nameAr &&
        code == other.code &&
        flag == other.flag;
  }

  @override
  int get hashCode => const ListEquality().hash([name, nameAr, code, flag]);
}

CountriesDTStruct createCountriesDTStruct({
  String? name,
  String? nameAr,
  String? code,
  String? flag,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CountriesDTStruct(
      name: name,
      nameAr: nameAr,
      code: code,
      flag: flag,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CountriesDTStruct? updateCountriesDTStruct(
  CountriesDTStruct? countriesDT, {
  bool clearUnsetFields = true,
}) =>
    countriesDT
      ?..firestoreUtilData =
          FirestoreUtilData(clearUnsetFields: clearUnsetFields);

void addCountriesDTStructData(
  Map<String, dynamic> firestoreData,
  CountriesDTStruct? countriesDT,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (countriesDT == null) {
    return;
  }
  if (countriesDT.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && countriesDT.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final countriesDTData =
      getCountriesDTFirestoreData(countriesDT, forFieldValue);
  final nestedData =
      countriesDTData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = countriesDT.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCountriesDTFirestoreData(
  CountriesDTStruct? countriesDT, [
  bool forFieldValue = false,
]) {
  if (countriesDT == null) {
    return {};
  }
  final firestoreData = mapToFirestore(countriesDT.toMap());

  // Add any Firestore field values
  countriesDT.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCountriesDTListFirestoreData(
  List<CountriesDTStruct>? countriesDTs,
) =>
    countriesDTs?.map((e) => getCountriesDTFirestoreData(e, true)).toList() ??
    [];
