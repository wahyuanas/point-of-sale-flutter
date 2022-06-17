import 'package:flutter/material.dart';
import 'package:pos/domain/pos/entity/pos.dart';

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
                  Text("Qty ${widget.pos.qty}",
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
                  Text("Sub total Rp ${widget.pos.sumPrice}",
                      style: const TextStyle(
                        decoration: TextDecoration.underline,
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
