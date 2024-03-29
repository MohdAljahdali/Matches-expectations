import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyB-JPbOzAoAs9A5_FyI2oITtb3vD5DyjPo",
            authDomain: "m-expectations-e291e.firebaseapp.com",
            projectId: "m-expectations-e291e",
            storageBucket: "m-expectations-e291e.appspot.com",
            messagingSenderId: "951422048235",
            appId: "1:951422048235:web:1cc4c2fa3b40c6381eebae",
            measurementId: "G-66HCEMDKLD"));
  } else {
    await Firebase.initializeApp();
  }
}
