import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/pos_main_bloc.dart';
import 'pos_main_item_transaction_card_widget.dart';

class PosMainItemTransactionWidget extends StatefulWidget {
  const PosMainItemTransactionWidget({Key? key}) : super(key: key);

  @override
  State<PosMainItemTransactionWidget> createState() =>
      _PosMainItemTransactionWidgetState();
}

class _PosMainItemTransactionWidgetState
    extends State<PosMainItemTransactionWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PosMainBloc, PosMainState>(builder: (context, state) {
      if (state.poss == null) {
        return SliverToBoxAdapter(
          child: Column(
            //mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // const Icon(
              //   Icons.block_outlined,
              //   size: 70.0,
              // ),
              SizedBox(
                height: (MediaQuery.of(context).size.height / 7),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20.0, left: 20.0),
                child: Wrap(
                  alignment: WrapAlignment.center,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: const [
                    Text(
                      "Silahkan Pilih Item ",
                      style: TextStyle(fontSize: 17, color: Colors.blue),
                    ),
                    Text(
                      "Dengan Cara ",
                      style: TextStyle(fontSize: 17, color: Colors.blue),
                    ),
                    Text(
                      "Menekan Tombol ",
                      style: TextStyle(fontSize: 17, color: Colors.blue),
                    ),
                    Text(
                      "'Tambah'",
                      style: TextStyle(
                          fontSize: 17, color: Color.fromARGB(255, 9, 55, 94)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      } else {
        return SliverList(
            delegate: SliverChildBuilderDelegate(
          (BuildContext context, int index) {
            return PosMainItemTransactionCardWidget(pos: state.poss![index]);
          },
          childCount: state.poss?.length, // 1000 list items
        ));
      }
    });
  }
}
