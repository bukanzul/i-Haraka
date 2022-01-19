import 'package:equatable/equatable.dart';
import 'package:iharaka/models/menu.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Vendor extends Equatable {

  final int id;
  final String name;
  final List<Menu> menu;


  Vendor ({
  required this.id,
  required this.name,
  required this.menu,
});

  @override
  List<Object?> get props => [id, name];

static List<Vendor> vendor = [
  Vendor(
      id: 1,
      menu: Menu.menu.where((menu) => menu.vendorID == 1).toList(),
      name: 'Kafe Bilal'),
  Vendor(
      id: 2,
      menu: Menu.menu.where((menu) => menu.vendorID == 2).toList(),
      name: 'Kafe Aminah'),
  Vendor(
      id: 3,
      menu: Menu.menu.where((menu) => menu.vendorID == 3).toList(),
      name: 'Kafe Salahuddin'),
  Vendor(
      id: 4,
      menu: Menu.menu.where((menu) => menu.vendorID == 4).toList(),
      name: 'Kafe Ali'),
  ];
}