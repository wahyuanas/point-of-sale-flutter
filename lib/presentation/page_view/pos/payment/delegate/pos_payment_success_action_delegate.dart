import 'package:flutter/material.dart';

class PosPaymentSuccessActionDelegate extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: Row(
        children: [
          const Spacer(),
          GestureDetector(
            onTap: () => Navigator.of(context).pop(),
            child: Card(
              shape: RoundedRectangleBorder(
                  side: const BorderSide(color: Colors.blue, width: 0.5),
                  borderRadius: BorderRadius.circular(10.0)),
              child: SizedBox(
                height: 100,
                width: 130,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.double_arrow_outlined,
                      color: Colors.blue,
                      size: 50,
                    ),
                    Text(
                      "Next Order",
                      style: TextStyle(
                          fontSize: 15,
                          //fontWeight: FontWeight.w500,
                          color: Colors.blue),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  double get maxExtent => 100;

  @override
  double get minExtent => 100;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
