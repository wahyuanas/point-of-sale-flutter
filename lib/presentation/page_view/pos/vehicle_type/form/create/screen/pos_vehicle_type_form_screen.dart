import 'package:flutter/material.dart';
import '../widget/pos_vehicle_type_form_widget.dart';

class PosVehicleTypeFormScreen extends StatelessWidget {
  const PosVehicleTypeFormScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const PosVehicleTypeFormWidget();

    // return BlocProvider(
    //   create: ((context) => VehicleTypeFormCreateCubit(
    //       vehicleTypeListCubit: getIt<VehicleTypeListCubit>())),
    //   child: const PosVehicleTypeFormWidget(),
    // );
  }
}
