import 'package:flutter/material.dart';
import 'package:shyamexe/modules/about/about.dart';

import '../../modules/home/home.dart';

class AppRouter {
  const AppRouter._();

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Home.routeName:
        return MaterialPageRoute(
          builder: (_) => const Home(),
        );
      case About.routeName:
        return MaterialPageRoute(
          builder: (_) => const About(),
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
