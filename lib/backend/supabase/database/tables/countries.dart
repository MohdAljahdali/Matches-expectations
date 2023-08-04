import '../database.dart';

class CountriesTable extends SupabaseTable<CountriesRow> {
  @override
  String get tableName => 'Countries';

  @override
  CountriesRow createRow(Map<String, dynamic> data) => CountriesRow(data);
}

class CountriesRow extends SupabaseDataRow {
  CountriesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CountriesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get nameAr => getField<String>('nameAr');
  set nameAr(String? value) => setField<String>('nameAr', value);

  String? get code => getField<String>('code');
  set code(String? value) => setField<String>('code', value);

  bool? get isActive => getField<bool>('isActive');
  set isActive(bool? value) => setField<bool>('isActive', value);

  String? get flagSvg => getField<String>('flagSvg');
  set flagSvg(String? value) => setField<String>('flagSvg', value);

  String? get flagW20 => getField<String>('flagW20');
  set flagW20(String? value) => setField<String>('flagW20', value);

  String? get flagW40 => getField<String>('flagW40');
  set flagW40(String? value) => setField<String>('flagW40', value);

  String? get flagW80 => getField<String>('flagW80');
  set flagW80(String? value) => setField<String>('flagW80', value);

  String? get flagW160 => getField<String>('flagW160');
  set flagW160(String? value) => setField<String>('flagW160', value);

  String? get flagW320 => getField<String>('flagW320');
  set flagW320(String? value) => setField<String>('flagW320', value);
}
