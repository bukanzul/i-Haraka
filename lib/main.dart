import 'package:flutter/material.dart';
import 'homepage/home_page.dart';
import 'splash.dart';
import 'login/main_page.dart';


void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  theme: ThemeData(
    fontFamily: 'Poppins',
  ),
  initialRoute: '/home',
  routes: {
    '/': (context) => Splash(),
    '/main': (context) => MainPage(),
    '/home': (context) => HomePage(),

  }
));




