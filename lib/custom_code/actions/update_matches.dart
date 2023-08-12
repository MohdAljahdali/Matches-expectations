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

import 'dart:math' as math;
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

Future<String> updateMatches(String tournamentRef) async {
  final firestore = FirebaseFirestore.instance;
  final MatchesCol = firestore.collection('Matches');
  var headers = {
    'x-rapidapi-key': 'ba825d70e7634e7015d2f116c1a07e03',
    'x-rapidapi-host': 'v3.football.api-sports.io'
  };
  await TournamentsRecord.getDocumentOnce(
          firestore.doc('Tournaments/$tournamentRef'))
      .then((tournamentDoc) async {
    var request = http.Request(
        'GET',
        Uri.parse(
            'https://v3.football.api-sports.io/fixtures?live=0-${tournamentDoc.tournamentsID.toString()}&timezone=Asia/Riyadh'));
    request.headers.addAll(headers);
    http.StreamedResponse response = await request.send();
    if (response.statusCode == 200) {
      final Matchesjson =
          convert.jsonDecode(await response.stream.bytesToString());
      final Matchesresponse = Matchesjson['response'];
      Matchesresponse.forEach((matche) async {
        await MatchesCol.doc(matche['fixture']['id'].toString())
            .get()
            .then((matcheDoc) async {
          if (matcheDoc.exists) {
            matcheDoc.reference.update(createMatchesRecordData(
              fixtureStatusGeneral: getStatusGeneral(
                  matche['fixture']['status']['short'].toString().trim()),
              fixtureStatusLongEn:
                  matche['fixture']['status']['long'].toString().trim(),
              fixtureStatusLongAr:
                  matche['fixture']['status']['long'].toString().trim(),
              fixtureStatusShort:
                  matche['fixture']['status']['short'].toString().trim(),
              fixtureStatusElapsed:
                  matche['fixture']['status']['elapsed'].toString().trim(),
              goalsHome: matche['goals']['home'],
              goalsAway: matche['goals']['away'],
              scoreHalftimeHome: matche['score']['halftime']['home'],
              scoreHalftimeAway: matche['score']['halftime']['away'],
              scoreFulltimeHome: matche['score']['fulltime']['home'],
              scoreFulltimeAway: matche['score']['fulltime']['away'],
              scoreExtratimeHome: matche['score']['extratime']['home'],
              scoreExtratimeAway: matche['score']['extratime']['away'],
              scorePenaltyHome: matche['score']['penalty']['home'],
              scorePenaltyAway: matche['score']['penalty']['away'],
            ));
            await MatchStandingsRecord.getDocumentOnce(
                    firestore.doc('MatchStandings/${matcheDoc.id}'))
                .then((matchStandingsDoc) async {
              Stream<List<MatchStandingsRecord>> fdsfs =
                  queryMatchStandingsRecord(
                      queryBuilder: (matchStandingsRecord) =>
                          matchStandingsRecord.where('matcheRef',
                              isEqualTo: matcheDoc.reference));
              fdsfs.forEach((element) {
                var fixtureGoalsHome = matche['goals']['home'];
                var userHomeGoals = element.single.homeGoals;
                var fixtureGoalsAway = matche['goals']['home'];
                var userAwayGoals = element.single.awayGoals;
                var homeGoalsPoints = 0;
                var awayGoalsPoints = 0;
                var wonPoints = 0;
                var drawPoints = 0;
                var totalPoints = 0;
                if (userHomeGoals == fixtureGoalsHome) {
                  homeGoalsPoints = matchStandingsDoc.homeGoalsPoints;
                } else {
                  homeGoalsPoints = 0;
                }
                if (userAwayGoals == fixtureGoalsAway) {
                  awayGoalsPoints = matchStandingsDoc.awayGoalsPoints;
                } else {
                  awayGoalsPoints = 0;
                }

                if (userHomeGoals > userAwayGoals &&
                    fixtureGoalsHome > fixtureGoalsAway) {
                  wonPoints = matchStandingsDoc.wonPoints;
                } else if (userHomeGoals < userAwayGoals &&
                    fixtureGoalsHome < fixtureGoalsAway) {
                  wonPoints = matchStandingsDoc.wonPoints;
                } else if (userHomeGoals == userAwayGoals &&
                    fixtureGoalsHome == fixtureGoalsAway) {
                  drawPoints = matchStandingsDoc.drawPoints;
                } else {
                  wonPoints = 0;
                  drawPoints = 0;
                }
                totalPoints =
                    homeGoalsPoints + awayGoalsPoints + wonPoints + drawPoints;
                element.single.reference
                    .update(createMatchStandingsRecordData());
              });
            });
          }
        });
      });
    }
    //TournamentsRecord.getDocumentOnce End
  });
  return 'randomCode';
}

