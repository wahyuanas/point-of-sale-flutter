import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:pos/presentation/page_view/pos/payment/cubit/pos_payment_cubit.dart';

class PosPaymentExtendedSubPriceWidget extends StatefulWidget {
  const PosPaymentExtendedSubPriceWidget({Key? key}) : super(key: key);

  @override
  State<PosPaymentExtendedSubPriceWidget> createState() =>
      _PosPaymentExtendedSubPriceWidgetState();
}

class _PosPaymentExtendedSubPriceWidgetState
    extends State<PosPaymentExtendedSubPriceWidget> {
  int? _subPrice;
  @override
  void initState() {
    context.read<PosPaymentCubit>().state.poss?.forEach((pos) {
      _subPrice = (_subPrice ?? 0) + (pos.sumPrice ?? 0);
    });

    context.read<PosPaymentCubit>().onAmountChanged(_subPrice);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: Text(
            'Sub Total',
            style: TextStyle(color: Colors.blue, fontSize: 15.0),
          ),
        ),
        Expanded(
          child: Text(
            _subPrice == null
                ? 'Rp 0,-'
                : "${NumberFormat.currency(locale: 'id', symbol: 'Rp ', decimalDigits: 0).format(_subPrice)},-",
            style: const TextStyle(color: Colors.black, fontSize: 17.0),
          ),
        ),
      ],
    );
    ;
  }
}
