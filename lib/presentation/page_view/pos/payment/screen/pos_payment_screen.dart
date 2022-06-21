import 'package:flutter/material.dart';
import 'package:pos/presentation/page_view/main/config/tab_config.dart';

class PosPaymentScreen extends StatefulWidget {
  final GlobalKey<NavigatorState> navigatorKey;

  final TabItem tabItem;
  const PosPaymentScreen(
      {Key? key, required this.navigatorKey, required this.tabItem})
      : super(key: key);
  @override
  PosPaymentScreenState createState() => PosPaymentScreenState();
}

class PosPaymentScreenState extends State<PosPaymentScreen> {
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
            builder: (context) => const PosPaymentWidget());
      },
    );
  }
}
