import 'package:flutter/material.dart';
import 'home_page.dart';
import 'splash.dart';
import 'main_page.dart';
import 'request_page.dart';

void main() => runApp(MaterialApp(
  theme: ThemeData(
    fontFamily: 'Poppins',
  ),
  initialRoute: '/home',
  routes: {
    '/': (context) => Splash(),
    '/main': (context) => MainPage(),
    '/home': (context) => HomePage(),
    '/request': (context) => Request(),

  }
));




