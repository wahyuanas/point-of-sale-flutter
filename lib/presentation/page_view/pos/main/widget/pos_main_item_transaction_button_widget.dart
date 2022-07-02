import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/domain/pos/entity/pos.dart';
import 'package:pos/presentation/page_view/pos/main/bloc/pos_main_bloc.dart';

class PosMainItemTransactionButton extends StatefulWidget {
  final Pos pos;
  const PosMainItemTransactionButton({Key? key, required this.pos})
      : super(key: key);

  @override
  State<PosMainItemTransactionButton> createState() =>
      _PosMainItemTransactionButtonState();
}

class _PosMainItemTransactionButtonState
    extends State<PosMainItemTransactionButton> {
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);
    return Row(
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
                fontSize: mq.orientation == Orientation.portrait ? 15 : 18)),
        const SizedBox(
          width: 10.0,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: (widget.pos.item.stock ?? 0) - (widget.pos.qty ?? 0) == 0
              ? Icon(
                  Icons.add_circle_outline,
                  color: const Color.fromARGB(255, 167, 153, 153),
                  size: mq.orientation == Orientation.portrait ? 30 : 35,
                )
              : GestureDetector(
                  onTap: () => BlocProvider.of<PosMainBloc>(context)
                      .add(PosIncrementItemEvent(item: widget.pos.item)),
                  child: Icon(
                    Icons.add_circle_outline,
                    color: Colors.blue,
                    size: mq.orientation == Orientation.portrait ? 30 : 35,
                  ),
                ),
        ),
      ],
    );
  }
}
