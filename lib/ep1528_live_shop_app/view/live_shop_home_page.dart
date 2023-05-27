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
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 16,
                      ),
                      Text("Dream"),
                      Icon(
                        Icons.keyboard_arrow_down,
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
