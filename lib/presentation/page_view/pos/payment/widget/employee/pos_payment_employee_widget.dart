import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/presentation/page_view/pos/payment/cubit/pos_payment_cubit.dart';
import 'package:pos/presentation/page_view/pos/routes/cubit/pos_route_cubit.dart';
import 'package:pos/presentation/page_view/pos/routes/on_state/pos_on_route_state.dart';

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
    context.read<PosPaymentCubit>().state.createOrder.employees.value.fold(
        (l) => null, (r) => context.read<PosPaymentCubit>().onEmployeeReset());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PosPaymentCubit, PosPaymentState>(buildWhen: (p, c) {
      if (p.initial != c.initial) {
        if (c.initial == false) {
          if (_initial == true) _initial = false;
          return true;
        }
      } else if (p.createOrder.employees != c.createOrder.employees) {
        if (_initial == true) _initial = false;
        return true;
      }
      return false;
    }, builder: (context, state) {
      return Card(
        elevation: 0.3,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40.0,
              child: ListTile(
                trailing: state.createOrder.employees.value.fold(
                    (l) => const SizedBox(),
                    ((r) => Padding(
                          padding: const EdgeInsets.only(right: 20.0),
                          child: GestureDetector(
                            onTap: () {
                              BlocProvider.of<PosRouteCubit>(context).onRoute(
                                  const PosOnRouteState.posEmployeeList(
                                      r: '/posEmployeeList'),
                                  null);
                              FocusScopeNode currentFocus =
                                  FocusScope.of(context);
                              if (!currentFocus.hasPrimaryFocus) {
                                currentFocus.unfocus();
                              }
                            },
                            child: const Icon(
                              Icons.search_outlined,
                              size: 25.0,
                              color: Colors.blue,
                            ),
                          ),
                        ))),
                title: const Padding(
                  padding: EdgeInsets.only(bottom: 6.0),
                  child: Text(
                    'Mekanik',
                    style: TextStyle(color: Colors.blue, fontSize: 15),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 20, bottom: 5.0),
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
                    Container(
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
                  child: ListTile(
                    trailing: Padding(
                      padding: const EdgeInsets.only(right: 0.0),
                      child: GestureDetector(
                        onTap: () {
                          BlocProvider.of<PosRouteCubit>(context).onRoute(
                              const PosOnRouteState.posEmployeeList(
                                  r: '/posEmployeeList'),
                              null);
                          FocusScopeNode currentFocus = FocusScope.of(context);
                          if (!currentFocus.hasPrimaryFocus) {
                            currentFocus.unfocus();
                          }
                        },
                        child: const Icon(
                          Icons.search_outlined,
                          size: 25.0,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                    title: const Text(
                      'Pilih Mekanik...',
                      style: TextStyle(fontSize: 15, color: Colors.black38),
                    ),
                  ),
                ),
                (r) => Column(
                  children: r!.map(
                    (e) {
                      return Container(
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
                        child: ListTile(
                          trailing: GestureDetector(
                            onTap: () =>
                                BlocProvider.of<PosPaymentCubit>(context)
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
                                fontSize: 15, color: Colors.black),
                          ),
                        ),
                      );
                    },
                  ).toList(),
                ),
              ),
            ),
            _initial == false
                ? state.createOrder.employees.value.fold(
                    (l) => l.maybeWhen(
                        emptyField: (f) => const Padding(
                              padding: EdgeInsets.only(
                                  right: 20, left: 20, bottom: 5.0, top: 5.0),
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
        ),
      );
    });
  }
}
