import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:showcaseview/showcaseview.dart';

import '../config/tab_config.dart';
import '../cubit/bottom_navigation_bar/bottom_navigation_bar_cubit.dart';
import '../widget/bottom_navigation_bar/bottom_navigation_bar_widget.dart';
import '../widget/page_view_main_widget.dart';

class PageViewMainScreen extends StatefulWidget {
  const PageViewMainScreen({Key? key}) : super(key: key);

  @override
  PageViewMainScreenState createState() => PageViewMainScreenState();
}

class PageViewMainScreenState extends State<PageViewMainScreen> {
  TabItem _currentTab = TabItem.home;
  late Map<TabItem, GlobalKey<NavigatorState>> _navigatorKeys;

  @override
  void initState() {
    //BlocProvider.of<CategoryCubit>(context).onStarted();
    _navigatorKeys = {
      TabItem.home: GlobalKey<NavigatorState>(),
      TabItem.pos: GlobalKey<NavigatorState>(),
      TabItem.expense: GlobalKey<NavigatorState>(),
      TabItem.menu: GlobalKey<NavigatorState>(),
    };

    super.initState();
  }

  void _onTapItemBottomNavigationBar(int tabItem) {
    ModalRoute.of(context)
        ?.addLocalHistoryEntry(LocalHistoryEntry(onRemove: () {
      BlocProvider.of<BottomNavigationBarCubit>(context)
          .setCurrentTabItem(value: tabItem);
    }));
    // final currentTabItem =
    //     BlocProvider.of<BottomNavigationBarCubit>(context).state.currentTabItem;
    // if (currentTabItem != tabItem) {
    //   BlocProvider.of<BottomNavigationBarCubit>(context)
    //       .setCurrentTabItem(value: tabItem);
    //   ModalRoute.of(context)
    //       ?.addLocalHistoryEntry(LocalHistoryEntry(onRemove: () {
    //     BlocProvider.of<BottomNavigationBarCubit>(context)
    //         .setCurrentTabItem(value: currentTabItem);
    //   }));
    // } else {}
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        //ShowCaseWidget.of(context).dismiss();
        final idxTab = BlocProvider.of<BottomNavigationBarCubit>(context)
            .state
            .currentTabItem;
        _currentTab = indexTab[idxTab] ?? _currentTab;
        final isFirstRouteInCurrentTab =
            _navigatorKeys[_currentTab]?.currentState?.canPop();
        if (isFirstRouteInCurrentTab != null) {
          if (isFirstRouteInCurrentTab) {
            _navigatorKeys[_currentTab]?.currentState?.pop();
            return false;
          }
        }
        return true;
      },
      child: Scaffold(
        body: PageViewMainWidget(navigatorKeys: _navigatorKeys),
        bottomNavigationBar:
            BlocBuilder<BottomNavigationBarCubit, BottomNavigationBarState>(
                builder: (context, state) {
          return BottomNavigationBarWdget(
              onTapItemBottomNavigationBar: _onTapItemBottomNavigationBar);
        }),
      ),
    );
  }
}
