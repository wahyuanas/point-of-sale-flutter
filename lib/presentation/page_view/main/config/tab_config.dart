import 'package:flutter/material.dart';

enum TabItem { home, pos, expense, menu }

final tabList = [TabItem.home, TabItem.pos, TabItem.expense, TabItem.menu];

final Map<TabItem, int> tabIndex = {
  TabItem.home: 0,
  TabItem.pos: 1,
  TabItem.expense: 2,
  TabItem.menu: 3
};

final Map<int, TabItem> indexTab = {
  0: TabItem.home,
  1: TabItem.pos,
  2: TabItem.expense,
  3: TabItem.menu,
};

final Map<TabItem, String> tabName = {
  TabItem.home: 'Home',
  TabItem.pos: 'Pos',
  TabItem.expense: 'Pengeluaran',
  TabItem.menu: 'Menu',
};

final Map<TabItem, IconData> tabIcon = {
  TabItem.home: Icons.home_outlined,
  TabItem.pos: Icons.post_add_outlined,
  TabItem.expense: Icons.outbox_outlined,
  TabItem.menu: Icons.menu_outlined
};

final Map<TabItem, MaterialColor> activeTabColor = {
  TabItem.home: Colors.brown,
  TabItem.pos: Colors.green,
  TabItem.expense: Colors.green,
  TabItem.menu: Colors.blue,
};
