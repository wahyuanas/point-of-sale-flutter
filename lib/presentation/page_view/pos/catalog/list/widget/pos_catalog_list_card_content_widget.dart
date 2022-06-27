import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:pos/domain/catalog/item/entity/item.dart';
import 'package:pos/domain/pos/entity/pos.dart';
import 'package:pos/presentation/page_view/pos/main/bloc/pos_main_bloc.dart';

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
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.item.code,
                  style: const TextStyle(color: Colors.blue, fontSize: 15.0),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Text(
                  widget.item.name,
                  style: const TextStyle(color: Colors.black, fontSize: 14.0),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Text(
                    NumberFormat.currency(
                            locale: 'id', symbol: 'Rp ', decimalDigits: 0)
                        .format(widget.item.sellPrice),
                    style: const TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.blue)),
                Wrap(
                  children: [
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
                      ((widget.item.stock ?? 0) - (pos?.qty ?? 0))
                                      .toString()
                                      .split('.')[1]
                                      .length ==
                                  1 &&
                              ((widget.item.stock ?? 0) - (pos?.qty ?? 0))
                                      .toString()
                                      .split('.')[1] ==
                                  '0'
                          ? Text(
                              ((widget.item.stock ?? 0) - (pos?.qty ?? 0))
                                  .toString()
                                  .split('.')[0],
                              style: const TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: Colors.blue))
                          : Text(
                              "${(widget.item.stock ?? 0) - (pos?.qty ?? 0)}",
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
