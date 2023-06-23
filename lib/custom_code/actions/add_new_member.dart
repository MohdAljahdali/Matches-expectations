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

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

Future<String> addNewMember(
  String emailAddress,
  String password,
  String randomDocGen,
) async {
  var returnText = '';
  final usersCollection = FirebaseFirestore.instance.collection('users');
  try {
    final credential =
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: emailAddress,
      password: password,
    );
    String? userUid = credential.user?.uid;
    final addUserDoc = {
      //
      'display_name': 'mm',
      'email': emailAddress,
      'uid': userUid,
      'is_active': false,
      'created_time': DateTime.now(),
    };
    usersCollection.doc(userUid).set(addUserDoc);
    returnText = userUid.toString();
  } on FirebaseAuthException catch (e) {
    if (e.code == 'weak-password') {
      returnText = 'The password provided is too weak.';
    } else if (e.code == 'email-already-in-use') {
      returnText = 'The account already exists for that email.';
    }
  } catch (e) {
    print(e);
  }
  /*
  String returnmsg = 'Success';
  //created time variable
  DateTime createdTime = DateTime.now();
  //Create the secondary app to create the users
  FirebaseApp app = await Firebase.initializeApp(
      name: randomDocGen, options: Firebase.app().options);
  final firestore = FirebaseFirestore.instance;
  final collectionRef = firestore.collection('users');
  try {
    //Create the user with the email & password provided
    UserCredential userCredential = await FirebaseAuth.instanceFor(app: app)
        .createUserWithEmailAndPassword(
            email: emailAddress, password: password);
    // Set the UID generated to a variable so we can use it later
    String? uid = userCredential.user?.uid;
    // Check if UID is not empy
    if (uid != null) {
      await collectionRef.add({
        'uid': FirebaseAuth.instance.currentUser?.uid,
        'email': emailAddress
      });
      return returnmsg;
    } else {
      return "Error while creating the UID";
    }
  } on FirebaseAuthException catch (e) {
    return e.code;
  }
  */
  return returnText;
}
