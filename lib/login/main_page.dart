import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[900],
      body: Container(
        padding: EdgeInsets.only(top: 20, left: 20, ),
        child: Column(
        children: [
          Center(
            child: Column(
            children: [
              SizedBox(height:120),
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
        SizedBox(height: 60),
        Text("Choose your option",
          style: TextStyle(
          fontSize: 15,
          color: Colors.white,
          )),
          ],
        ),
      ),
    );
  }
}
