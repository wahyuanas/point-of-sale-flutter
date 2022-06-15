import 'package:flutter/material.dart';
import 'package:pos/presentation/page_view/main/config/tab_config.dart';
import 'package:pos/presentation/page_view/pos/widget/main/page_view_pos_widget.dart';

class PageViewPosScreen extends StatefulWidget {
  final GlobalKey<NavigatorState> navigatorKey;

  final TabItem tabItem;
  const PageViewPosScreen(
      {Key? key, required this.navigatorKey, required this.tabItem})
      : super(key: key);
  @override
  PageViewPosScreenState createState() => PageViewPosScreenState();
}

class PageViewPosScreenState extends State<PageViewPosScreen> {
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
            builder: (context) => const PageViewPosWidget());
      },
    );
  }
}
