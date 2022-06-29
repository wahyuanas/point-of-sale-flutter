import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../bloc/pos_main_bloc.dart';
import '../delegate/pos_main_action_delegate.dart';
import 'pos_main_item_transaction_widget.dart';

class PosMainWidget extends StatefulWidget {
  const PosMainWidget({Key? key}) : super(key: key);

  @override
  State<PosMainWidget> createState() => _PosMainWidgetState();
}

class _PosMainWidgetState extends State<PosMainWidget>
    with AutomaticKeepAliveClientMixin<PosMainWidget> {
  final RefreshController _refreshController =
      RefreshController(initialRefresh: false);

  void _onRefresh() async {
    // monitor network fetch
    await Future.delayed(const Duration(milliseconds: 1000));
    // if failed,use refreshFailed()
    _refreshController.refreshCompleted();
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _refreshController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    //final double statusBarHeight = MediaQuery.of(context).padding.top;
    //final pinnedHeaderHeight =
    //statusBar height
    //  statusBarHeight; // +
    //kToolbarHeight;
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(70.0),
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: AppBar(
              titleSpacing: 0.0,
              elevation: 0.3,
              backgroundColor: Colors.white,
              // leading: const Icon(
              //   Icons.logo_dev_outlined,
              //   color: Colors.blue,
              // ),
              title: Container(
                decoration: const BoxDecoration(
                    //color: Colors.green,
                    // border: Border(
                    //     bottom: BorderSide(
                    //   color: Colors.blue,
                    //   //width: 3.0,
                    // )),
                    ),
                //height: 100,
                //color: Color.fromARGB(255, 252, 254, 252),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.add_card_outlined,
                        color: Color.fromARGB(255, 13, 77, 203),
                      ),
                      const Spacer(),
                      const Text(
                        "POS",
                        style: TextStyle(color: Colors.blue),
                      ),
                      const Spacer(),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.person_outline,
                            size: 40.0,
                            color: Colors.blue,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            //mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                "User,",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                "Mr. Anyone",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.blue,
                                    fontWeight: FontWeight.normal),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              systemOverlayStyle: const SystemUiOverlayStyle(
                systemNavigationBarColor: Colors.blue, // navigation bar color
                statusBarColor: Colors.white, // status bar color
                statusBarBrightness: Brightness.dark, //status bar brigtness
                statusBarIconBrightness:
                    Brightness.dark, //status barIcon Brightness
                systemNavigationBarDividerColor:
                    Colors.greenAccent, //Navigation bar divider color
                systemNavigationBarIconBrightness:
                    Brightness.light, //navigation bar icon
              ),
              centerTitle: true,
            ),
          ),
        ),
        body: CustomScrollView(
          slivers: [
            SliverPersistentHeader(
                pinned: true,
                //floating: true,
                delegate: PosMainActionDelegate()),
            SliverPersistentHeader(
                pinned: true,
                //floating: true,
                delegate: DelegatePos1()),
            // SliverPersistentHeader(
            //     pinned: true,
            //     //floating: true,
            //     delegate: DelegatePos2()),
            const PosMainItemTransactionWidget(),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 20.0,
              ),
            )
          ],
        ));
  }

  @override
  bool get wantKeepAlive => true;
}

class DelegatePos1 extends SliverPersistentHeaderDelegate {
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

class DelegatePos2 extends SliverPersistentHeaderDelegate {
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
