import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/di/injection.dart';
import 'package:pos/presentation/main/vehicle/form/create/cubit/vehicle_form_create_cubit.dart';
import 'package:pos/presentation/main/vehicle/list/vehicle_list_cubit.dart';

import '../widget/pos_vehicle_owner_form_widget.dart';

class PosVehicleOwnerFormScreen extends StatelessWidget {
  const PosVehicleOwnerFormScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: ((context) =>
          VehicleFormCreateCubit(vehicleListCubit: getIt<VehicleListCubit>())),
      child: const PosVehicleOwnerFormWidget(),
    );
  }
}
