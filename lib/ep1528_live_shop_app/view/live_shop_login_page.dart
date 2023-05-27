import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_30/ep1528_live_shop_app/view/live_shop_home_page.dart';
import 'package:google_fonts/google_fonts.dart';
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
                            margin: const EdgeInsets.symmetric(horizontal: 4),
                            color: Colors.white.withOpacity(1),
                          )),
                          Expanded(
                              child: Container(
                            color: Colors.white.withOpacity(0.6),
                          ))
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Text(
                        "ABCD",
                        style: GoogleFonts.lora(
                            // fontWeight: FontWeight.bold,
                            fontSize: 64,
                            color: Colors.white),
                      ),
                    ),
                    const Spacer(),
                    const Text(
                      "Explore endless style options and find the perfect"
                      "pieces that reflect your personality.",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) => LiveShopHomePage(),
                          ),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.symmetric(vertical: 24),
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(32),
                        ),
                        child: const Center(
                          child: Text(
                            "Continue",
                            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                          ),
                        ),
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
