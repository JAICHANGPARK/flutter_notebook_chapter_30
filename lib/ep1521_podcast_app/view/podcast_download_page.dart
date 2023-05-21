import 'package:flutter/material.dart';

class PodcastDownloadPage extends StatefulWidget {
  const PodcastDownloadPage({Key? key}) : super(key: key);

  @override
  State<PodcastDownloadPage> createState() => _PodcastDownloadPageState();
}

class _PodcastDownloadPageState extends State<PodcastDownloadPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Download"),
      ),

    );
  }
}
