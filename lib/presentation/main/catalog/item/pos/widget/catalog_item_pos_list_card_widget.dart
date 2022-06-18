import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:pos/domain/catalog/item/entity/item.dart';
import 'package:pos/domain/pos/entity/pos.dart';
import 'package:pos/presentation/page_view/pos/bloc/pos_bloc.dart';
import 'package:pos/presentation/utils/colors.dart';

class CatalogItemPosListCardWidget extends StatefulWidget {
  final Item item;
  const CatalogItemPosListCardWidget({Key? key, required this.item})
      : super(key: key);

  @override
  State<CatalogItemPosListCardWidget> createState() =>
      _CatalogItemPosListCardWidgetState();
}

class _CatalogItemPosListCardWidgetState
    extends State<CatalogItemPosListCardWidget> {
  Pos? pos;

  @override
  void initState() {
    int? index = BlocProvider.of<PosBloc>(context)
        .state
        .poss
        ?.indexWhere((posc) => posc.item.id == widget.item.id);
    if (index != null) {
      if (index >= 0) {
        pos = BlocProvider.of<PosBloc>(context).state.poss![index];
      }
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<PosBloc, PosState>(
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
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.item.code,
                          style: const TextStyle(color: Colors.blue),
                        ),
                        Text(
                          widget.item.name,
                          style: const TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ],
                ),
                Wrap(
                  children: [
                    Text(
                        NumberFormat.currency(
                                locale: 'id', symbol: 'Rp', decimalDigits: 0)
                            .format(widget.item.sellPrice),
                        style: const TextStyle(
                          decoration: TextDecoration.underline,
                        )),
                    const SizedBox(
                      width: 10.0,
                    ),
                    const Text("|"),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Text("Disc ${widget.item.sellDisc ?? 0}%",
                        style: const TextStyle(
                          decoration: TextDecoration.underline,
                        )),
                    const SizedBox(
                      width: 10.0,
                    ),
                    const Text("|"),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Text("Stok ${(widget.item.stock ?? 0) - (pos?.qty ?? 0)}",
                        style: const TextStyle(
                          decoration: TextDecoration.underline,
                        )),
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
                                onTap: () => BlocProvider.of<PosBloc>(context)
                                    .add(PosAddItemEvent(item: widget.item)),
                                child: Chip(
                                    label: Row(
                                  children: const [
                                    Icon(
                                      Icons.add_circle_outline,
                                      color: Colors.blue,
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
                            onTap: () => BlocProvider.of<PosBloc>(context)
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
                                    color: Color.fromARGB(255, 174, 179, 183),
                                    size: 30,
                                  )
                                : GestureDetector(
                                    onTap: () =>
                                        BlocProvider.of<PosBloc>(context).add(
                                            PosIncrementItemEvent(
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
