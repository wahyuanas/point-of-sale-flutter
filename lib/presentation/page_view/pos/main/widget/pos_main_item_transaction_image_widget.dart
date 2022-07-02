import 'dart:io';

import 'package:flutter/material.dart';
import 'package:pos/domain/pos/entity/pos.dart';

class PosMainItemtransactionImage extends StatelessWidget {
  final Pos pos;
  const PosMainItemtransactionImage({Key? key, required this.pos})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);
    return pos.item.image == null
        ? Align(
            child: Image.asset(
              "assets/images/no-image.png",
              gaplessPlayback: true,
              fit: BoxFit.fill,
              width: mq.size.width / 3,
              height: mq.size.width / 3,
            ),
          )
        : Align(
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: Image.file(
                    File(pos.item.image!),
                    errorBuilder: (context, error, stackTrace) => Align(
                      child: Image.asset(
                        "assets/images/not-found.png",
                        gaplessPlayback: true,
                        fit: BoxFit.fill,
                        width: mq.size.width / 3,
                        height: mq.size.width / 3,
                      ),
                    ),
                    gaplessPlayback: true,
                    fit: BoxFit.fill,
                    width: mq.size.width / 3,
                    height: mq.size.width / 3,
                  )),
            ),
          );
  }
}
