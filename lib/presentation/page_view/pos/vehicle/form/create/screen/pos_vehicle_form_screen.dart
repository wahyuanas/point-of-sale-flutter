import 'package:flutter/material.dart';
import '../widget/pos_vehicle_form_widget.dart';

class PosVehicleFormScreen extends StatelessWidget {
  const PosVehicleFormScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const PosVehicleFormWidget();
    // return BlocProvider(
    //   create: ((context) =>
    //       VehicleFormCreateCubit(vehicleListCubit: getIt<VehicleListCubit>())),
    //   child: const PosVehicleFormWidget(),
    // );
  }
}
