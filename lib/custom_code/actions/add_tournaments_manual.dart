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

Future<String> addTournamentsManual(
  String tournamentID,
  String season,
  String randomCode,
) async {
  //List<TournamentsDTStruct> listOfNewTournaments = [];
  final firestore = FirebaseFirestore.instance;
  final TournamentsRef = firestore.collection('Tournaments');

  var headers = {
    'x-rapidapi-key': 'ba825d70e7634e7015d2f116c1a07e03',
    'x-rapidapi-host': 'v3.football.api-sports.io'
  };

  var request = http.Request(
      'GET',
      Uri.parse(
          'https://v3.football.api-sports.io/leagues?id=${tournamentID.toString()}&season=${season.toString()}'));
//https://v3.football.api-sports.io/teams?code=${code.toString()}&type=${type.toString()}
  request.headers.addAll(headers);

  http.StreamedResponse response = await request.send();

  if (response.statusCode == 200) {
    final tournamentsjson =
        convert.jsonDecode(await response.stream.bytesToString());
    final tournamentsresponse = tournamentsjson['response'];

    tournamentsresponse.forEach((tournament) async {
      tournament['seasons'].forEach((seasons) async {
        final addTournamentDoc = {
          'tournamentsID': int.parse(tournament['league']['id'].toString()),
          'seasonYear': int.parse(seasons['year'].toString()),
          'seasonStart': seasons['start'].toString(),
          'seasonEnd': seasons['end'].toString(),
          'name': tournament['league']['name'].toString(),
          'nameAr': '',
          'type': tournament['league']['type'].toString(),
          'logo': tournament['league']['logo'].toString(),
          'countryName': tournament['country']['name'].toString(),
          'countryCode': tournament['country']['code'].toString(),
          'countryFlog': tournament['country']['flag'].toString(),
          'randomCode': randomCode,
          'is_Active': false,
        };
        await TournamentsRef.doc(tournament['league']['id'].toString() +
                seasons['year'].toString())
            .get()
            .then((doc) {
          if (!doc.exists) {
            TournamentsRef.doc(tournament['league']['id'].toString() +
                    seasons['year'].toString())
                .set(addTournamentDoc);
            //listOfNewTournaments
            //.add(TournamentsDTStruct.fromMap(addTournamentDoc));
          }
        });
      });
    });
  } else {}
  //################################
  //return listOfNewTournaments;
  return randomCode;
}
