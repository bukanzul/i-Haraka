import 'package:equatable/equatable.dart';
import 'package:iharaka/models/vendor.dart';

class Menu extends Equatable{
  final int id;
  final int vendorID;
  final String name;
  final String desc;
  final double price;

  Menu({required this.id, required this.vendorID, required this.name, required this.desc, required this.price});

  @override
  // TODO: implement props
  List<Object?> get props => [id, vendorID, name, desc, price];

static List<Menu> menu = [
  Menu(
    id: 1,
    vendorID: 1,
    name: 'Ayam Gepuk',
    desc: 'Nyum Nyum',
    price: 5.00,
  ),
  Menu(
    id: 2,
    vendorID: 1,
    name: 'Shawarma',
    desc: 'Nyum Nyum',
    price: 5.00,
  ),
  ];

}

