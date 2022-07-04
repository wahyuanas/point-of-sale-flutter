import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/di/injection.dart';
import 'package:pos/presentation/main/vehicle_manufacture/form/create/cubit/vehicle_manufacture_form_create_cubit.dart';
import 'package:pos/presentation/main/vehicle_manufacture/list/cubit/vehicle_manufacture_list_cubit.dart';

import '../widget/pos_vehicle_manufacture_form_widget.dart';

class PosVehicleManufactureFormScreen extends StatelessWidget {
  const PosVehicleManufactureFormScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: ((context) => VehicleManufactureFormCreateCubit(
          vehicleManufactureListCubit: getIt<VehicleManufactureListCubit>())),
      child: const PosVehicleManufactureFormWidget(),
    );
  }
}
