import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCTGgiVLg0OhT0JMfVR62I_cP579lcLRcw",
            authDomain: "macxtoken22.firebaseapp.com",
            projectId: "macxtoken22",
            storageBucket: "macxtoken22.appspot.com",
            messagingSenderId: "417238843117",
            appId: "1:417238843117:web:1c5662731d65b04bae56e4",
            measurementId: "G-23MQ6N3MFC"));
  } else {
    await Firebase.initializeApp();
  }
}
