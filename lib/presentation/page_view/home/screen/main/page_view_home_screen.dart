import 'package:flutter/material.dart';
import 'package:pos/presentation/page_view/home/widget/main/page_view_home_widget.dart';
import 'package:pos/presentation/page_view/main/config/tab_config.dart';

class PageViewHomeScreen extends StatefulWidget {
  final GlobalKey<NavigatorState> navigatorKey;

  final TabItem tabItem;
  const PageViewHomeScreen(
      {Key? key, required this.navigatorKey, required this.tabItem})
      : super(key: key);
  @override
  PageViewHomeScreenState createState() => PageViewHomeScreenState();
}

class PageViewHomeScreenState extends State<PageViewHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: widget.navigatorKey,
      initialRoute: "/",
      onGenerateRoute: (routeSettings) {
        return MaterialPageRoute(
            builder: (context) => const PageViewHomeWidget());
      },
    );
  }
}
