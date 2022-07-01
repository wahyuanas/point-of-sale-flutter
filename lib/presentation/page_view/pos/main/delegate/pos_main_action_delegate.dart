import 'package:flutter/material.dart';
import 'package:flutter_intro/flutter_intro.dart';

import '../widget/pos_main_action_widget.dart';

class PosMainActionDelegate extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Intro(
        padding: EdgeInsets.zero,
        borderRadius: const BorderRadius.all(Radius.circular(5)),
        maskColor: const Color.fromRGBO(0, 0, 0, .6),
        buttonTextBuilder: (order) => order == 3 ? 'OK' : 'Next',
        child: const PosMainActionWidget());
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
