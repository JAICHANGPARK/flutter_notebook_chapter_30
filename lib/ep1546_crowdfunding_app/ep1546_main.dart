import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_30/ep1546_crowdfunding_app/view/crowdfunding_main_page.dart';

void main() {
  runApp(const CrowdfundingApp());
}

class CrowdfundingApp extends StatelessWidget {
  const CrowdfundingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CrowdfundingMainPage(),
    );
  }
}
