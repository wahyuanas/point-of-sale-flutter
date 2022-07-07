import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/presentation/page_view/pos/payment/cubit/pos_payment_cubit.dart';

import 'pos_payment_type_export.dart';

class PosPaymentTypeWidget extends StatefulWidget {
  const PosPaymentTypeWidget({Key? key}) : super(key: key);

  @override
  State<PosPaymentTypeWidget> createState() => _PosPaymentTypeWidgetState();
}

class _PosPaymentTypeWidgetState extends State<PosPaymentTypeWidget> {
  bool? _initial;
  @override
  void initState() {
    _initial = true;
    context.read<PosPaymentCubit>().state.createOrder.paymentType.value.fold(
        (l) => null,
        (r) => context.read<PosPaymentCubit>().onPaymentTypeChanged(null));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.3,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0, top: 10.0, bottom: 5.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Jenis Pembayaran',
              style: TextStyle(color: Colors.blue, fontSize: 15.0),
            ),
            const PosPaymentCashTypeWidget(),
            const PosPaymentDebitTypeWidget(),
            const PosPaymentCreditTypeWidget(),
            BlocBuilder<PosPaymentCubit, PosPaymentState>(buildWhen: (p, c) {
              if (p.initial != c.initial) {
                if (c.initial == false) {
                  if (_initial == true) _initial = false;
                  return true;
                }
              } else if (p.createOrder.paymentType !=
                  c.createOrder.paymentType) {
                if (_initial == true) _initial = false;
                return true;
              }
              return false;
            }, builder: (context, state) {
              return _initial == false
                  ? BlocProvider.of<PosPaymentCubit>(context)
                      .state
                      .createOrder
                      .paymentType
                      .value
                      .fold(
                          (l) => l.maybeWhen(
                              emptyField: (f) => const Padding(
                                    padding: EdgeInsets.only(
                                        right: 20,
                                        left: 20,
                                        bottom: 5.0,
                                        top: 5.0),
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
                  : Container();
            })
          ],
        ),
      ),
    );
  }
}
