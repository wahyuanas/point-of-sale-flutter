import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:pos/domain/catalog/item/entity/item.dart';
import 'package:pos/domain/pos/entity/pos.dart';
import 'package:pos/presentation/page_view/pos/main/bloc/pos_main_bloc.dart';

class PosCatalogListCardWidget extends StatefulWidget {
  final Item item;
  const PosCatalogListCardWidget({Key? key, required this.item})
      : super(key: key);

  @override
  State<PosCatalogListCardWidget> createState() =>
      _PosCatalogListCardWidgetState();
}

class _PosCatalogListCardWidgetState extends State<PosCatalogListCardWidget> {
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
      child: Card(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 20.0, bottom: 20.0),
          child: GestureDetector(
            onTap: () async {},
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.inventory_outlined,
                      color: Colors.blue,
                      size: 50,
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.item.code,
                            style: const TextStyle(color: Colors.blue),
                          ),
                          Text(
                            widget.item.name,
                            style: const TextStyle(
                                color: Colors.black, fontSize: 16.0),
                          ),
                        ],
                      ),
                    ),
                  ],
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
                const SizedBox(
                  height: 10.0,
                ),
                pos?.qty == null
                    ? Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Spacer(),
                          Padding(
                              padding: const EdgeInsets.only(right: 15.0),
                              child: GestureDetector(
                                onTap: () =>
                                    BlocProvider.of<PosMainBloc>(context).add(
                                        PosAddItemEvent(item: widget.item)),
                                child: Container(
                                    width: 110.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: const Color.fromARGB(
                                          255, 239, 236, 236),
                                      boxShadow: const [
                                        BoxShadow(
                                            color: Color.fromARGB(
                                                255, 247, 246, 250),
                                            spreadRadius: 0.5),
                                      ],
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const [
                                        Icon(
                                          Icons.add_circle_outline,
                                          color: Colors.blue,
                                          size: 30.0,
                                        ),
                                        Text(
                                          "Tambah",
                                          style: TextStyle(color: Colors.blue),
                                        )
                                      ],
                                    )),
                              )),
                        ],
                      )
                    : Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Spacer(),
                          GestureDetector(
                            onTap: () => BlocProvider.of<PosMainBloc>(context)
                                .add(PosDecrementItemEvent(item: widget.item)),
                            child: const Icon(
                              Icons.remove_circle_outline,
                              color: Colors.blue,
                              size: 30,
                            ),
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          Text("${pos?.qty}",
                              style: const TextStyle(
                                  color: Colors.blue, fontSize: 17.0)),
                          const SizedBox(
                            width: 10.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20.0),
                            child: (widget.item.stock ?? 0) - (pos?.qty ?? 0) ==
                                    0
                                ? const Icon(
                                    Icons.add_circle_outline,
                                    color: Color.fromARGB(255, 167, 153, 153),
                                    size: 30,
                                  )
                                : GestureDetector(
                                    onTap: () =>
                                        BlocProvider.of<PosMainBloc>(context)
                                            .add(PosIncrementItemEvent(
                                                item: widget.item)),
                                    child: const Icon(
                                      Icons.add_circle_outline,
                                      color: Colors.blue,
                                      size: 30,
                                    ),
                                  ),
                          ),
                        ],
                      )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
