import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pos/presentation/common/config/system_overlay_style.dart';
import 'package:pos/presentation/page_view/home/widget/main/fake_data.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import 'package:extended_nested_scroll_view/extended_nested_scroll_view.dart';
import 'tabbar_search.dart';
import 'tabbar_serach_inventory.dart';

class PageViewHomeWidget extends StatefulWidget {
  const PageViewHomeWidget({Key? key}) : super(key: key);

  @override
  State<PageViewHomeWidget> createState() => _PageViewHomeWidgetState();
}

class _PageViewHomeWidgetState extends State<PageViewHomeWidget>
    with
        AutomaticKeepAliveClientMixin<PageViewHomeWidget>,
        SingleTickerProviderStateMixin {
  final RefreshController _refreshController =
      RefreshController(initialRefresh: false);
  late TabController _tabController;
  late PageController _pageController;

  int _c = 0;

  @override
  void initState() {
    _tabController = TabController(
      initialIndex: 0,
      length: 2,
      vsync: this,
    );
    _pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _refreshController.dispose();
    _tabController.dispose();
    _pageController.dispose();
    super.dispose();
  }

  void reBuild(int x) {
    setState(() {
      _c = x;
    });
  }

  void _onRefresh() async {
    // monitor network fetch
    await Future.delayed(const Duration(milliseconds: 1000));
    // if failed,use refreshFailed()
    _refreshController.refreshCompleted();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    //final double statusBarHeight = MediaQuery.of(context).padding.top;
    //final pinnedHeaderHeight =
    //statusBar height
    //  statusBarHeight; // +
    //kToolbarHeight;
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    final double pinnedHeaderHeight =
        //statusBar height
        statusBarHeight +
            //pinned SliverAppBar height in header
            kToolbarHeight;
    return Scaffold(
        appBar: AppBar(
          elevation: 0.3,
          backgroundColor: Colors.white,
          leading: const Icon(
            Icons.logo_dev_outlined,
            color: Colors.blue,
          ),
          title: const Text(
            "Home",
            style: TextStyle(color: Colors.blue),
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
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: Icon(
                Icons.notifications_outlined,
                size: 30.0,
                color: Colors.blue,
              ),
            ),
          ],
        ),
        body: ExtendedNestedScrollView(
          //onlyOneScrollInBody: true,
          //floatHeaderSlivers: true,
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverPersistentHeader(
                  pinned: true,
                  //floating: true,
                  delegate: DelegateHome()),
              SliverPersistentHeader(
                pinned: true,
                //floating: true,
                delegate: DelegateSearchForm(
                    tabController: _tabController,
                    pageController: _pageController,
                    onRebuild: reBuild),
              ),
              SliverOffstage(
                offstage: _c == 0 ? false : true,
                sliver: SliverPersistentHeader(
                    pinned: true,
                    //floating: true,
                    delegate: DelegateHome1()),
              ),
              SliverOffstage(
                offstage: _c == 0 ? true : false,
                sliver: SliverPersistentHeader(
                    pinned: true,
                    //floating: true,
                    delegate: DelegateHome2()),
              )
            ];
          },
          pinnedHeaderSliverHeightBuilder: () {
            return pinnedHeaderHeight;
          },
          onlyOneScrollInBody: true,
          body: PageView(
            controller: _pageController,
            onPageChanged: (c) {
              _tabController.animateTo(c);
              reBuild(c);
            },
            children: const [
              // CustomScrollView(
              //   slivers: [
              //     SliverPersistentHeader(
              //         //pinned: true,
              //         floating: true,
              //         delegate: DelegateHome1()),
              //   ],
              // ),
              // Padding(
              //   padding: const EdgeInsets.only(top: 25.0),
              //   child: Column(
              //     children: [
              //       Row(
              //         mainAxisAlignment: MainAxisAlignment.center,
              //         children: [
              //           Icon(Icons.dashboard_customize_outlined),
              //           SizedBox(
              //             width: 10,
              //           ),
              //           Text('Faktur Hari Ini Belum Lunas',
              //               style: TextStyle(fontSize: 17, color: Colors.blue)),
              //         ],
              //       ),
              //       SizedBox(
              //         height: 20,
              //       ),
              //       SearchFaktur()
              //     ],
              //   ),
              // ),
              tab1(),
              tab2(),
            ],
          ),
        ));
  }

  @override
  bool get wantKeepAlive => true;
}

class tab1 extends StatefulWidget {
  const tab1({
    Key? key,
  }) : super(key: key);

  @override
  State<tab1> createState() => _tab1State();
}

