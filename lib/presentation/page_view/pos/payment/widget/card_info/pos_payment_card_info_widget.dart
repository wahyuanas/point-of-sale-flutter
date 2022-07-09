import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/presentation/page_view/pos/payment/cubit/pos_payment_cubit.dart';

import 'pos_payment_card_info_export_widget.dart';

class PosPaymentCardInfoWidget extends StatefulWidget {
  const PosPaymentCardInfoWidget({Key? key}) : super(key: key);

  @override
  State<PosPaymentCardInfoWidget> createState() =>
      _PosPaymentCardInfoWidgetState();
}

class _PosPaymentCardInfoWidgetState extends State<PosPaymentCardInfoWidget> {
  bool? _offStage;
  @override
  void initState() {
    _offStage = false;
    if (context.read<PosPaymentCubit>().state.createOrder.paymentCardInfo !=
        null) {
      context.read<PosPaymentCubit>().onPaymentCardInfoReset();
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<PosPaymentCubit, PosPaymentState>(
      listenWhen: (p, c) {
        return c.createOrder.paymentType != p.createOrder.paymentType;
      },
      listener: ((context, state) {
        state.createOrder.paymentType.value.fold((l) {
          _offStage = false;
          setState(() {});
          context.read<PosPaymentCubit>().onPaymentCardInfoReset();
        }, (r) {
          if (r == 1) {
            _offStage = false;
            setState(() {});
            context.read<PosPaymentCubit>().onPaymentCardInfoReset();
          } else {
            if (_offStage == false) {
              _offStage = true;
              setState(() {});
              context.read<PosPaymentCubit>().onPaymentCardInfoInit();
            }
          }
        });
      }),
      child: _offStage == true
          ? Card(
              elevation: 0.3,
              margin: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 15.0, top: 10.0, bottom: 5.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Info Kartu',
                      style: TextStyle(color: Colors.blue, fontSize: 15.0),
                    ),
                    PosPaymentCardInfoNameWidget(),
                    PosPaymentCardInfoNumberWidget(),
                    PosPaymentCardInfoNumberRefWidget(),
                    PosPaymentCardInfoRemarksWidget(),
                    SizedBox(
                      height: 10.0,
                    )
                  ],
                ),
              ),
            )
          : const SizedBox(),
    );
  }
}
