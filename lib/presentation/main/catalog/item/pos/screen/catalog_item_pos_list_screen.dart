import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/catalog_item_pos_cubit.dart';
import '../widget/catalog_item_pos_list_widget.dart';

class CatalogItemPosListScreen extends StatelessWidget {
  const CatalogItemPosListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: ((context) => CatalogItemPosCubit()),
      child: const CatalogItemPosListWidget(),
    );
  }
}
