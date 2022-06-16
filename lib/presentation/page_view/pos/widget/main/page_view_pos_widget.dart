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
      appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle(
            // Status bar color
            statusBarColor: Colors.green,

            // Status bar brightness (optional)
            statusBarIconBrightness:
                Brightness.dark, // For Android (dark icons)
            statusBarBrightness: Brightness.light, // For iOS (dark icons)
          ),
          backgroundColor: Colors.green,
          title: Builder(builder: (context) {
            return const Text("POS");
          })),
      body: const Center(child: Text('POS')),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
