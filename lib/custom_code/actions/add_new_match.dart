// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'index.dart'; // Imports other custom actions
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

Future<List<MatchesDTStruct>> addNewMatch(
  int leagueID,
  int season,
  DateTime fromDate,
  DateTime toDate,
) async {
  // Date format
  var outputFormat = DateFormat('yyyy-MM-dd');
  var fromDateFormat = outputFormat.format(fromDate);
  var toDateFormat = outputFormat.format(toDate);
  List<MatchesDTStruct> listOfNewMatches = [];
  final firestore = FirebaseFirestore.instance;
  final MatchesRef = firestore.collection('Matches');

  // API
  var headers = {
    'x-rapidapi-key': 'ba825d70e7634e7015d2f116c1a07e03',
    'x-rapidapi-host': 'v3.football.api-sports.io'
  };
  var request = http.Request(
      'GET',
      Uri.parse(
          'https://v3.football.api-sports.io/fixtures?league=${leagueID.toString()}&season=${season.toString()}&from=${fromDateFormat.toString()}&to=${toDateFormat.toString()}&timezone=Asia/Riyadh'));

  request.headers.addAll(headers);

  http.StreamedResponse response = await request.send();

  if (response.statusCode == 200) {
    final Matchesjson =
        convert.jsonDecode(await response.stream.bytesToString());
    final Matchesresponse = Matchesjson['response'];

    Matchesresponse.forEach((matche) async {
      final addTeamsDoc = {
        'fixtureID': int.parse(matche['fixture']['id'].toString()),
        'fixtureDate': matche['fixture']['date'].toString(),
        'fixtureTimestamp':
            int.parse(matche['fixture']['timestamp'].toString()),
        'fixturePeriodFirst':
            int.parse(matche['fixture']['periods']['first'].toString()),
        'fixturePeriodSecond':
            int.parse(matche['fixture']['periods']['second'].toString()),
        'tournamentsRef': '/Tournaments/' +
            matche['league']['id'].toString() +
            matche['league']['season'].toString(),
        'teamHomeRef': '/Teams/' + matche['teams']['home']['id'].toString(),
        'teamAwayRef': '/Teams/' + matche['teams']['away']['id'].toString(),
        'teamHomeWinner': matche['teams']['home']['winner'].toString(),
        'teamAwayWinner': matche['teams']['away']['winner'].toString(),
        'fixtureStatusLong': matche['fixture']['status']['long'].toString(),
        'fixtureStatusShort': matche['fixture']['status']['short'].toString(),
        'fixtureStatusElapsed':
            int.parse(matche['fixture']['status']['elapsed'].toString()),
        'goalsHome': int.parse(matche['goals']['home'].toString()),
        'goalsAway': int.parse(matche['goals']['away'].toString()),
        'scoreHalftimeHome':
            int.parse(matche['score']['halftime']['home'].toString()),
        'scoreHalftimeAway':
            int.parse(matche['score']['halftime']['away'].toString()),
        'scoreFulltimeHome':
            int.parse(matche['score']['fulltime']['home'].toString()),
        'scoreFulltimeAway':
            int.parse(matche['score']['fulltime']['away'].toString()),
        'scoreExtratimeHome':
            int.parse(matche['score']['extratime']['home'].toString()),
        'scoreExtratimeAway':
            int.parse(matche['score']['extratime']['away'].toString()),
        'scorePenaltyHome':
            int.parse(matche['score']['penalty']['home'].toString()),
        'scorePenaltyAway':
            int.parse(matche['score']['penalty']['away'].toString()),
      };
      await MatchesRef.doc(matche['fixture']['id'].toString())
          .get()
          .then((doc) {
        if (!doc.exists) {
          MatchesRef.doc(matche['fixture']['id'].toString()).set(addTeamsDoc);
          listOfNewMatches.add(MatchesDTStruct.fromMap(addTeamsDoc));
        }
      });
    });
  }
  return listOfNewMatches;
}
