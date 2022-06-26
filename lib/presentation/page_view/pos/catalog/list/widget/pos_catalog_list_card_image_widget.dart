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
    return widget.item.image == null
            ? const Icon(
                Icons.inventory_outlined,
                color: Colors.blue,
                size: 50,
              )
            : Image.file(
                File(widget.item.image!),
                gaplessPlayback: true,
                fit: BoxFit.cover,
                height: MediaQuery.of(context).size.width / 3,
                width: MediaQuery.of(context).size.width / 2.5,
              )

        // Image.memory(
        //     base64.decode(widget.item.image!),
        //     gaplessPlayback: true,
        //     fit: BoxFit.cover,
        //     height: 100,
        //     // width: 100,
        //     //cacheWidth: 200 * window.devicePixelRatio.ceil(),
        //     //cacheHeight: 200 * window.devicePixelRatio.ceil(),
        //   ),
        ;
  }
}
