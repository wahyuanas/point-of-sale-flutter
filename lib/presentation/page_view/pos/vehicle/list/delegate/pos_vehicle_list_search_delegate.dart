import 'package:flutter/material.dart';

import '../widget/pos_vehicle_list_search_widget.dart';

class PosVehicleListSearchDelegate extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      height: 65.0,
      color: const Color.fromARGB(255, 253, 254, 254),
      child: const PosVehicleListSearchWidget(),
    );
  }

  @override
  double get maxExtent => 65;

  @override
  double get minExtent => 65;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
