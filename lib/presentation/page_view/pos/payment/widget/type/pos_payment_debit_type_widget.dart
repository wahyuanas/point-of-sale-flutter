import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/presentation/page_view/pos/payment/cubit/pos_payment_cubit.dart';

class PosPaymentDebitTypeWidget extends StatefulWidget {
  const PosPaymentDebitTypeWidget({Key? key}) : super(key: key);

  @override
  State<PosPaymentDebitTypeWidget> createState() =>
      _PosPaymentDebitTypeWidgetState();
}

class _PosPaymentDebitTypeWidgetState extends State<PosPaymentDebitTypeWidget> {
  bool? _itsMe;

  @override
  void initState() {
    _itsMe = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<PosPaymentCubit, PosPaymentState>(
        listenWhen: (p, c) {
          return c.createOrder.paymentType != p.createOrder.paymentType;
        },
        listener: (context, state) async {
          state.createOrder.paymentType.value.fold((l) {
            if (_itsMe == true) {
              _itsMe = false;
              setState(() {});
            }
          }, (r) {
            if (r == 2) {
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
        child: Padding(
          padding: const EdgeInsets.only(
              left: 5.0, top: 5.0, right: 20.0, bottom: 5.0),
          child: Container(
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
                onTap: () {
                  if (_itsMe == false) {
                    BlocProvider.of<PosPaymentCubit>(context)
                        .onPaymentTypeChanged(2);
                    //Navigator.of(context).pop();
                  } else {
                    BlocProvider.of<PosPaymentCubit>(context)
                        .onPaymentTypeChanged(null);
                  }
                },
                child: _itsMe == true
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
                  _itsMe == true
                      ? const Icon(
                          Icons.credit_card_outlined,
                          size: 35.0,
                          color: Colors.blue,
                        )
                      : const Icon(
                          Icons.credit_card_outlined,
                          size: 35.0,
                          color: Colors.black38,
                        ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        if (_itsMe == false) {
                          BlocProvider.of<PosPaymentCubit>(context)
                              .onPaymentTypeChanged(2);
                          //Navigator.of(context).pop();
                        } else {
                          BlocProvider.of<PosPaymentCubit>(context)
                              .onPaymentTypeChanged(null);
                        }
                      },
                      child: Container(
                        color: Colors.white,
                        child: Text(
                          'Debit',
                          style: TextStyle(
                              color: _itsMe == false
                                  ? Colors.black54
                                  : Colors.blue,
                              fontSize: 15.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
