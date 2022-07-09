import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/presentation/page_view/pos/payment/cubit/pos_payment_cubit.dart';

class PosPaymentExtendedTaxWidget extends StatefulWidget {
  const PosPaymentExtendedTaxWidget({Key? key}) : super(key: key);

  @override
  State<PosPaymentExtendedTaxWidget> createState() =>
      _PosPaymentExtendedTaxWidgetState();
}

class _PosPaymentExtendedTaxWidgetState
    extends State<PosPaymentExtendedTaxWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder(builder: ((context, state) {
      return Row(
        children: [
          const Expanded(
            child: Text(
              'PPN',
              style: TextStyle(color: Colors.blue, fontSize: 15.0),
            ),
          ),
          Expanded(
            child: TextFormField(
                autofocus: false,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  icon: Icon(
                    Icons.description_outlined,
                    color: Colors.blue,
                    size: 26.0, /*Color(0xff224597)*/
                  ),
                  labelText: "PPN",
                  labelStyle: TextStyle(color: Colors.black54, fontSize: 15.0),
                  hintText: '',
                  //enabledBorder: InputBorder.none,
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black54),
                  ),
                ),
                onChanged: (v) {
                  final v1 = int.tryParse(v);
                  BlocProvider.of<PosPaymentCubit>(context).onTaxChanged(v1);
                }),
          ),
        ],
      );
    }));
  }
}
