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

import 'index.dart'; // Imports other custom actions
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

Future<String> addTournaments(
  int tournamentID,
  int season,
  String randomCode,
) async {
  final firestore = FirebaseFirestore.instance;
  final TournamentsDoc = TournamentsRecord.collection;
  final TeamsDoc = TeamsRecord.collection;
  DocumentReference? tournamentRef;
  var headers = {
    'x-rapidapi-key': 'ba825d70e7634e7015d2f116c1a07e03',
    'x-rapidapi-host': 'v3.football.api-sports.io'
  };
  var request = http.Request(
      'GET',
      Uri.parse(
          'https://v3.football.api-sports.io/leagues?id=${tournamentID.toString()}&season=${season.toString()}'));
  request.headers.addAll(headers);
  http.StreamedResponse response = await request.send();
  if (response.statusCode == 200) {
    final tournamentjson =
        convert.jsonDecode(await response.stream.bytesToString());
    tournamentjson['response'].forEach((tournament) async {
      tournament['seasons'].forEach((seasons) async {
        List<TournamentsRecord> tournamentData =
            await queryTournamentsRecordOnce(
                queryBuilder: (tr) => tr
                    .where('id', isEqualTo: tournament['league']['id'])
                    .where('seasonYear', isEqualTo: seasons['year']),
                singleRecord: true);
        if (tournamentData.isEmpty) {
          List<CountriesRecord> countryData = await queryCountriesRecordOnce(
              queryBuilder: (cR) => cR.where('code',
                  isEqualTo: tournament['country']['code'].toString().trim()),
              singleRecord: true);
          TournamentsRecord.collection
              .doc(tournament['league']['id'].toString() +
                  seasons['year'].toString())
              .set(createTournamentsRecordData(
                id: int.parse(tournament['league']['id'].toString()),
                seasonYear: int.parse(seasons['year'].toString()),
                seasonStart: seasons['start'].toString(),
                seasonEnd: seasons['end'].toString(),
                name: tournament['league']['name'].toString(),
                nameEn: tournament['league']['name'].toString(),
                nameAr: '-',
                type: tournament['league']['type'].toString(),
                logo: tournament['league']['logo'].toString(),
                countryRef: countryData.first.reference,
                addRandomCode: randomCode,
                isActive: true,
                roleHasDoubleMatches: true,
                roleHomeWin: true,
                roleHomeWinPoints: 3,
                roleAwayWin: true,
                roleAwayWinPoints: 3,
                roleDraw: true,
                roleDrawPoints: 3,
                roleHomeGoals: true,
                roleHomeGoalsPoints: 2,
                roleAwayGoals: true,
                roleAwayGoalsPoints: 2,
                roleHomeYellowCard: false,
                roleHomeYellowCardPoints: 0,
                roleAwayYellowCard: false,
                roleAwayYellowCardPoints: 0,
                roleHomeRedCard: false,
                roleHomeRedCardPoints: 0,
                roleAwayRedCard: false,
                roleAwayRedCardPoints: 0,
              ))
              .whenComplete(() async {
            List<TournamentsRecord> tournamentData =
                await queryTournamentsRecordOnce(
                    queryBuilder: (tr) => tr
                        .where('id', isEqualTo: tournament['league']['id'])
                        .where('seasonYear', isEqualTo: seasons['year']),
                    singleRecord: true);
            if (tournamentData.isNotEmpty) {
              tournamentRef = tournamentData.first.reference;
              var request = http.Request(
                  'GET',
                  Uri.parse(
                      'https://v3.football.api-sports.io/teams?league=${tournamentData.first.id.toString()}&season=${tournamentData.first.seasonYear.toString()}'));
              request.headers.addAll(headers);
              http.StreamedResponse response = await request.send();
              if (response.statusCode == 200) {
                final teamsjson =
                    convert.jsonDecode(await response.stream.bytesToString());
                teamsjson['response'].forEach((team) async {
                  List<TeamsRecord> teamData = await queryTeamsRecordOnce(
                      queryBuilder: (tR) =>
                          tR..where('id', isEqualTo: team['team']['id']),
                      singleRecord: true);
                  if (teamData.isEmpty) {
                    List<CountriesRecord> countryData =
                        await queryCountriesRecordOnce(
                            queryBuilder: (cR) => cR.where('name',
                                isEqualTo:
                                    team['team']['country'].toString().trim()),
                            singleRecord: true);
                    TeamsRecord.collection
                        .doc(team['team']['id'].toString())
                        .set(createTeamsRecordData(
                          teamID: team['team']['id'],
                          name: team['team']['name'].toString(),
                          nameAr: '-',
                          code: team['team']['code'].toString(),
                          countryRef: countryData.first.reference,
                          logo: team['team']['logo'].toString(),
                        ))
                        .whenComplete(() async {
                      TeamsRecord.getDocumentOnce(firestore
                              .doc('Teams/${team['team']['id'].toString()}'))
                          .then((teamDoc) async {
                        tournamentRef?.update({
                          'teamsList':
                              FieldValue.arrayUnion([teamDoc.reference])
                        });
                      });
                    });
                  } else {
                    TeamsRecord.getDocumentOnce(firestore
                            .doc('Teams/${team['team']['id'].toString()}'))
                        .then((teamDoc) async {
                      tournamentRef?.update({
                        'teamsList': FieldValue.arrayUnion([teamDoc.reference])
                      });
                    });
                  }
                });
              }
            }
          });
        }
      });
    });
  } else {}

  return randomCode;
}
