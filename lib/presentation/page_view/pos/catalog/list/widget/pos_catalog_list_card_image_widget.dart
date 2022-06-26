import 'dart:io';

import 'package:flutter/material.dart';
import 'package:pos/domain/catalog/item/entity/item.dart';

class PosCatalogListCardImageWidget extends StatefulWidget {
  const PosCatalogListCardImageWidget({
    Key? key,
    required this.item,
  }) : super(key: key);
  final Item item;

  @override
  State<PosCatalogListCardImageWidget> createState() =>
      _PosCatalogListCardImageWidgetState();
}

class _PosCatalogListCardImageWidgetState
    extends State<PosCatalogListCardImageWidget> {
  @override
  void didChangeDependencies() {
    if (widget.item.image != null) {
      precacheImage(Image.file(File(widget.item.image!)).image, context);
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.item.image == null) {
      return Align(
        child: const Icon(
          Icons.inventory_outlined,
          color: Colors.blue,
          size: 50,
        ),
      );
    } else {
      return Align(
        child: Image.file(
          File(widget.item.image!),
          gaplessPlayback: true,
          fit: BoxFit.fill,
          height: MediaQuery.of(context).size.width / 2.5,
          width: MediaQuery.of(context).size.width / 2.1,
        ),
      );
    }
  }
}
