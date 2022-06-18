import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:pos/domain/pos/entity/pos.dart';
import 'package:pos/presentation/page_view/pos/bloc/pos_bloc.dart';

class PageViewPosListItemCardWidget extends StatefulWidget {
  final Pos pos;
  const PageViewPosListItemCardWidget({Key? key, required this.pos})
      : super(key: key);

  @override
  State<PageViewPosListItemCardWidget> createState() =>
      _PageViewPosListItemCardWidgetState();
}

class _PageViewPosListItemCardWidgetState
    extends State<PageViewPosListItemCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
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
                        widget.pos.item.code,
                        style: const TextStyle(color: Colors.blue),
                      ),
                      Text(
                        widget.pos.item.name,
                        style: const TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ],
              ),
              Wrap(
                children: [
                  Text("Harga ${widget.pos.item.sellPrice}",
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
                  Text("Disc ${widget.pos.item.sellDisc ?? 0}%",
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
                  // Text("Qty ${widget.pos.qty}",
                  //     style: const TextStyle(
                  //       decoration: TextDecoration.underline,
                  //     )),
                  // const SizedBox(
                  //   width: 10.0,
                  // ),
                  //const Text("|"),
                  // const SizedBox(
                  //   width: 10.0,
                  // ),
                  Text(
                      "Sub total ${NumberFormat.currency(locale: 'id', symbol: 'Rp', decimalDigits: 0).format(widget.pos.sumPrice)}",
                      style: const TextStyle(
                        decoration: TextDecoration.underline,
                      )),
                ],
              ),
              const SizedBox(
                height: 10.0,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Spacer(),
                  GestureDetector(
                    onTap: () => BlocProvider.of<PosBloc>(context)
                        .add(PosDecrementItemEvent(item: widget.pos.item)),
                    child: const Icon(
                      Icons.remove_circle_outline,
                      color: Colors.blue,
                      size: 30,
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Text("${widget.pos.qty}",
                      style:
                          const TextStyle(color: Colors.blue, fontSize: 17.0)),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: (widget.pos.item.stock ?? 0) -
                                (widget.pos.qty ?? 0) ==
                            0
                        ? const Icon(
                            Icons.add_circle_outline,
                            color: Color.fromARGB(255, 167, 153, 153),
                            size: 30,
                          )
                        : GestureDetector(
                            onTap: () => BlocProvider.of<PosBloc>(context).add(
                                PosIncrementItemEvent(item: widget.pos.item)),
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
    );
  }
}
