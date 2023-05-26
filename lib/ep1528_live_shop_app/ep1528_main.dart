import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_30/ep1528_live_shop_app/view/live_shop_login_page.dart';

void main() {
  runApp(const LiveShopApp());
}

class LiveShopApp extends StatelessWidget {
  const LiveShopApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LiveShopLoginPage(),
    );
  }
}
