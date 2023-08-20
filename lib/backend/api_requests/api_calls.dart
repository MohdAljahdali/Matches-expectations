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
  static FixturesDetailsCall fixturesDetailsCall = FixturesDetailsCall();
  static CountriesCall countriesCall = CountriesCall();
}

class FixturesDetailsCall {
  Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'Fixtures details',
      apiUrl: '${ApisportsGroup.baseUrl}/fixtures',
      callType: ApiCallType.GET,
      headers: {
        ...ApisportsGroup.headers,
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class CountriesCall {
  Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'Countries',
      apiUrl: '${ApisportsGroup.baseUrl}/countries',
      callType: ApiCallType.GET,
      headers: {
        ...ApisportsGroup.headers,
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic name(dynamic response) => getJsonField(
        response,
        r'''$.response[:].name''',
        true,
      );
  dynamic code(dynamic response) => getJsonField(
        response,
        r'''$.response[:].code''',
        true,
      );
  dynamic flag(dynamic response) => getJsonField(
        response,
        r'''$.response[:].flag''',
        true,
      );
}

/// End apisports Group Code

class ApiSportsStatusCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'ApiSportsStatus',
      apiUrl: 'https://v3.football.api-sports.io/status',
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
  static dynamic limitDay(dynamic response) => getJsonField(
        response,
        r'''$.response.requests.limit_day''',
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
