import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_intro/flutter_intro.dart';
import 'package:pos/di/injection.dart';
import 'package:pos/presentation/main/catalog/list/cubit/catalog_list_cubit.dart';
import 'package:showcaseview/showcaseview.dart';

import '../cubit/pos_catalog_list_cubit.dart';
import '../widget/pos_catalog_list_widget.dart';

class PosCatalogListScreen extends StatelessWidget {
  const PosCatalogListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool onF = false;
    return BlocProvider(
        create: ((context) =>
            PosCatalogListCubit(catalogListCubit: getIt<CatalogListCubit>())
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
                  child: const PosCatalogListWidget())),
        ));
  }
}
