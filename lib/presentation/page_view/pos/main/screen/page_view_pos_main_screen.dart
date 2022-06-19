import 'package:flutter/material.dart';
import 'package:pos/presentation/page_view/main/config/tab_config.dart';

import '../widget/page_view_pos_main_widget.dart';

class PageViewPosMainScreen extends StatefulWidget {
  final GlobalKey<NavigatorState> navigatorKey;

  final TabItem tabItem;
  const PageViewPosMainScreen(
      {Key? key, required this.navigatorKey, required this.tabItem})
      : super(key: key);
  @override
  PageViewPosMainScreenState createState() => PageViewPosMainScreenState();
}

class PageViewPosMainScreenState extends State<PageViewPosMainScreen> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: widget.navigatorKey,
      initialRoute: "/",
      onGenerateRoute: (routeSettings) {
        return MaterialPageRoute(
            builder: (context) => const PageViewPosMainWidget());
      },
    );
  }
}
