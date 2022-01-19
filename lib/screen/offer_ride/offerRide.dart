import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class OfferRide extends StatefulWidget {
  const OfferRide({Key? key}) : super(key: key);

  @override
  _OfferRideState createState() => _OfferRideState();
}

class _OfferRideState extends State<OfferRide> {
  final _formKey = GlobalKey<FormState>();
  final List<String> location = ["Mahallah Bilal",'Mahallah Zubair','Mahallah Aminah','KICT',' KOE'];

  var pickup = '';
  var dest = '';
  var model = '';
  var platNo = '';
  var phoneNo = 0;

  @override
  Widget build(BuildContext context) {
    CollectionReference vehicle = FirebaseFirestore.instance.collection('vehicle');
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
          width: double.infinity,
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                SizedBox(height: 30),
                DropdownButtonFormField(
                    decoration: InputDecoration(
                        labelText: 'Pickup Location'
                    ),
                    items: location.map((pickup){
                      return DropdownMenuItem(
                          value: pickup,
                          child: Text('$pickup'));
                    }).toList(),
                  onChanged: (value) => setState(() => pickup = value as String),
                    style: TextStyle(color: Colors.black)
                ),
                SizedBox(height: 30),
                DropdownButtonFormField(
                  decoration: InputDecoration(
                    labelText: 'Destination'
                  ),
                    items: location.map((pickup){
                      return DropdownMenuItem(
                          value: pickup,
                          child: Text('$pickup'));
                    }).toList(),
                    onChanged: (value) => setState(() => dest = value as String),
                    style: TextStyle(color: Colors.black)
                ),
                SizedBox(height: 30),
                TextFormField(
                  decoration: const InputDecoration(
                  labelText: 'Model',

                  ),
                  onChanged: (value) {
                      model = value;
                  },
                  validator: (value) {
                    if ( value == null || value.isEmpty){
                      return 'Enter valid model';
                    }
                    return null;
                  },
                    style: TextStyle(color: Colors.black)
                ),
                SizedBox(height: 30),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Plat number',
                  ),
                  onChanged: (value) {
                    platNo = value;
                  },
                  validator: (value) {
                    if ( value == null || value.isEmpty){
                      return 'Enter valid plat number!';
                    }
                    return null;
                  },
                    style: TextStyle(color: Colors.black)
                ),
                SizedBox(height: 30),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Phone Number',
                  ),
                  onChanged: (value) {
                    phoneNo = int.parse(value);
                  },
                  validator: (value) {
                    if ( value == null || value.isEmpty){
                      return 'Enter valid phone number!';
                    }
                    return null;
                  },
                  style: TextStyle(color: Colors.black)
                ),
                SizedBox(height: 30),
                Center(
                  child: ElevatedButton(
                    onPressed: (){
                      if(_formKey.currentState!.validate())
                      vehicle
                          .add({'pickup': pickup,'dest': dest, 'model': model, 'platNo': platNo, 'phoneNo': phoneNo})
                          .then((value) => print('Offer added!'))
                          .catchError((error) => print('Error occur!'));
                    },
                     child: Text('Submit'),

                  )
                ),
              ]
            ),
            ),
          ),
      ),
    );
  }
}
