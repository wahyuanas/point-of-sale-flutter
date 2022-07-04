import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/presentation/main/vehicle_type/form/create/cubit/vehicle_type_form_create_cubit.dart';

class PosVehicleTypeFormYearWidget extends StatefulWidget {
  const PosVehicleTypeFormYearWidget({Key? key}) : super(key: key);

  @override
  State<PosVehicleTypeFormYearWidget> createState() =>
      _PosVehicleTypeFormYearWidgetState();
}

class _PosVehicleTypeFormYearWidgetState
    extends State<PosVehicleTypeFormYearWidget> {
  late bool _initial;
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    _initial = true;
    //BlocProvider.of<SignUpCubit>(context).onCompanyYearChanged("");
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child:
          BlocBuilder<VehicleTypeFormCreateCubit, VehicleTypeFormCreateState>(
              buildWhen: (p, c) {
        if (p.initial != c.initial) {
          if (c.initial == false) {
            if (_initial == true) _initial = false;
            return true;
          } else if (c.initial == true) {
            if (_initial == false) _initial = true;
            _controller.text = '';
            return false;
          }
        } else if (p.status != c.status) {
          c.status.maybeWhen(
              initial: () {
                if (_initial == false) _initial = true;
                _controller.text = '';
              },
              orElse: () => null);
          return false;
        } else if (p.createVehicleType.year != c.createVehicleType.year) {
          if (_initial == true) _initial = false;
          return true;
        }
        return false;
      }, builder: (context, state) {
        return Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.symmetric(horizontal: 15),
          child: TextFormField(
              controller: _controller,
              autofocus: false,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                errorText: _initial == false
                    ? state.createVehicleType.year.value.fold(
                        (l) => l.maybeWhen(
                            emptyField: (v) => "*wajib diisi",
                            orElse: () => null),
                        (r) => null)
                    : null,
                icon: const Icon(
                  Icons.sms_outlined,
                  color: Colors.blue,
                  size: 26.0, /*Color(0xff224597)*/
                ),
                labelText: "Tahun",
                labelStyle:
                    const TextStyle(color: Colors.black54, fontSize: 15.0),
                hintText: '',
                //enabledBorder: InputBorder.none,
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black54),
                ),

                //border: InputBorder.none,
              ),
              onChanged: (v) =>
                  BlocProvider.of<VehicleTypeFormCreateCubit>(context)
                      .onCreateVehicleTypeYearChanged(v)),
        );
      }),
    );
  }
}
