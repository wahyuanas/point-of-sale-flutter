import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/presentation/common/formatter/text_currency.dart';
import 'package:pos/presentation/page_view/pos/payment/cubit/pos_payment_cubit.dart';

class PosPaymentExtendedPaidWidget extends StatefulWidget {
  const PosPaymentExtendedPaidWidget({Key? key}) : super(key: key);

  @override
  State<PosPaymentExtendedPaidWidget> createState() =>
      _PosPaymentExtendedPaidWidgetState();
}

class _PosPaymentExtendedPaidWidgetState
    extends State<PosPaymentExtendedPaidWidget> {
  late bool _initial;
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    _initial = true;
    context.read<PosPaymentCubit>().state.createOrder.paidAmount.value.fold(
        (l) => null,
        (r) => context.read<PosPaymentCubit>().onPaidAmountChanged(''));
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PosPaymentCubit, PosPaymentState>(buildWhen: (p, c) {
      if (p.initial != c.initial) {
        if (c.initial == false) {
          if (_initial == true) _initial = false;
          return true;
        }
      } else if (p.createOrder.paidAmount != c.createOrder.paidAmount) {
        debugPrint("POS PAYMENT EXTENDED");
        if (_initial == true) _initial = false;
        return true;
      }
      return false;
    }, builder: (context, state) {
      return Row(
        children: [
          const Expanded(
            child: Text(
              'Bayar',
              style: TextStyle(color: Colors.blue, fontSize: 17.0),
            ),
          ),
          Expanded(
            child: TextFormField(
                style: const TextStyle(fontSize: 17.0),
                controller: _controller,
                autofocus: false,
                keyboardType: TextInputType.number,
                inputFormatters: [
                  ThousandsSeparatorInputFormatter(),
                  //FilteringTextInputFormatter.digitsOnly
                ],
                decoration: InputDecoration(
                  errorText: _initial == false
                      ? state.createOrder.paidAmount.value.fold(
                          (l) => l.maybeWhen(
                              emptyField: (v) => "*wajib diisi",
                              notIntField: (v) => "*wajib berupa angka",
                              noSpaceAllowed: (v) =>
                                  "*tidak boleh mengandung spasi",
                              exceptOneToNineAllowed: (v) =>
                                  "*tidak boleh diawali selain angka 1 - 9",
                              orElse: () => null),
                          (r) => null)
                      : null,
                  // icon: const Icon(
                  //   Icons.payment_outlined,
                  //   color: Colors.blue,
                  //   size: 26.0, /*Color(0xff224597)*/
                  // ),
                  labelText: "Bayar",
                  labelStyle:
                      const TextStyle(color: Colors.black54, fontSize: 15.0),
                  hintText: '',
                  //enabledBorder: InputBorder.none,
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black54),
                  ),
                ),
                onChanged: (v) {
                  BlocProvider.of<PosPaymentCubit>(context)
                      .onPaidAmountChanged(v);
                }),
          ),
        ],
      );
    });
  }
}
