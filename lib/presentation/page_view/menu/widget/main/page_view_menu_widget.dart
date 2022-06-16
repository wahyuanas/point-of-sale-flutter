import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class PageViewMenuWidget extends StatefulWidget {
  const PageViewMenuWidget({Key? key}) : super(key: key);

  @override
  State<PageViewMenuWidget> createState() => _PageViewMenuWidgetState();
}

class _PageViewMenuWidgetState extends State<PageViewMenuWidget>
    with AutomaticKeepAliveClientMixin<PageViewMenuWidget> {
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
            statusBarColor: Colors.blue,

            // Status bar brightness (optional)
            statusBarIconBrightness:
                Brightness.dark, // For Android (dark icons)
            statusBarBrightness: Brightness.light, // For iOS (dark icons)
          ),
          backgroundColor: Colors.blue,
          title: Builder(builder: (context) {
            return const Text("MENU");
          })),
      body: const Center(child: Text('MENU')),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
