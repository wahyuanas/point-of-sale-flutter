import 'dart:convert';
import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:pos/domain/catalog/item/entity/item.dart';
import 'package:pos/domain/pos/entity/pos.dart';
import 'package:pos/presentation/page_view/pos/main/bloc/pos_main_bloc.dart';
import 'package:cached_network_image/cached_network_image.dart';

class PosCatalogListCardContentWidget extends StatefulWidget {
  final Item item;
  const PosCatalogListCardContentWidget({Key? key, required this.item})
      : super(key: key);

  @override
  State<PosCatalogListCardContentWidget> createState() =>
      _PosCatalogListCardContentWidgetState();
}

class _PosCatalogListCardContentWidgetState
    extends State<PosCatalogListCardContentWidget> {
  Pos? pos;

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

  // @override
  // void didChangeDependencies() {
  //   if (widget.item.image != null) {
  //     debugPrint("POSCARALOG LIST CARD DID CHANAGE");
  //     precacheImage(Image.file(File(widget.item.image!)).image, context);
  //   }
  //   super.didChangeDependencies();
  // }

  Pos? getPos() {
    int? index = BlocProvider.of<PosMainBloc>(context)
        .state
        .poss
        ?.indexWhere((posc) => posc.item.id == widget.item.id);
    if (index != null) {
      if (index >= 0) {
        pos = BlocProvider.of<PosMainBloc>(context).state.poss![index];
      }
    }
    return pos;
  }

  @override
  Widget build(BuildContext context) {
    pos = getPos();
    if (pos?.item.id != widget.item.id) {
      pos = null;
    }
    return BlocListener<PosMainBloc, PosMainState>(
        listener: (context, state) async {
          if (state.idItem == widget.item.id) {
            pos = null;
            int? index = state.poss?.indexWhere((posc) {
              return posc.item.id == widget.item.id;
            });
            if (index != null) {
              if (index >= 0) {
                pos = state.poss![index];
              }
            }
            setState(() {});
          }
        },
        child: Flexible(
          child: GestureDetector(
            onTap: () async {},
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                widget.item.image == null
                    ? const Icon(
                        Icons.inventory_outlined,
                        color: Colors.blue,
                        size: 50,
                      )
                    :
                    // : CachedNetworkImage(
                    //     imageUrl: widget.item.image!,
                    //     placeholder: (context, url) =>
                    //         const CircularProgressIndicator(),
                    //     errorWidget: (context, url, error) =>
                    //         const Icon(Icons.error),
                    //   ),

                    Image.file(
                        File(widget.item.image!),
                        gaplessPlayback: true,
                        fit: BoxFit.cover,
                        height: 150,
                      ),

                //ExtendedNetworkImageProvider(),
                // Image.memory(
                //     base64.decode(widget.item.image!),
                //     gaplessPlayback: true,
                //     fit: BoxFit.cover,
                //     // height: 100,
                //     // width: 100,
                //     cacheWidth: 200 * window.devicePixelRatio.ceil(),
                //     cacheHeight: 200 * window.devicePixelRatio.ceil(),
                //   ),
                const SizedBox(
                  width: 10.0,
                ),
                Text(
                  widget.item.code,
                  style: const TextStyle(color: Colors.blue),
                ),
                Text(
                  widget.item.name,
                  style: const TextStyle(color: Colors.black, fontSize: 16.0),
                ),
                Wrap(
                  children: [
                    Wrap(
                      children: [
                        const Text("Harga ",
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                            )),
                        Text(
                            NumberFormat.currency(
                                    locale: 'id',
                                    symbol: 'Rp',
                                    decimalDigits: 0)
                                .format(widget.item.sellPrice),
                            style: const TextStyle(
                                decoration: TextDecoration.underline,
                                color: Colors.blue)),
                      ],
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    const Text("|"),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Wrap(
                      children: [
                        const Text("Disc ",
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                            )),
                        Text("${widget.item.sellDisc ?? 0}%",
                            style: const TextStyle(
                                decoration: TextDecoration.underline,
                                color: Colors.blue)),
                      ],
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    const Text("|"),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Wrap(children: [
                      const Text("Stok ",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                          )),
                      Text("${(widget.item.stock ?? 0) - (pos?.qty ?? 0)}",
                          style: const TextStyle(
                              decoration: TextDecoration.underline,
                              color: Colors.blue)),
                    ])
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
