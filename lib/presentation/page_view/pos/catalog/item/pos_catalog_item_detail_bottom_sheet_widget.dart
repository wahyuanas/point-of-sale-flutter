import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/domain/catalog/item/entity/item.dart';
import 'package:pos/domain/pos/entity/pos.dart';

class PosCatalogItemDetailBottomSheetWidget extends StatelessWidget {
  const PosCatalogItemDetailBottomSheetWidget({
    Key? key,
    required this.pos,
    required this.item,
  }) : super(key: key);

  final Pos? pos;
  final Item item;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 60,
      width: MediaQuery.of(context).size.width,
      child: Container(),
    );
  }
}
