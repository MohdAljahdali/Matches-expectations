// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:math' as math;
import 'index.dart'; // Imports other custom actions

import 'index.dart'; // Imports other custom actions
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

Future<String> addNewMatch(
  String tournamentRef,
  DateTime fromDate,
  DateTime toDate,
  String randomCode,
) async {
  // Date format
  var outputFormat = DateFormat('yyyy-MM-dd');
  var fromDateFormat = outputFormat.format(fromDate);
  var toDateFormat = outputFormat.format(toDate);
  final firestore = FirebaseFirestore.instance;
  final MatchesCol = firestore.collection('Matches');
  var dsadad = '';
  var headers = {
    'x-rapidapi-key': 'ba825d70e7634e7015d2f116c1a07e03',
    'x-rapidapi-host': 'v3.football.api-sports.io'
  };
  await TournamentsRecord.getDocumentOnce(
          firestore.doc('Tournaments/$tournamentRef'))
      .then((tournamentDoc) async {
    dsadad = tournamentDoc.name;
    var request = http.Request(
        'GET',
        Uri.parse(
            'https://v3.football.api-sports.io/fixtures?league=${tournamentDoc.tournamentsID.toString()}&season=${tournamentDoc.seasonYear.toString()}&from=${fromDateFormat.toString()}&to=${toDateFormat.toString()}&timezone=Asia/Riyadh'));
    request.headers.addAll(headers);
    http.StreamedResponse response = await request.send();
    if (response.statusCode == 200) {
      final Matchesjson =
          convert.jsonDecode(await response.stream.bytesToString());
      final Matchesresponse = Matchesjson['response'];
      Matchesresponse.forEach((matche) async {
        TeamsRecord? teamHome =
            getTeamData(matche['teams']['home']['id'].toString());
        TeamsRecord? teamAway =
            getTeamData(matche['teams']['away']['id'].toString());
        await MatchesCol.doc(matche['fixture']['id'].toString())
            .get()
            .then((matcheDoc) {
          if (!matcheDoc.exists) {
            matcheDoc.reference.set(createMatchesRecordData(
              matcheID: matche['fixture']['id'].toString(),
              fixtureID: int.parse(matche['fixture']['id'].toString()),
              //YYYY-MM-DDThh:mm:ssTZD
              fixtureDate: DateTime.parse(matche['fixture']['date'].toString()),
              fixtureTimestamp:
                  int.parse(matche['fixture']['timestamp'].toString()),
              fixturePeriodFirst:
                  int.parse(matche['fixture']['periods']['first'].toString()),
              fixturePeriodSecond:
                  int.parse(matche['fixture']['periods']['second'].toString()),
              tournamentsRef: tournamentDoc.reference,
              tournamentseasonYear: tournamentDoc.seasonYear.toString(),
              tournamentName: tournamentDoc.name,
              tournamentNameAr: tournamentDoc.nameAr,
              tournamentType: tournamentDoc.type,
              tournamentLogo: tournamentDoc.logo,
              tournamentroleHomeWin: tournamentDoc.roleHomeWin,
              tournamentroleHomeWinPoints: tournamentDoc.roleHomeWinPoints,
              tournamentroleAwayWin: tournamentDoc.roleAwayWin,
              tournamentroleAwayWinPoints: tournamentDoc.roleAwayWinPoints,
              tournamentroleDraw: tournamentDoc.roleDraw,
              tournamentroleDrawPoints: tournamentDoc.roleDrawPoints,
              tournamentroleHomeGoals: tournamentDoc.roleHomeGoals,
              tournamentroleHomeGoalsPoints: tournamentDoc.roleHomeGoalsPoints,
              tournamentroleAwayGoals: tournamentDoc.roleAwayGoals,
              tournamentroleAwayGoalsPoints: tournamentDoc.roleAwayGoalsPoints,
              teamHomeRef: teamHome?.reference,
              teamHomeName: teamHome?.name,
              teamHomeNameAr: teamHome?.nameAr,
              teamHomeCode: teamHome?.code,
              teamHomeLogo: teamHome?.logo,
              teamAwayRef: teamAway?.reference,
              teamAwayName: teamAway?.name,
              teamAwayNameAr: teamAway?.nameAr,
              teamAwayCode: teamAway?.code,
              teamHAwayLogo: teamAway?.logo,
              fixtureStatusGeneral: getStatusGeneral(
                  matche['fixture']['status']['short'].toString()),
              fixtureStatusLong: matche['fixture']['status']['long'].toString(),
              fixtureStatusShort:
                  matche['fixture']['status']['short'].toString(),
              fixtureStatusElapsed:
                  matche['fixture']['status']['elapsed'].toString(),
              goalsHome: 0,
              goalsAway: 0,
              scoreHalftimeHome: 0,
              scoreHalftimeAway: 0,
              scoreFulltimeHome: 0,
              scoreFulltimeAway: 0,
              scoreExtratimeHome: 0,
              scoreExtratimeAway: 0,
              scorePenaltyHome: 0,
              scorePenaltyAway: 0,
              addRandomCode: randomCode,
            ));
          }
        });
      });
    }
    //TournamentsRecord.getDocumentOnce End
  });
  return dsadad;
}

TeamsRecord? getTeamData(String teamId) {
  final firestore = FirebaseFirestore.instance;
  TeamsRecord.getDocumentOnce(firestore.doc('Teams/$teamId'))
      .then((teamDoc) async {
    return teamDoc;
  });
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
