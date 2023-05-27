import 'package:flutter/material.dart';

class LiveShopHomePage extends StatefulWidget {
  const LiveShopHomePage({Key? key}) : super(key: key);

  @override
  State<LiveShopHomePage> createState() => _LiveShopHomePageState();
}

class _LiveShopHomePageState extends State<LiveShopHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 14,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        "Dream",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.white,
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
