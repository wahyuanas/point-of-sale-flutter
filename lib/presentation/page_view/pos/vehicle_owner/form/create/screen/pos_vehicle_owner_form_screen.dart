import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/di/injection.dart';
import 'package:pos/presentation/main/vehicle_owner/form/create/cubit/vehicle_owners_form_create_cubit.dart';
import 'package:pos/presentation/main/vehicle_owner/list/cubit/vehicle_owner_list_cubit.dart';

import '../widget/pos_vehicle_owner_form_widget.dart';

class PosVehicleOwnerFormScreen extends StatelessWidget {
  const PosVehicleOwnerFormScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: ((context) => VehicleOwnerFormCreateCubit(
          vehicleOwnerListCubit: getIt<VehicleOwnerListCubit>())),
      child: const PosVehicleOwnerFormWidget(),
    );
  }
}
