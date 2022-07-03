import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pos/presentation/common/cubit/intro/intro_cubit.dart';
import 'package:pos/presentation/page_view/pos/routes/cubit/pos_route_cubit.dart';
import 'package:pos/presentation/page_view/pos/routes/on_state/pos_on_route_state.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:flutter_intro/flutter_intro.dart';
import 'package:showcaseview/showcaseview.dart';

import '../cubit/pos_customer_list_cubit.dart';
import '../delegate/pos_customer_list_search_delegate.dart';
import 'pos_customer_list_card_widget.dart';

class PosCustomerListWidget extends StatefulWidget {
  const PosCustomerListWidget({Key? key}) : super(key: key);

  @override
  State<PosCustomerListWidget> createState() => _PosCustomerListWidgetState();
}

class _PosCustomerListWidgetState extends State<PosCustomerListWidget> {
  final RefreshController _refreshController =
      RefreshController(initialRefresh: false);
  final GlobalKey _one = GlobalKey();

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      //if (context.read<IntroCubit>().state.posCustomerList == false) {
      ShowCaseWidget.of(context).startShowCase([_one]);
      //context.read<IntroCubit>().onPosCustomerListChanged(true);
      //}
    });
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
          leading: Showcase(
            key: _one,
            description: "Tekan Tombol Tambah Untuk Menambah Data Konsumen",
            //shapeBorder: const CircleBorder(),
            // container: Column(
            //   crossAxisAlignment: CrossAxisAlignment.start,
            //   children: [
            //     Container(
            //         color: const Color.fromARGB(255, 255, 255, 255),
            //         child: const Text(
            //             "Tekan Tombol Tambah Untuk Menambah Data Konsumen")),
            //     const SizedBox(
            //       height: 10.0,
            //     ),
            //     GestureDetector(
            //         onTap: () {
            //           ShowCaseWidget.of(context).next();
            //         },
            //         child: Container(
            //             color: const Color.fromARGB(255, 255, 255, 255),
            //             child: const Text("next")))
            //   ],
            // ),
            // height: 40,
            // width: 40,
            child: GestureDetector(
                onTap: () {
                  context.read<PosRouteCubit>().onRoute(
                      const PosOnRouteState.posCustomerForm(
                          r: '/posCustomerform'),
                      null);
                },
                child: const Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Icon(
                    Icons.add_outlined,
                    size: 35,
                    color: Colors.blue,
                  ),
                ) //PosCatalogFormScreen(),
                ),
          ),

          title: const Text(
            "List Konsumen",
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
                //pinned: true,
                floating: true,
                delegate: PosCustomerListSearchDelegate()),
            BlocBuilder<PosCustomerListCubit, PosCustomerListState>(
                builder: (context, state) {
              if (state.customers == null) {
                return SliverFillRemaining(
                  child: Center(
                    child: Text(
                      "Tidak ada data konsumen",
                      style:
                          GoogleFonts.raleway(fontSize: 20, color: Colors.blue),
                    ),
                  ),
                );
              } else {
                return SliverPadding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  sliver: SliverList(
                      delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                      return PosCustomerListCardWidget(
                          customer: state.customers![index]);
                    },
                    childCount: state.customers?.length, // 1000 list customers
                  )),
                );
              }
            }),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 20.0,
              ),
            )
          ]),
        ));
  }
}
