import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/di/injection.dart';
import 'package:pos/presentation/main/vehicle/list/vehicle_list_cubit.dart';
import 'package:pos/presentation/main/vehicle_manufacture/list/cubit/vehicle_manufacture_list_cubit.dart';
import 'package:pos/presentation/main/vehicle_owner/list/cubit/vehicle_owner_list_cubit.dart';
import 'package:pos/presentation/main/vehicle_type/list/cubit/vehicle_type_list_cubit.dart';
import 'package:showcaseview/showcaseview.dart';

import '../cubit/pos_vehicle_list_cubit.dart';
import '../widget/pos_vehicle_list_widget.dart';

class PosVehicleListScreen extends StatelessWidget {
  const PosVehicleListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool onF = false;
    return BlocProvider(
        create: ((context) => PosVehicleListCubit(
            vehicleListCubit: getIt<VehicleListCubit>(),
            vehicleTypeListCubit: getIt<VehicleTypeListCubit>(),
            vehicleOwnerListCubit: getIt<VehicleOwnerListCubit>(),
            vehicleManufactureListCubit: getIt<VehicleManufactureListCubit>())
          ..onStarted()),
        child: ShowCaseWidget(
          onFinish: () => onF = true,
          builder: Builder(
              builder: (context) => WillPopScope(
                  onWillPop: (() async {
                    if (onF == false) {
                      onF = true;
                      ShowCaseWidget.of(context).dismiss();
                      return false;
                    }
                    return true;
                  }),
                  child: const PosVehicleListWidget())),
        ));
  }
}
