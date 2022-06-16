import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

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
                  border: Border(
                      bottom: BorderSide(
                    color: Colors.blue,
                    //width: 3.0,
                  )),
                ),
                //height: 100,
                //color: Color.fromARGB(255, 252, 254, 252),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8, 0, 12, 8),
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.add_card_outlined,
                        color: Color.fromARGB(255, 13, 77, 203),
                      ),
                      Spacer(),
                      const Text(
                        "Pos",
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 25,
                            fontWeight: FontWeight.w600),
                      ),
                      Spacer(),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.notifications_outlined,
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
                                    fontSize: 17,
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                "Mr. Cemang",
                                style:
                                    TextStyle(fontSize: 15, color: Colors.blue),
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
              // actions: [
              //   Padding(
              //     padding: const EdgeInsets.only(right: 8.0),
              //     child: Row(
              //       mainAxisSize: MainAxisSize.min,
              //       mainAxisAlignment: MainAxisAlignment.center,
              //       children: [
              //         const Icon(
              //           Icons.notifications_outlined,
              //           size: 30.0,
              //           color: Colors.blue,
              //         ),
              //         const SizedBox(
              //           width: 5,
              //         ),
              //         Column(
              //           mainAxisSize: MainAxisSize.min,
              //           crossAxisAlignment: CrossAxisAlignment.start,
              //           //mainAxisAlignment: MainAxisAlignment.center,
              //           children: const [
              //             Text(
              //               "User,",
              //               style: TextStyle(
              //                   fontSize: 17,
              //                   color: Colors.blue,
              //                   fontWeight: FontWeight.w600),
              //             ),
              //             Text(
              //               "Mr. Cemang",
              //               style: TextStyle(fontSize: 15, color: Colors.blue),
              //             ),
              //           ],
              //         ),
              //       ],
              //     ),
              //   ),

              //   // Row(
              //   //   children: [
              //   //     const Icon(Icons.person),
              //   //     const SizedBox(
              //   //       width: 10,
              //   //     ),
              //   //     Column(
              //   //       mainAxisSize: MainAxisSize.min,
              //   //       crossAxisAlignment: CrossAxisAlignment.start,
              //   //       children: const [
              //   //         Text(
              //   //           "User,",
              //   //           style: TextStyle(fontSize: 12),
              //   //         ),
              //   //         Text("Mr. Cemang", style: TextStyle(fontSize: 12)),
              //   //       ],
              //   //     )
              //   //   ],
              //   // ),
              // ],
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.add_card_outlined,
                  color: Color.fromARGB(255, 13, 77, 203),
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
            const Spacer(),
            Row(
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Icon(Icons.cancel_outlined),
                    Text(
                      "Batal",
                      style: TextStyle(
                          fontSize: 13,
                          //fontWeight: FontWeight.w500,
                          color: Colors.blue),
                    )
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Icon(Icons.payment_outlined),
                    Text(
                      "Bayar",
                      style: TextStyle(
                          fontSize: 13,
                          //fontWeight: FontWeight.w500,
                          color: Colors.blue),
                    )
                  ],
                )
              ],
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

class DelegatePos1 extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      height: 70,
      color: Color.fromARGB(255, 251, 252, 252),
      child: Padding(
        padding: const EdgeInsets.only(left: 30.0, right: 30.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('FAK-XXXXXXXX1',
                style: TextStyle(fontSize: 17, color: Colors.blue)),
            Spacer(),
            Text('Rp', style: TextStyle(fontSize: 17, color: Colors.blue)),
          ],
        ),
      ),
    );
  }

  @override
  double get maxExtent => 70;

  @override
  double get minExtent => 70;

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
      height: 30,
      color: Color.fromARGB(255, 250, 251, 251),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(Icons.dashboard_customize_outlined),
          SizedBox(
            width: 10,
          ),
          Text('Item Transaksi',
              style: TextStyle(fontSize: 17, color: Colors.blue)),
        ],
      ),
    );
  }

  @override
  double get maxExtent => 30;

  @override
  double get minExtent => 30;

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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.add_card_outlined,
                color: Color.fromARGB(255, 13, 77, 203),
              ),
            ),
            Spacer(),
            const Text(
              "Pos",
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 25,
                  fontWeight: FontWeight.w600),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.notifications_outlined,
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
                            fontSize: 17,
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
