import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyD6vlaGAtZknLOY-GVMliRCJBNOPcllx2o",
            authDomain: "f365-1.firebaseapp.com",
            projectId: "f365-1",
            storageBucket: "f365-1.appspot.com",
            messagingSenderId: "13547991319",
            appId: "1:13547991319:web:1ad9b0aa6fa6632ccdc752",
            measurementId: "G-183Y4D7CK2"));
  } else {
    await Firebase.initializeApp();
  }
}
