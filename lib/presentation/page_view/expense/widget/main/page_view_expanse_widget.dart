import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class PageViewExpanseWidget extends StatefulWidget {
  const PageViewExpanseWidget({Key? key}) : super(key: key);

  @override
  State<PageViewExpanseWidget> createState() => _PageViewExpanseWidgetState();
}

class _PageViewExpanseWidgetState extends State<PageViewExpanseWidget>
    with AutomaticKeepAliveClientMixin<PageViewExpanseWidget> {
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
            statusBarColor: Colors.brown,

            // Status bar brightness (optional)
            statusBarIconBrightness:
                Brightness.dark, // For Android (dark icons)
            statusBarBrightness: Brightness.light, // For iOS (dark icons)
          ),
          backgroundColor: Colors.brown,
          title: Builder(builder: (context) {
            return const Text("MENU");
          })),
      body: const Center(child: Text('EXPANSE')),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
