// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

Future<String> addClubs(
  int? league,
  int? season,
) async {
  /*
  final firestore = FirebaseFirestore.instance;
  final collectionRef = firestore.collection('teams');

  */
  var teamsHasAddNO = 0;
  final firestore = FirebaseFirestore.instance;
  final collectionRef = firestore.collection('teams');
  var headers = {
    'x-rapidapi-key': 'ba825d70e7634e7015d2f116c1a07e03',
    'x-rapidapi-host': 'v3.football.api-sports.io'
  };
  var request = http.Request(
      'GET',
      Uri.parse(
          'https://v3.football.api-sports.io/teams?league=307&season=2022'));

  request.headers.addAll(headers);

  http.StreamedResponse response = await request.send();

  if (response.statusCode == 200) {
    final teamsjson = convert.jsonDecode(await response.stream.bytesToString());
    final teamsresponse = teamsjson['response'];

    teamsresponse.forEach((team) async {
      final doc = {
        'teamID': int.parse(team['team']['id'].toString()),
        'teamName': team['team']['name'].toString(),
        'teamCode': team['team']['code'].toString(),
        'teamCountry': team['team']['country'].toString(),
        'teamFounded': int.parse(team['team']['founded'].toString()),
        'teamLogo': team['team']['logo'].toString(),
        'teamNameAr': '',
      };
      final docFilter = await collectionRef
          .where('teamID', isEqualTo: int.parse(team['team']['id'].toString()))
          .get();
      if (docFilter.docs.isNotEmpty) {
        // Update the existing document with the new data
        //await docFilter.docs.first.reference.update(doc);
      } else {
        // Add a new document to the collection
        await collectionRef.add(doc);
        teamsHasAddNO = teamsHasAddNO + 1;
      }
    });

    return 'Number of teams has add is $teamsHasAddNO teams';
  } else {
    return 'Number of teams has add is 0 team';
  }
}
