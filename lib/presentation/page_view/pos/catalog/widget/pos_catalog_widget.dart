import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pos/presentation/utils/colors.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../cubit/pos_catalog_cubit.dart';
import 'pos_catalog_card_widget.dart';

class PosCatalogWidget extends StatefulWidget {
  const PosCatalogWidget({Key? key}) : super(key: key);

  @override
  State<PosCatalogWidget> createState() => _PosCatalogWidgetState();
}

class _PosCatalogWidgetState extends State<PosCatalogWidget> {
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
          centerTitle: true,
          elevation: 0.3,
          backgroundColor: Colors.white,
          // leading: GestureDetector(
          //   child: const Padding(
          //     padding: EdgeInsets.only(left: 8.0),
          //     child: Icon(
          //       Icons.arrow_back_outlined,
          //       color: Colors.blue,
          //     ),
          //   ),
          //   onTap: () => Navigator.of(context).pop(),
          // ),
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
          actions: [
            GestureDetector(
              child: const Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: Icon(
                  Icons.done_outlined,
                  size: 35,
                  color: Colors.blue,
                ),
              ),
              onTap: () => Navigator.of(context).pop(),
            ),
          ],
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
            BlocBuilder<PosCatalogCubit, PosCatalogState>(
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
                        return PosCatalogCardWidget(item: state.items![index]);
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
      color: const Color.fromARGB(255, 253, 254, 254),
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
  bool _textFilled = false;
  late FocusNode _focusNode;

  @override
  void initState() {
    _controller = TextEditingController();
    _focusNode = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
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
          focusNode: _focusNode,
          onChanged: ((value) {
            context.read<PosCatalogCubit>().onSearchKeyChanged(value);
            if (value.isNotEmpty) {
              if (_textFilled == false) {
                setState(() {
                  _textFilled = true;
                });
              }
            } else {
              if (_textFilled == true) {
                setState(() {
                  _textFilled = false;
                });
              }
            }
          }),
          onTap: () async {},
          controller: _controller,
          //autofocus: true,
          textInputAction: TextInputAction.search,
          decoration: InputDecoration(
            suffixIcon: _textFilled
                ? GestureDetector(
                    onTap: () {
                      _controller.text = "";
                      FocusScope.of(context).requestFocus(_focusNode);

                      context.read<PosCatalogCubit>().onReset();
                      setState(() {
                        _textFilled = false;
                      });
                    },
                    child: const Icon(
                      Icons.close,
                      size: 23,
                    ))
                : null,

            filled: true,
            fillColor: Colors.white,
            hintText: "Cari Item...",
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
