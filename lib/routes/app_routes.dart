import 'package:flutter/material.dart';
import 'package:pos/presentation/main/main_screen.dart';
import 'package:pos/presentation/main/sign/up/screen/sign_up_screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const MainScreen());
      case '/signUp':
        return MaterialPageRoute(builder: (_) => const SignUpScreen());
      // case '/cart':
      //   return MaterialPageRoute(builder: (_) => const CartWidget());
      // case '/itemDetail':
      //   final item = settings.arguments as Item;
      //   return MaterialPageRoute(
      //       builder: (_) => ItemDetailWidget(
      //             item: item,
      //           ));

      // case '/categoryItemList':
      //   final category = settings.arguments as Category;
      //   return MaterialPageRoute(
      //       builder: (_) => CategoryProductScreen(
      //             category: category,
      //           ));

      // case '/searchFilterPickUp':
      //   return MaterialPageRoute(
      //       builder: (_) => const SearchFilterPickUpScreen());

      // case '/login':
      //   return MaterialPageRoute(builder: (_) => const LoginScreen());

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
        body: const Center(child: Text('Error page')),
      );
    });
  }
}
