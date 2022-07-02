import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pos/domain/pos/entity/pos.dart';

class PosMainItemTransactionContent extends StatefulWidget {
  final Pos pos;
  const PosMainItemTransactionContent({Key? key, required this.pos})
      : super(key: key);

  @override
  State<PosMainItemTransactionContent> createState() =>
      _PosMainItemTransactionContentState();
}

class _PosMainItemTransactionContentState
    extends State<PosMainItemTransactionContent> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.pos.item.code,
            style: const TextStyle(color: Colors.blue, fontSize: 15.0),
          ),
          const SizedBox(
            height: 0.0,
          ),
          Text(widget.pos.item.name,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 14.0,
                  height: 1.2,
                  fontWeight: FontWeight.w600)),
          const SizedBox(
            height: 3.0,
          ),
          Wrap(
            children: [
              Wrap(children: [
                const Text("Harga ",
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      height: 1.2,
                      color: Colors.black,
                    )),
                Text(
                    NumberFormat.currency(
                            locale: 'id', symbol: 'Rp', decimalDigits: 0)
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
                        height: 1.2,
                        color: Colors.black,
                      )),
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
                          style:
                              const TextStyle(color: Colors.blue, height: 1.2))
                      : Text("${widget.pos.item.sellDisc ?? 0}%",
                          style:
                              const TextStyle(color: Colors.blue, height: 1.2)),
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
                        height: 1.2,
                        color: Colors.black,
                      )),
                  Text(
                      NumberFormat.currency(
                              locale: 'id', symbol: 'Rp', decimalDigits: 0)
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
    );
  }
}
