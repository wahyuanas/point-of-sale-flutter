import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:pos/domain/pos/entity/pos.dart';

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
                  widget.pos.item.image == null
                      ? const Align(
                          child: Icon(
                            Icons.inventory_outlined,
                            color: Colors.blue,
                            size: 50,
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
                                  gaplessPlayback: true,
                                  fit: BoxFit.fill,
                                  width: MediaQuery.of(context).size.width / 3,
                                  height: MediaQuery.of(context).size.width / 3,
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
                          height: 5.0,
                        ),
                        Text(
                          widget.pos.item.name,
                          style: const TextStyle(
                              color: Colors.black, fontSize: 14.0),
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        Wrap(
                          children: [
                            Wrap(children: [
                              const Text("Harga ",
                                  style: TextStyle(
                                    decoration: TextDecoration.underline,
                                  )),
                              Text(
                                  NumberFormat.currency(
                                          locale: 'id',
                                          symbol: 'Rp',
                                          decimalDigits: 0)
                                      .format(widget.pos.item.sellPrice),
                                  style: const TextStyle(
                                      decoration: TextDecoration.underline,
                                      color: Colors.blue)),
                            ]),
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
                                Text("${widget.pos.item.sellDisc ?? 0}%",
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
                                    )),
                                Text(
                                    NumberFormat.currency(
                                            locale: 'id',
                                            symbol: 'Rp',
                                            decimalDigits: 0)
                                        .format(widget.pos.sumPrice),
                                    style: const TextStyle(
                                        decoration: TextDecoration.underline,
                                        color: Colors.blue)),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
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
                    onTap: () => BlocProvider.of<PosMainBloc>(context)
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
                            onTap: () => BlocProvider.of<PosMainBloc>(context)
                                .add(PosIncrementItemEvent(
                                    item: widget.pos.item)),
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
