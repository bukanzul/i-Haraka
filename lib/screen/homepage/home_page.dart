import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iharaka/services/auth.dart';
import '../request_ride/request_page.dart';
import '../join_ride/join_page.dart';
import '../rideHistory/ride_history.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      body: ListView(
        padding: const EdgeInsets.only(top:50, left: 20, right: 20, bottom: 60),
        children: [
          Column(
          children: [
            Row(
              children: [
                Icon(Icons.menu,
                    size: 18,
                    color:Colors.black,

                ),
                SizedBox(width:10),
                Text("Home",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Expanded(child: Container()),
                InkWell(
                  onTap: () async {
                    await _auth.signOut().then((value) => Navigator.pushNamed(context, '/start'));
                  },
                  child: Icon(Icons.account_circle,
                    size: 28,
                    color:Colors.black
                  ),
                ),
              ],
            ), // Dashboard
            SizedBox(height: 35,),
            Row(
              children: [
                Text("Welcome Back!",
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ), // Welcome Back Text only
            SizedBox(height: 35,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Request()
                        ),);
                      },
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                                Icons.directions_car_filled,
                                size: 50,
                              color: Colors.green,
                                ),
                            SizedBox(height: 10),
                            Text("Offer",
                            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400)),
                          ],
                        ),
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 2,
                              blurRadius: 8,
                            ),
                          ],
                          color: Colors.white,
                        ),
                      ),
                  ),
                SizedBox(width: 50,),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Join())
                    );
                  },
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.directions_car_filled,
                          size: 50,
                          color: Colors.blue,
                        ),
                        SizedBox(height: 10),
                        Text("Join",
                            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400)),
                      ],
                    ),
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          spreadRadius: 2,
                          blurRadius: 8,
                        ),
                      ],
                      color: Colors.white,
                    ),
                  ),
                ),
                ],
              ), // Offer & Ride button
            SizedBox(height: 35.0),
            Row(
              children: [
                Text("Features",
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
                ),
              ],
            ), // Features Text only
            SizedBox(height: 35.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => History()),
                    );
                  },
                  child: Container(
                    height: 140,
                    width: 340,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                      BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 2,
                      blurRadius: 8)],
                        color: Colors.white),
                    child: Column(
                      children: [
                        Container(
                          height: 110,
                          width: 340,
                          child: FittedBox(
                              child: Image.asset("assets/ride_history.png"),
                              fit: BoxFit.fill
                          ),
                        ),
                        Container(
                          height: 30,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text("   Ride History >",
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                              )
                            )
                          ),
                        )],
                  ))), // Ride History
                SizedBox(height: 35.0),
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 140,
                    width: 340,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            spreadRadius: 2,
                            blurRadius: 8,
                          ),
                        ],
                        color: Colors.white),
                      child: Column(
                        children: [
                          Container(
                            height: 110,
                            width: 340,
                            child: FittedBox(
                                child: Image.asset("assets/bus.png"),
                                fit: BoxFit.fill
                            ),
                          ),
                          Container(
                            height: 30,
                            child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text("   Bus Schedule >",
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                    )
                                )
                            ),
                          )],
                      )
                  ),
                ), // Bus Schedule
                SizedBox(height:35.0),
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 140,
                    width: 340,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            spreadRadius: 2,
                            blurRadius: 8,
                          ),
                        ],
                        color: Colors.white),
                      child: Column(
                        children: [
                          Container(
                            height: 110,
                            width: 340,
                            child: FittedBox(
                                child: Image.asset("assets/bicycle_station.png"),
                                fit: BoxFit.fill
                            ),
                          ),
                          Container(
                            height: 30,
                            child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text("   Bicycle Station >",
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                    )
                                )
                            ),
                          )],
                      )
                  ),
                ), // Bicycle Station
                ],
              ), // Three Features at bottom
          ],
          ),
        ],
      ),
    );
  }
}
