import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: const EdgeInsets.only(top:60, left: 20, right: 20, bottom: 40),
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
                Icon(Icons.account_circle,
                  size: 28,
                  color:Colors.black
                ),
              ],
            ),
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
            ),
            SizedBox(height: 35,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  InkWell(
                      onTap: () {},
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
                            Text("Offer"),
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
                  onTap: () {},
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
                        Text("Join"),
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
              ),
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
            ),
            SizedBox(height: 35.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    child: Column (
                      mainAxisAlignment: MainAxisAlignment.center,

                    ),
                    height: 120,
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
                        color: Colors.white
                      ),

                    ),

                  ),
                SizedBox(height: 35.0),
                InkWell(
                  onTap: () {},
                  child: Container(
                    child: Column (
                      mainAxisAlignment: MainAxisAlignment.center,

                    ),
                    height: 120,
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
                        color: Colors.white
                    ),

                  ),

                ),
                SizedBox(height:35.0),
                InkWell(
                  onTap: () {},
                  child: Container(
                    child: Column (
                      mainAxisAlignment: MainAxisAlignment.center,

                    ),
                    height: 120,
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
                        color: Colors.white
                    ),

                  ),

                ),
                ],
              ),
          ],
          ),
        ],
      ),
    );
  }
}
