import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../bloc/pos_bloc.dart';
import 'page_view_pos_main_item_transaction_card_widget.dart';

class PageViewPosMainItemTransactionWidget extends StatefulWidget {
  const PageViewPosMainItemTransactionWidget({Key? key}) : super(key: key);

  @override
  State<PageViewPosMainItemTransactionWidget> createState() =>
      _PageViewPosMainItemTransactionWidgetState();
}

class _PageViewPosMainItemTransactionWidgetState
    extends State<PageViewPosMainItemTransactionWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PosBloc, PosState>(builder: (context, state) {
      return state.poss == null
          ? SliverFillRemaining(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.block_outlined,
                    size: 70.0,
                  ),
                  Text(
                    "Tidak ada item",
                    style:
                        GoogleFonts.raleway(fontSize: 20, color: Colors.blue),
                  ),
                ],
              ),
            )
          : SliverList(
              delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return PageViewPosMainItemTransactionCardWidget(
                    pos: state.poss![index]);
              },
              childCount: state.poss?.length, // 1000 list items
            ));
    });
  }
}
