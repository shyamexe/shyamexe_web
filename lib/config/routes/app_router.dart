import 'package:flutter/material.dart';

import '../../modules/home/home.dart';

class AppRouter {
  const AppRouter._();

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Home.routeName:
        return MaterialPageRoute(
          builder: (_) => const Home(),
        );
      default:
        throw const Scaffold(
          body: Center(
            child: Text('Route not found!'),
          ),
        );
    }
  }
}
