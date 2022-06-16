import 'package:pos/domain/catalog/item/entity/item.dart';

var faktur = [
  {
    "nama": "abcde",
    "noReg": "C0001CA",
    "noFak": "FAK-0001",
    "tgl": "01 Juni 2022",
    "rp": "100.000"
  },
  {
    "nama": "efghi",
    "noReg": "C0001CA",
    "noFak": "FAK-0002",
    "tgl": "01 Juni 2022",
    "rp": "200.000"
  },
  {
    "nama": "jklmn",
    "noReg": "C0003CA",
    "noFak": "FAK-0003",
    "tgl": "01 Juni 2022",
    "rp": "300.000"
  },
  {
    "nama": "opqrs",
    "noReg": "C0004CA",
    "noFak": "FAK-0004",
    "tgl": "01 Juni 2022",
    "rp": "400.000"
  },
  {
    "nama": "tuvwx",
    "noReg": "C0005CA",
    "noFak": "FAK-0005",
    "tgl": "01 Juni 2022",
    "rp": "500.000"
  },
  {
    "nama": "yzabc",
    "noReg": "C0006CA",
    "noFak": "FAK-0006",
    "tgl": "01 Juni 2022",
    "rp": "600.000"
  },
  {
    "nama": "defgh",
    "noReg": "C0007CA",
    "noFak": "FAK-0007",
    "tgl": "07 Juni 2022",
    "rp": "700.000"
  },
];

var inventory = [
  {
    "nama": "Aki GS NS70 ",
    "kode": "AKGSNS70",
    "stok": "10",
    "disc": "3%",
    "rp": "1.500.000",
    "tipe": "Inventory"
  },
  {
    "nama": "Spooring 4 X",
    "kode": "SP4X",
    "stok": "20",
    "disc": "0%",
    "rp": "200.000",
    "tipe": "Service"
  },
  {
    "nama": "Velg Hsr Skinny Yx629",
    "kode": "VLHSRYX629",
    "stok": "10",
    "disc": "5%",
    "rp": "4.600.000",
    "tipe": "Inventory"
  },
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
