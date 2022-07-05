import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/di/injection.dart';
import 'package:pos/presentation/main/vehicle/form/create/cubit/vehicle_form_create_cubit.dart';
import 'package:pos/presentation/main/vehicle/list/vehicle_list_cubit.dart';
import 'package:pos/presentation/main/vehicle_type/form/create/cubit/vehicle_type_form_create_cubit.dart';
import 'package:pos/presentation/main/vehicle_type/list/cubit/vehicle_type_list_cubit.dart';

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
