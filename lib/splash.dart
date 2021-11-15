import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.black,
        body: Container(
        padding: EdgeInsets.only(top:20, left: 20),
          child: Center(
            child: Text("i-Haraka",
              style: TextStyle(
              fontFamily: 'Lobster',
              color: Colors.white,
              fontSize: 40,
              fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      );
    }
}
