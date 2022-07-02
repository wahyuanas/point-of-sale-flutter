import 'package:flutter/material.dart';
import 'package:pos/domain/catalog/item/entity/item.dart';
import 'package:pos/presentation/page_view/pos/catalog/form/screen/pos_catalog_form_screen.dart';
import 'package:pos/presentation/page_view/pos/catalog/item/screen/pos_catalog_item_detail_screen.dart';
import 'package:pos/presentation/page_view/pos/catalog/list/screen/pos_catalog_list_screen.dart';
import 'package:pos/presentation/page_view/pos/customer/list/screen/pos_customer_list_screen.dart';
import 'package:pos/presentation/page_view/pos/payment/screen/pos_payment_screen.dart';

import '../main/widget/pos_main_widget.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const PosMainWidget());
      case '/postCatalogList':
        return MaterialPageRoute(builder: (_) => const PosCatalogListScreen());
      case '/postCatalogform':
        return MaterialPageRoute(builder: (_) => const PosCatalogFormScreen());
      case '/purchase':
        return MaterialPageRoute(builder: (_) => const PosPaymentScreen());
      case '/posCatalogItemDetail':
        final item = settings.arguments as Item;
        return MaterialPageRoute(
            builder: (_) => PosCatalogItemDetailScreen(
                  item: item,
                ));
      case '/postCustomerList':
        return MaterialPageRoute(builder: (_) => const PosCustomerListScreen());

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(title: Builder(builder: (context) {
          return const Text("Error");
        })),
        body: const Center(
            child: Text(
                'Error page ini muncul karena route yang dituju tidak ditemukan')),
      );
    });
  }
}