class _tab1State extends State<tab1> with AutomaticKeepAliveClientMixin<tab1> {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return ListView.builder(
      //store Page state
      key: const PageStorageKey<String>('Tab1'),
      physics: const ClampingScrollPhysics(),
      itemCount: faktur.length,
      itemBuilder: (BuildContext c, int i) {
        return Card(
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 20.0, bottom: 20.0),
            child: GestureDetector(
              onTap: () async {},
              child: Column(
                mainAxisSize: MainAxisSize.min,
                //mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //mainAxisSize: MainAxisSize.min,
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.document_scanner_outlined,
                        size: 50.0,
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Mr. ${faktur[i]["nama"]}",
                                style: const TextStyle(color: Colors.blue),
                              ),
                              const SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                "${faktur[i]["noReg"]}",
                                style: const TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16.0),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text("${faktur[i]["noFak"]}",
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
                              Text("${faktur[i]["tgl"]}",
                                  style: const TextStyle(
                                    decoration: TextDecoration.underline,
                                  )),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "#Rp.${faktur[i]["rp"]}",
                        style: const TextStyle(fontSize: 17.0),
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: Column(
                          children: const [
                            Icon(
                              Icons.euro_symbol_outlined,
                              //size: 30.0,
                            ),
                            Text(
                              "View",
                              style:
                                  TextStyle(fontSize: 13.0, color: Colors.blue),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  bool get wantKeepAlive => true;
}

class tab2 extends StatefulWidget {
  const tab2({
    Key? key,
  }) : super(key: key);

  @override
  State<tab2> createState() => tab2State();
}

class tab2State extends State<tab2> with AutomaticKeepAliveClientMixin<tab2> {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return ListView.builder(
      //store Page state
      key: const PageStorageKey<String>('Tab1'),
      physics: const ClampingScrollPhysics(),
      itemCount: inventory.length,
      itemBuilder: (BuildContext c, int i) {
        return Card(
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 20.0, bottom: 20.0),
            child: GestureDetector(
              onTap: () async {},
              child: Column(
                mainAxisSize: MainAxisSize.min,
                //mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //mainAxisSize: MainAxisSize.min,
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.document_scanner_outlined,
                        size: 50.0,
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Mr. ${inventory[i]["kode"]}",
                            style: const TextStyle(color: Colors.blue),
                          ),
                          Text(
                            "Mr. ${inventory[i]["nama"]}",
                            style: const TextStyle(color: Colors.blue),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Wrap(
                    children: [
                      Text("${inventory[i]["tipe"]}",
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
                      Text("Harga Rp. ${inventory[i]["rp"]}",
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
                      Text("Disc ${inventory[i]["disc"]}",
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
                      Text("Stok ${inventory[i]["stok"]}",
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
      },
    );
  }

  @override
  bool get wantKeepAlive => true;
}

class DelegateHome extends SliverPersistentHeaderDelegate {
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
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      side: const BorderSide(
                          width: 2, color: Color.fromARGB(255, 16, 53, 218)),
                      primary: const Color.fromARGB(255, 73, 69, 103),
                      onPrimary: const Color.fromARGB(255, 14, 142, 33),
                      shape: const CircleBorder(),
                      minimumSize: const Size(20, 20)
                      //padding: EdgeInsets.fromLTRB(0, 0, 0, 0)
                      ),
                  child: const Icon(
                    Icons.add,
                    size: 25,
                    color: Color.fromARGB(255, 13, 77, 203),
                  ),
                  onPressed: () {},
                ),
                const Text(
                  "Modal Kasir",
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
                const Icon(Icons.person),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "User,",
                      style: TextStyle(fontSize: 12),
                    ),
                    Text("Mr. Cemang", style: TextStyle(fontSize: 12)),
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

class DelegateSearchForm extends SliverPersistentHeaderDelegate {
  final TabController tabController;
  final PageController pageController;
  final Function(int) onRebuild;
  DelegateSearchForm(
      {required this.tabController,
      required this.pageController,
      required this.onRebuild});
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Color.fromARGB(255, 250, 251, 251),
      child: TabBar(
          onTap: (c) {
            pageController.jumpToPage(c);
            onRebuild(c);
          },
          indicatorColor: Colors.blue,
          // labelPadding: const EdgeInsets.only(
          //   bottom: 16,
          // ),
          controller: tabController,
          tabs: [
            Center(
                child: Row(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Icon(
                  Icons.document_scanner_outlined,
                  color: Colors.blue,
                ),
                SizedBox(
                  width: 10,
                ),
                Text("Faktur", style: TextStyle(color: Colors.blue)),
              ],
            )),
            Center(
                child: Row(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Icon(
                  Icons.document_scanner_outlined,
                  color: Colors.blue,
                ),
                SizedBox(
                  width: 10,
                ),
                Text("Inventory", style: TextStyle(color: Colors.blue)),
              ],
            )),
          ]),
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

class DelegateHome1 extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Color.fromARGB(255, 250, 251, 251),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.dashboard_customize_outlined),
              SizedBox(
                width: 10,
              ),
              Text('Faktur Hari Ini Belum Lunas',
                  style: TextStyle(fontSize: 17, color: Colors.blue)),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const SearchFaktur()
        ],
      ),
    );
  }

  @override
  double get maxExtent => 130;

  @override
  double get minExtent => 130;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}

class DelegateHome2 extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Color.fromARGB(255, 250, 251, 251),
      child: Padding(
        padding: const EdgeInsets.only(top: 25.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.dashboard_customize_outlined),
                SizedBox(
                  width: 10,
                ),
                Text('Inventory Tersedia',
                    style: TextStyle(fontSize: 17, color: Colors.blue)),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const SearchInventory()
          ],
        ),
      ),
    );
  }

  @override
  double get maxExtent => 130;

  @override
  double get minExtent => 130;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
