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

import 'dart:math' as math;
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

Future<String> addNewMatch(
  String tournamentRandomCode,
  DateTime fromDate,
  DateTime toDate,
  String randomCode,
) async {
  // Date format
  var outputFormat = DateFormat('yyyy-MM-dd');
  final firestore = FirebaseFirestore.instance;
  final MatchesCol = firestore.collection('Matches');
  var fromDateFormat = outputFormat.format(fromDate);
  var toDateFormat = outputFormat.format(toDate);

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
            'https://v3.football.api-sports.io/fixtures?league=${tournamentDoc.id.toString()}&season=${tournamentDoc.seasonYear.toString()}${filtterSearch.toString()}&timezone=Asia/Riyadh'));
    request.headers.addAll(headers);
    http.StreamedResponse response = await request.send();
    if (response.statusCode == 200) {
      final Matchesjson =
          convert.jsonDecode(await response.stream.bytesToString());
      final Matchesresponse = Matchesjson['response'];
      Matchesresponse.forEach((matche) async {
        await TeamsRecord.getDocumentOnce(firestore
                .doc('Teams/' + matche['teams']['home']['id'].toString()))
            .then((teamHomeDoc) async {
          await TeamsRecord.getDocumentOnce(firestore
                  .doc('Teams/' + matche['teams']['away']['id'].toString()))
              .then((teamAwayDoc) async {
            await MatchesCol.doc(matche['fixture']['id'].toString())
                .get()
                .then((matcheDoc) {
              if (!matcheDoc.exists) {
                matcheDoc.reference.set(createMatchesRecordData(
                  matcheID: matche['fixture']['id'].toString(),
                  fixtureDate: DateTime.parse(
                      matche['fixture']['date'].toString().trim()),
                  fixtureTimestamp: int.parse(
                      matche['fixture']['timestamp'].toString().trim()),
                  fixtureIsDouble: false,
                  tournamentRef: tournamentDoc.reference,
                  tournamentID: tournamentDoc.reference.id,
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
                  tournamentroleHomeGoalsPoints:
                      tournamentDoc.roleHomeGoalsPoints,
                  tournamentroleAwayGoals: tournamentDoc.roleAwayGoals,
                  tournamentroleAwayGoalsPoints:
                      tournamentDoc.roleAwayGoalsPoints,
                  teamHomeRef: teamHomeDoc.reference,
                  teamHomeName: teamHomeDoc.name,
                  teamHomeNameAr: teamHomeDoc.nameAr,
                  teamHomeCode: teamHomeDoc.code,
                  teamHomeLogo: teamHomeDoc.logo,
                  teamAwayRef: teamAwayDoc.reference,
                  teamAwayName: teamAwayDoc.name,
                  teamAwayNameAr: teamAwayDoc.nameAr,
                  teamAwayCode: teamAwayDoc.code,
                  teamHAwayLogo: teamAwayDoc.logo,
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
                  isActive: false,
                  addRandomCode: randomCode,
                ));
              }
            });
          });
        });
      });
    }
    //TournamentsRecord.getDocumentOnce End
  });
  return randomCode;
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
