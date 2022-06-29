import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:pos/domain/catalog/item/entity/item.dart';
import 'package:pos/presentation/page_view/pos/catalog/item/cubit/pos_catalog_item_transition_app_bar_cubit.dart';

import '../widget/pos_catalog_item_detail_widget.dart';

class PosCatalogItemDetailScreen extends StatefulWidget {
  const PosCatalogItemDetailScreen({Key? key, required this.item})
      : super(key: key);

  final Item item;

  @override
  State<PosCatalogItemDetailScreen> createState() =>
      _PosCatalogItemDetailScreenState();
}

class _PosCatalogItemDetailScreenState
    extends State<PosCatalogItemDetailScreen> {
  final ScrollController controller = ScrollController();
  double? _heightImage;
  double? _heightAppBar;
  double? _heightStatusBar;
  double? _heightIconBackArrow;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _heightImage = MediaQuery.of(context).size.height * 0.3;
    _heightStatusBar = MediaQuery.of(context).viewPadding.top;
    _heightAppBar = 50;
    _heightIconBackArrow = 5;

    return BlocProvider(
      create: ((context) => PosCatalogItemTransitionAppBarCubit(
            scrollController: controller,
          )..onRestarted(_heightImage ?? 0, _heightStatusBar ?? 0,
              _heightAppBar ?? 0, _heightIconBackArrow ?? 0)),
      child: PosCatalogItemDetailWidget(
        item: widget.item,
        controller: controller,
      ),
    );
  }
}
