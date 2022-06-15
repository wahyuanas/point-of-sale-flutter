import 'package:flutter/material.dart';
import 'package:pos/presentation/page_view/expense/widget/main/page_view_expanse_widget.dart';
import 'package:pos/presentation/page_view/main/config/tab_config.dart';

class PageViewExpanseScreen extends StatefulWidget {
  final GlobalKey<NavigatorState> navigatorKey;

  final TabItem tabItem;
  const PageViewExpanseScreen(
      {Key? key, required this.navigatorKey, required this.tabItem})
      : super(key: key);
  @override
  PageViewExpanseScreenState createState() => PageViewExpanseScreenState();
}

class PageViewExpanseScreenState extends State<PageViewExpanseScreen> {
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
            builder: (context) => const PageViewExpanseWidget());
      },
    );
  }
}
