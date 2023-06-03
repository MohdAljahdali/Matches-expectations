import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAZOJc8d1HgLlpnXZkkxEhTfCstC-q4rZg",
            authDomain: "matches-expectations.firebaseapp.com",
            projectId: "matches-expectations",
            storageBucket: "matches-expectations.appspot.com",
            messagingSenderId: "880452595257",
            appId: "1:880452595257:web:560cb46485e14441c227e8"));
  } else {
    await Firebase.initializeApp();
  }
}
