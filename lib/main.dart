import 'package:flutter/material.dart';
import 'package:iharaka/models/MyUser.dart';
import 'package:iharaka/screen/authenticate/confirmation.dart';
import 'package:iharaka/screen/authenticate/login.dart';
import 'package:iharaka/screen/authenticate/signup.dart';
import 'package:iharaka/screen/authenticate/startPage.dart';
import 'package:iharaka/screen/food_delivery/delivery.dart';
import 'package:iharaka/screen/homepage/home_page.dart';
import 'package:iharaka/screen/join_ride/joinRide.dart';
import 'package:iharaka/screen/offer_ride/offerRide.dart';
import 'package:iharaka/screen/rideHistory/ride_history.dart';
import 'package:iharaka/services/auth.dart';
import 'package:iharaka/services/delivery.dart';
import 'package:iharaka/wrapper.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'constant.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp(),
  );
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return StreamProvider<MyUser?>.value(
      value: AuthService().user,
      initialData: null,
      child: MaterialApp(
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
          home: Wrapper(),
          routes : {
            '/login': (context) => LoginPage(),
            '/signup': (context) => SignUpPage(),
            '/home': (context) => HomePage(),
            '/start': (context) => StartPage(),
            '/confirm': (context) => Confirmation(),
            '/delivery': (context) => Delivery(),
            '/history': (context) => History(),
            '/joinRide': (context) => JoinRide(),
            '/offerRide': (context) => OfferRide(),
            // '/': (context) => ,
          }
      ),
    );
  }
}





