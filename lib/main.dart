import 'package:flutter/material.dart';
import 'homepage/home_page.dart';
// import 'login/splash.dart';
import 'login/startPage.dart';
import 'constant.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: kBGColor,
          primaryColor: kPrimaryColor,
          textTheme: Theme
              .of(context)
              .textTheme
              .apply(bodyColor: kTextColor),
          fontFamily: 'Poppins',
        ),
        initialRoute: '/main',
        routes: {
          // '/': (context) => Splash(),
          '/main': (context) => StartPage(),
          '/home': (context) => HomePage(),
        }
    );
  }
}





