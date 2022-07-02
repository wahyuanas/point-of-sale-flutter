import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/presentation/page_view/pos/routes/cubit/pos_route_cubit.dart';
import 'package:pos/presentation/page_view/pos/routes/on_state/pos_on_route_state.dart';

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
      } else if (p.createOrder?.customer != c.createOrder?.customer) {
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
                  trailing: state.createOrder?.customer.value.fold(
                      (l) => GestureDetector(
                            onTap: () => BlocProvider.of<PosRouteCubit>(context)
                                .onRoute(
                                    const PosOnRouteState.postCustomerList(
                                        r: '/postCustomerList'),
                                    null),
                            child: const Icon(
                              Icons.search_outlined,
                              size: 25.0,
                              color: Colors.blue,
                            ),
                          ),
                      (r) => null),
                  title: state.createOrder?.customer.value.fold(
                    (l) => const Text(
                      'pilih konsumen...',
                      style: TextStyle(fontSize: 15, color: Colors.black38),
                    ),
                    (r) => Text(
                      r!.name,
                      style: const TextStyle(fontSize: 15),
                    ),
                  )),
            ),
          ),
          _initial == false
              ? state.createOrder!.customer.value.fold(
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
