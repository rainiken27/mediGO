import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBNl5mV5SBTzDaJCyT7TiCepfVmt59q8f0",
            authDomain: "medigo-da15a.firebaseapp.com",
            projectId: "medigo-da15a",
            storageBucket: "medigo-da15a.appspot.com",
            messagingSenderId: "772623289782",
            appId: "1:772623289782:web:5a6f2c147ed2f9e507c517",
            measurementId: "G-9TE7Q6TKBL"));
  } else {
    await Firebase.initializeApp();
  }
}
