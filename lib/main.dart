import 'package:chat/rooms.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyCMeCMsaMJyoZeK2mcXQBqzCD1hkoSnJoI",
          authDomain: "chat-5f886.firebaseapp.com",
          projectId: "chat-5f886",
          storageBucket: "chat-5f886.appspot.com",
          messagingSenderId: "683977170445",
          appId: "1:683977170445:web:2791a53fcb01e07380bf44",
          measurementId: "G-1J8RWDRT34"),
    );
  } else {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Firebase Chat',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: const RoomsPage(),
      );
}
