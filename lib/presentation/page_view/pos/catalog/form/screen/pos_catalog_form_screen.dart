import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/di/injection.dart';
import 'package:pos/presentation/main/catalog/form/create/cubit/catalog_form_create_cubit.dart';
import 'package:pos/presentation/main/catalog/list/cubit/catalog_list_cubit.dart';

import '../widget/pos_catalog_form_widget.dart';

class PosCatalogFormScreen extends StatelessWidget {
  const PosCatalogFormScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: ((context) =>
          CatalogFormCreateCubit(catalogListCubit: getIt<CatalogListCubit>())),
      child: const PosCatalogFormWidget(),
    );
  }
}
