import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pos/presentation/utils/colors.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../cubit/pos_catalog_list_cubit.dart';
import '../delegate/pos_catalog_list_search_delegate.dart';
import 'pos_catalog_list_card_widget.dart';

class PosCatalogListWidget extends StatefulWidget {
  const PosCatalogListWidget({Key? key}) : super(key: key);

  @override
  State<PosCatalogListWidget> createState() => _PosCatalogListWidgetState();
}

class _PosCatalogListWidgetState extends State<PosCatalogListWidget> {
  final RefreshController _refreshController =
      RefreshController(initialRefresh: false);

  @override
  void initState() {
    super.initState();
  }

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
          leading: GestureDetector(
            child: const Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: Icon(
                Icons.add_circle_outline,
                size: 35,
                color: Colors.blue,
              ),
            ),
            onTap: () {
              //context.read<CatalogFormCubit>().onCreateItemCodeChanged('oke');
            }, //PosCatalogFormScreen(),
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
                delegate: PosCatalogListSearchDelegate()),
            BlocBuilder<PosCatalogListCubit, PosCatalogListState>(
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
                        return PosCatalogListCardWidget(
                            item: state.items![index]);
                      },
                      childCount: state.items?.length, // 1000 list items
                    ));
            })
          ]),
        ));
  }
}
