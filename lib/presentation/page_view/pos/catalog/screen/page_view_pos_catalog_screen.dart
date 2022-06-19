import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/pos_catalog_cubit.dart';
import '../widget/page_view_pos_catalog_widget.dart';

class PageViewPosCatalogScreen extends StatelessWidget {
  const PageViewPosCatalogScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: ((context) => PosCatalogCubit()),
      child: const PageViewPosCatalogWidget(),
    );
  }
}
