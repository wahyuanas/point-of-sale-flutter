import 'package:flutter/material.dart';
import 'package:showcaseview/showcaseview.dart';

import '../widget/pos_main_action_widget.dart';

class PosMainActionDelegate extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return ShowCaseWidget(
      onFinish: () {
        Navigator.pop(context);
      },
      onStart: (index, key) {},
      builder: Builder(builder: (context) => const PosMainActionWidget()),
    );
  }

  @override
  double get maxExtent => 80;

  @override
  double get minExtent => 80;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
