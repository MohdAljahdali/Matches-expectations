import '../database.dart';

class TeamsTable extends SupabaseTable<TeamsRow> {
  @override
  String get tableName => 'Teams';

  @override
  TeamsRow createRow(Map<String, dynamic> data) => TeamsRow(data);
}

class TeamsRow extends SupabaseDataRow {
  TeamsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TeamsTable();

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

  int? get countryID => getField<int>('countryID');
  set countryID(int? value) => setField<int>('countryID', value);

  String? get logo => getField<String>('logo');
  set logo(String? value) => setField<String>('logo', value);
}
