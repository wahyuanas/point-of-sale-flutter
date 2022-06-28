import 'package:flutter/material.dart';
import 'package:pos/domain/account/entity/account.dart';
import 'package:pos/presentation/main/main_screen.dart';
import 'package:pos/presentation/main/sign/up/screen/sign_up_notif_screen.dart';
import 'package:pos/presentation/main/sign/up/screen/sign_up_screen.dart';
import 'package:pos/presentation/page_view/pos/catalog/form/screen/pos_catalog_form_screen.dart';
import 'package:pos/presentation/page_view/pos/catalog/list/screen/pos_catalog_list_screen.dart';

import '../presentation/page_view/main/screen/page_view_main._screen.dart';

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
      case '/pageViewMainScreen':
        return MaterialPageRoute(builder: (_) => const PageViewMainScreen());
      case '/postCatalogList':
        return MaterialPageRoute(builder: (_) => const PosCatalogListScreen());
      case '/postCatalogform':
        return MaterialPageRoute(builder: (_) => const PosCatalogFormScreen());
      case '/purchase':
        return MaterialPageRoute(builder: (_) => const PosCatalogListScreen());

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
