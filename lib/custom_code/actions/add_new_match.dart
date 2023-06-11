// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future addNewMatch(
  int leagueID,
  int season,
  DateTime fromDate,
  DateTime toDate,
) async {
  // Add your function code here!
  var outputFormat = DateFormat('yyyy-MM-dd');
  var fromDateFormat = outputFormat.format(fromDate);
  var toDateFormat = outputFormat.format(toDate);
}
