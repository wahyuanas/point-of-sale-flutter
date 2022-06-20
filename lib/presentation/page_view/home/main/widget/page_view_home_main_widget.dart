import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:extended_nested_scroll_view/extended_nested_scroll_view.dart';

import 'page_view_home_main_inventory_tab_widget.dart';
import 'page_view_home_main_order_tab_widget.dart';

import '../delegate/page_view_home_main_header_delegate.dart';
import '../delegate/page_view_home_main_inventory_search_delegate.dart';
import '../delegate/page_view_home_main_order_search_delegate.dart';
import '../delegate/page_view_home_main_tab_delegate.dart';

class PageViewHomeMainWidget extends StatefulWidget {
  const PageViewHomeMainWidget({Key? key}) : super(key: key);

  @override
  State<PageViewHomeMainWidget> createState() => _PageViewHomeMainWidgetState();
}

class _PageViewHomeMainWidgetState extends State<PageViewHomeMainWidget>
    with
        AutomaticKeepAliveClientMixin<PageViewHomeMainWidget>,
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
                  delegate: PageViewHomeMainHeaderDelegate()),
              SliverPersistentHeader(
                pinned: true,
                //floating: true,
                delegate: PageViewHomeMainTabDelegate(
                    tabController: _tabController,
                    pageController: _pageController,
                    onRebuild: reBuild),
              ),
              SliverOffstage(
                offstage: _c == 0 ? false : true,
                sliver: SliverPersistentHeader(
                    pinned: true,
                    //floating: true,
                    delegate: PageViewHomeMainOrderSearchDelegate()),
              ),
              SliverOffstage(
                offstage: _c == 0 ? true : false,
                sliver: SliverPersistentHeader(
                    pinned: true,
                    //floating: true,
                    delegate: PageViewHomeMainInventorySearchDelegate()),
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
              //       PageViewHomeMainOrderSearch()
              //     ],
              //   ),
              // ),
              PageViewHomeMainOrderTabWidget(),
              PageViewHomeMainInventoryTabWidget(),
            ],
          ),
        ));
  }

  @override
  bool get wantKeepAlive => true;
}
