import 'package:flutter/material.dart';

class DetailCard extends StatelessWidget {

  final String pickup, dest, model, platNo;
  final int phoneNo;

  DetailCard ({
    required this.pickup,
    required this.platNo,
    required this.dest,
    required this.model,
    required this.phoneNo,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Container(
        child: Material(
          elevation: 4.0,
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
            child: Stack(
              children: <Widget>[
                Positioned(
                bottom: 5.0,
                right: 70.0,
                width: 120.0,
                child: Container(
                  height: 120.0,
                  ),
                ),
                Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                  padding: const EdgeInsets.only(
                  top: 16.0, bottom: 0.0, left: 16.0, right: 16.0),
                    child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Pickup Location', style: TextStyle(color: Colors.grey,fontSize: 8),),
                          Text(pickup, style: TextStyle(color: Colors.black)),
                          Divider(),
                          Text('Destination', style: TextStyle(color: Colors.grey,fontSize: 8),),
                          Text(dest, style: TextStyle(color: Colors.black)),
                        ],
                      ),
                      Spacer(),
                      ClipOval(
                      child: Icon(
                        Icons.account_circle_rounded,
                        size: 45,
                        color: Colors.blue,
                      ),
                      ),
                    ],
                    ),
                  ),
                      Container(
                        padding: EdgeInsets.all(6),
                        child: Row(
                          children: [
                            Expanded(
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                    Icon(Icons.phone),
                                    Text(phoneNo.toString(), style: TextStyle(color: Colors.black, fontSize: 10),)
                                  ])
                            ),
                            Divider(),
                            Expanded(
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                    TextButton(
                                      onPressed: () => showDialog<String>(
                                        context: context,
                                        builder: (BuildContext context) => AlertDialog(
                                          title: Text('Details',style: TextStyle(color: Colors.black, fontSize: 18),),
                                          content: Container(
                                            height: 40,
                                              child: Column(
                                                  children: [
                                                  Row(
                                                    children: [
                                                      Text('Model: ', style: TextStyle(color: Colors.black,fontSize: 14),),
                                                      Text(model, style: TextStyle(color: Colors.black,fontSize: 14),),
                                                    ],
                                                  ),
                                                  SizedBox(height: 6,),
                                                  Row(
                                                     children: [
                                                        Text('Plat Number: ', style: TextStyle(color: Colors.black,fontSize: 14),),
                                                        Text(platNo, style: TextStyle(color: Colors.black,fontSize: 14),),
                                                      ],
                                                    )
                                            ])
                                          ),
                                          actions: <Widget>[
                                            TextButton(
                                              onPressed: () => Navigator.pop(context, 'OK'),
                                              child: const Text('OK'),
                                                ),
                                              ],
                                            ),
                                          ),
                                          child: const Text('More Details', style: TextStyle(color: Colors.black),),
                                      )
                                    ])
                            )
                          ],
                        ),
                      )
                      // Padding(
                      //   padding: const EdgeInsets.only(top: 8.0, bottom: 0.0, left: 16.0, right: 16.0),
                      //   child: Row(
                      //     mainAxisSize: MainAxisSize.max,
                      //     children: <Widget>[
                      //       Column(
                      //         crossAxisAlignment: CrossAxisAlignment.start,
                      //         children: <Widget>[
                      //           Divider(
                      //           color: Colors.black,
                      //           height: 0.0,
                      //           ),
                      //         ],
                      //       ),
                      //     ]
                      //   )
                      // )
                ]
                )
              ]
            )
        )
      )
    );
  }
}