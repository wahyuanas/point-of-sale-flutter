import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/di/injection.dart';
import 'package:pos/presentation/common/cubit/intro/intro_cubit.dart';
import 'package:pos/presentation/main/vehicle_manufacture/list/cubit/vehicle_manufacture_list_cubit.dart';
import 'package:pos/presentation/main/vehicle_type/list/cubit/vehicle_type_list_cubit.dart';
import 'package:showcaseview/showcaseview.dart';

import '../cubit/pos_vehicle_type_list_cubit.dart';
import '../widget/pos_vehicle_type_list_widget.dart';

class PosVehicleTypeListScreen extends StatelessWidget {
  const PosVehicleTypeListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool onF =
        BlocProvider.of<IntroCubit>(context).state.posVehicleTypeList == false
            ? false
            : true;
    return BlocProvider(
        create: ((context) => PosVehicleTypeListCubit(
            vehicleTypeListCubit: getIt<VehicleTypeListCubit>(),
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
                  child: const PosVehicleTypeListWidget())),
        ));
  }
}
