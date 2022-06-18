import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pos/presentation/main/catalog/item/pos/cubit/catalog_item_pos_cubit.dart';
import 'package:pos/presentation/utils/colors.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import 'catalog_item_pos_list_card_widget.dart';

class CatalogItemPosListWidget extends StatefulWidget {
  const CatalogItemPosListWidget({Key? key}) : super(key: key);

  @override
  State<CatalogItemPosListWidget> createState() =>
      _CatalogItemPosListWidgetState();
}

class _CatalogItemPosListWidgetState extends State<CatalogItemPosListWidget> {
  final RefreshController _refreshController =
      RefreshController(initialRefresh: false);

  void _onRefresh() async {
    // monitor network fetch
    await Future.delayed(const Duration(milliseconds: 1000));
    // if failed,use refreshFailed()
    _refreshController.refreshCompleted();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          titleSpacing: 0.0,
          elevation: 0.3,
          backgroundColor: Colors.white,
          leading: GestureDetector(
            child: const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Icon(
                Icons.arrow_back_outlined,
                color: Colors.blue,
              ),
            ),
            onTap: () => Navigator.of(context).pop(),
          ),
          title: const Text(
            "List Item",
            style: TextStyle(color: Colors.blue),
          ),
          systemOverlayStyle: const SystemUiOverlayStyle(
            systemNavigationBarColor: Colors.blue, // navigation bar color
            statusBarColor: Colors.white, // status bar color
            statusBarBrightness: Brightness.dark, //status bar brigtness
            statusBarIconBrightness:
                Brightness.dark, //status barIcon Brightness
            systemNavigationBarDividerColor:
                Colors.greenAccent, //Navigation bar divider color
            systemNavigationBarIconBrightness:
                Brightness.light, //navigation bar icon
          ),
        ),
        body: SmartRefresher(
          onRefresh: _onRefresh,
          enablePullDown: true,
          controller: _refreshController,
          child: CustomScrollView(slivers: [
            SliverPersistentHeader(
                pinned: true,
                //floating: true,
                delegate: DelegateCatalogItemPosList()),
            BlocBuilder<CatalogItemPosCubit, CatalogItemPosState>(
                builder: (context, state) {
              return state.items == null
                  ? SliverFillRemaining(
                      child: Center(
                        child: Text(
                          "Tidak ada item",
                          style: GoogleFonts.raleway(
                              fontSize: 20, color: Colors.blue),
                        ),
                      ),
                    )
                  : SliverList(
                      delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        return CatalogItemPosListCardWidget(
                            item: state.items![index]);
                      },
                      childCount: state.items?.length, // 1000 list items
                    ));
            })
          ]),
        ));
  }
}

class DelegateCatalogItemPosList extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      height: 65.0,
      color: Color.fromARGB(255, 253, 254, 254),
      child: const CatalogItemPosListSearchWidget(),
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

class CatalogItemPosListSearchWidget extends StatefulWidget {
  const CatalogItemPosListSearchWidget({Key? key}) : super(key: key);

  @override
  State<CatalogItemPosListSearchWidget> createState() =>
      _CatalogItemPosListSearchWidgetState();
}

class _CatalogItemPosListSearchWidgetState
    extends State<CatalogItemPosListSearchWidget> {
  late TextEditingController _controller;

  @override
  void initState() {
    _controller = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Form(
          child: SizedBox(
        height: 60,
        child: TextFormField(
          onTap: () async {},
          controller: _controller,
          //autofocus: true,
          textInputAction: TextInputAction.search,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            hintText: "Cari...",
            //hintTextDirection: TextDirection.ltr,
            alignLabelWithHint: true,
            hintStyle: const TextStyle(fontSize: 13.0),
            isDense: true,
            contentPadding:
                const EdgeInsets.only(top: 15), // control your hints text size
            //contentPadding: const EdgeInsets.symmetric(vertical: 10),
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              borderSide: BorderSide(
                  color: AppColors.searchBorderSideColor, width: 0.5),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                  color: AppColors.searchBorderSideColor, width: 0.5),
              borderRadius: BorderRadius.circular(15.0),
            ),
            focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              borderSide: BorderSide(
                  color: AppColors.searchBorderSideColor, width: 0.5),
            ),
            errorBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              borderSide: BorderSide.none,
            ),
            prefixIcon: const Padding(
              padding: EdgeInsets.only(bottom: 12, top: 10),
              child: Icon(Icons.search_outlined

                  // SvgPicture.asset(
                  //   "assets/icons/Search.svg",
                  // ),
                  ),
            ),
          ),
        ),
      )),
    );
  }
}
