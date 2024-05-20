import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyACt3OQBdd_P3NYfVJt80d2M_S0wlQ5c-0",
            authDomain: "donkoke-967de.firebaseapp.com",
            projectId: "donkoke-967de",
            storageBucket: "donkoke-967de.appspot.com",
            messagingSenderId: "48957359847",
            appId: "1:48957359847:web:932d0e5f28fb7b937ac442"));
  } else {
    await Firebase.initializeApp();
  }
}
