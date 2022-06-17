import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pos/presentation/page_view/pos/bloc/pos_bloc.dart';

import 'page_view_pos_list_item_card_widget.dart';

class PageViewPosListItemWidget extends StatefulWidget {
  const PageViewPosListItemWidget({Key? key}) : super(key: key);

  @override
  State<PageViewPosListItemWidget> createState() =>
      _PageViewPosListItemWidgetState();
}

class _PageViewPosListItemWidgetState extends State<PageViewPosListItemWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PosBloc, PosState>(builder: (context, state) {
      return state.poss == null
          ? SliverFillRemaining(
              child: Center(
                child: Text(
                  "Tidak ada item",
                  style: GoogleFonts.raleway(fontSize: 20, color: Colors.blue),
                ),
              ),
            )
          : SliverList(
              delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return PageViewPosListItemCardWidget(pos: state.poss![index]);
              },
              childCount: state.poss?.length, // 1000 list items
            ));
    });
  }
}
