import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FarmersApp extends StatelessWidget {
  FarmersApp({Key? key}) : super(key: key);

  final _router = GoRouter(
    routes: [
      GoRoute(
        path: "/profile",
        builder: (context, state) => FarmersProfilePage(),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router();
  }
}
