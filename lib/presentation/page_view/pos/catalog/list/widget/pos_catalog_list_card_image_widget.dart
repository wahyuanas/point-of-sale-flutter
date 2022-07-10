import 'dart:io';

import 'package:flutter/material.dart';
import 'package:pos/domain/catalog/item/entity/item.dart';

class PosCatalogListCardImageWidget extends StatefulWidget {
  const PosCatalogListCardImageWidget({Key? key, required this.item})
      : super(key: key);
  final Item item;

  @override
  State<PosCatalogListCardImageWidget> createState() =>
      _PosCatalogListCardImageWidgetState();
}

class _PosCatalogListCardImageWidgetState
    extends State<PosCatalogListCardImageWidget> {
  // @override
  // void didChangeDependencies() {
  //   if (widget.item.image != null) {
  //     precacheImage(Image.file(File(widget.item.image!)).image, context);
  //   }
  //   super.didChangeDependencies();
  // }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final ort = MediaQuery.of(context).orientation;
    double? exp;
    if (ort == Orientation.portrait) {
      if (size.width < 600) {
        exp = size.width / 2.5;
      } else {
        exp = size.width / 4.5;
      }
    } else if (ort == Orientation.landscape) {
      if (size.width < 1200) {
        exp = size.width / 4.5;
      } else {
        exp = size.width / 6.5;
      }
    }
    if (widget.item.image == null) {
      return Align(
        child: Image.asset(
          "assets/images/no-image.png",
          gaplessPlayback: true,
          fit: BoxFit.fill,
          height: exp,

          // mq.orientation == Orientation.portrait
          //     ? mq.size.width / 2.5
          //     : mq.size.width / 4.5,
          //width: mq.size.width / 2.1,
        ),
      );
    } else {
      return Align(
        child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: Image.file(
                File(widget.item.image!),
                errorBuilder: (context, error, stackTrace) {
                  return Align(
                    child: Image.asset(
                      "assets/images/not-found.png",
                      gaplessPlayback: true,
                      fit: BoxFit.fill,
                      height: exp,

                      // mq.orientation == Orientation.portrait
                      //     ? mq.size.width / 2.5
                      //     : mq.size.width / 4.5,
                      // width: mq.size.width / 2.1,
                    ),
                  );
                },
                gaplessPlayback: true,
                fit: BoxFit.fill,
                height: exp,

                // mq.orientation == Orientation.portrait
                //     ? mq.size.width / 2.5
                //     : mq.size.width / 4.5,
                // width: mq.size.width / 2.1,
              )),
        ),
      );
    }
  }
}
