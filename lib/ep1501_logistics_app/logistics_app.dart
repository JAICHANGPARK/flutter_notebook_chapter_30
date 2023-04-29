import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_30/ep1501_logistics_app/view/logistics_main_page.dart';


class LogisticsApp extends StatelessWidget {
  const LogisticsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LogisticsMainPage(),
    );
  }
}
