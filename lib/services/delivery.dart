import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:iharaka/models/vendor.dart';

class FoodDelivery with ChangeNotifier {
  List<Vendor> _vendorList = [];
  late Vendor _currentVendor;

  UnmodifiableListView<Vendor> get vendorList => UnmodifiableListView(_vendorList);

  Vendor get currentVendor => _currentVendor;

  set vendorList(List<Vendor> vendorList) {
    _vendorList = vendorList;
    notifyListeners();
  }

  set currentVendor(Vendor vendor) {
    _currentVendor = vendor;
    notifyListeners();
  }



}