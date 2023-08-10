// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'index.dart'; // Imports other custom actions
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

Future<String> addCountries() async {
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
      final data = await CountriesTable().queryRows(
          queryFn: (q) => q.eq(
                'code',
                country['code'].toString(),
              ));
      if (data.isEmpty) {
        await CountriesTable().insert({
          'name': country['name'].toString(),
          'nameAr': '-',
          'code': country['code'].toString(),
          'isActive': false,
          'flagSvg': country['flag'].toString(),
          'flagW20': 'https://flagcdn.com/w20/' +
              country['code'].toString().toLowerCase() +
              '.png',
          'flagW40': 'https://flagcdn.com/w40/' +
              country['code'].toString().toLowerCase() +
              '.png',
          'flagW80': 'https://flagcdn.com/w80/' +
              country['code'].toString().toLowerCase() +
              '.png',
          'flagW160': 'https://flagcdn.com/w160/' +
              country['code'].toString().toLowerCase() +
              '.png',
          'flagW320': 'https://flagcdn.com/w320/' +
              country['code'].toString().toLowerCase() +
              '.png',
        });
      }
    });
  } else {}
  return "listOfNewCountries";
}
