import 'package:flutter/material.dart';
import 'screens/homescreen.dart';

import 'screens/Community_screen.dart';
import 'screens/PDFMaker_screen.dart';
import 'screens/PhotoTagging_screen.dart';
import 'screens/Reminder_screen.dart';
import 'screens/ToDo_screen.dart';

void main() {
  runApp(MyApp());
}

class Palette {
  static const MaterialColor kToDark = const MaterialColor(
    0xff36393f, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    const <int, Color>{
      50: const Color(0xffcd5641), //10%
      100: const Color(0xffb74c3a), //20%
      200: const Color(0xffa04332), //30%
      300: const Color(0xff89392b), //40%
      400: const Color(0xff733024), //50%
      500: const Color(0xff5c261d), //60%
      600: const Color(0xff451c16), //70%
      700: const Color(0xff2e130e), //80%
      800: const Color(0xff170907), //90%
      900: const Color(0xff000000), //100%
    },
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CollegeBuddy',
      theme: ThemeData(
        primarySwatch:
            Palette.kToDark, //our palette goes here by tapping into the class
        accentColor: Color.fromRGBO(255, 168, 0, 1),
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: TextStyle(
                color: Color.fromRGBO(255, 168, 0, 1),
              ),
            ),
        iconTheme: IconThemeData(color: Color.fromRGBO(255, 168, 0, 1)),
      ),
      home: HomeScreen(),
      routes: {
        '/ToDo': (ctx) => ToDo_screen(),
        '/Reminder': (ctx) => Reminder_screen(),
        '/Photo-Tagging': (ctx) => PhotoTagging_screen(),
        '/PDF-Maker': (ctx) => PDFMaker_screen(),
        '/Community': (ctx) => Community_Screen(),
      },
    );
  }
}
