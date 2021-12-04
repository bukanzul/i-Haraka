import 'package:flutter/material.dart';

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
                bottom: 10,
                left: 0,
                child: Image.asset('assets/bottomLeft.png',
                    width: size.width * 0.2)
            ),
            // Positioned(
            //     bottom: 0,
            //     right: 0,
            //     child: Image.asset('assets/bottomRight.png',
            //         width: size.width * 0.2)
            // ),
          ],
        )
      )
    );
  }
}
