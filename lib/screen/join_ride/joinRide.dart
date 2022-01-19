import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:iharaka/screen/join_ride/DetailCard.dart';

final _firestore = FirebaseFirestore.instance;

class JoinRide extends StatefulWidget {
  const JoinRide({Key? key}) : super(key: key);

  @override
  _JoinRideState createState() => _JoinRideState();
}

class _JoinRideState extends State<JoinRide> {
  // final Stream<QuerySnapshot> vehicle = FirebaseFirestore.instance.collection('vehicle').snapshots();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 50),
            Row(
              children: [
                InkWell(onTap: () {
                  Navigator.pushNamed(context, '/home');
                },
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0,0,0),
                    child: Align(alignment: Alignment.centerLeft,
                        child: Image.asset('assets/backIcon.png')),
                  ),),
                SizedBox(width: 20.0),
                Text('Available Ride',
                    style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ))
              ],
            ),
            RideStream(),
          ],
        ),
      )

      // body: Container(
      //   padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
      //   child: Column(
      //     children: [
      //       Text('Available ride: '),
      //       SizedBox(height: 30),
      //       Container(
      //         height: 250,
      //         child: StreamBuilder<QuerySnapshot>(
      //             stream: vehicle,
      //             builder: (
      //                 BuildContext context,
      //                 AsyncSnapshot<QuerySnapshot> snapshot,
      //             ) {
      //               if (!snapshot.hasData)
      //                 return Text('There is no available ride for a moment!');
      //               final data = snapshot.requireData;
      //
      //               return ListView.builder(
      //                 itemCount: data.size,
      //                 itemBuilder: (context, index) {
      //                   return Text('Pickup: ${data.docs[index]['pickup']}\n'
      //                       'Dest: ${data.docs[index]['dest']}\n'
      //                       'Pickup: ${data.docs[index]['model']}\n'
      //                       'Pickup: ${data.docs[index]['platNo']}\n'
      //                       'Pickup: ${data.docs[index]['phoneNo']}\n');
      //                 },
      //               );
      //             }
      //         ),
      //       ),
      //     ],
      //   ),
      // ),

    );
  }
}

class RideStream extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: _firestore.collection('vehicle').snapshots(),
      builder: (context, AsyncSnapshot snapshot) {
        if (!snapshot.hasData) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }

        List<Widget> rideWidgets = snapshot.data.docs.map<Widget>((r) {
          final data = r.data();
          final pickup = data['pickup'];
          final dest = data['dest'];
          final model = data['model'];
          final platNo = data['platNo'];
          final phoneNo = data['phoneNo'];
          return DetailCard(
            pickup: pickup,
            dest: dest,
            model: model,
            platNo: platNo,
            phoneNo: phoneNo,
          );
        }).toList();

        return Expanded(
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 10.0),
            children: rideWidgets,
          ),
        );
      },
    );
  }
}


