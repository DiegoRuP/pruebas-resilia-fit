import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAnIP_upcEDompnMxlK8hnsEXgjzwxJJt8",
            authDomain: "resilia-fit.firebaseapp.com",
            projectId: "resilia-fit",
            storageBucket: "resilia-fit.firebasestorage.app",
            messagingSenderId: "1014350224273",
            appId: "1:1014350224273:web:c59c8d807152ff52d1d830",
            measurementId: "G-ZB6FPL7ZJB"));
  } else {
    await Firebase.initializeApp();
  }
}
