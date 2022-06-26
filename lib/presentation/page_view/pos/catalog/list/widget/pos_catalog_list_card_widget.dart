import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/domain/catalog/item/entity/item.dart';
import 'package:pos/domain/pos/entity/pos.dart';
import 'package:pos/presentation/page_view/pos/main/bloc/pos_main_bloc.dart';

import 'pos_catalog_list_card_button_widget.dart';
import 'pos_catalog_list_card_content_widget.dart';
import 'pos_catalog_list_card_image_widget.dart';

class PosCatalogListCardWidget extends StatefulWidget {
  final Item item;
  const PosCatalogListCardWidget({Key? key, required this.item})
      : super(key: key);

  @override
  State<PosCatalogListCardWidget> createState() =>
      _PosCatalogListCardWidgetState();
}

class _PosCatalogListCardWidgetState extends State<PosCatalogListCardWidget> {
  @override
  void initState() {
    // int? index = BlocProvider.of<PosMainBloc>(context)
    //     .state
    //     .poss
    //     ?.indexWhere((posc) => posc.item.id == widget.item.id);
    // if (index != null) {
    //   if (index >= 0) {
    //     pos = BlocProvider.of<PosMainBloc>(context).state.poss![index];
    //   }
    // }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.only(top: 10.0, bottom: 20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              child: GestureDetector(
                onTap: () async {},
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    PosCatalogListCardImageWidget(item: widget.item),
                    const SizedBox(height: 8),
                    PosCatalogListCardContentWidget(item: widget.item),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            PosCatalogListCardButtonWidget(
              item: widget.item,
            )
          ],
        ),
      ),
    );
  }
}
