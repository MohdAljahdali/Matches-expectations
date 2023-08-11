import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  PTournamentsStruct _PTournaments = PTournamentsStruct();
  PTournamentsStruct get PTournaments => _PTournaments;
  set PTournaments(PTournamentsStruct _value) {
    _PTournaments = _value;
  }

  void updatePTournamentsStruct(Function(PTournamentsStruct) updateFn) {
    updateFn(_PTournaments);
  }

  String _aTournamentsListFilter = '';
  String get aTournamentsListFilter => _aTournamentsListFilter;
  set aTournamentsListFilter(String _value) {
    _aTournamentsListFilter = _value;
  }

  PAdminTournamentsLiatStruct _PAdminTournamentsList =
      PAdminTournamentsLiatStruct.fromSerializableMap(
          jsonDecode('{\"Translated\":\"\"}'));
  PAdminTournamentsLiatStruct get PAdminTournamentsList =>
      _PAdminTournamentsList;
  set PAdminTournamentsList(PAdminTournamentsLiatStruct _value) {
    _PAdminTournamentsList = _value;
  }

  void updatePAdminTournamentsListStruct(
      Function(PAdminTournamentsLiatStruct) updateFn) {
    updateFn(_PAdminTournamentsList);
  }

  PMatchesStruct _PMatches = PMatchesStruct();
  PMatchesStruct get PMatches => _PMatches;
  set PMatches(PMatchesStruct _value) {
    _PMatches = _value;
  }

  void updatePMatchesStruct(Function(PMatchesStruct) updateFn) {
    updateFn(_PMatches);
  }

  final _adminCountriesListManager =
      StreamRequestManager<List<CountriesRecord>>();
  Stream<List<CountriesRecord>> adminCountriesList({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<CountriesRecord>> Function() requestFn,
  }) =>
      _adminCountriesListManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearAdminCountriesListCache() => _adminCountriesListManager.clear();
  void clearAdminCountriesListCacheKey(String? uniqueKey) =>
      _adminCountriesListManager.clearRequest(uniqueKey);
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
