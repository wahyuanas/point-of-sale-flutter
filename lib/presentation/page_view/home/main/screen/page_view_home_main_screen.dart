import 'package:flutter/material.dart';
import 'package:pos/presentation/page_view/main/config/tab_config.dart';

import '../widget/page_view_home_main_widget.dart';

class PageViewHomeMainScreen extends StatefulWidget {
  final GlobalKey<NavigatorState> navigatorKey;

  final TabItem tabItem;
  const PageViewHomeMainScreen(
      {Key? key, required this.navigatorKey, required this.tabItem})
      : super(key: key);
  @override
  PageViewHomeMainScreenState createState() => PageViewHomeMainScreenState();
}

class PageViewHomeMainScreenState extends State<PageViewHomeMainScreen> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: widget.navigatorKey,
      initialRoute: "/",
      onGenerateRoute: (routeSettings) {
        return MaterialPageRoute(
            builder: (context) => const PageViewHomeMainWidget());
      },
    );
  }
}
