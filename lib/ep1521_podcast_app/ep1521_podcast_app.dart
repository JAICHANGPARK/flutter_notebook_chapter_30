import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_30/ep1521_podcast_app/view/podcast_main_page.dart';

void main() {
  runApp(PodcastApp());
}

class PodcastApp extends StatelessWidget {
  const PodcastApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PodcastMainPage(),
    );
  }
}
