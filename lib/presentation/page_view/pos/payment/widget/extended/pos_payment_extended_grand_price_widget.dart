import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
  }

  getGrandPrice() async {
    int? subPrice;
    context.read<PosPaymentCubit>().state.poss?.forEach((pos) {
      subPrice = (subPrice ?? 0) + (pos.sumPrice ?? 0);
    });
    await context.read<PosPaymentCubit>().state.createOrder.charge.value.fold(
        (l) => null, (r) async => _grandPrice = (_grandPrice ?? 0) + (r ?? 0));
    if (!mounted) return;
    await context.read<PosPaymentCubit>().state.createOrder.disc.value.fold(
        (l) => null,
        (r) async => _grandPrice = ((_grandPrice ?? 0) -
            ((_grandPrice ?? 0) * ((r ?? 0) / 100))) as int?);
    if (!mounted) return;
    await context.read<PosPaymentCubit>().state.createOrder.tax.value.fold(
        (l) => null, (r) async => _grandPrice = (_grandPrice ?? 0) + (r ?? 0));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PosPaymentCubit, PosPaymentState>(
        buildWhen: (p, c) =>
            p.createOrder.charge != c.createOrder.charge ||
            p.createOrder.disc != c.createOrder.disc ||
            p.createOrder.tax != c.createOrder.tax,
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
                  decoration: BoxDecoration(
                      color: Colors.white,
                      //color: Colors.blue,
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.lightBlue.shade900,
                          width: 1.5,
                        ),
                      )),
                  child: Column(
                    children: [
                      Text(
                        state.createOrder.grandAmount.value
                            .fold((l) => '$_grandPrice', (r) => '{$r ?? 0}'),
                        style: const TextStyle(
                            color: Colors.black, fontSize: 20.0),
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
        }));
  }
}
