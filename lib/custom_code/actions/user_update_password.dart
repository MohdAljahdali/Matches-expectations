// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert';
import 'dart:math' as math;

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

Future<String> userUpdatePassword(
  String oldPassword,
  String newPassword,
  String confirmPassword,
  String currentLanguage,
) async {
  String massagere = '';
  var currentUser = FirebaseAuth.instance.currentUser;

  if (currentUser != null) {
    AuthCredential credential = EmailAuthProvider.credential(
        email: currentUser.email.toString(), password: oldPassword);
    try {
      await FirebaseAuth.instance
          .signInWithCredential(credential)
          .then((userCredential) {
        if (newPassword == confirmPassword) {
          try {
            userCredential.user?.updatePassword(newPassword);
            massagere = errorMassage(currentLanguage, 10001);
          } on FirebaseAuthException catch (e) {
            if (e.code == 'weak-password') {
              massagere = errorMassage(currentLanguage, 10006);
            }
          }
        } else {
          massagere = errorMassage(currentLanguage, 10002);
        }
      });
    } on FirebaseAuthException catch (e) {
      if (e.code == 'wrong-password') {
        massagere = errorMassage(currentLanguage, 10003);
      } else if (e.code == 'user-disabled') {
        massagere = errorMassage(currentLanguage, 10004);
      }
    }
  } else {
    massagere = errorMassage(currentLanguage, 10005);
  }
  return massagere;
}

String errorMassage(String currentLanguage, int errorNumber) {
  var MsgAr = Map<int, String>();
  var MsgEn = Map<int, String>();
  MsgAr[10001] = 'Password has been changed.';
  MsgEn[10001] = 'تم تغير كلمة المرور';
  MsgAr[10002] = 'Password does not match.';
  MsgEn[10002] = 'كلمة المرور غير متطابقة';
  MsgAr[10003] = 'The old password is not correct.';
  MsgEn[10003] = 'كلمة المرور القديمة غير صحيحة';
  MsgAr[10004] = 'The user has been disabled.';
  MsgEn[10004] = 'تم تعطيل المستخدم';
  MsgAr[10005] = 'Password change failed.';
  MsgEn[10005] = 'فشل تغير كلمة المرور';
  MsgAr[10006] = 'The password is not strong enough';
  MsgEn[10006] = 'كلمة المرور ليست قوية بما فيه الكفاية';
  if (currentLanguage == 'en') {
    return errorNumber.toString() + "-" + MsgEn[errorNumber].toString();
  } else if (currentLanguage == 'ar') {
    return errorNumber.toString() + "-" + MsgAr[errorNumber].toString();
  } else {
    return errorNumber.toString() + "-" + MsgEn[errorNumber].toString();
  }
}
