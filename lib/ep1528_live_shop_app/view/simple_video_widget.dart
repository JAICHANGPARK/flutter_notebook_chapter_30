import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class SimpleVideoWidget extends StatefulWidget {
  const SimpleVideoWidget({Key? key}) : super(key: key);

  @override
  State<SimpleVideoWidget> createState() => _SimpleVideoWidgetState();
}

class _SimpleVideoWidgetState extends State<SimpleVideoWidget> {
  late VideoPlayerController controller = VideoPlayerController.network(
      "https://cdn.pixabay.com/vimeo/142621176/1006.mp4?width=480&hash=8f01009f7e4a37f7e41f7250e31889c9b5bfcf59");

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.initialize().then((value) {
      controller.play();
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return controller.value.isInitialized
        ? VideoPlayer(controller)
        : Center(
            child: CircularProgressIndicator(),
          );
  }
}
