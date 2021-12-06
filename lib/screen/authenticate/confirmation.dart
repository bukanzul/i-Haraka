import 'package:flutter/material.dart';

class Confirmation extends StatelessWidget {
  const Confirmation({Key? key}) : super(key: key);

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
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Congratulations!', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),),
                SizedBox(height: 30.0),
                Text('You have successfully registered', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0, letterSpacing: 0.8)),
                SizedBox(height: 40.0),
                InkWell(onTap: (){
                  Navigator.pushNamed(context, '/start');
                },
                child: Container(
                    height: 50,
                    width: 350,
                    decoration: BoxDecoration(
                      color: Color(0xFF00818A),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                        child: Text("Get Started",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),)
                    )
                ),
                )  ],
            )])));
  }
}
