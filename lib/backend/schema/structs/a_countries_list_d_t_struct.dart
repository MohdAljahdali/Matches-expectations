// ignore_for_file: unnecessary_getters_setters
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ACountriesListDTStruct extends FFFirebaseStruct {
  ACountriesListDTStruct({
    String? arabicText,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _arabicText = arabicText,
        super(firestoreUtilData);

  // "arabicText" field.
  String? _arabicText;
  String get arabicText => _arabicText ?? '';
  set arabicText(String? val) => _arabicText = val;
  bool hasArabicText() => _arabicText != null;

  static ACountriesListDTStruct fromMap(Map<String, dynamic> data) =>
      ACountriesListDTStruct(
        arabicText: data['arabicText'] as String?,
      );

  static ACountriesListDTStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic>
          ? ACountriesListDTStruct.fromMap(data)
          : null;

  Map<String, dynamic> toMap() => {
        'arabicText': _arabicText,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'arabicText': serializeParam(
          _arabicText,
          ParamType.String,
        ),
      }.withoutNulls;

  static ACountriesListDTStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ACountriesListDTStruct(
        arabicText: deserializeParam(
          data['arabicText'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ACountriesListDTStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ACountriesListDTStruct && arabicText == other.arabicText;
  }

  @override
  int get hashCode => const ListEquality().hash([arabicText]);
}

ACountriesListDTStruct createACountriesListDTStruct({
  String? arabicText,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ACountriesListDTStruct(
      arabicText: arabicText,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ACountriesListDTStruct? updateACountriesListDTStruct(
  ACountriesListDTStruct? aCountriesListDT, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    aCountriesListDT
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addACountriesListDTStructData(
  Map<String, dynamic> firestoreData,
  ACountriesListDTStruct? aCountriesListDT,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (aCountriesListDT == null) {
    return;
  }
  if (aCountriesListDT.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && aCountriesListDT.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final aCountriesListDTData =
      getACountriesListDTFirestoreData(aCountriesListDT, forFieldValue);
  final nestedData =
      aCountriesListDTData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = aCountriesListDT.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getACountriesListDTFirestoreData(
  ACountriesListDTStruct? aCountriesListDT, [
  bool forFieldValue = false,
]) {
  if (aCountriesListDT == null) {
    return {};
  }
  final firestoreData = mapToFirestore(aCountriesListDT.toMap());

  // Add any Firestore field values
  aCountriesListDT.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getACountriesListDTListFirestoreData(
  List<ACountriesListDTStruct>? aCountriesListDTs,
) =>
    aCountriesListDTs
        ?.map((e) => getACountriesListDTFirestoreData(e, true))
        .toList() ??
    [];
