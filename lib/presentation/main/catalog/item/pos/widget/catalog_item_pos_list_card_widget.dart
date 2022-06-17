import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/domain/catalog/item/entity/item.dart';
import 'package:pos/domain/pos/entity/pos.dart';
import 'package:pos/presentation/page_view/pos/bloc/pos_bloc.dart';

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
                          "${pos?.item.code}",
                          style: const TextStyle(color: Colors.blue),
                        ),
                        Text(
                          "${pos?.item.name}",
                          style: const TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ],
                ),
                Wrap(
                  children: [
                    Text("Harga ${pos?.item.sellPrice}",
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
                    Text("Disc ${pos?.item.sellDisc ?? 0}%",
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
                    Text("Qty ${pos?.qty}",
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
                    Text("Sub total Rp ${pos?.sumPrice}",
                        style: const TextStyle(
                          decoration: TextDecoration.underline,
                        )),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
