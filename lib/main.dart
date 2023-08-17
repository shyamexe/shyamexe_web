import 'package:flutter/material.dart';

import 'config/routes/app_router.dart';
import 'modules/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        canvasColor: const Color(0xff14141a)
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: Home.routeName,
      onGenerateRoute: AppRouter.onGenerateRoute,
    );
  }
}
