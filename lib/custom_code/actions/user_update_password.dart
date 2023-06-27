// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'index.dart'; // Imports other custom actions
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

Future<String?> userUpdatePassword(
  String oldPassword,
  String newPassword,
  String confirmPassword,
) async {
  var massagere = '';
  var currentUser = FirebaseAuth.instance.currentUser;

  if (currentUser != null) {
    AuthCredential credential = EmailAuthProvider.credential(
        email: currentUser.email.toString(), password: oldPassword);
    await FirebaseAuth.instance
        .signInWithCredential(credential)
        .then((userCredential) {
      if (newPassword == confirmPassword) {
        userCredential.user?.updatePassword(newPassword);
        massagere = 'Password has been changed';
      } else {
        massagere = 'Password does not match';
      }
    });
    // Add your function code here!
  } else {
    massagere = 'Password change failed';
  }
  return massagere;
}
