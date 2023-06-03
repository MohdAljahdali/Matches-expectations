// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<bool> ifTeamDocumentExists(String? fieldValue) async {
  final teamsDocRef = await FirebaseFirestore.instance
      .collection('teams')
      .where('team_name', isEqualTo: fieldValue);

  var statsQuerySnapshot = await teamsDocRef.get();
  if (statsQuerySnapshot.size == 0) {
    return false;
  } else {
    return true;
  }
}
