import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/di/injection.dart';
import 'package:pos/presentation/main/catalog/list/cubit/catalog_list_cubit.dart';

import '../cubit/pos_catalog_list_cubit.dart';
import '../widget/pos_catalog_list_widget.dart';

class PosCatalogListScreen extends StatelessWidget {
  const PosCatalogListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: ((context) =>
          PosCatalogListCubit(catalogListCubit: getIt<CatalogListCubit>())),
      child: const PosCatalogListWidget(),
    );
  }
}
