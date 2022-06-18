import 'package:flutter/material.dart';
import 'package:pos/domain/account/entity/account.dart';
import 'package:pos/presentation/main/main_screen.dart';
import 'package:pos/presentation/main/sign/up/screen/sign_up_notif_screen.dart';
import 'package:pos/presentation/main/sign/up/screen/sign_up_screen.dart';

import '../presentation/main/catalog/item/pos/screen/catalog_item_pos_list_screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const MainScreen());
      case '/signUp':
        return MaterialPageRoute(builder: (_) => const SignUpScreen());
      case '/signUpNotif':
        final account = settings.arguments as Account?;
        return MaterialPageRoute(
            builder: (_) => SignUpNotifScreen(
                  account: account,
                ));
      case '/listPosItem':
        return MaterialPageRoute(
            builder: (_) => const CatalogItemPosListScreen());

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
