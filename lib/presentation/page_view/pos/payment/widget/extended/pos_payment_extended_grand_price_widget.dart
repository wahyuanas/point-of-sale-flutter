import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:pos/presentation/page_view/pos/payment/cubit/pos_payment_cubit.dart';

class PosPaymentExtendedGrandPriceWidget extends StatefulWidget {
  const PosPaymentExtendedGrandPriceWidget({Key? key}) : super(key: key);

  @override
  State<PosPaymentExtendedGrandPriceWidget> createState() =>
      _PosPaymentExtendedGrandPriceWidgetState();
}

class _PosPaymentExtendedGrandPriceWidgetState
    extends State<PosPaymentExtendedGrandPriceWidget> {
  int? _grandPrice;
  @override
  void initState() {
    super.initState();
    _grandPrice = 0;
    getGrandPriceInit();
  }

  getGrandPriceInit() async {
    _grandPrice = 0;
    context.read<PosPaymentCubit>().state.poss?.forEach((pos) {
      _grandPrice = (_grandPrice ?? 0) + (pos.sumPrice ?? 0);
    });

    if (!mounted) return;
    context.read<PosPaymentCubit>().onGrandAmountChanged(_grandPrice);

    int? paidAmountt;

    await context
        .read<PosPaymentCubit>()
        .state
        .createOrder
        .paidAmount
        .value
        .fold((l) async => paidAmountt = null,
            (r) async => paidAmountt = (paidAmountt ?? 0) + r);

    // if ((paidAmountt ?? 0) < (grandAmount ?? 0)) {
    //   onChangeAmountChanged(null);
    // }
    if (paidAmountt == null) {
      if (!mounted) return;
      context.read<PosPaymentCubit>().onChangeAmountChanged(null);
    } else {
      if (!mounted) return;
      context
          .read<PosPaymentCubit>()
          .onChangeAmountChanged((paidAmountt ?? 0) - (_grandPrice ?? 0));
    }
  }

  getGrandPrice() async {
    _grandPrice = 0;
    context.read<PosPaymentCubit>().state.poss?.forEach((pos) {
      _grandPrice = (_grandPrice ?? 0) + (pos.sumPrice ?? 0);
    });

    await context.read<PosPaymentCubit>().state.createOrder.charge.value.fold(
        (l) => null, (r) async => _grandPrice = (_grandPrice ?? 0) + (r ?? 0));

    debugPrint("POS PAYMENT EXTENDED GRAND PRICE WIDGET v $_grandPrice ");

    if (!mounted) return;
    await context.read<PosPaymentCubit>().state.createOrder.disc.value.fold(
        (l) => null,
        (r) async => _grandPrice = (_grandPrice ?? 0) -
            ((_grandPrice ?? 0) * (((r ?? 0) / 100))).round());

    debugPrint("POS PAYMENT EXTENDED GRAND PRICE WIDGET $_grandPrice ");

    if (!mounted) return;
    await context.read<PosPaymentCubit>().state.createOrder.tax.value.fold(
        (l) => null, (r) async => _grandPrice = (_grandPrice ?? 0) + (r ?? 0));

    debugPrint("POS PAYMENT EXTENDED GRAND PRICE WIDGET Z $_grandPrice ");

    if (!mounted) return;
    context.read<PosPaymentCubit>().onGrandAmountChanged(_grandPrice);

    int? paidAmountt;

    await context
        .read<PosPaymentCubit>()
        .state
        .createOrder
        .paidAmount
        .value
        .fold((l) async => paidAmountt = null,
            (r) async => paidAmountt = (paidAmountt ?? 0) + r);

    // if ((paidAmountt ?? 0) < (grandAmount ?? 0)) {
    //   onChangeAmountChanged(null);
    // }
    if (paidAmountt == null) {
      if (!mounted) return;
      context.read<PosPaymentCubit>().onChangeAmountChanged(null);
    } else {
      if (!mounted) return;
      context
          .read<PosPaymentCubit>()
          .onChangeAmountChanged((paidAmountt ?? 0) - (_grandPrice ?? 0));
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<PosPaymentCubit, PosPaymentState>(
      listenWhen: ((p, c) =>
          p.createOrder.disc != c.createOrder.disc ||
          p.createOrder.charge != c.createOrder.charge ||
          p.createOrder.tax != c.createOrder.tax),
      listener: ((context, state) {
        getGrandPrice();
      }),
      child: BlocBuilder<PosPaymentCubit, PosPaymentState>(
          buildWhen: (p, c) =>
              p.createOrder.grandAmount != c.createOrder.grandAmount,
          builder: ((context, state) {
            return Row(
              children: [
                const Expanded(
                  child: Text(
                    'Grand Total',
                    style: TextStyle(color: Colors.blue, fontSize: 17.0),
                  ),
                ),
                Expanded(
                  child: Container(
                    //height: 50,
                    //margin: const EdgeInsets.all(10.0),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        //color: Colors.blue,
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.blue,
                            width: 1.0,
                          ),
                        )),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          state.createOrder.grandAmount.value.fold(
                              (l) =>
                                  "${NumberFormat.currency(locale: 'id', symbol: 'Rp ', decimalDigits: 0).format(_grandPrice)},-",
                              (r) => r == null
                                  ? 'Rp 0,-'
                                  : "${NumberFormat.currency(locale: 'id', symbol: 'Rp ', decimalDigits: 0).format(r)},-"),
                          style: const TextStyle(
                              color: Colors.black, fontSize: 17.0),
                        ),
                        const SizedBox(
                          height: 10.0,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            );
          })),
    );
  }
}
