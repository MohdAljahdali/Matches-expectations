// ignore_for_file: unnecessary_getters_setters
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TournamentRoundsStruct extends FFFirebaseStruct {
  TournamentRoundsStruct({
    int? index,
    String? name,
    String? nameEn,
    String? nameAr,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _index = index,
        _name = name,
        _nameEn = nameEn,
        _nameAr = nameAr,
        super(firestoreUtilData);

  // "index" field.
  int? _index;
  int get index => _index ?? 0;
  set index(int? val) => _index = val;
  void incrementIndex(int amount) => _index = index + amount;
  bool hasIndex() => _index != null;

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

  static TournamentRoundsStruct fromMap(Map<String, dynamic> data) =>
      TournamentRoundsStruct(
        index: castToType<int>(data['index']),
        name: data['name'] as String?,
        nameEn: data['nameEn'] as String?,
        nameAr: data['nameAr'] as String?,
      );

  static TournamentRoundsStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic>
          ? TournamentRoundsStruct.fromMap(data)
          : null;

  Map<String, dynamic> toMap() => {
        'index': _index,
        'name': _name,
        'nameEn': _nameEn,
        'nameAr': _nameAr,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'index': serializeParam(
          _index,
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
      }.withoutNulls;

  static TournamentRoundsStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      TournamentRoundsStruct(
        index: deserializeParam(
          data['index'],
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
      );

  @override
  String toString() => 'TournamentRoundsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TournamentRoundsStruct &&
        index == other.index &&
        name == other.name &&
        nameEn == other.nameEn &&
        nameAr == other.nameAr;
  }

  @override
  int get hashCode => const ListEquality().hash([index, name, nameEn, nameAr]);
}

TournamentRoundsStruct createTournamentRoundsStruct({
  int? index,
  String? name,
  String? nameEn,
  String? nameAr,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    TournamentRoundsStruct(
      index: index,
      name: name,
      nameEn: nameEn,
      nameAr: nameAr,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

TournamentRoundsStruct? updateTournamentRoundsStruct(
  TournamentRoundsStruct? tournamentRounds, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    tournamentRounds
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addTournamentRoundsStructData(
  Map<String, dynamic> firestoreData,
  TournamentRoundsStruct? tournamentRounds,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (tournamentRounds == null) {
    return;
  }
  if (tournamentRounds.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && tournamentRounds.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final tournamentRoundsData =
      getTournamentRoundsFirestoreData(tournamentRounds, forFieldValue);
  final nestedData =
      tournamentRoundsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = tournamentRounds.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getTournamentRoundsFirestoreData(
  TournamentRoundsStruct? tournamentRounds, [
  bool forFieldValue = false,
]) {
  if (tournamentRounds == null) {
    return {};
  }
  final firestoreData = mapToFirestore(tournamentRounds.toMap());

  // Add any Firestore field values
  tournamentRounds.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getTournamentRoundsListFirestoreData(
  List<TournamentRoundsStruct>? tournamentRoundss,
) =>
    tournamentRoundss
        ?.map((e) => getTournamentRoundsFirestoreData(e, true))
        .toList() ??
    [];
