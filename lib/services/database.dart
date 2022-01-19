import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:iharaka/models/vehicle.dart';

class DatabaseService {

  final String uid;
  DatabaseService({ required this.uid});

  // Collection reference
  final CollectionReference vehicleDetails = FirebaseFirestore.instance.collection('vehicles');

  Future updateGiveRide(String platNo, String models, String details, int pax) async {
    return await vehicleDetails.doc(uid).set({
      'platNo': platNo,
      'models': models,
      'details': details,
      'pax': pax,
    });
  }

  List<Vehicle> _vehicleListFromSnapshot(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc){
      return Vehicle(
        platNo: doc.get('platNo') ?? '',
        models: doc.get('models') ?? '',
        details: doc.get('details') ?? '',
        pax: doc.get('pax') ?? 0
      );
    }).toList();
  }

  Stream<List<Vehicle>> get vehicle  {
    return vehicleDetails.snapshots()
    .map(_vehicleListFromSnapshot);
  }
}

