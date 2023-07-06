import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

String getRandomString25() {
  //  generate random string
  var random = math.Random();
  const chars =
      'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
  return String.fromCharCodes(Iterable.generate(
      25, (_) => chars.codeUnitAt(random.nextInt(chars.length))));
}

List<TournamentsRecord> adminTournamentsList(
  TournamentsRecord? tournamentsList,
  String filter,
) {
  List<TournamentsRecord> outputTournamentsList = [];
  if (filter == 'Active') {
  } else if (filter == '') {
  } else if (filter == '') {}
  return outputTournamentsList;
}
