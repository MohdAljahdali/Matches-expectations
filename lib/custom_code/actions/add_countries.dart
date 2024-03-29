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

import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

Future<String> addCountries() async {
  final firestore = FirebaseFirestore.instance;
  final CountriesRef = firestore.collection('Countries');
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
      final _modelgfdvh = await queryCountriesRecordOnce(
        queryBuilder: (countriesRecord) => countriesRecord
            .where('code', isEqualTo: 'sa')
            .where('nameAr', isEqualTo: 'gjkhj'),
        singleRecord: true,
      ).then((s) => s.firstOrNull);

      await CountriesRef.doc(country['code'].toString())
          .get()
          .then((doc) async {
        if (!doc.exists) {
          await CountriesRecord.collection
              .doc(country['code'].toString())
              .set(createCountriesRecordData(
                name: country['name'].toString(),
                nameAr: '',
                code: country['code'].toString(),
                flag: country['flag'].toString(),
                isActive: false,
              ));
        }
      });
    });
  } else {}
  return "listOfNewCountries";
}
