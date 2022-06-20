import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/pos_catalog_cubit.dart';
import '../widget/pos_catalog_widget.dart';

class PosCatalogScreen extends StatelessWidget {
  const PosCatalogScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: ((context) => PosCatalogCubit()),
      child: const PosCatalogWidget(),
    );
  }
}
