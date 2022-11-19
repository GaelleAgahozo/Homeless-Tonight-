import 'package:flutter/material.dart';
import 'package:homeless_tonight/homeless.dart';
import 'package:sensors_plus/sensors_plus.dart';
import 'package:permission_handler/permission_handler.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Homeless Tonight',
      theme: ThemeData(
        // primarySwatch: Colors.teal,
        colorScheme: const ColorScheme(
          // colors are taken in 8 digit hex, first two digits indicate alpha/transparency, next six are rgb
          brightness: Brightness
              .light, //the brightness of the color scheme i.e light mode or dark
          primary: Color(
              0xff73bfb8), //used as background color for appbars and other major elements
          onPrimary: Color(
              0xffffffff), // used for text and other elements that sit on top of the primary color
          secondary: Color(
              0xff2b2d42), // used for floating action buttons and other highlighted elements
          onSecondary: Color(
              0xffffffff), // used for text and other elements that sit on top of the secondary color
          tertiary: Color(
              0xffc05746), // used for important contrasting higlights from the primary and secondary colors. Tertiary and tertiaryContainer are not used anywhere by default and must be manually applied
          tertiaryContainer: Color(
              0xffffd6cd), // used for less important contrasting highlights
          error: Color(0xffb00020), // used for error text
          onError: Color(
              0xffffffff), // used for text and elements displayed on top of error
          background: Color(0xffffffff), // background color
          onBackground: Color(
              0xff2b2d42), // used for elements and text on top of background color
          surface: Color(0xff73bfb8), // used for cards
          onSurface: Color(0xffffffff),
          // used for text and elements on cards
        ),
        fontFamily: 'Glacial Indifference',
        textTheme: const TextTheme(
          headline1: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
          headline6: TextStyle(fontSize: 22.0, fontStyle: FontStyle.italic),
          bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Bukhari Script'),
        ),
      ),
      home: const HomelessMainScreen(),
    );
  }
}
