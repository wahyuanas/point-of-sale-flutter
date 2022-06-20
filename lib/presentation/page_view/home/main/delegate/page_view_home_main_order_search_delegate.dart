import 'package:flutter/material.dart';

import '../widget/page_view_home_main_order_search.dart.dart';

class PageViewHomeMainOrderSearchDelegate
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
            children: [
              const Icon(
                Icons.content_copy_outlined,
                color: Colors.blue,
                size: 50,
              ),
              const SizedBox(
                width: 10,
              ),
              Flexible(
                child: Wrap(
                  alignment: WrapAlignment.center,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: const [
                    Text(
                      "Faktur Hari Ini Belum Lunas ",
                      style: TextStyle(fontSize: 17, color: Colors.blue),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const PageViewHomeMainOrderSearch()
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
