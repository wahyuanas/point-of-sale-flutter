import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/routes/cubit/route_cubit.dart';
import 'package:pos/routes/on_state/on_route_state.dart';

import '../cubit/pos_payment_cubit.dart';

class PosPaymentCustomerWidget extends StatefulWidget {
  const PosPaymentCustomerWidget({Key? key}) : super(key: key);

  @override
  State<PosPaymentCustomerWidget> createState() =>
      _PosPaymentCustomerWidgetState();
}

class _PosPaymentCustomerWidgetState extends State<PosPaymentCustomerWidget> {
  late bool _initial;

  @override
  void initState() {
    _initial = true;
    //BlocProvider.of<SignUpCubit>(context).onCompanyNameChanged("");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PosPaymentCubit, PosPaymentState>(buildWhen: (p, c) {
      if (p.initial != c.initial) {
        if (c.initial == false) {
          if (_initial == true) _initial = false;
          return true;
        } else if (c.initial == true) {
          if (_initial == false) _initial = true;
          return false;
        }
      } else if (p.status != c.status) {
        c.status.maybeWhen(
            initial: () {
              if (_initial == false) _initial = true;
            },
            orElse: () => null);
        return false;
      } else if (p.createOrder?.customerId != c.createOrder?.customerId) {
        if (_initial == true) _initial = false;
        return true;
      }
      return false;
    }, builder: (context, state) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
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
                  trailing: state.createOrder?.customerId.value.fold(
                      (l) => GestureDetector(
                            onTap: () => BlocProvider.of<RouteCubit>(context)
                                .onRoute(
                                    const OnRouteState.postCustomerList(
                                        r: '/postCustomerList'),
                                    null),
                            child: const Icon(
                              Icons.search_outlined,
                              size: 25.0,
                              color: Colors.blue,
                            ),
                          ),
                      (r) => null),
                  title: state.createOrder?.customerId.value.fold(
                    (l) => const Text(
                      'pilih konsumen...',
                      style: TextStyle(fontSize: 15, color: Colors.black38),
                    ),
                    (r) => const Text(
                      'Mr. California',
                      style: TextStyle(fontSize: 15),
                    ),
                  )),
            ),
          ),
          _initial == false
              ? state.createOrder!.customerId.value.fold(
                  (l) => l.maybeWhen(
                      emptyField: (f) => const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Text(
                              '*wajib dipilih',
                              style: TextStyle(
                                fontSize: 11,
                                color: Colors.red,
                              ),
                            ),
                          ),
                      orElse: () => Container()),
                  (r) => Container())
              : Container()
        ],
      );
    });
  }
}
