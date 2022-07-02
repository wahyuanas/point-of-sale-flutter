import 'package:flutter/material.dart';
import 'package:pos/presentation/page_view/main/config/tab_config.dart';

import '../../routes/pos_app_routes.dart';

class PosMainScreen extends StatefulWidget {
  final GlobalKey<NavigatorState> navigatorKey;

  final TabItem tabItem;
  const PosMainScreen(
      {Key? key, required this.navigatorKey, required this.tabItem})
      : super(key: key);
  @override
  PosMainScreenState createState() => PosMainScreenState();
}

class PosMainScreenState extends State<PosMainScreen> {
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
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
