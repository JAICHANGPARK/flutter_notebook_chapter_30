import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_30/ep1505_furniture_store_app/view/furniture_main_page.dart';

class FurnitureStoreApp extends StatelessWidget {
  const FurnitureStoreApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FurnitureMainPage(),
    );
  }
}
