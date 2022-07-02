import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../bloc/pos_main_bloc.dart';

class PosMainInfoDelegate extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return BlocBuilder<PosMainBloc, PosMainState>(builder: (context, state) {
      int total = 0;
      state.poss?.forEach(
        (pos) {
          total = total + (pos.sumPrice ?? 0);
        },
      );
      return state.poss == null
          ? Container()
          : Container(
              height: 105,
              color: const Color.fromARGB(255, 255, 255, 255),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 30.0, right: 30.0, top: 0.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('FAK-XXXXXXXX1',
                            style: TextStyle(fontSize: 17, color: Colors.blue)),
                        const Spacer(),
                        Text(
                            NumberFormat.currency(
                                    locale: 'id',
                                    symbol: 'Rp ',
                                    decimalDigits: 0)
                                .format(total),
                            style: const TextStyle(
                                fontSize: 17, color: Colors.blue)),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.add_shopping_cart_outlined,
                        color: Colors.blue,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Item Transaksi",
                        style: TextStyle(fontSize: 17.0, color: Colors.blue),
                      ),
                    ],
                  ),
                ],
              ),
            );
    });
  }

  @override
  double get maxExtent => 105;

  @override
  double get minExtent => 105;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}

class PosMainInfoDelegate2 extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      height: 50,
      color: const Color.fromARGB(255, 252, 254, 254),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(
            Icons.add_shopping_cart_outlined,
            color: Colors.blue,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            "Item Transaksi",
            style: TextStyle(fontSize: 17.0, color: Colors.blue),
          ),
        ],
      ),
    );
  }

  @override
  double get maxExtent => 50;

  @override
  double get minExtent => 50;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
