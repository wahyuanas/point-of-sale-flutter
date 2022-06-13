import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/presentation/page_view/main/config/tab_config.dart';
import 'package:pos/presentation/page_view/main/cubit/bottom_navigation_bar/bottom_navigation_bar_cubit.dart';

class BottomNavigationBarWdget extends StatefulWidget {
  const BottomNavigationBarWdget(
      {Key? key, required this.onTapItemBottomNavigationBar})
      : super(key: key);

  final ValueChanged<int> onTapItemBottomNavigationBar;

  @override
  BottomNavigationBarWdgetState createState() =>
      BottomNavigationBarWdgetState();
}

class BottomNavigationBarWdgetState extends State<BottomNavigationBarWdget> {
  int _currentTabItem = 0;
  @override
  void initState() {
    super.initState();
  }

  List<BottomNavigationBarItem> _buildWidget(BottomNavigationBarState state) {
    List<BottomNavigationBarItem> widget = [];
    tabList.map((e) {
      widget.add(
          BottomNavigationBarItem(label: tabName[e]!, icon: Icon(tabIcon[e]!)));
    }).toList();

    return widget;
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<BottomNavigationBarCubit, BottomNavigationBarState>(
      listenWhen: (p, c) {
        if (p.every != c.every) {
          _currentTabItem = p.currentTabItem!;
          return true;
        }
        return false;
      },
      listener: (context, state) {
        widget.onTapItemBottomNavigationBar(_currentTabItem);
      },
      child: BlocBuilder<BottomNavigationBarCubit, BottomNavigationBarState>(
          buildWhen: (p, c) {
        if (p.currentTabItem != c.currentTabItem) {
          return true;
        }
        return false;
      }, builder: (context, state) {
        return BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: _buildWidget(state),
          onTap: (index) {
            if (state.currentTabItem != index) {
              final currentTabItem = state.currentTabItem;
              BlocProvider.of<BottomNavigationBarCubit>(context)
                  .setCurrentTabItem(value: index);
              widget.onTapItemBottomNavigationBar(currentTabItem!);
            }
          },
          currentIndex: state.currentTabItem!,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
        );
      }),
    );
  }
}
