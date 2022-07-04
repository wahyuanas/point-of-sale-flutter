import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/presentation/main/customer/model/customer_model.dart';
import 'package:pos/presentation/page_view/pos/payment/cubit/pos_payment_cubit.dart';

class PosCustomerListCardWidget extends StatefulWidget {
  final CustomerModel customer;
  const PosCustomerListCardWidget({Key? key, required this.customer})
      : super(key: key);

  @override
  State<PosCustomerListCardWidget> createState() =>
      _PosCustomerListCardWidgetState();
}

class _PosCustomerListCardWidgetState extends State<PosCustomerListCardWidget> {
  bool? _itsMe;

  @override
  void initState() {
    _itsMe = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<PosPaymentCubit, PosPaymentState>(
      listener: (context, state) async {
        state.createOrder?.customer.value.fold((l) {
          if (_itsMe == true) {
            _itsMe = false;
            setState(() {});
          }
        }, (r) {
          if (r?.id == widget.customer.id) {
            if (_itsMe == false) {
              _itsMe = true;
            } else if (_itsMe == true) {
              _itsMe = false;
            }
            setState(() {});
          } else {
            if (_itsMe == true) {
              _itsMe = false;
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
                      if (_itsMe == false) {
                        BlocProvider.of<PosPaymentCubit>(context)
                            .onCustomerChanged(widget.customer);
                        //Navigator.of(context).pop();
                      } else {
                        BlocProvider.of<PosPaymentCubit>(context)
                            .onCustomerChanged(null);
                      }
                    },
                    child: Icon(
                      Icons.done_outlined,
                      size: 35.0,
                      color: _itsMe == true ? Colors.blue : Colors.black38,
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
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.customer.code,
                                style: const TextStyle(
                                    color: Colors.blue, fontSize: 15.0),
                              ),
                              const SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                widget.customer.name,
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
                                      Text(widget.customer.phoneNumber,
                                          style: const TextStyle(
                                              color: Colors.blue, height: 1.2)),
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
                                      Text(widget.customer.email,
                                          style: const TextStyle(
                                              color: Colors.blue, height: 1.2)),
                                    ],
                                  ),
                                ],
                              ),
                            ]),
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
