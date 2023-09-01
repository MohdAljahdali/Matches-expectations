// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

Future<String?> newCustomAction() async {
  // Add your function code here!
  /*
  List<CountriesRecord> fsfs = await queryCountriesRecordOnce(
      queryBuilder: (countriesRecord) =>
          countriesRecord.where('code', isEqualTo: 'SA'),
      singleRecord: true);
  */
  final tournamentApi =
      api('https://v3.football.api-sports.io/leagues?id=207&season=2023');
  return tournamentApi['response'][0]['league']['name'].toString();
}

dynamic api(String apiUrl) async {
  var headers = {
    'x-rapidapi-key': 'ba825d70e7634e7015d2f116c1a07e03',
    'x-rapidapi-host': 'v3.football.api-sports.io'
  };
  var tournamentRequest = http.Request('GET', Uri.parse(apiUrl));
  tournamentRequest.headers.addAll(headers);
  http.StreamedResponse response = await tournamentRequest.send();
  if (response.statusCode == 200) {
    return convert.jsonDecode(await response.stream.bytesToString());
  } else {
    return null;
  }
}
