import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../config/tab_config.dart';
import '../cubit/bottom_navigation_bar/bottom_navigation_bar_cubit.dart';

class PageViewWidget extends StatefulWidget {
  final Map<TabItem, GlobalKey<NavigatorState>> navigatorKeys;
  const PageViewWidget({Key? key, required this.navigatorKeys})
      : super(key: key);
  @override
  PageViewWidgetState createState() => PageViewWidgetState();
}

class PageViewWidgetState extends State<PageViewWidget> {
  final PageController pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<BottomNavigationBarCubit, BottomNavigationBarState>(
        listenWhen: (previousState, state) {
          if (previousState.currentTabItem != state.currentTabItem) {
            return true;
          }
          return false;
        },
        listener: (context, state) {
          pageController.jumpToPage(state.currentTabItem!);
        },
        child: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: pageController,
          children: [
            Container()
            // PageViewHomeScreen(
            //     navigatorKey: widget.navigatorKeys[TabItem.home]!,
            //     tabItem: TabItem.home),
            // PageViewSearchScreen(
            //     navigatorKey: widget.navigatorKeys[TabItem.search]!,
            //     tabItem: TabItem.search),
            // PageViewFavouriteScreen(
            //     navigatorKey: widget.navigatorKeys[TabItem.favourite]!,
            //     tabItem: TabItem.favourite),
            // PageViewNotificationScreen(
            //     navigatorKey: widget.navigatorKeys[TabItem.notification]!,
            //     tabItem: TabItem.notification),
            // PageViewProfileScreen(
            //     navigatorKey: widget.navigatorKeys[TabItem.profile]!,
            //     tabItem: TabItem.profile),
          ],
        ));
  }
}
