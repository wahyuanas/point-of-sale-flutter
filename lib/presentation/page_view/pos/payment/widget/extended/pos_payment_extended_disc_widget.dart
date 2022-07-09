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
  late bool _initial;
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    _initial = true;
    context.read<PosPaymentCubit>().state.createOrder.charge.value.fold(
        (l) => null,
        (r) => context.read<PosPaymentCubit>().onChargeChanged(''));

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
      } else if (p.createOrder.disc != c.createOrder.disc) {
        if (_initial == true) _initial = false;
        return true;
      }
      return false;
    }, builder: ((context, state) {
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
                decoration: InputDecoration(
                  errorText: _initial == false
                      ? state.createOrder.disc.value.fold(
                          (l) => l.maybeWhen(
                              emptyField: (v) => "*wajib diisi",
                              notDoubleField: (v) => "*tidak valid",
                              noSpaceAllowed: (v) =>
                                  "*tidak boleh mengandung spasi",
                              exceptOneToNineAllowed: (v) =>
                                  "*tidak boleh diawali selain angka 1 - 9",
                              orElse: () => null),
                          (r) => null)
                      : null,

                  icon: const Icon(
                    Icons.percent_outlined,
                    color: Colors.blue,
                    size: 26.0, /*Color(0xff224597)*/
                  ),
                  labelText: "Diskon Tambahan",
                  labelStyle:
                      const TextStyle(color: Colors.black54, fontSize: 15.0),
                  hintText: '',
                  //enabledBorder: InputBorder.none,
                  focusedBorder: const UnderlineInputBorder(
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
