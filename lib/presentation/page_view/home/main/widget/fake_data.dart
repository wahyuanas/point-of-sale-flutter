import 'package:pos/domain/catalog/item/entity/item.dart';
import 'package:pos/domain/customer/entity/customer.dart';

class Order {
  Order(
      {required this.id,
      required this.code,
      required this.date,
      required this.amount,
      required this.withName,
      required this.regNumber});

  int id;
  String code;
  String date;
  int amount;
  String withName;
  String regNumber;
}

class Inventory {
  Inventory({
    required this.id,
    required this.name,
    required this.stock,
    required this.code,
    required this.disc,
    required this.amount,
    required this.type,
  });

  int id;
  String code;
  String name;
  int disc;
  int amount;
  String type;
  int stock;
}

var orders = [
  Order(
      id: 1,
      code: "00001",
      date: "01 Juni 2020",
      amount: 1500000,
      withName: "Bill Gates",
      regNumber: "B1234UT"),
  Order(
      id: 2,
      code: "00002",
      date: "01 Juni 2020",
      amount: 2500000,
      withName: "Larry Page",
      regNumber: "B5432BA"),
  Order(
      id: 3,
      code: "00003",
      date: "01 Juni 2020",
      amount: 3500000,
      withName: "Asep",
      regNumber: "B3452TB"),
  Order(
      id: 4,
      code: "00004",
      date: "01 Juni 2020",
      amount: 1500000,
      withName: "Deden",
      regNumber: "B7654HJ"),
  Order(
      id: 5,
      code: "00005",
      date: "01 Juni 2020",
      amount: 4500000,
      withName: "Hotman",
      regNumber: "B4783UT")
];

var inventories = [
  Inventory(
      id: 1,
      name: "Aki GS NS70",
      stock: 10,
      code: "AKGSNS70",
      disc: 3,
      amount: 1500000,
      type: "Inventory"),
  Inventory(
      id: 2,
      name: "Spooring 4 X",
      stock: 20,
      code: "SP4X",
      disc: 5,
      amount: 200000,
      type: "Service"),
  Inventory(
      id: 3,
      name: "Velg Hsr Skinny Yx629",
      stock: 15,
      code: "VLHSRYX629",
      disc: 7,
      amount: 4500000,
      type: "Inventory"),
];

var itemPos = <Item>[
  const Item(
      id: 1,
      code: "AKGSNS70",
      barcode: null,
      name: "Aki GS NS70",
      description: "Aki GS NS70",
      sellPrice: 1500000,
      sellDisc: null,
      purchasePrice: 1300000,
      purchaseDisc: null,
      stock: 10,
      category: 1,
      image: null),
  const Item(
      id: 2,
      code: "SP4X",
      barcode: null,
      name: "Spooring 4 X",
      description: "Spooring 4 X",
      sellPrice: 200000,
      sellDisc: 2,
      purchasePrice: 150000,
      purchaseDisc: null,
      stock: 15,
      category: 2,
      image: null),
  const Item(
      id: 3,
      code: "VLHSRYX629",
      barcode: null,
      name: "Velg Hsr Skinny Yx629",
      description: "Velg Hsr Skinny Yx629",
      sellPrice: 4600000,
      sellDisc: 3,
      purchasePrice: 4000000,
      purchaseDisc: null,
      stock: 5,
      category: 3,
      image: null),
];

var customers = [
  const Customer(
      id: 1,
      name: "Bill Gates",
      phoneNumber: "0987654321",
      email: "c@c.com",
      idNumber: "12345",
      address: "Jl. ABC No. 1",
      idAccount: 1),
  const Customer(
      id: 3,
      name: "Asep",
      phoneNumber: "0987654321",
      email: "c@c.com",
      idNumber: "12345",
      address: "Jl. ABC No. 1",
      idAccount: 1),
  const Customer(
      id: 1,
      name: "Deden",
      phoneNumber: "0987654321",
      email: "c@c.com",
      idNumber: "12345",
      address: "Jl. ABC No. 1",
      idAccount: 1),
];
