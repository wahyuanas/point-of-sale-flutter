import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/routes/cubit/route_cubit.dart';
import 'package:pos/routes/on_state/on_route_state.dart';

class PosPaymentCustomerWidget extends StatefulWidget {
  const PosPaymentCustomerWidget({Key? key}) : super(key: key);

  @override
  State<PosPaymentCustomerWidget> createState() =>
      _PosPaymentCustomerWidgetState();
}

class _PosPaymentCustomerWidgetState extends State<PosPaymentCustomerWidget> {
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
                'Konsumen',
                style: TextStyle(color: Colors.blue, fontSize: 15.0),
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
            child: ListTile(
              trailing: GestureDetector(
                onTap: () => BlocProvider.of<RouteCubit>(context).onRoute(
                    const OnRouteState.postCustomerList(r: '/postCustomerList'),
                    null),
                child: const Icon(
                  Icons.search_outlined,
                  size: 25.0,
                  color: Colors.blue,
                ),
              ),
              title: const Text(
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
