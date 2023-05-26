import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class LiveShopLoginPage extends StatefulWidget {
  const LiveShopLoginPage({Key? key}) : super(key: key);

  @override
  State<LiveShopLoginPage> createState() => _LiveShopLoginPageState();
}

class _LiveShopLoginPageState extends State<LiveShopLoginPage> {
  VideoPlayerController? controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = VideoPlayerController.network(
        "https://cdn.pixabay.com/vimeo/411342239/36510.mp4?width=640&hash=e5a195df7fd4f1a6a453af1eb1eabf65a3e72762");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [],
      ),
    );
  }
}
