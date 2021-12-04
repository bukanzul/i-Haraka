import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[900],
      body: Container(
        padding: EdgeInsets.only(top: 20, left: 20, ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/car.png"),
              SizedBox(height: 10),
              Text("i-Haraka",
                style: TextStyle(
                    fontFamily: 'Lobster',
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white
                ),
              ),
            ],
          ),
        ),
      ),
      );
    }
}
