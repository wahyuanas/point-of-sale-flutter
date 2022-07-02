import 'package:flutter/material.dart';
import '../main/widget/pos_main_widget.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const PosMainWidget());

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
