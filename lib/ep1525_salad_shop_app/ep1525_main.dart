import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_30/ep1525_salad_shop_app/view/salad_main_page.dart';

void main() {
  runApp(SaladShopApp());
}

class SaladShopApp extends StatelessWidget {
  const SaladShopApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SaladMainPage(),
    );
  }
}
