import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:pos/presentation/page_view/pos/bloc/pos_bloc.dart';
import 'package:pos/routes/cubit/route_cubit.dart';
import 'package:pos/routes/on_state/on_route_state.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import 'page_view_pos_list_item_widget.dart';

class PageViewPosWidget extends StatefulWidget {
  const PageViewPosWidget({Key? key}) : super(key: key);

  @override
  State<PageViewPosWidget> createState() => _PageViewPosWidgetState();
}

class _PageViewPosWidgetState extends State<PageViewPosWidget>
    with AutomaticKeepAliveClientMixin<PageViewPosWidget> {
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
                delegate: DelegatePos()),
            SliverPersistentHeader(
                pinned: true,
                //floating: true,
                delegate: DelegatePos1()),
            SliverPersistentHeader(
                pinned: true,
                //floating: true,
                delegate: DelegatePos2()),
            const PageViewPosListItemWidget()
          ],
        ));
  }

  @override
  bool get wantKeepAlive => true;
}

class DelegatePos extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return BlocBuilder<PosBloc, PosState>(builder: (context, state) {
      return Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
        child: Container(
          decoration: const BoxDecoration(
            //color: Colors.green,
            border: Border(
                bottom: BorderSide(
              color: Colors.blue,
              //width: 3.0,
            )),
          ),
          height: 100,
          //color: Color.fromARGB(255, 252, 254, 252),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () => BlocProvider.of<RouteCubit>(context)
                      .onRoute(const OnRouteState.listPosItem(), null),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        side: const BorderSide(color: Colors.blue, width: 0.5),
                        borderRadius: BorderRadius.circular(10.0)),
                    child: SizedBox(
                      height: 60,
                      width: 80,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.add_circle_outline,
                            color: Colors.blue,
                          ),
                          Text(
                            "Tambah",
                            style: TextStyle(
                                fontSize: 13,
                                //fontWeight: FontWeight.w500,
                                color: Colors.blue),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    state.poss != null
                        ? GestureDetector(
                            onTap: () => _showMyDialog(context),
                            child: Card(
                                shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                        color: Colors.blue, width: 0.5),
                                    borderRadius: BorderRadius.circular(10.0)),
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 60,
                                  width: 80,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: const [
                                      Icon(
                                        Icons.cancel_outlined,
                                        color: Colors.blue,
                                      ),
                                      Text(
                                        "Batal",
                                        style: TextStyle(
                                            fontSize: 13,
                                            //fontWeight: FontWeight.w500,
                                            color: Colors.blue),
                                      )
                                    ],
                                  ),
                                )),
                          )
                        : Container(
                            decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(
                                        10.0) //                 <--- border radius here
                                    ),
                                border: Border.all(
                                    color: const Color.fromARGB(
                                        255, 167, 153, 153))),
                            alignment: Alignment.center,
                            height: 60,
                            width: 80,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [
                                Icon(
                                  Icons.cancel_outlined,
                                  color: Color.fromARGB(255, 167, 153, 153),
                                ),
                                Text("Batal",
                                    style: TextStyle(
                                        fontSize: 13,
                                        //fontWeight: FontWeight.w500,
                                        color:
                                            Color.fromARGB(255, 167, 153, 153)))
                              ],
                            ),
                          ),
                    state.poss == null
                        ? const SizedBox(
                            width: 10.0,
                          )
                        : Container(),
                    state.poss != null
                        ? Card(
                            shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    color: Colors.blue, width: 0.5),
                                borderRadius: BorderRadius.circular(10.0)),
                            child: Container(
                              alignment: Alignment.center,
                              height: 60,
                              width: 80,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: const [
                                  Icon(
                                    Icons.near_me_outlined,
                                    color: Colors.blue,
                                  ),
                                  Text(
                                    "Bayar",
                                    style: TextStyle(
                                        fontSize: 13,
                                        //fontWeight: FontWeight.w500,
                                        color: Colors.blue),
                                  )
                                ],
                              ),
                            ))
                        : Container(
                            decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(
                                        10.0) //                 <--- border radius here
                                    ),
                                border: Border.all(
                                    color: const Color.fromARGB(
                                        255, 167, 153, 153))),
                            alignment: Alignment.center,
                            height: 60,
                            width: 80,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [
                                Icon(Icons.near_me_outlined,
                                    color: Color.fromARGB(255, 167, 153, 153)),
                                Text(
                                  "Bayar",
                                  style: TextStyle(
                                      fontSize: 13,
                                      //fontWeight: FontWeight.w500,
                                      color:
                                          Color.fromARGB(255, 167, 153, 153)),
                                )
                              ],
                            ),
                          ),
                    state.poss == null
                        ? const SizedBox(
                            width: 5.0,
                          )
                        : Container(),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    });
  }

  @override
  double get maxExtent => 80;

  @override
  double get minExtent => 80;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}

class DelegatePos1 extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return BlocBuilder<PosBloc, PosState>(builder: (context, state) {
      int total = 0;
      state.poss?.forEach(
        (pos) {
          total = total + (pos.sumPrice ?? 0);
        },
      );
      return Container(
        height: 45,
        color: Color.fromARGB(255, 253, 255, 255),
        child: Padding(
          padding: const EdgeInsets.only(left: 30.0, right: 30.0, top: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('FAK-XXXXXXXX1',
                  style: TextStyle(fontSize: 17, color: Colors.blue)),
              const Spacer(),
              Text(
                  NumberFormat.currency(
                          locale: 'id', symbol: 'Rp', decimalDigits: 0)
                      .format(total),
                  style: const TextStyle(fontSize: 17, color: Colors.blue)),
            ],
          ),
        ),
      );
    });
  }

  @override
  double get maxExtent => 45;

  @override
  double get minExtent => 45;

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

class DelegatePos3 extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      decoration: const BoxDecoration(
        //color: Colors.green,
        border: Border(
            bottom: BorderSide(
          color: Colors.blue,
          //width: 3.0,
        )),
      ),
      height: 100,
      //color: Color.fromARGB(255, 252, 254, 252),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8, 0, 12, 8),
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.add_card_outlined,
                color: Color.fromARGB(255, 13, 77, 203),
              ),
            ),
            const Spacer(),
            const Text("POS"),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.person_pin_circle_outlined,
                    size: 30.0,
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
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "Mr. Cemang",
                        style: TextStyle(fontSize: 15, color: Colors.blue),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  double get maxExtent => 80;

  @override
  double get minExtent => 80;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}

Future<void> _showMyDialog(BuildContext context) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text(
          'Pemberitahuan',
          style: TextStyle(fontSize: 20),
        ),
        content: const Text('Yakin Ingin Membatalkan Transaksi ?'),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(30.0))),
        actions: <Widget>[
          TextButton(
            child: const Text('Tidak', style: TextStyle(fontSize: 17)),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          TextButton(
            child: const Text('Ya', style: TextStyle(fontSize: 17)),
            onPressed: () {
              BlocProvider.of<PosBloc>(context).add(const PosStartedEvent());
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
