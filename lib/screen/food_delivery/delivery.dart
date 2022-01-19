import 'package:flutter/material.dart';
import 'package:iharaka/models/vendor.dart';
import 'package:iharaka/services/delivery.dart';
import 'package:provider/provider.dart';

class Delivery extends StatefulWidget {

  @override
  _DeliveryState createState() => _DeliveryState();
}

class _DeliveryState extends State<Delivery> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                Text('Choose your vendor',
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
                ))
              ],
            ),
            SizedBox(
              height: 600,
              child: ListView.builder(
                            padding: EdgeInsets.fromLTRB(5, 20, 5, 20),
                            itemCount: Vendor.vendor.length,
                            itemBuilder: (context, index) {
                              return VendorCard(vendor: Vendor.vendor[index]);
                            }
                        ),
            ),
          ],
        ),
      ),

    );
}}

class VendorCard extends StatelessWidget {
  final Vendor vendor;
  const VendorCard({
    Key? key,
  required this.vendor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 150,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5.0),
      color: Colors.white30),
      child: Column(
        children: [
          Text(vendor.name),
        ],
      )
    );
  }
}

