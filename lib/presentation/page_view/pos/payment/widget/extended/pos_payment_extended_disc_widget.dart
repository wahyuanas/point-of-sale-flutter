import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/presentation/page_view/pos/payment/cubit/pos_payment_cubit.dart';

class PosPaymentExtendedDiscWidget extends StatefulWidget {
  const PosPaymentExtendedDiscWidget({Key? key}) : super(key: key);

  @override
  State<PosPaymentExtendedDiscWidget> createState() =>
      _PosPaymentExtendedDiscWidgetState();
}

class _PosPaymentExtendedDiscWidgetState
    extends State<PosPaymentExtendedDiscWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder(builder: ((context, state) {
      return Row(
        children: [
          const Expanded(
            child: Text(
              'Diskon Tambahan',
              style: TextStyle(color: Colors.blue, fontSize: 15.0),
            ),
          ),
          Expanded(
            child: TextFormField(
                autofocus: false,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  icon: Icon(
                    Icons.percent_outlined,
                    color: Colors.blue,
                    size: 26.0, /*Color(0xff224597)*/
                  ),
                  labelText: "Diskon Tambahan",
                  labelStyle: TextStyle(color: Colors.black54, fontSize: 15.0),
                  hintText: '',
                  //enabledBorder: InputBorder.none,
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black54),
                  ),
                ),
                onChanged: (v) {
                  BlocProvider.of<PosPaymentCubit>(context).onDiscChanged(v);
                }),
          ),
        ],
      );
    }));
  }
}
