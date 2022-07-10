import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/presentation/main/employee/model/employees_model.dart';
import 'package:pos/presentation/page_view/pos/payment/cubit/pos_payment_cubit.dart';
import 'package:collection/collection.dart';

class PosEmployeeListCardWidget extends StatefulWidget {
  final EmployeesModel employee;
  const PosEmployeeListCardWidget({Key? key, required this.employee})
      : super(key: key);

  @override
  State<PosEmployeeListCardWidget> createState() =>
      _PosEmployeeListCardWidgetState();
}

class _PosEmployeeListCardWidgetState extends State<PosEmployeeListCardWidget> {
  EmployeesModel? em;

  @override
  void initState() {
    // context
    //     .read<PosPaymentCubit>()
    //     .state
    //     .createOrder
    //     .employees
    //     .value
    //     .fold((l) => null, (r) {
    //   em = r?.firstWhereOrNull((e) => e.id == widget.employee.id);
    // });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<PosPaymentCubit>(context)
        .state
        .createOrder
        .employees
        .value
        .fold((l) => null, (r) {
      em = r?.firstWhereOrNull((e) => e.id == widget.employee.id);
    });
    if (em?.id != widget.employee.id) {
      em = null;
    }
    return BlocListener<PosPaymentCubit, PosPaymentState>(
      listener: (context, state) async {
        state.createOrder.employees.value.fold((l) {
          em = null;
          setState(() {});
        }, (r) {
          EmployeesModel? em1 =
              r?.firstWhereOrNull((e) => e.id == widget.employee.id);
          if (em1 != null) {
            if (em == null) {
              em = em1;
              setState(() {});
            }
          } else {
            if (em != null) {
              em = null;
              setState(() {});
            }
          }
        });
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0, top: 10.0, bottom: 10.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () async {
                  // BlocProvider.of<RouteCubit>(context).onRoute(
                  //     const OnRouteState.posCatalogItemDetail(
                  //         r: '/posCatalogItemDetail'),
                  //     widget.pos.item);
                },
                child: ListTile(
                  trailing: GestureDetector(
                    onTap: () {
                      if (em == null) {
                        BlocProvider.of<PosPaymentCubit>(context)
                            .onEmployeeChanged(widget.employee);
                        //Navigator.of(context).pop();
                      } else {
                        BlocProvider.of<PosPaymentCubit>(context)
                            .onEmployeeChanged1(widget.employee);
                      }
                    },
                    child: em != null
                        ? const Icon(
                            Icons.done_outlined,
                            size: 35.0,
                            color: Colors.blue,
                          )
                        : const Icon(
                            Icons.radio_button_checked_outlined,
                            size: 20.0,
                            color: Colors.black38,
                          ),
                  ),
                  title: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(
                        Icons.person_outline,
                        size: 50,
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            if (em == null) {
                              BlocProvider.of<PosPaymentCubit>(context)
                                  .onEmployeeChanged(widget.employee);
                              //Navigator.of(context).pop();
                            } else {
                              BlocProvider.of<PosPaymentCubit>(context)
                                  .onEmployeeChanged1(widget.employee);
                            }
                          },
                          child: Container(
                            color: Colors.white,
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    widget.employee.code,
                                    style: const TextStyle(
                                        color: Colors.blue, fontSize: 15.0),
                                  ),
                                  const SizedBox(
                                    height: 5.0,
                                  ),
                                  Text(
                                    widget.employee.name,
                                    style: const TextStyle(
                                        color: Colors.black, fontSize: 14.0),
                                  ),
                                  const SizedBox(
                                    height: 5.0,
                                  ),
                                  Wrap(
                                    children: [
                                      Wrap(
                                        children: [
                                          const Text("HP ",
                                              style: TextStyle(
                                                  decoration:
                                                      TextDecoration.underline,
                                                  height: 1.2)),
                                          Text(widget.employee.phoneNumber,
                                              style: const TextStyle(
                                                  color: Colors.blue,
                                                  height: 1.2)),
                                        ],
                                      ),
                                      const SizedBox(
                                        width: 10.0,
                                      ),
                                      const Text(
                                        "|",
                                        style: TextStyle(height: 1.2),
                                      ),
                                      const SizedBox(
                                        width: 10.0,
                                      ),
                                      Wrap(
                                        children: [
                                          const Text("Email ",
                                              style: TextStyle(
                                                  decoration:
                                                      TextDecoration.underline,
                                                  height: 1.2)),
                                          Text(widget.employee.email,
                                              style: const TextStyle(
                                                  color: Colors.blue,
                                                  height: 1.2)),
                                        ],
                                      ),
                                    ],
                                  ),
                                ]),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
