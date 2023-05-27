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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
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
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.favorite_border),
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Badge(
                    child: Icon(
                      Icons.chat_bubble_outline,
                      color: Colors.white,
                    ),
                    label: Text("8"),
                  )
                ],
              ),
            ),
            Container(
              height: 72,
              margin: EdgeInsets.only(
                left: 8,
                top: 12,
                bottom: 16,
              ),
              color: Colors.blue,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: Container(
          height: 72,
          child: Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.home_max,
                ),
                color: Colors.white,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                ),
                color: Colors.grey,
              ),
              CircleAvatar(
                radius: 24,
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                child: Icon(Icons.add),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.shopping_bag_outlined,
                ),
                color: Colors.grey,
              ),
              CircleAvatar(),
            ],
          ),
        ),
      ),
    );
  }
}
