import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_30/ep1512_smart_home_app/view/smart_device_detail_page.dart';
import 'package:go_router/go_router.dart';

import 'view/smart_home_main_page.dart';

class SmartHomeApp extends StatelessWidget {
  SmartHomeApp({Key? key}) : super(key: key);

  final router = GoRouter(
    routes: [
      GoRoute(path: "/", builder: (context, state) => SmartHomeMainPage(), routes: [
        GoRoute(
          path: "device/:item",
          builder: (context, state) {
            print(state.toString());
            return SmartDeviceDetailPage();
          },
        ),
      ]),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
    );
  }
}
