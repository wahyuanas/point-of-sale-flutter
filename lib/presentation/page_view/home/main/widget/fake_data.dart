import 'package:pos/domain/catalog/item/entity/item.dart';
import 'package:pos/domain/customer/entity/customer.dart';
import 'package:pos/domain/vehicle/entity/vehicle.dart';
import 'package:pos/domain/vehicle_owner/entity/vehicle_owner.dart';
import 'package:pos/domain/vehicle_type/entity/vehicle_type.dart';
import 'package:uuid/uuid.dart';

// class Order {
//   Order(
//       {required this.id,
//       required this.code,
//       required this.date,
//       required this.amount,
//       required this.withName,
//       required this.regNumber});

//   int id;
//   String code;
//   String date;
//   int amount;
//   String withName;
//   String regNumber;
// }

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

// var orders = [
//   Order(
//       id: 1,
//       code: "00001",
//       date: "01 Juni 2020",
//       amount: 1500000,
//       withName: "Bill Gates",
//       regNumber: "B1234UT"),
//   Order(
//       id: 2,
//       code: "00002",
//       date: "01 Juni 2020",
//       amount: 2500000,
//       withName: "Larry Page",
//       regNumber: "B5432BA"),
//   Order(
//       id: 3,
//       code: "00003",
//       date: "01 Juni 2020",
//       amount: 3500000,
//       withName: "Asep",
//       regNumber: "B3452TB"),
//   Order(
//       id: 4,
//       code: "00004",
//       date: "01 Juni 2020",
//       amount: 1500000,
//       withName: "Deden",
//       regNumber: "B7654HJ"),
//   Order(
//       id: 5,
//       code: "00005",
//       date: "01 Juni 2020",
//       amount: 4500000,
//       withName: "Hotman",
//       regNumber: "B4783UT")
// ];

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
  Item(
      id: 1,
      uuid: const Uuid().v4(),
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
  Item(
      id: 2,
      uuid: const Uuid().v4(),
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
  Item(
      id: 3,
      uuid: const Uuid().v4(),
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
      address: "Jl. ABC No. 1",
      idAccount: 1,
      code: '001',
      type: ''),
  const Customer(
      id: 3,
      name: "Asep",
      phoneNumber: "0987654321",
      email: "c@c.com",
      code: '002',
      type: '',
      address: "Jl. ABC No. 1",
      idAccount: 1),
  const Customer(
      id: 1,
      name: "Deden",
      phoneNumber: "0987654321",
      email: "c@c.com",
      code: '003',
      type: '',
      address: "Jl. ABC No. 1",
      idAccount: 1),
];

var vehicleType = [
  const VehicleType(
      id: 1,
      manufacture: "Mercedes-Benz",
      model: "GLA-SUV",
      year: 2022,
      color: "Blue",
      description: "abcde",
      idAccount: 1),
  const VehicleType(
      id: 2,
      manufacture: "Toyota",
      model: "Fortuner",
      year: 2021,
      color: "Black",
      description: "abcde",
      idAccount: 1),
  const VehicleType(
      id: 3,
      manufacture: "Mitsubishi",
      model: "Pajero",
      year: 2020,
      color: "Metal",
      description: "abcde",
      idAccount: 1)
];

var owners = [
  const VehicleOwner(
      id: 1,
      name: "Bill Gates",
      phoneNumber: "0987654321",
      email: "c@c.com",
      idNumber: "12345",
      address: "Jl. ABC No. 1",
      idAccount: 1),
  const VehicleOwner(
      id: 2,
      name: "Asep",
      phoneNumber: "0987654321",
      email: "c@c.com",
      idNumber: "12345",
      address: "Jl. ABC No. 1",
      idAccount: 1),
  const VehicleOwner(
      id: 3,
      name: "Deden",
      phoneNumber: "0987654321",
      email: "c@c.com",
      idNumber: "12345",
      address: "Jl. ABC No. 1",
      idAccount: 1),
];

var vehicle = [
  const Vehicle(
      id: 1,
      policyNumber: "B1234UT",
      machineNumber: "08765-4321",
      currentKm: 1500,
      description: "abcdef",
      idAccount: 1,
      idVehicleOwner: 1,
      idVehicleType: 1),
  const Vehicle(
      id: 2,
      policyNumber: "B1234UT",
      machineNumber: "08765-4321",
      currentKm: 1500,
      description: "abcdef",
      idAccount: 1,
      idVehicleOwner: 2,
      idVehicleType: 2),
  const Vehicle(
      id: 3,
      policyNumber: "B1234UT",
      machineNumber: "08765-4321",
      currentKm: 1500,
      description: "abcdef",
      idAccount: 1,
      idVehicleOwner: 3,
      idVehicleType: 3)
];

var itemss = <Item>[
  Item(
      id: 1,
      uuid: const Uuid().v4(),
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
  Item(
      id: 2,
      uuid: const Uuid().v4(),
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
  Item(
      id: 3,
      uuid: const Uuid().v4(),
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

// var orders = [
//   Order(
//       id: 1,
//       code: "0000001",
//       customerId: 1,
//       vehicleId: 1,
//       employeeId: [1,2],
//       date: "01 Juni 2022",
//       amount: 3000000,
//       grandAmount: 3150000,
//       disc: disc,
//       paymentType: paymentType,
//       charge: charge,
//       paidAmount: paidAmount,
//       changeAmount: changeAmount,
//       description: description,
//       tax: tax,
//       itemNumber: itemNumber,
//       paidStatus: paidStatus)
// ];
