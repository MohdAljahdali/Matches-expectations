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

import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

Future<List<CountriesDTStruct>> addCountries() async {
  List<CountriesDTStruct> listOfNewCountries = [];
  final firestore = FirebaseFirestore.instance;
  final TeamsRef = firestore.collection('Countries');
  var headers = {
    'x-rapidapi-key': 'ba825d70e7634e7015d2f116c1a07e03',
    'x-rapidapi-host': 'v3.football.api-sports.io'
  };
  var request = http.Request(
      'GET', Uri.parse('https://v3.football.api-sports.io/countries'));

  request.headers.addAll(headers);

  http.StreamedResponse response = await request.send();

  if (response.statusCode == 200) {
    final countriesjson =
        convert.jsonDecode(await response.stream.bytesToString());
    final countriesresponse = countriesjson['response'];

    countriesresponse.forEach((country) async {
      final addTeamsDoc = {
        'name': country['name'].toString(),
        'nameAr': country['nameAr'].toString(),
        'code': country['code'].toString(),
        'flag': country['flag'].toString(),
      };
      await TeamsRef.doc(country['code'].toString()).get().then((doc) {
        if (!doc.exists) {
          TeamsRef.doc(country['code'].toString()).set(addTeamsDoc);
          listOfNewCountries.add(CountriesDTStruct.fromMap(addTeamsDoc));
        }
      });
    });
  } else {}
  return listOfNewCountries;
}
