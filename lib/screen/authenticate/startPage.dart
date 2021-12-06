import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iharaka/screen/authenticate/login.dart';
import 'signup.dart';
import 'package:iharaka/constant.dart';

class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFF18224A),
      body: ListView(
        children: [
          Container(
          child: Stack(
          children: [
            Container(
              height: size.height * 0.55,
              width: size.width * 1,
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(160),
                  bottomRight: Radius.circular(180)
                )
              ),

              child: Center(
                child: Column(
                children: [
                  SizedBox(height:100),
                  Image.asset("assets/car.png"),
                  SizedBox(height: 20),
                  Text("i-Haraka",
                  style: TextStyle(
                    fontFamily: 'Lobster',
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    color: Colors.white
                      ),
                    ),
                  ],
                ),
           ),
            ),
           ]),
           ),
          SizedBox(height: 20),
          Text("   Choose your option:",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                )),
          SizedBox(height: 20),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/login');
            },
            child: Align(
              child: Container(
                height: 60,
                width: 360,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          spreadRadius: 0.1,
                          blurRadius: 1)],
                    color: Colors.white),
                child: Row(
                  children: [
                    SizedBox(width: 15),
                    Icon(Icons.account_circle,
                    size: 30),
                    VerticalDivider(
                      width: 40,
                      thickness: 1,
                      color: Colors.black,
                    ),
                    SizedBox(width: 10),
                    Text("Sign In",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Colors.black
                        ),)
                  ],
                )
              ),
            ),

          ),
          SizedBox(height: 20),
          InkWell(
            onTap: () {

            },
            child: Align(
              child: Container(
                height: 60,
                width: 360,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          spreadRadius: 0.1,
                          blurRadius: 1)],
                    color: Colors.white),
                  child: Row(
                    children: [
                      SizedBox(width: 15),
                      Icon(Icons.account_circle,
                          size: 30),
                      VerticalDivider(
                        width: 40,
                        thickness: 1,
                        color: Colors.black,
                      ),
                      SizedBox(width: 10),
                      Text("Sign Up",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Colors.black
                        ),)
                    ],
                  )
              ),
            ),
          ),
          SizedBox(height: 15),
          Container(
            padding: EdgeInsets.only(left: 30, right: 30),
            child: Text ("By creating an account, you agree to our Terms of Service and Privacy Policy",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
            ),),
          )
        ]
      )
    );
  }
}
