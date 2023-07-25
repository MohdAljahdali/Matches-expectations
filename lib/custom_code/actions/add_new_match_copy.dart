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

Future<String> addNewMatchCopy(
  dynamic response,
  String randomCode,
  String tournamentRef,
) async {
  // Date format
  final firestore = FirebaseFirestore.instance;
  final MatchesCol = firestore.collection('Matches');
  var getteamHomeRef;
  var getteamHomeName;
  var getteamHomeNameAr;
  var getteamHomeCode;
  var getteamHomeLogo;
  var getteamAwayRef;
  var getteamAwayName;
  var getteamAwayNameAr;
  var getteamAwayCode;
  var getteamHAwayLogo;

  await TournamentsRecord.getDocumentOnce(
          firestore.doc('Tournamentss/$tournamentRef'))
      .then((tournamentDoc) async {
    final Matchesjson = convert.jsonDecode(response.toString());
    Matchesjson.forEach((matche) async {
      TeamsRecord.getDocumentOnce(firestore
              .doc('Teams/' + matche['teams']['home']['id'].toString()))
          .then((teamHomeDoc) async {
        getteamHomeRef = teamHomeDoc.reference;
        getteamHomeName = teamHomeDoc.name;
        getteamHomeNameAr = teamHomeDoc.nameAr;
        getteamHomeCode = teamHomeDoc.code;
        getteamHomeLogo = teamHomeDoc.logo;
      });
      TeamsRecord.getDocumentOnce(firestore
              .doc('Teams/' + matche['teams']['away']['id'].toString()))
          .then((teamAwayDoc) async {
        getteamAwayRef = teamAwayDoc.reference;
        getteamAwayName = teamAwayDoc.name;
        getteamAwayNameAr = teamAwayDoc.nameAr;
        getteamAwayCode = teamAwayDoc.code;
        getteamHAwayLogo = teamAwayDoc.logo;
      });

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
            tournamentroleHomeGoalsPoints: tournamentDoc.roleHomeGoalsPoints,
            tournamentroleAwayGoals: tournamentDoc.roleAwayGoals,
            tournamentroleAwayGoalsPoints: tournamentDoc.roleAwayGoalsPoints,
            teamHomeRef: getteamHomeRef,
            teamHomeName: getteamHomeName,
            teamHomeNameAr: getteamHomeNameAr,
            teamHomeCode: getteamHomeCode,
            teamHomeLogo: getteamHomeLogo,
            teamAwayRef: getteamAwayRef,
            teamAwayName: getteamAwayName,
            teamAwayNameAr: getteamAwayNameAr,
            teamAwayCode: getteamAwayCode,
            teamHAwayLogo: getteamHAwayLogo,
            fixtureStatusGeneral: getStatusGeneral(
                matche['fixture']['status']['short'].toString()),
            fixtureStatusLongEn: matche['fixture']['status']['long'].toString(),
            fixtureStatusLongAr: matche['fixture']['status']['long'].toString(),
            fixtureStatusShort: matche['fixture']['status']['short'].toString(),
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
            isDouble: false,
            isActive: false,
            addRandomCode: randomCode,
          ));
        }
      });
    });
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
