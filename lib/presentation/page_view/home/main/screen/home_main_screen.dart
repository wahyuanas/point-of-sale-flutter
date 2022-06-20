import 'package:flutter/material.dart';
import 'package:pos/presentation/page_view/main/config/tab_config.dart';

import '../widget/home_main_widget.dart';

class HomeMainScreen extends StatefulWidget {
  final GlobalKey<NavigatorState> navigatorKey;

  final TabItem tabItem;
  const HomeMainScreen(
      {Key? key, required this.navigatorKey, required this.tabItem})
      : super(key: key);
  @override
  HomeMainScreenState createState() => HomeMainScreenState();
}

class HomeMainScreenState extends State<HomeMainScreen> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: widget.navigatorKey,
      initialRoute: "/",
      onGenerateRoute: (routeSettings) {
        return MaterialPageRoute(builder: (context) => const HomeMainWidget());
      },
    );
  }
}
