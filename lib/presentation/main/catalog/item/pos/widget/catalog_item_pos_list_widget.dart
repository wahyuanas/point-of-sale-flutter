import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pos/presentation/main/catalog/item/pos/cubit/catalog_item_pos_cubit.dart';

import 'catalog_item_pos_list_card_widget.dart';

class CatalogItemPosListWidget extends StatefulWidget {
  const CatalogItemPosListWidget({Key? key}) : super(key: key);

  @override
  State<CatalogItemPosListWidget> createState() =>
      _CatalogItemPosListWidgetState();
}

class _CatalogItemPosListWidgetState extends State<CatalogItemPosListWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.3,
          backgroundColor: Colors.white,
          leading: const Icon(
            Icons.logo_dev_outlined,
            color: Colors.blue,
          ),
          title: const Text(
            "List item",
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
        body: CustomScrollView(slivers: [
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
        ]));
  }
}
