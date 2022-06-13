import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../config/tab_config.dart';
import '../../cubit/bottom_navigation_bar/bottom_navigation_bar_cubit.dart';
import 'tab_item.dart';

class BottomAppBarWidget extends StatefulWidget {
  const BottomAppBarWidget({Key? key, required this.onTapItemNavigationBar})
      : super(key: key);

  final ValueChanged<int> onTapItemNavigationBar;

  @override
  BottomAppBarWidgetState createState() => BottomAppBarWidgetState();
}

class BottomAppBarWidgetState extends State<BottomAppBarWidget> {
  @override
  void initState() {
    super.initState();
  }

  List<Widget>? _buildWidget(BottomNavigationBarState state) {
    List<Widget> tabWidget = [];
    tabList.map((e) {
      tabWidget.add(TabItemWidget(
          text: tabName[e]!,
          icon: tabIcon[e]!,
          isSelected: state.currentTabItem == tabIndex[e],
          onTap: () {
            widget.onTapItemNavigationBar(tabIndex[e]!);
          }));
    }).toList();

    return tabWidget;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 5.0, left: 5.0),
      child: Container(
          height: 51,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
              width: 0.1,
            ),

            //color: Colors.green,
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(25.0),
              topLeft: Radius.circular(25.0),
            ),
          ),
          child: ClipRRect(
            // borderRadius: BorderRadius.only(
            //     topLeft: Radius.circular(25), topRight: Radius.circular(25)),
            // //BorderRadius.all(Radius.circular(30)),
            child: BlocListener<BottomNavigationBarCubit,
                BottomNavigationBarState>(
              listenWhen: (p, c) {
                if (p.every != c.every) {
                  return true;
                }
                return false;
              },
              listener: (context, state) {},
              child: BlocBuilder<BottomNavigationBarCubit,
                  BottomNavigationBarState>(buildWhen: (p, c) {
                if (p.currentTabItem != c.currentTabItem) {
                  return true;
                }
                return false;
              }, builder: (context, state) {
                return BottomAppBar(
                  //shape: CircularNotchedRectangle(),
                  //notchMargin: 12,
                  //color: Colors.blue,
                  //color: const Color(0xFFa0b0da),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: _buildWidget(state) ?? []),
                );
              }),
            ),
          )),
    );
  }
}
