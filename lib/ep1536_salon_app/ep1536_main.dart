import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_30/ep1536_salon_app/view/salon_home_page.dart';

void main() {
  runApp(const SalonApp());
}

class SalonApp extends StatelessWidget {
  const SalonApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SalonHomePage(),
    );
  }
}
