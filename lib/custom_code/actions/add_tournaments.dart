// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
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
        final countriesData = await CountriesTable().querySingleRow(
            queryFn: (q) => q.eq(
                  'code',
                  countryCode.toString().trim(),
                ));
        final TournamentData = await TournamentTable().querySingleRow(
            queryFn: (q) => q
                .eq(
                  'countryID',
                  countriesData.single.id,
                )
                .eq(
                  'seasonYear',
                  int.parse(season.toString().trim()),
                ));

        if (TournamentData.isEmpty) {
          TournamentTable().insert({
            'tournamentCode': int.parse(tournament['league']['id'].toString()),
            'seasonYear': int.parse(seasons['year'].toString()),
            'seasonStart': seasons['start'].toString(),
            'seasonEnd': seasons['end'].toString(),
            'name': tournament['league']['name'].toString(),
            'nameAr': '-',
            'type': tournament['league']['type'].toString(),
            'logo': tournament['league']['logo'].toString(),
            'countryID': countriesData.single.id,
            'roleHomeWin': true,
            'roleHomeWinPoints': 3,
            'roleAwayWin': true,
            'roleAwayWinPoints': 3,
            'roleDraw': true,
            'roleDrawPoints': 0,
            'roleHomeGoals': true,
            'roleHomeGoalsPoints': 1,
            'roleAwayGoals': true,
            'roleAwayGoalsPoints': 1,
            'roleHasDoubleMatches': true,
            'addRandomCode': randomCode,
            'isActive': false,
          });
          /*
          .then((tournamentvalue) async {
            var teamsrequest = http.Request(
                'GET',
                Uri.parse(
                    'https://v3.football.api-sports.io/teams?league=${tournamentvalue.tournamentCode.toString()}&season=${tournamentvalue.seasonYear.toString()}'));
            teamsrequest.headers.addAll(headers);

            http.StreamedResponse response = await teamsrequest.send();
            if (response.statusCode == 200) {
              final teamsjson =
                  convert.jsonDecode(await response.stream.bytesToString());
              final teamsresponse = teamsjson['response'];
              teamsresponse.forEach((team) async {
                final teamsData = await TeamsTable().querySingleRow(
                    queryFn: (q) => q.eq(
                          'id',
                          int.parse(team['team']['id'].toString()),
                        ));
                if (teamsData.isEmpty) {
                  TeamsTable().insert({
                    'id': int.parse(team['team']['id'].toString()),
                    'name': team['team']['name'].toString(),
                    'nameAr': '-',
                    'code': team['team']['code'].toString(),
                    'countryID': team['team']['country'].toString(),
                    'logo': team['team']['logo'].toString(),
                  }).then((teamValue) async {
                    final tournamentTeamsData =
                        await TournamentTeamsTable().querySingleRow(
                      queryFn: (q) => q
                          .eq(
                            'tournamentID',
                            tournamentvalue.id,
                          )
                          .eq('teamID', teamValue.id),
                    );
                    if (tournamentTeamsData.isEmpty) {
                      TeamsTable().insert({
                        'tournamentID': tournamentvalue.id,
                        'teamID': teamValue.id,
                      });
                    }
                  });
                } else {
                  final tournamentTeamsData =
                      await TournamentTeamsTable().querySingleRow(
                    queryFn: (q) => q
                        .eq(
                          'tournamentID',
                          tournamentvalue.id,
                        )
                        .eq('teamID', teamsData.single.id),
                  );
                  if (tournamentTeamsData.isEmpty) {
                    TeamsTable().insert({
                      'tournamentID': tournamentvalue.id,
                      'teamID': teamsData.single.id,
                    });
                  }
                }
              });
            }
          });
          */
        }
      });
    });
  } else {}

  return randomCode;
}
