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

import 'dart:js_interop';

import 'index.dart'; // Imports other custom actions
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

Future<String> addTournaments(
  String countryCode,
  String season,
  String randomCode,
) async {
  final supabase = SupaFlow.client;
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
        CountriesRow countryData = await supabase
            .from('Countries')
            .select('*')
            .eq('code', countryCode.toString().trim())
            .single();
        TournamentRow tournamentData = await supabase
            .from('Tournament')
            .select('*')
            .eq('tournamentCode',
                int.parse(tournament['league']['id'].toString()))
            .eq('seasonYear', int.parse(seasons['year'].toString()))
            .single();

        if (tournamentData.isNull) {
          TournamentRow tournamentInsertRow = await TournamentTable().insert({
            'tournamentCode': int.parse(tournament['league']['id'].toString()),
            'seasonYear': int.parse(seasons['year'].toString()),
            'seasonStart': seasons['start'].toString(),
            'seasonEnd': seasons['end'].toString(),
            'name': tournament['league']['name'].toString(),
            'nameAr': '-',
            'type': tournament['league']['type'].toString(),
            'logo': tournament['league']['logo'].toString(),
            'countryID': countryData.id,
            'roleHomeWin': true,
            'roleHomeWinPoints': 3,
            'roleAwayWin': true,
            'roleAwayWinPoints': 3,
            'roleDraw': true,
            'roleDrawPoints': 1,
            'roleHomeGoals': true,
            'roleHomeGoalsPoints': 1,
            'roleAwayGoals': true,
            'roleAwayGoalsPoints': 1,
            'roleHasDoubleMatches': true,
            'addRandomCode': randomCode,
            'isActive': false,
          });

          if (tournamentInsertRow.data.isNotEmpty) {
            var teamsrequest = http.Request(
                'GET',
                Uri.parse(
                    'https://v3.football.api-sports.io/teams?league=${tournamentInsertRow.tournamentCode.toString()}&season=${tournamentInsertRow.seasonYear.toString()}'));
            teamsrequest.headers.addAll(headers);
            http.StreamedResponse response = await teamsrequest.send();
            if (response.statusCode == 200) {
              final teamsjson =
                  convert.jsonDecode(await response.stream.bytesToString());
              final teamsresponse = teamsjson['response'];
              teamsresponse.forEach((team) async {
                TeamsRow teamsData = await supabase
                    .from('Teams')
                    .select('*')
                    .eq('id', int.parse(team['team']['id'].toString()))
                    .single();
                if (teamsData.data.isEmpty) {
                  TeamsRow teamInsertRow = await TeamsTable().insert({
                    'id': int.parse(team['team']['id'].toString()),
                    'name': team['team']['name'].toString(),
                    'nameAr': '-',
                    'code': team['team']['code'].toString(),
                    'logo': team['team']['logo'].toString(),
                  });

                  if (teamInsertRow.data.isNotEmpty) {
                    TournamentTeamsRow tournamentTeamsData = await supabase
                        .from('TournamentTeams')
                        .select('*')
                        .eq('tournamentID', tournamentInsertRow.id)
                        .eq('teamID', teamInsertRow.id)
                        .single();
                    if (tournamentTeamsData.data.isEmpty) {
                      TournamentTeamsRow tournamentTeamsInsertRow =
                          await TournamentTeamsTable().insert({
                        'tournamentID': tournamentInsertRow.id,
                        'teamID': teamInsertRow.id,
                      });
                    }
                  }
                } else {
                  TeamsRow teamsData = await supabase
                      .from('Teams')
                      .select('*')
                      .eq('id', int.parse(team['team']['id'].toString()))
                      .single();
                  TournamentTeamsRow tournamentTeamsData = await supabase
                      .from('TournamentTeams')
                      .select('*')
                      .eq('tournamentID', tournamentInsertRow.id)
                      .eq('teamID', teamsData.id)
                      .single();
                  if (tournamentTeamsData.data.isEmpty) {
                    TournamentTeamsRow tournamentTeamsInsertRow =
                        await TournamentTeamsTable().insert({
                      'tournamentID': tournamentInsertRow.id,
                      'teamID': teamsData.id,
                    });
                  }
                }
              });
            }
          }
        }
      });
    });
  } else {}

  return randomCode;
}
