import 'package:authorkepper/screens/homePage.dart';
import 'package:authorkepper/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "intro_Screen",
      routes: {
        '/': (context) => HomePage(),
        'intro_Screen': (context) => IntroScreen(),
      },
    ),
  );
}
