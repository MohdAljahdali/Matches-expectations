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

import 'index.dart'; // Imports other custom actions
import 'dart:math' as math;
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

Future<String> updateMatches(String tournamentCode) async {
  final firestore = FirebaseFirestore.instance;
  final MatchesCol = firestore.collection('Matches');
  final MatchStandingsCol = firestore.collection('MatchStandings');
  var headers = {
    'x-rapidapi-key': 'ba825d70e7634e7015d2f116c1a07e03',
    'x-rapidapi-host': 'v3.football.api-sports.io'
  };

  var request = http.Request(
      'GET',
      Uri.parse(
          'https://v3.football.api-sports.io/fixtures?league=307&season=2023&date=2023-08-12&timezone=Asia/Riyadh'));
  request.headers.addAll(headers);
  http.StreamedResponse response = await request.send();
  if (response.statusCode == 200) {
    final Matchesjson =
        convert.jsonDecode(await response.stream.bytesToString());
    final Matchesresponse = Matchesjson['response'];
    Matchesresponse.forEach((matche) async {
      await TournamentsRecord.getDocumentOnce(firestore.doc(
              'Tournaments/${matche['league']['id'].toString() + matche['league']['season'].toString()}'))
          .then((tournamentDoc) async {
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
            await MatchesRecord.getDocumentOnce(
                    firestore.doc('Matches/${matcheDoc.id}'))
                .then((matchesDoc) async {
              MatchStandingsCol.where('matcheRef',
                      isEqualTo: matcheDoc.reference)
                  .snapshots()
                  .listen((event) {
                for (var doc in event.docs) {
                  var fixtureGoalsHome = matchesDoc.goalsHome;
                  var userHomeGoals = doc.data()['homeGoals'];
                  var fixtureGoalsAway = matchesDoc.goalsAway;
                  var userAwayGoals = doc.data()['awayGoals'];
                  var bHomeGoalsPoints = 0;
                  var bAwayGoalsPoints = 0;
                  var bTotalGoalsPoints = 0;
                  var bWonPoints = 0;
                  var bDrawPoints = 0;
                  var bTotalPoints = 0;
                  if (userHomeGoals == fixtureGoalsHome) {
                    bHomeGoalsPoints = matchesDoc.tournamentroleHomeGoalsPoints;
                  } else {
                    bHomeGoalsPoints = 0;
                  }
                  if (userAwayGoals == fixtureGoalsAway) {
                    bAwayGoalsPoints = matchesDoc.tournamentroleAwayGoalsPoints;
                  } else {
                    bAwayGoalsPoints = 0;
                  }
                  bTotalGoalsPoints = bHomeGoalsPoints + bAwayGoalsPoints;
                  if ((userHomeGoals > userAwayGoals) &&
                      (fixtureGoalsHome > fixtureGoalsAway)) {
                    bWonPoints = matchesDoc.tournamentroleHomeWinPoints;
                  } else if ((userHomeGoals < userAwayGoals) &&
                      (fixtureGoalsHome < fixtureGoalsAway)) {
                    bWonPoints = matchesDoc.tournamentroleAwayWinPoints;
                  } else if ((userHomeGoals == userAwayGoals) &&
                      (fixtureGoalsHome == fixtureGoalsAway)) {
                    bDrawPoints = matchesDoc.tournamentroleDrawPoints;
                  } else {
                    bWonPoints = 0;
                  }
                  bTotalPoints = bTotalGoalsPoints + bWonPoints + bDrawPoints;
                  doc.reference.update(createMatchStandingsRecordData(
                    totalGoalsPoints: bTotalGoalsPoints,
                    wonPoints: bWonPoints,
                    totalPoints: bTotalPoints,
                  ));
                }
              });

              MatchStandingsCol.where('matcheRef',
                      isEqualTo: matcheDoc.reference)
                  .orderBy('totalPoints', descending: true)
                  .orderBy('totalGoalsPoints', descending: true)
                  .orderBy('userUpdate', descending: false)
                  .snapshots()
                  .listen((event) {
                for (int i = 0; i < event.docs.length; i++) {
                  event.docs[i].reference.update(createMatchStandingsRecordData(
                    newPosition: (i + 1),
                    oldPosition: event.docs[i].data()['newPosition'],
                  ));
                }
              });
            });
          }
        });
      });
    });
  }
  //TournamentsRecord.getDocumentOnce End

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
