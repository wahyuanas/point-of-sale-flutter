import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/presentation/page_view/pos/payment/cubit/pos_payment_cubit.dart';

class PosPaymentCardInfoNumberRefWidget extends StatefulWidget {
  const PosPaymentCardInfoNumberRefWidget({Key? key}) : super(key: key);

  @override
  State<PosPaymentCardInfoNumberRefWidget> createState() =>
      _PosPaymentCardInfoNumberRefWidgetState();
}

class _PosPaymentCardInfoNumberRefWidgetState
    extends State<PosPaymentCardInfoNumberRefWidget> {
  late bool _initial;
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    _initial = true;
    context
        .read<PosPaymentCubit>()
        .state
        .createOrder
        .paymentCardInfo
        ?.numberRef
        .value
        .fold(
            (l) => null,
            (r) => context
                .read<PosPaymentCubit>()
                .onPaymentCardInfoNumberRefChanged(''));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<PosPaymentCubit, PosPaymentState>(
      listenWhen: (p, c) {
        return c.createOrder.paymentType != p.createOrder.paymentType;
      },
      listener: ((context, state) {
        state.createOrder.paymentType.value.fold((l) => _controller.text = '',
            (r) {
          if (r == 1) {
            _controller.text = '';
          }
        });
        setState(() {
          _initial = true;
        });
      }),
      child: BlocBuilder<PosPaymentCubit, PosPaymentState>(buildWhen: (p, c) {
        if (p.initial != c.initial) {
          if (c.initial == false) {
            if (_initial == true) _initial = false;
            return true;
          }
        } else if (p.createOrder.paymentCardInfo?.numberRef !=
            c.createOrder.paymentCardInfo?.numberRef) {
          //if (_initial == true) _initial = false;
          return true;
        }
        return false;
      }, builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
          child: TextFormField(
              controller: _controller,
              autofocus: false,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                errorText: _initial == false
                    ? state.createOrder.paymentCardInfo?.numberRef.value.fold(
                        (l) => l.maybeWhen(
                            emptyField: (v) => "*wajib diisi",
                            orElse: () => null),
                        (r) => null)
                    : null,
                icon: const Icon(
                  Icons.description_outlined,
                  color: Colors.blue,
                  size: 26.0, /*Color(0xff224597)*/
                ),
                labelText: "Nomor Reference (Approved)",
                labelStyle:
                    const TextStyle(color: Colors.black54, fontSize: 15.0),
                hintText: '',
                //enabledBorder: InputBorder.none,
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black54),
                ),

                //border: InputBorder.none,
              ),
              onChanged: (v) {
                if (_initial == true) {
                  _initial = false;
                }
                BlocProvider.of<PosPaymentCubit>(context)
                    .onPaymentCardInfoNumberRefChanged(v);
              }),
        );
      }),
    );
  }
}
