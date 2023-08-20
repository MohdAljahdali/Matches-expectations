// ignore_for_file: unnecessary_getters_setters
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FixtureVenueStruct extends FFFirebaseStruct {
  FixtureVenueStruct({
    int? id,
    String? nameEn,
    String? nameAr,
    String? cityEn,
    String? cityAr,
    DocumentReference? countryRef,
    String? countryEn,
    String? countryAr,
    int? capacity,
    String? surface,
    String? image,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _nameEn = nameEn,
        _nameAr = nameAr,
        _cityEn = cityEn,
        _cityAr = cityAr,
        _countryRef = countryRef,
        _countryEn = countryEn,
        _countryAr = countryAr,
        _capacity = capacity,
        _surface = surface,
        _image = image,
        super(firestoreUtilData);

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;
  void incrementId(int amount) => _id = id + amount;
  bool hasId() => _id != null;

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

  // "cityEn" field.
  String? _cityEn;
  String get cityEn => _cityEn ?? '';
  set cityEn(String? val) => _cityEn = val;
  bool hasCityEn() => _cityEn != null;

  // "cityAr" field.
  String? _cityAr;
  String get cityAr => _cityAr ?? '';
  set cityAr(String? val) => _cityAr = val;
  bool hasCityAr() => _cityAr != null;

  // "countryRef" field.
  DocumentReference? _countryRef;
  DocumentReference? get countryRef => _countryRef;
  set countryRef(DocumentReference? val) => _countryRef = val;
  bool hasCountryRef() => _countryRef != null;

  // "countryEn" field.
  String? _countryEn;
  String get countryEn => _countryEn ?? '';
  set countryEn(String? val) => _countryEn = val;
  bool hasCountryEn() => _countryEn != null;

  // "countryAr" field.
  String? _countryAr;
  String get countryAr => _countryAr ?? '';
  set countryAr(String? val) => _countryAr = val;
  bool hasCountryAr() => _countryAr != null;

  // "capacity" field.
  int? _capacity;
  int get capacity => _capacity ?? 0;
  set capacity(int? val) => _capacity = val;
  void incrementCapacity(int amount) => _capacity = capacity + amount;
  bool hasCapacity() => _capacity != null;

  // "surface" field.
  String? _surface;
  String get surface => _surface ?? '';
  set surface(String? val) => _surface = val;
  bool hasSurface() => _surface != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;
  bool hasImage() => _image != null;

  static FixtureVenueStruct fromMap(Map<String, dynamic> data) =>
      FixtureVenueStruct(
        id: castToType<int>(data['id']),
        nameEn: data['nameEn'] as String?,
        nameAr: data['nameAr'] as String?,
        cityEn: data['cityEn'] as String?,
        cityAr: data['cityAr'] as String?,
        countryRef: data['countryRef'] as DocumentReference?,
        countryEn: data['countryEn'] as String?,
        countryAr: data['countryAr'] as String?,
        capacity: castToType<int>(data['capacity']),
        surface: data['surface'] as String?,
        image: data['image'] as String?,
      );

  static FixtureVenueStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? FixtureVenueStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'nameEn': _nameEn,
        'nameAr': _nameAr,
        'cityEn': _cityEn,
        'cityAr': _cityAr,
        'countryRef': _countryRef,
        'countryEn': _countryEn,
        'countryAr': _countryAr,
        'capacity': _capacity,
        'surface': _surface,
        'image': _image,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'nameEn': serializeParam(
          _nameEn,
          ParamType.String,
        ),
        'nameAr': serializeParam(
          _nameAr,
          ParamType.String,
        ),
        'cityEn': serializeParam(
          _cityEn,
          ParamType.String,
        ),
        'cityAr': serializeParam(
          _cityAr,
          ParamType.String,
        ),
        'countryRef': serializeParam(
          _countryRef,
          ParamType.DocumentReference,
        ),
        'countryEn': serializeParam(
          _countryEn,
          ParamType.String,
        ),
        'countryAr': serializeParam(
          _countryAr,
          ParamType.String,
        ),
        'capacity': serializeParam(
          _capacity,
          ParamType.int,
        ),
        'surface': serializeParam(
          _surface,
          ParamType.String,
        ),
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
      }.withoutNulls;

  static FixtureVenueStruct fromSerializableMap(Map<String, dynamic> data) =>
      FixtureVenueStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
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
        cityEn: deserializeParam(
          data['cityEn'],
          ParamType.String,
          false,
        ),
        cityAr: deserializeParam(
          data['cityAr'],
          ParamType.String,
          false,
        ),
        countryRef: deserializeParam(
          data['countryRef'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['Countries'],
        ),
        countryEn: deserializeParam(
          data['countryEn'],
          ParamType.String,
          false,
        ),
        countryAr: deserializeParam(
          data['countryAr'],
          ParamType.String,
          false,
        ),
        capacity: deserializeParam(
          data['capacity'],
          ParamType.int,
          false,
        ),
        surface: deserializeParam(
          data['surface'],
          ParamType.String,
          false,
        ),
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'FixtureVenueStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is FixtureVenueStruct &&
        id == other.id &&
        nameEn == other.nameEn &&
        nameAr == other.nameAr &&
        cityEn == other.cityEn &&
        cityAr == other.cityAr &&
        countryRef == other.countryRef &&
        countryEn == other.countryEn &&
        countryAr == other.countryAr &&
        capacity == other.capacity &&
        surface == other.surface &&
        image == other.image;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        nameEn,
        nameAr,
        cityEn,
        cityAr,
        countryRef,
        countryEn,
        countryAr,
        capacity,
        surface,
        image
      ]);
}

FixtureVenueStruct createFixtureVenueStruct({
  int? id,
  String? nameEn,
  String? nameAr,
  String? cityEn,
  String? cityAr,
  DocumentReference? countryRef,
  String? countryEn,
  String? countryAr,
  int? capacity,
  String? surface,
  String? image,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    FixtureVenueStruct(
      id: id,
      nameEn: nameEn,
      nameAr: nameAr,
      cityEn: cityEn,
      cityAr: cityAr,
      countryRef: countryRef,
      countryEn: countryEn,
      countryAr: countryAr,
      capacity: capacity,
      surface: surface,
      image: image,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

FixtureVenueStruct? updateFixtureVenueStruct(
  FixtureVenueStruct? fixtureVenue, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    fixtureVenue
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addFixtureVenueStructData(
  Map<String, dynamic> firestoreData,
  FixtureVenueStruct? fixtureVenue,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (fixtureVenue == null) {
    return;
  }
  if (fixtureVenue.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && fixtureVenue.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final fixtureVenueData =
      getFixtureVenueFirestoreData(fixtureVenue, forFieldValue);
  final nestedData =
      fixtureVenueData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = fixtureVenue.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getFixtureVenueFirestoreData(
  FixtureVenueStruct? fixtureVenue, [
  bool forFieldValue = false,
]) {
  if (fixtureVenue == null) {
    return {};
  }
  final firestoreData = mapToFirestore(fixtureVenue.toMap());

  // Add any Firestore field values
  fixtureVenue.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getFixtureVenueListFirestoreData(
  List<FixtureVenueStruct>? fixtureVenues,
) =>
    fixtureVenues?.map((e) => getFixtureVenueFirestoreData(e, true)).toList() ??
    [];
