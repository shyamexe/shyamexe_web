import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:go_router/go_router.dart';
import 'config/routes/app_router.dart';
import 'config/theme/app_text_theme.dart';

void main() {
  usePathUrlStrategy();
  GoRouter.optionURLReflectsImperativeAPIs = true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        canvasColor: const Color(0xff14141a),
        textTheme: ApeTextTheme.theme()
      ),
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter().router,
      // routerDelegate: AppRouter().router.routerDelegate,
      // routeInformationParser: AppRouter().router.routeInformationParser,
      // routeInformationProvider: AppRouter().router.routeInformationProvider,
    );
  }
}
