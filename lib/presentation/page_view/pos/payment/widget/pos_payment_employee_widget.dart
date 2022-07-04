import 'package:flutter/material.dart';

class PosPaymentEmployeeWidget extends StatefulWidget {
  const PosPaymentEmployeeWidget({Key? key}) : super(key: key);

  @override
  State<PosPaymentEmployeeWidget> createState() =>
      _PosPaymentEmployeeWidgetState();
}

class _PosPaymentEmployeeWidgetState extends State<PosPaymentEmployeeWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 30.0,
          child: ListTile(
            trailing: Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: Icon(
                Icons.search_outlined,
                size: 25.0,
                color: Colors.blue,
              ),
            ),
            title: Padding(
              padding: EdgeInsets.only(bottom: 6.0),
              child: Text(
                'Mekanik',
                style: TextStyle(color: Colors.blue, fontSize: 15),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            height: 50,
            //margin: const EdgeInsets.all(10.0),
            decoration: const BoxDecoration(
                //color: Colors.blue,
                border: Border(
              bottom: BorderSide(
                color: Colors.blue,
                width: 0.5,
              ),
            )),
            child: const ListTile(
              title: Text(
                'Mr. California',
                style: TextStyle(fontSize: 15),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            height: 50,
            //margin: const EdgeInsets.all(10.0),
            decoration: const BoxDecoration(
                //color: Colors.blue,
                border: Border(
              bottom: BorderSide(
                color: Colors.blue,
                width: 0.5,
              ),
            )),
            child: const ListTile(
              title: Text(
                'Mr. California',
                style: TextStyle(fontSize: 15),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            height: 50,
            //margin: const EdgeInsets.all(10.0),
            decoration: const BoxDecoration(
                //color: Colors.blue,
                border: Border(
              bottom: BorderSide(
                color: Colors.blue,
                width: 0.5,
              ),
            )),
            child: const ListTile(
              title: Text(
                'Mr. California',
                style: TextStyle(fontSize: 15),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
