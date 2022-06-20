import 'package:flutter/material.dart';

class HomeMainTabDelegate extends SliverPersistentHeaderDelegate {
  final TabController tabController;
  final PageController pageController;
  final Function(int) onRebuild;
  HomeMainTabDelegate(
      {required this.tabController,
      required this.pageController,
      required this.onRebuild});
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: const Color.fromARGB(255, 250, 251, 251),
      child: TabBar(
          onTap: (c) {
            pageController.jumpToPage(c);
            onRebuild(c);
          },
          indicatorColor: Colors.blue,
          // labelPadding: const EdgeInsets.only(
          //   bottom: 16,
          // ),
          controller: tabController,
          tabs: [
            Center(
                child: Row(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Icon(
                  Icons.content_copy_outlined,
                  color: Colors.blue,
                ),
                SizedBox(
                  width: 10,
                ),
                Text("Faktur", style: TextStyle(color: Colors.blue)),
              ],
            )),
            Center(
                child: Row(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Icon(
                  Icons.inventory_outlined,
                  color: Colors.blue,
                ),
                SizedBox(
                  width: 10,
                ),
                Text("Inventory", style: TextStyle(color: Colors.blue)),
              ],
            )),
          ]),
    );
  }

  @override
  double get maxExtent => 50;

  @override
  double get minExtent => 50;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
