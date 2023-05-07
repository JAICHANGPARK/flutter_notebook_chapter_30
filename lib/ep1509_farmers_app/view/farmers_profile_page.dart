import 'package:flutter/material.dart';

class FarmersProfilePage extends StatefulWidget {
  const FarmersProfilePage({Key? key}) : super(key: key);

  @override
  State<FarmersProfilePage> createState() => _FarmersProfilePageState();
}

class _FarmersProfilePageState extends State<FarmersProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            child: Column(
              children: [
                Container(
                  height: 250,
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    image: DecorationImage(
                      image: NetworkImage("https://cdn.pixabay.com/photo/2016/11/14/03/50/farmer-1822530_1280.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  padding: const EdgeInsets.only(left: 12, top: 64),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.arrow_back_ios),
                            color: Colors.white,
                          ),
                          const Text(
                            "Back",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          Positioned(
            top: 180,
            left: 0,
            right: 0,
            bottom: 0,
            child: Stack(
              children: [
                Positioned(
                  top: 50,
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Container(

                    color: Colors.white,
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              width: 160,
                              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(32),
                              ),
                              child: const Center(
                                child: Text(
                                  "Shop",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            CircleAvatar(
                              foregroundColor: Colors.black,
                              backgroundColor: Colors.grey[200],
                              child: const Icon(
                                Icons.favorite,
                              ),
                            )
                          ],
                        ),
                        Text("Dream Walker"),
                        Text(
                          "Repulic of Korea, Seoul",
                        )
                      ],
                    ),
                  ),
                ),
                const Positioned(
                  left: 16,
                  top: 0,
                  child: CircleAvatar(
                    radius: 48,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
