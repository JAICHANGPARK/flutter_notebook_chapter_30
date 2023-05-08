import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_30/ep1509_farmers_app/view/farmers_home_page.dart';
import 'package:flutter_notebook_chapter_30/ep1509_farmers_app/view/farmers_profile_page.dart';
import 'package:go_router/go_router.dart';

class FarmersApp extends StatelessWidget {
  FarmersApp({Key? key}) : super(key: key);

  final _router = GoRouter(
    initialLocation: "/",
    routes: [
      GoRoute(
        path: "/",
        builder: (context, state) => const FarmersHomePage(),
      ),
      GoRoute(
        path: "/profile",
        builder: (context, state) => const FarmersProfilePage(),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
    );
  }
}
