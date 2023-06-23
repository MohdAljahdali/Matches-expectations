// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'index.dart'; // Imports other custom actions

import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

Future<String> addTeams(
  int league,
  int season,
  String randomCode,
) async {
  final firestore = FirebaseFirestore.instance;
  final TeamsRef = firestore.collection('Teams');
  var headers = {
    'x-rapidapi-key': 'ba825d70e7634e7015d2f116c1a07e03',
    'x-rapidapi-host': 'v3.football.api-sports.io'
  };
  var request = http.Request(
      'GET',
      Uri.parse(
          'https://v3.football.api-sports.io/teams?league=${league.toString()}&season=${season.toString()}'));

  request.headers.addAll(headers);

  http.StreamedResponse response = await request.send();
  if (response.statusCode == 200) {
    final teamsjson = convert.jsonDecode(await response.stream.bytesToString());
    final teamsresponse = teamsjson['response'];

    teamsresponse.forEach((team) async {
      final addTeamsDoc = {
        'teamID': int.parse(team['team']['id'].toString()),
        'teamName': team['team']['name'].toString(),
        'teamNameAr': '',
        'teamCode': team['team']['code'].toString(),
        'teamCountry': team['team']['country'].toString(),
        'teamLogo': team['team']['logo'].toString(),
      };
      await TeamsRef.doc(team['team']['id'].toString()).get().then((doc) {
        if (!doc.exists) {
          TeamsRef.doc(team['team']['id'].toString()).set(addTeamsDoc);
        }
      });
    });
  } else {}
  return randomCode;
}
