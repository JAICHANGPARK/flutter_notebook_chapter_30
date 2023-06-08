import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_30/ep1541_real_estate_app/view/real_estate_main_page.dart';

void main() {
  runApp(RealEstateApp());
}

class RealEstateApp extends StatelessWidget {
  const RealEstateApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RealEstateMainPage(),
    );
  }
}