String? getStatusGeneral(String statusShort) {
  List<String> scheduled = ['TBD', 'NS'];
  List<String> inPlay = [
    '1H',
    'HT',
    '2H',
    'ET',
    'BT',
    'P',
    'SUSP',
    'INT',
    'LIVE'
  ];
  List<String> finished = ['FT', 'AET', 'PEN'];
  List<String> notPlayed = ['AWD', 'WO'];
  if (scheduled.contains(statusShort)) {
    return 'Scheduled';
  } else if (inPlay.contains(statusShort)) {
    return 'InPlay';
  } else if (finished.contains(statusShort)) {
    return 'Finished';
  } else if (notPlayed.contains(statusShort)) {
    return 'NotPlayed';
  } else if (statusShort == 'PST') {
    return 'Postponed';
  } else if (statusShort == 'CANC') {
    return 'Cancelled';
  } else if (statusShort == 'ABD') {
    return 'Abandoned';
  } else {
    return 'NoData';
  }
}

String fixtureStatusLong(String currentLanguage, String statusShort) {
  var MsgAr = Map<String, String>();
  var MsgEn = Map<String, String>();
  MsgAr['TBD'] = 'الوقت سيتم تحديده لاحقا';
  MsgEn['TBD'] = 'Time To Be Defined';

  MsgAr['NS'] = 'لم يبدأ';
  MsgEn['NS'] = 'Not Started';

  MsgAr['1H'] = '';
  MsgEn['1H'] = '';

  MsgAr['HT'] = '';
  MsgEn['HT'] = '';

  MsgAr['2H'] = '';
  MsgEn['2H'] = '';

  MsgAr['ET'] = '';
  MsgEn['ET'] = '';

  MsgAr['BT'] = '';
  MsgEn['BT'] = '';

  MsgAr['P'] = '';
  MsgEn['P'] = '';

  MsgAr['SUSP'] = '';
  MsgEn['SUSP'] = '';

  MsgAr['INT'] = '';
  MsgEn['INT'] = '';

  MsgAr['FT'] = '';
  MsgEn['FT'] = '';

  MsgAr['AET'] = '';
  MsgEn['AET'] = '';

  MsgAr['PEN'] = '';
  MsgEn['PEN'] = '';

  MsgAr['PST'] = '';
  MsgEn['PST'] = '';

  MsgAr['CANC'] = '';
  MsgEn['CANC'] = '';

  MsgAr['ABD'] = '';
  MsgEn['ABD'] = '';

  MsgAr['AWD'] = '';
  MsgEn['AWD'] = '';

  MsgAr['WO'] = '';
  MsgEn['WO'] = '';

  MsgAr['LIVE'] = '';
  MsgEn['LIVE'] = '';
  if (currentLanguage == 'en') {
    return MsgEn[statusShort].toString();
  } else if (currentLanguage == 'ar') {
    return MsgAr[statusShort].toString();
  } else {
    return MsgEn[statusShort].toString();
  }
}
