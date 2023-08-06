import '../database.dart';

class TournamentTeamsTable extends SupabaseTable<TournamentTeamsRow> {
  @override
  String get tableName => 'TournamentTeams';

  @override
  TournamentTeamsRow createRow(Map<String, dynamic> data) =>
      TournamentTeamsRow(data);
}

class TournamentTeamsRow extends SupabaseDataRow {
  TournamentTeamsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TournamentTeamsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  int? get tournamentID => getField<int>('tournamentID');
  set tournamentID(int? value) => setField<int>('tournamentID', value);

  int? get teamID => getField<int>('teamID');
  set teamID(int? value) => setField<int>('teamID', value);

  bool? get tournamentActive => getField<bool>('tournamentActive');
  set tournamentActive(bool? value) =>
      setField<bool>('tournamentActive', value);

  bool? get teamActive => getField<bool>('teamActive');
  set teamActive(bool? value) => setField<bool>('teamActive', value);
}
