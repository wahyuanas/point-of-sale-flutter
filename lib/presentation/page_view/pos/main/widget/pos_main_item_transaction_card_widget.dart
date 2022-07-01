import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:pos/domain/pos/entity/pos.dart';
import 'package:pos/routes/cubit/route_cubit.dart';
import 'package:pos/routes/on_state/on_route_state.dart';

import '../bloc/pos_main_bloc.dart';

class PosMainItemTransactionCardWidget extends StatefulWidget {
  final Pos pos;
  const PosMainItemTransactionCardWidget({Key? key, required this.pos})
      : super(key: key);

  @override
  State<PosMainItemTransactionCardWidget> createState() =>
      _PosMainItemTransactionCardWidgetState();
}

class _PosMainItemTransactionCardWidgetState
    extends State<PosMainItemTransactionCardWidget> {
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);
    return Card(
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0, top: 20.0, bottom: 20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () async {
                BlocProvider.of<RouteCubit>(context).onRoute(
                    const OnRouteState.posCatalogItemDetail(
                        r: '/posCatalogItemDetail'),
                    widget.pos.item);
              },
              child: Row(
                children: [
                  widget.pos.item.image == null
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
                                  File(widget.pos.item.image!),
                                  errorBuilder: (context, error, stackTrace) =>
                                      Align(
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
                          widget.pos.item.code,
                          style: const TextStyle(
                              color: Colors.blue, fontSize: 15.0),
                        ),
                        const SizedBox(
                          height: 0.0,
                        ),
                        Text(
                          widget.pos.item.name,
                          style: const TextStyle(
                              color: Colors.black, fontSize: 14.0, height: 1.2),
                        ),
                        const SizedBox(
                          height: 3.0,
                        ),
                        Wrap(
                          children: [
                            Wrap(children: [
                              const Text("Harga ",
                                  style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      height: 1.2)),
                              Text(
                                  NumberFormat.currency(
                                          locale: 'id',
                                          symbol: 'Rp',
                                          decimalDigits: 0)
                                      .format(widget.pos.item.sellPrice),
                                  style: const TextStyle(
                                      decoration: TextDecoration.underline,
                                      color: Colors.blue,
                                      height: 1.2)),
                            ]),
                            const SizedBox(
                              width: 10.0,
                            ),
                            const Text(
                              "|",
                              style: TextStyle(height: 1.2),
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            Wrap(
                              children: [
                                const Text("Disc ",
                                    style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        height: 1.2)),
                                (widget.pos.item.sellDisc ?? 0)
                                                .toString()
                                                .split('.')[1]
                                                .length ==
                                            1 &&
                                        (widget.pos.item.sellDisc ?? 0)
                                                .toString()
                                                .split('.')[1] ==
                                            '0'
                                    ? Text(
                                        "${(widget.pos.item.sellDisc ?? 0).toString().split('.')[0]}%",
                                        style: const TextStyle(
                                            color: Colors.blue, height: 1.2))
                                    : Text("${widget.pos.item.sellDisc ?? 0}%",
                                        style: const TextStyle(
                                            color: Colors.blue, height: 1.2)),
                              ],
                            ),

                            const SizedBox(
                              width: 10.0,
                            ),
                            const Text(
                              "|",
                              style: TextStyle(height: 1.2),
                            ),
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
                            Wrap(
                              children: [
                                const Text("Sub total ",
                                    style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        height: 1.2)),
                                Text(
                                    NumberFormat.currency(
                                            locale: 'id',
                                            symbol: 'Rp',
                                            decimalDigits: 0)
                                        .format(widget.pos.sumPrice),
                                    style: const TextStyle(
                                        decoration: TextDecoration.underline,
                                        color: Colors.blue,
                                        height: 1.2)),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Spacer(),
                GestureDetector(
                  onTap: () => BlocProvider.of<PosMainBloc>(context)
                      .add(PosDecrementItemEvent(item: widget.pos.item)),
                  child: Icon(
                    Icons.remove_circle_outline,
                    color: Colors.blue,
                    size: mq.orientation == Orientation.portrait ? 30 : 35,
                  ),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Text("${widget.pos.qty}",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize:
                            mq.orientation == Orientation.portrait ? 15 : 18)),
                const SizedBox(
                  width: 10.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: (widget.pos.item.stock ?? 0) - (widget.pos.qty ?? 0) ==
                          0
                      ? Icon(
                          Icons.add_circle_outline,
                          color: const Color.fromARGB(255, 167, 153, 153),
                          size:
                              mq.orientation == Orientation.portrait ? 30 : 35,
                        )
                      : GestureDetector(
                          onTap: () => BlocProvider.of<PosMainBloc>(context)
                              .add(
                                  PosIncrementItemEvent(item: widget.pos.item)),
                          child: Icon(
                            Icons.add_circle_outline,
                            color: Colors.blue,
                            size: mq.orientation == Orientation.portrait
                                ? 30
                                : 35,
                          ),
                        ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
