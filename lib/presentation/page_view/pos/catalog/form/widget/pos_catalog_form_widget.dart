import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/presentation/main/catalog/form/create/cubit/catalog_form_create_cubit.dart';

import 'pos_catalog_form_export_widget.dart';

class PosCatalogFormWidget extends StatelessWidget {
  const PosCatalogFormWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0.0,
        //centerTitle: true,
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
        // leading: GestureDetector(
        //   child: const Padding(
        //     padding: EdgeInsets.only(right: 20.0),
        //     child: Icon(
        //       Icons.add_circle_outline,
        //       size: 35,
        //       color: Colors.blue,
        //     ),
        //   ),
        //   onTap: () => const PosCatalogFormWidget(),
        // ),
        title: const Text(
          "Form Tambah Item",
          style: TextStyle(color: Colors.blue, fontSize: 17.0),
        ),
        systemOverlayStyle: const SystemUiOverlayStyle(
          systemNavigationBarColor: Colors.blue, // navigation bar color
          statusBarColor: Colors.white, // status bar color
          statusBarBrightness: Brightness.dark, //status bar brigtness
          statusBarIconBrightness: Brightness.dark, //status barIcon Brightness
          systemNavigationBarDividerColor:
              Colors.greenAccent, //Navigation bar divider color
          systemNavigationBarIconBrightness:
              Brightness.light, //navigation bar icon
        ),
        actions: [
          // GestureDetector(
          //   child: const Padding(
          //     padding: EdgeInsets.only(right: 20.0),
          //     child: Icon(
          //       Icons.done_outlined,
          //       size: 35,
          //       color: Colors.blue,
          //     ),
          //   ),
          //   onTap: () => Navigator.of(context).pop(),
          // ),
        ],
      ),
      body: CustomScrollView(slivers: [
        PosCatalogFormCodeWidget(),
        PosCatalogFormBarcodeWidget(),
        PosCatalogFormNameWidget(),
        PosCatalogFormDescriptionWidget(),
        PosCatalogFormSellPriceWidget(),
        //PosCatalogFormSellDiscWidget(),
        PosCatalogFormPurchasePriceWidget(),
        //PosCatalogFormPurchaseDiscWidget(),
        PosCatalogFormStockWidget(),
        PosCatalogFormCategoryWidget(),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 20.0,
          ),
        ),
        const PosCatalogFormImageWidget(),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 30.0,
          ),
        ),
        SliverToBoxAdapter(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            //color: Colors.blue[300],
            margin: EdgeInsets.symmetric(vertical: 1),
            height: 50.0,
            width: MediaQuery.of(context).size.width * 0.95,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(29),
              child: ElevatedButton(
                onPressed: () async {
                  context.read<CatalogFormCreateCubit>().onCreate();
                },
                child: const Text(
                  "S i m p a n",
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
            ),
          ),
        )),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 50.0,
          ),
        ),
      ]),
    );
  }
}
