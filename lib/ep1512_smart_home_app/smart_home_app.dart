import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'view/smart_home_main_page.dart';

class SmartHomeApp extends StatelessWidget {
   SmartHomeApp({Key? key}) : super(key: key);

  final router = GoRouter(
    routes: [
      GoRoute(
        path: "/",
        builder: (context, state) => SmartHomeMainPage(),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,

    );
  }
}
