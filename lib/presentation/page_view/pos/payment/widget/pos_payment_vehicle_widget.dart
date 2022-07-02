import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/routes/cubit/route_cubit.dart';
import 'package:pos/routes/on_state/on_route_state.dart';

class PosPaymentVehicleWidget extends StatefulWidget {
  const PosPaymentVehicleWidget({Key? key}) : super(key: key);

  @override
  State<PosPaymentVehicleWidget> createState() =>
      _PosPaymentVehicleWidgetState();
}

class _PosPaymentVehicleWidgetState extends State<PosPaymentVehicleWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 30.0,
          child: ListTile(
            // trailing: Icon(
            //   Icons.expand_more_outlined,
            //   size: 30.0,
            //   color: Colors.blue,
            // ),
            title: Padding(
              padding: EdgeInsets.only(bottom: 6.0),
              child: Text(
                'Kendaraan',
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
              trailing: Icon(
                Icons.search_outlined,
                size: 25.0,
                color: Colors.blue,
              ),
              title: Text(
                'Toyota Fortuner',
                style: TextStyle(fontSize: 15),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
