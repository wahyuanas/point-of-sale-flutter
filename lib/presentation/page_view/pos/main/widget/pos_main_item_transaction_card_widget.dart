import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/domain/pos/entity/pos.dart';
import 'package:pos/presentation/page_view/pos/routes/cubit/pos_route_cubit.dart';
import 'package:pos/presentation/page_view/pos/routes/on_state/pos_on_route_state.dart';
import 'package:pos/routes/cubit/route_cubit.dart';
import 'package:pos/routes/on_state/on_route_state.dart';

import 'pos_main_widget_item_transaction_export.dart';

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
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () async {
                BlocProvider.of<PosRouteCubit>(context).onRoute(
                    const PosOnRouteState.posCatalogItemDetail(
                        r: '/posCatalogItemDetail'),
                    widget.pos.item);
              },
              child: Row(
                children: [
                  PosMainItemtransactionImage(pos: widget.pos),
                  const SizedBox(
                    width: 10.0,
                  ),
                  PosMainItemTransactionContent(
                    pos: widget.pos,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            PosMainItemTransactionButton(pos: widget.pos)
          ],
        ),
      ),
    );
  }
}
