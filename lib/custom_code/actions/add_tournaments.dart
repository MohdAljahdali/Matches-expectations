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

import 'dart:js_interop';

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

  final tournamentApi = api(
      'https://v3.football.api-sports.io/leagues?id=${tournamentID.toString()}&season=${season.toString()}');
  if (!tournamentApi.isNull) {
    tournamentApi['response'].forEach((tournament) async {
      tournament['seasons'].forEach((seasons) async {
        await queryTournamentsRecordOnce(
          queryBuilder: (tournamentRecord) => tournamentRecord
              .where('id', isEqualTo: tournament['league']['id'])
              .where('seasonYear', isEqualTo: seasons['year']),
          singleRecord: true,
        ).then((tournamentData) async {
          if (tournamentData.isEmpty) {
            /*
            final countryData = await queryCountriesRecordOnce(
              queryBuilder: (countriesRecord) => countriesRecord.where('code',
                  isEqualTo: tournament['country']['code'].toString()),
              singleRecord: true,
            );
*/
            var tournamentRecordReference = TournamentsRecord.collection.doc(
                tournament['league']['id'].toString() +
                    seasons['year'].toString());
            var createTournamentsData = createTournamentsRecordData(
              id: int.parse(tournament['league']['id'].toString()),
              seasonYear: int.parse(seasons['year'].toString()),
              seasonStart: seasons['start'].toString(),
              seasonEnd: seasons['end'].toString(),
              name: tournament['league']['name'].toString(),
              nameEn: tournament['league']['name'].toString(),
              nameAr: '-',
              type: tournament['league']['type'].toString(),
              logo: tournament['league']['logo'].toString(),
              //country
              //countryRef: countryData.first.reference,
              isActive: false,
              addRandomCode: randomCode,
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
            );
            await tournamentRecordReference.set(createTournamentsData);
            /*
            final tournamentData = TournamentsRecord.getDocumentFromData(
                createTournamentsData, tournamentRecordReference);

            final teamsApi = api(
                'https://v3.football.api-sports.io/teams?league=${tournamentData.id.toString()}&season=${tournamentData.seasonYear.toString()}');
            if (!teamsApi.isNull) {
              teamsApi['response'].forEach((team) async {
                List<CountriesRecord> teamCountryData =
                    await queryCountriesRecordOnce(
                  queryBuilder: (countriesRecord) => countriesRecord.where(
                      'name',
                      isEqualTo: tournament['team']['country'].toString()),
                  singleRecord: true,
                );
                await queryTeamsRecordOnce(
                  queryBuilder: (teamsRecord) =>
                      teamsRecord.where('id', isEqualTo: team['team']['id']),
                  singleRecord: true,
                ).then((teamsData) async {
                  if (teamsData.isEmpty) {
                    var teamsRecordReference =
                        TeamsRecord.collection.doc(team['team']['id']);
                    var createTeamsData = createTeamsRecordData(
                      teamID: team['team']['id'],
                      name: team['team']['name'].toString(),
                      nameAr: '-',
                      code: team['team']['code'].toString(),
                      countryRef: teamCountryData.first.reference,
                      logo: team['team']['logo'].toString(),
                    );
                    await teamsRecordReference.set(createTournamentsData);
                    final teamData = TournamentsRecord.getDocumentFromData(
                        createTeamsData, teamsRecordReference);
                  }
                });
              });
            }
            */
          }
        });
      });
    });
  } else {}

  return randomCode;
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
