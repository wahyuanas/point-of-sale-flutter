import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'pos_catalog_form_export_widget.dart';

class PosCatalogFormWidget extends StatelessWidget {
  const PosCatalogFormWidget({Key? key}) : super(key: key);

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
          onTap: () => const PosCatalogFormWidget(),
        ),
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
      body: const CustomScrollView(slivers: [
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
      ]),
    );
  }
}
