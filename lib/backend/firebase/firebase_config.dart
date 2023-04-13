import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAvU5-8MyPCXrSi5iizsd1oi2ei-GA_Oig",
            authDomain: "rbnb-61665.firebaseapp.com",
            projectId: "rbnb-61665",
            storageBucket: "rbnb-61665.appspot.com",
            messagingSenderId: "668072006988",
            appId: "1:668072006988:web:c0872cba6225fc0b596be9"));
  } else {
    await Firebase.initializeApp();
  }
}
