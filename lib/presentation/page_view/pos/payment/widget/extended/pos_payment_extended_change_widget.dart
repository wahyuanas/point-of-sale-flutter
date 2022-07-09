import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/presentation/page_view/pos/payment/cubit/pos_payment_cubit.dart';

class PosPaymentExtendedChangeWidget extends StatefulWidget {
  const PosPaymentExtendedChangeWidget({Key? key}) : super(key: key);

  @override
  State<PosPaymentExtendedChangeWidget> createState() =>
      _PosPaymentExtendedChangeWidgetState();
}

class _PosPaymentExtendedChangeWidgetState
    extends State<PosPaymentExtendedChangeWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PosPaymentCubit, PosPaymentState>(
        buildWhen: (p, c) =>
            p.createOrder.changeAmount != c.createOrder.changeAmount,
        builder: ((context, state) {
          return Row(
            children: [
              const Expanded(
                child: Text(
                  'Kembalian',
                  style: TextStyle(color: Colors.blue, fontSize: 15.0),
                ),
              ),
              Expanded(
                  child: state.createOrder.changeAmount.value.fold(
                (l) => const Text(
                  '0',
                  style: TextStyle(color: Colors.black, fontSize: 17.0),
                ),
                (r) => Text(
                  '{$r ?? 0}',
                  style: const TextStyle(color: Colors.black, fontSize: 17.0),
                ),
              ))
            ],
          );
        }));
  }
}
