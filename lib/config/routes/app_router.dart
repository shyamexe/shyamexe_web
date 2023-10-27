import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shyamexe/modules/about/about.dart';
import 'package:shyamexe/modules/work_details/model/work_details_model.dart';
import 'package:shyamexe/modules/work_details/work_details.dart';

import '../../modules/home/home.dart';

class AppRouter {

  final router = GoRouter(
  routes: [
    GoRoute(
      path: Home.routeName,
      builder: (context, state) => Home(),
    ),
    GoRoute(
      path: About.routeName,
      builder: (context, state) => const About(),
    ),
    GoRoute(
      
      path: WorkDetails.routeName,
      builder: (context, state) => WorkDetails(
         data: WorkDetailsModel.fromMap(state.uri.queryParameters),
      ),
    ),
  ],
);

  // static Route<dynamic> onGenerateRoute(RouteSettings settings) {
  //   switch (settings.name) {
  //     case Home.routeName:
  //       return MaterialPageRoute(
  //         builder: (_) =>  Home(),
  //       );
  //     case About.routeName:
  //       return MaterialPageRoute(
  //         builder: (_) => const About(),
  //       );
  //     default:
  //       throw const Scaffold(
  //         body: Center(
  //           child: Text('Route not found!'),
  //         ),
  //       );
  //   }
  // }
}
