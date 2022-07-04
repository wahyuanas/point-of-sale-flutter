import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/di/injection.dart';
import 'package:pos/presentation/main/vehicle_owner/list/cubit/vehicle_owner_list_cubit.dart';
import 'package:showcaseview/showcaseview.dart';

import '../cubit/pos_vehicle_owner_list_cubit.dart';
import '../widget/pos_vehicle_owner_list_widget.dart';

class PosVehicleOwnerListScreen extends StatelessWidget {
  const PosVehicleOwnerListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool onF = false;
    return BlocProvider(
        create: ((context) => PosVehicleOwnerListCubit(
            vehicleOwnerListCubit: getIt<VehicleOwnerListCubit>())
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
                  child: const PosVehicleOwnerListWidget())),
        ));
  }
}
