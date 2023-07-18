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

Future<String> addTournaments(
  String countryCode,
  String season,
  String randomCode,
) async {
  final firestore = FirebaseFirestore.instance;
  final TournamentsDoc = TournamentssRecord.collection;
  final TeamsDoc = TeamsRecord.collection;

  var headers = {
    'x-rapidapi-key': 'ba825d70e7634e7015d2f116c1a07e03',
    'x-rapidapi-host': 'v3.football.api-sports.io'
  };

  var tournamentRequest = http.Request(
      'GET',
      Uri.parse(
          'https://v3.football.api-sports.io/leagues?code=${countryCode.toString()}&season=${season.toString()}'));
//https://v3.football.api-sports.io/teams?code=${code.toString()}&type=${type.toString()}
  tournamentRequest.headers.addAll(headers);

  http.StreamedResponse response = await tournamentRequest.send();

  if (response.statusCode == 200) {
    final tournamentsjson =
        convert.jsonDecode(await response.stream.bytesToString());
    final tournamentsresponse = tournamentsjson['response'];

    tournamentsresponse.forEach((tournament) async {
      tournament['seasons'].forEach((seasons) async {
        String tournamentRefID =
            tournament['league']['id'].toString() + seasons['year'].toString();
        await TournamentsDoc.doc(tournamentRefID)
            .get()
            .then((DocumentSnapshot doc) {
          if (!doc.exists) {
            TournamentsDoc.doc(tournamentRefID)
                .set(createTournamentssRecordData(
              tournamentsRef: tournamentRefID,
              tournamentsID: int.parse(tournament['league']['id'].toString()),
              seasonYear: int.parse(seasons['year'].toString()),
              seasonStart: seasons['start'].toString(),
              seasonEnd: seasons['end'].toString(),
              name: tournament['league']['name'].toString(),
              nameAr: '-',
              type: tournament['league']['type'].toString(),
              logo: tournament['league']['logo'].toString(),
              countryName: tournament['country']['name'].toString(),
              countryCode: tournament['country']['code'].toString(),
              countryFlog: tournament['country']['flag'].toString(),
              addRandomCode: randomCode,
              isActive: false,
            ))
                .then((value) async {
              await TournamentssRecord.getDocumentOnce(
                      firestore.doc('Tournamentss/$tournamentRefID'))
                  .then((tournamentDoc) async {
                var teamsrequest = http.Request(
                    'GET',
                    Uri.parse(
                        'https://v3.football.api-sports.io/teams?league=${tournamentDoc.tournamentsID.toString()}&season=${tournamentDoc.seasonYear.toString()}'));
                teamsrequest.headers.addAll(headers);

                http.StreamedResponse response = await teamsrequest.send();
                if (response.statusCode == 200) {
                  final teamsjson =
                      convert.jsonDecode(await response.stream.bytesToString());
                  final teamsresponse = teamsjson['response'];
                  teamsresponse.forEach((team) async {
                    String teamRefID = team['team']['id'].toString();
                    await TeamsDoc.doc(teamRefID).get().then((doc) {
                      if (!doc.exists) {
                        TeamsDoc.doc(teamRefID)
                            .set(createTeamsRecordData(
                          teamRef: teamRefID,
                          teamID: int.parse(teamRefID),
                          name: team['team']['name'].toString(),
                          nameAr: '-',
                          code: team['team']['code'].toString(),
                          country: team['team']['country'].toString(),
                          logo: team['team']['logo'].toString(),
                        ))
                            .then((value) async {
                          await TeamsRecord.getDocumentOnce(
                                  firestore.doc('Teams/$teamRefID'))
                              .then((teamDoc) async {
                            await TournamentsDoc.doc(tournamentRefID).update({
                              'teamsList':
                                  FieldValue.arrayUnion([teamDoc.reference])
                            });
                          });
                        });
                      } else {
                        TeamsRecord.getDocumentOnce(
                                firestore.doc('Teams/$teamRefID'))
                            .then((teamDoc) async {
                          await TournamentsDoc.doc(tournamentRefID).update({
                            'teamsList':
                                FieldValue.arrayUnion([teamDoc.reference])
                          });
                        });
                      }
                    });
                  });
                }
              });
            });
          }
        });
      });
    });
  } else {}

  return randomCode;
}
