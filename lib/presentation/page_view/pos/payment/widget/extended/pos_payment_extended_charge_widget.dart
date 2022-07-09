import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/presentation/common/formatter/text_currency.dart';
import 'package:pos/presentation/page_view/pos/payment/cubit/pos_payment_cubit.dart';

class PosPaymentExtendedChargeWidget extends StatefulWidget {
  const PosPaymentExtendedChargeWidget({Key? key}) : super(key: key);

  @override
  State<PosPaymentExtendedChargeWidget> createState() =>
      _PosPaymentExtendedChargeWidgetState();
}

class _PosPaymentExtendedChargeWidgetState
    extends State<PosPaymentExtendedChargeWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: Text(
            'Biaya Tambahan',
            style: TextStyle(color: Colors.blue, fontSize: 15.0),
          ),
        ),
        Expanded(
          child: TextFormField(
              autofocus: false,
              keyboardType: TextInputType.number,
              inputFormatters: [ThousandsSeparatorInputFormatter()],
              decoration: const InputDecoration(
                icon: Icon(
                  Icons.description_outlined,
                  color: Colors.blue,
                  size: 26.0, /*Color(0xff224597)*/
                ),
                labelText: "Biaya Tambahan",
                labelStyle: TextStyle(color: Colors.black54, fontSize: 15.0),
                hintText: '',
                //enabledBorder: InputBorder.none,
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black54),
                ),
              ),
              onChanged: (v) {
                BlocProvider.of<PosPaymentCubit>(context).onChargeChanged(v);
              }),
        ),
      ],
    );
  }
}
