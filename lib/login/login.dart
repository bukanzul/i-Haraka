import 'package:flutter/material.dart';
import '../homepage/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFF18224A),
        body: Container(
        height: size.height,
        width: double.infinity,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top: -23,
              left: -10,
              child: Image.asset('assets/right.png',
              width: size.width * 0.4)
            ),
            Positioned(
                bottom: -10,
                left: -20,
                child: Image.asset('assets/bottomLeft.png',
                    width: size.width * 0.3)
            ),
            Positioned(
                bottom: -10,
                right: -20,
                child: Image.asset('assets/bottomRight.png',
                    width: size.width * 0.4)
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Sign In",
                    style: TextStyle(
                      fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
                  ),
                  SizedBox (height: 20),
                  Container(
                    height: 55,
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: TextField(
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30.0)),
                          ),
                        labelText: '  E-mail Address',
                        fillColor: Colors.white,
                        filled: true,
                    )),
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 55,
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: TextField(
                      style: TextStyle(
                        decorationColor: Colors.white,
                        color: Colors.white,
                      ),
                        decoration: const InputDecoration(
                          fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(30.0))
                            ),
                            labelText: '  Password'
                        )),
                  ),
                  SizedBox(height: 20),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(
                          context, '/home');
                    },
                    child: Container(
                      height: 55,
                      width: 350,
                      decoration: BoxDecoration(
                        color: Color(0xFF00818A),
                        borderRadius: BorderRadius.circular(30),
                    ),
                      child: Center(
                        child: Text("Login",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),)
                      )
                  ),)

                ],
              )
            )
          ],
        )
      )
    );
  }
}

