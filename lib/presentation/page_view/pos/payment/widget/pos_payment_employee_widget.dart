import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/presentation/page_view/pos/routes/cubit/pos_route_cubit.dart';
import 'package:pos/presentation/page_view/pos/routes/on_state/pos_on_route_state.dart';

import '../cubit/pos_payment_cubit.dart';

class PosPaymentEmployeeWidget extends StatefulWidget {
  const PosPaymentEmployeeWidget({Key? key}) : super(key: key);

  @override
  State<PosPaymentEmployeeWidget> createState() =>
      _PosPaymentEmployeeWidgetState();
}

class _PosPaymentEmployeeWidgetState extends State<PosPaymentEmployeeWidget> {
  late bool _initial;

  @override
  void initState() {
    _initial = true;
    // context.read<PosPaymentCubit>().state.createOrder.employees.value.fold(
    //     (l) => null,
    //     (r) => context.read<PosPaymentCubit>().onEmployeeChanged(null));

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
      } else if (p.createOrder.employees != c.createOrder.employees) {
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
              //height: 50,
              //margin: const EdgeInsets.all(10.0),
              decoration: const BoxDecoration(
                  //color: Colors.blue,
                  border: Border(
                bottom: BorderSide(
                  color: Colors.blue,
                  width: 0.5,
                ),
              )),
              child: state.createOrder.employees.value.fold(
                (l) =>
                    // ListTile(
                    //   trailing: GestureDetector(
                    //     onTap: () => BlocProvider.of<PosRouteCubit>(context)
                    //         .onRoute(
                    //             const PosOnRouteState.posEmployeeList(
                    //                 r: '/posEmployeeList'),
                    //             null),
                    //     child: const Icon(
                    //       Icons.search_outlined,
                    //       size: 25.0,
                    //       color: Colors.blue,
                    //     ),
                    //   ),
                    //   title: const Text(
                    //     'pilih mekanik...',
                    //     style: TextStyle(fontSize: 15, color: Colors.black38),
                    //   ),
                    // ),
                    null,
                (r) => Column(
                  children: r!.map(
                    (e) {
                      return ListTile(
                        trailing: GestureDetector(
                          onTap: () => BlocProvider.of<PosPaymentCubit>(context)
                              .onEmployeeChanged1(e),
                          child: const Icon(
                            Icons.delete_outline,
                            size: 25.0,
                            color: Colors.blue,
                          ),
                        ),
                        title: Text(
                          e.name,
                          style: const TextStyle(
                              fontSize: 15, color: Colors.black38),
                        ),
                      );
                    },
                  ).toList(),
                ),
              ),
            ),
          ),
          _initial == false
              ? state.createOrder.employees.value.fold(
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
