import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class LiveShopLoginPage extends StatefulWidget {
  const LiveShopLoginPage({Key? key}) : super(key: key);

  @override
  State<LiveShopLoginPage> createState() => _LiveShopLoginPageState();
}

class _LiveShopLoginPageState extends State<LiveShopLoginPage> {
  late VideoPlayerController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = VideoPlayerController.network(
        "https://cdn.pixabay.com/vimeo/411342239/36510.mp4?width=640&hash=e5a195df7fd4f1a6a453af1eb1eabf65a3e72762")
      ..initialize().then((value) {
        controller.play();
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: 0,
            child: controller.value.isInitialized
                ? AspectRatio(
                    aspectRatio: controller.value.aspectRatio,
                    child: VideoPlayer(controller),
                  )
                : Container(),
          ),
          Positioned(
            left: 0,
            top: 0,
            bottom: 0,
            right: 0,
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 24),
                child: Column(
                  children: [
                    Container(
                      height: 6,
                      child: Row(
                        children: [
                          Expanded(
                              child: Container(
                            color: Colors.white.withOpacity(0.6),
                          )),
                          Expanded(
                              child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 4),
                            color: Colors.white.withOpacity(1),
                          )),
                          Expanded(
                              child: Container(
                            color: Colors.white.withOpacity(0.6),
                          ))
                        ],
                      ),
                    ),
                    Text(
                      "ABCD",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 38
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }
}
