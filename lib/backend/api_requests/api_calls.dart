import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start apisports Group Code

class ApisportsGroup {
  static String baseUrl = 'https://v3.football.api-sports.io/';
  static Map<String, String> headers = {
    'x-rapidapi-key': 'ba825d70e7634e7015d2f116c1a07e03',
    'x-rapidapi-host': 'v3.football.api-sports.io',
  };
  static FixturesCall fixturesCall = FixturesCall();
}

class FixturesCall {
  Future<ApiCallResponse> call({
    int? league = 307,
    int? season = 2023,
    String? timezone = 'Asia/Riyadh',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'fixtures',
      apiUrl: '${ApisportsGroup.baseUrl}/fixtures',
      callType: ApiCallType.GET,
      headers: {
        ...ApisportsGroup.headers,
      },
      params: {
        'league': 307,
        'season': 2023,
        'timezone': "Asia/Riyadh",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic fixtureId(dynamic response) => getJsonField(
        response,
        r'''$.response[:].fixture.id''',
        true,
      );
  dynamic fixtureDate(dynamic response) => getJsonField(
        response,
        r'''$.response[:].fixture.date''',
        true,
      );
  dynamic fixtureTimestamp(dynamic response) => getJsonField(
        response,
        r'''$.response[:].fixture.timestamp''',
        true,
      );
  dynamic fixturePeriodsFirst(dynamic response) => getJsonField(
        response,
        r'''$.response[:].fixture.periods.first''',
        true,
      );
  dynamic fixturePeriodsSecond(dynamic response) => getJsonField(
        response,
        r'''$.response[:].fixture.periods.second''',
        true,
      );
  dynamic fixtureVenueId(dynamic response) => getJsonField(
        response,
        r'''$.response[:].fixture.venue.id''',
        true,
      );
  dynamic fixtureVenueName(dynamic response) => getJsonField(
        response,
        r'''$.response[:].fixture.venue.name''',
        true,
      );
  dynamic fixtureVenueCity(dynamic response) => getJsonField(
        response,
        r'''$.response[:].fixture.venue.city''',
        true,
      );
  dynamic fixtureStatusLong(dynamic response) => getJsonField(
        response,
        r'''$.response[:].fixture.status.long''',
        true,
      );
  dynamic fixtureStatusShort(dynamic response) => getJsonField(
        response,
        r'''$.response[:].fixture.status.short''',
        true,
      );
  dynamic fixtureStatusElapsed(dynamic response) => getJsonField(
        response,
        r'''$.response[:].fixture.status.elapsed''',
        true,
      );
  dynamic leagueId(dynamic response) => getJsonField(
        response,
        r'''$.response[:].league.id''',
        true,
      );
  dynamic leagueName(dynamic response) => getJsonField(
        response,
        r'''$.response[:].league.name''',
        true,
      );
  dynamic leagueCountry(dynamic response) => getJsonField(
        response,
        r'''$.response[:].league.country''',
        true,
      );
  dynamic leagueLogo(dynamic response) => getJsonField(
        response,
        r'''$.response[:].league.logo''',
        true,
      );
  dynamic leagueFlag(dynamic response) => getJsonField(
        response,
        r'''$.response[:].league.flag''',
        true,
      );
  dynamic leagueSeason(dynamic response) => getJsonField(
        response,
        r'''$.response[:].league.season''',
        true,
      );
  dynamic teamsHomeId(dynamic response) => getJsonField(
        response,
        r'''$.response[:].teams.home.id''',
        true,
      );
  dynamic teamsHomeName(dynamic response) => getJsonField(
        response,
        r'''$.response[:].teams.home.name''',
        true,
      );
  dynamic teamsHomeLogo(dynamic response) => getJsonField(
        response,
        r'''$.response[:].teams.home.logo''',
        true,
      );
  dynamic teamsHomeWinner(dynamic response) => getJsonField(
        response,
        r'''$.response[:].teams.home.winner''',
        true,
      );
  dynamic teamsawayid(dynamic response) => getJsonField(
        response,
        r'''$.response[:].teams.away.id''',
        true,
      );
  dynamic teamsAwayName(dynamic response) => getJsonField(
        response,
        r'''$.response[:].teams.away.name''',
        true,
      );
  dynamic teamsAwayLogo(dynamic response) => getJsonField(
        response,
        r'''$.response[:].teams.away.logo''',
        true,
      );
  dynamic teamsAwayWinner(dynamic response) => getJsonField(
        response,
        r'''$.response[:].teams.away.winner''',
        true,
      );
  dynamic goalsHome(dynamic response) => getJsonField(
        response,
        r'''$.response[:].goals.home''',
        true,
      );
  dynamic goalsAway(dynamic response) => getJsonField(
        response,
        r'''$.response[:].goals.away''',
        true,
      );
  dynamic scoreHalftimeHome(dynamic response) => getJsonField(
        response,
        r'''$.response[:].score.halftime.home''',
        true,
      );
  dynamic scoreHalftimeAway(dynamic response) => getJsonField(
        response,
        r'''$.response[:].score.halftime.away''',
        true,
      );
  dynamic scoreFulltimeHome(dynamic response) => getJsonField(
        response,
        r'''$.response[:].score.fulltime.home''',
        true,
      );
  dynamic scoreFulltimeAway(dynamic response) => getJsonField(
        response,
        r'''$.response[:].score.fulltime.away''',
        true,
      );
  dynamic scoreExtratimeHome(dynamic response) => getJsonField(
        response,
        r'''$.response[:].score.extratime.home''',
        true,
      );
  dynamic scoreExtratimeAway(dynamic response) => getJsonField(
        response,
        r'''$.response[:].score.extratime.away''',
        true,
      );
  dynamic scorePenaltyHome(dynamic response) => getJsonField(
        response,
        r'''$.response[:].score.penalty.home''',
        true,
      );
  dynamic scorePenaltyAway(dynamic response) => getJsonField(
        response,
        r'''$.response[:].score.penalty.away''',
        true,
      );
}

/// End apisports Group Code

class ApiSportsStatusCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'ApiSportsStatus',
      apiUrl: 'https://v3.football.api-sports.io/countries',
      callType: ApiCallType.GET,
      headers: {
        'x-rapidapi-key': 'ba825d70e7634e7015d2f116c1a07e03',
        'x-rapidapi-host': 'v3.football.api-sports.io',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic current(dynamic response) => getJsonField(
        response,
        r'''$.response.requests.current''',
      );
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
