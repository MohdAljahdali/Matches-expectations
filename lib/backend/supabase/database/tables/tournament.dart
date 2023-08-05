import '../database.dart';

class TournamentTable extends SupabaseTable<TournamentRow> {
  @override
  String get tableName => 'Tournament';

  @override
  TournamentRow createRow(Map<String, dynamic> data) => TournamentRow(data);
}

class TournamentRow extends SupabaseDataRow {
  TournamentRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TournamentTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  int? get tournamentCode => getField<int>('tournament_code');
  set tournamentCode(int? value) => setField<int>('tournament_code', value);

  int? get seasonYear => getField<int>('seasonYear');
  set seasonYear(int? value) => setField<int>('seasonYear', value);

  String? get seasonStart => getField<String>('seasonStart');
  set seasonStart(String? value) => setField<String>('seasonStart', value);

  String? get seasonEnd => getField<String>('seasonEnd');
  set seasonEnd(String? value) => setField<String>('seasonEnd', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get nameAr => getField<String>('nameAr');
  set nameAr(String? value) => setField<String>('nameAr', value);

  String? get type => getField<String>('type');
  set type(String? value) => setField<String>('type', value);

  String? get logo => getField<String>('logo');
  set logo(String? value) => setField<String>('logo', value);

  int? get countryID => getField<int>('countryID');
  set countryID(int? value) => setField<int>('countryID', value);

  bool? get roleHomeWin => getField<bool>('roleHomeWin');
  set roleHomeWin(bool? value) => setField<bool>('roleHomeWin', value);

  int? get roleHomeWinPoints => getField<int>('roleHomeWinPoints');
  set roleHomeWinPoints(int? value) =>
      setField<int>('roleHomeWinPoints', value);

  bool? get roleAwayWin => getField<bool>('roleAwayWin');
  set roleAwayWin(bool? value) => setField<bool>('roleAwayWin', value);

  int? get roleAwayWinPoints => getField<int>('roleAwayWinPoints');
  set roleAwayWinPoints(int? value) =>
      setField<int>('roleAwayWinPoints', value);

  bool? get roleDraw => getField<bool>('roleDraw');
  set roleDraw(bool? value) => setField<bool>('roleDraw', value);

  int? get roleDrawPoints => getField<int>('roleDrawPoints');
  set roleDrawPoints(int? value) => setField<int>('roleDrawPoints', value);

  bool? get roleHomeGoals => getField<bool>('roleHomeGoals');
  set roleHomeGoals(bool? value) => setField<bool>('roleHomeGoals', value);

  int? get roleHomeGoalsPoints => getField<int>('roleHomeGoalsPoints');
  set roleHomeGoalsPoints(int? value) =>
      setField<int>('roleHomeGoalsPoints', value);

  bool? get roleAwayGoals => getField<bool>('roleAwayGoals');
  set roleAwayGoals(bool? value) => setField<bool>('roleAwayGoals', value);

  int? get roleAwayGoalsPoints => getField<int>('roleAwayGoalsPoints');
  set roleAwayGoalsPoints(int? value) =>
      setField<int>('roleAwayGoalsPoints', value);

  bool? get roleHasDoubleMatches => getField<bool>('roleHasDoubleMatches');
  set roleHasDoubleMatches(bool? value) =>
      setField<bool>('roleHasDoubleMatches', value);

  bool? get isActive => getField<bool>('isActive');
  set isActive(bool? value) => setField<bool>('isActive', value);

  String? get addRandomCode => getField<String>('addRandomCode');
  set addRandomCode(String? value) => setField<String>('addRandomCode', value);

  String? get countryCode => getField<String>('countryCode');
  set countryCode(String? value) => setField<String>('countryCode', value);
}
