import 'package:flutter/material.dart';

import '../widget/page_view_home_main_inventory_search.dart.dart';

class PageViewHomeMainInventorySearchDelegate
    extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: const Color.fromARGB(255, 250, 251, 251),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                Icons.inventory_2_outlined,
                color: Colors.blue,
                size: 50,
              ),
              SizedBox(
                width: 10,
              ),
              Text('Inventory Tersedia',
                  style: TextStyle(fontSize: 17, color: Colors.blue)),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const PageViewHomeMainInventorySearch()
        ],
      ),
    );
  }

  @override
  double get maxExtent => 140;

  @override
  double get minExtent => 140;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
