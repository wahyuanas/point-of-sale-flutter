import 'package:flutter/material.dart';
import 'package:pos/presentation/page_view/main/config/tab_config.dart';
import 'package:pos/presentation/page_view/menu/widget/main/page_view_menu_widget.dart';

class PageViewMenuScreen extends StatefulWidget {
  final GlobalKey<NavigatorState> navigatorKey;

  final TabItem tabItem;
  const PageViewMenuScreen(
      {Key? key, required this.navigatorKey, required this.tabItem})
      : super(key: key);
  @override
  PageViewMenuScreenState createState() => PageViewMenuScreenState();
}

class PageViewMenuScreenState extends State<PageViewMenuScreen> {
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
            builder: (context) => const PageViewMenuWidget());
      },
    );
  }
}
