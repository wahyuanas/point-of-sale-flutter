import 'package:flutter/material.dart';

class PageViewHomeMainHeaderDelegate extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      decoration: const BoxDecoration(
        //color: Colors.green,
        border: Border(
            bottom: BorderSide(
          color: Colors.blue,
          //width: 3.0,
        )),
      ),
      height: 100,
      //color: Color.fromARGB(255, 252, 254, 252),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8, 0, 12, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              shape: RoundedRectangleBorder(
                  side: const BorderSide(color: Colors.blue, width: 0.5),
                  borderRadius: BorderRadius.circular(10.0)),
              child: SizedBox(
                height: 60,
                width: 120,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.add_circle_outline,
                      color: Colors.blue,
                    ),
                    Text(
                      "Modal Kasir",
                      style: TextStyle(
                          fontSize: 13,
                          //fontWeight: FontWeight.w500,
                          color: Colors.blue),
                    )
                  ],
                ),
              ),
            ),
            const Spacer(),
            Row(
              children: [
                const Icon(
                  Icons.person_outline,
                  size: 40.0,
                  color: Colors.blue,
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "User,",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.blue,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "Mr. Anyone",
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.blue,
                          fontWeight: FontWeight.normal),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
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
