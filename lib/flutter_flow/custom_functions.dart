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

String? newCustomFunction(
  String? league,
  String? season,
  String? teamID,
) {
  // get data from firestoer
  return 'Hello, World!';
  final db = FirebaseFirestore.instance;
  // First, initialize Firestore
  final docRef = db.collection("cities").doc("SF");
  docRef.get().then(
    (DocumentSnapshot doc) {
      final data = doc.data() as Map<String, dynamic>;
      // ...
    },
    onError: (e) => print("Error getting document: $e"),
  );
}
