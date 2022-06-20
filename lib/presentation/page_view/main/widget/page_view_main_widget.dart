import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/presentation/page_view/expense/screen/main/page_view_expanse_screen.dart';
import 'package:pos/presentation/page_view/home/main/screen/page_view_home_main_screen.dart';
import 'package:pos/presentation/page_view/menu/screen/main/page_view_menu_screen.dart';
import 'package:pos/presentation/page_view/pos/main/screen/page_view_pos_main_screen.dart';

import '../config/tab_config.dart';
import '../cubit/bottom_navigation_bar/bottom_navigation_bar_cubit.dart';

class PageViewMainWidget extends StatefulWidget {
  final Map<TabItem, GlobalKey<NavigatorState>> navigatorKeys;
  const PageViewMainWidget({Key? key, required this.navigatorKeys})
      : super(key: key);
  @override
  PageViewMainWidgetState createState() => PageViewMainWidgetState();
}

class PageViewMainWidgetState extends State<PageViewMainWidget> {
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
            PageViewHomeMainScreen(
                navigatorKey: widget.navigatorKeys[TabItem.home]!,
                tabItem: TabItem.home),
            PageViewPosMainScreen(
                navigatorKey: widget.navigatorKeys[TabItem.pos]!,
                tabItem: TabItem.pos),
            PageViewExpanseScreen(
                navigatorKey: widget.navigatorKeys[TabItem.expense]!,
                tabItem: TabItem.expense),
            PageViewMenuScreen(
                navigatorKey: widget.navigatorKeys[TabItem.menu]!,
                tabItem: TabItem.menu)
          ],
        ));
  }
}
