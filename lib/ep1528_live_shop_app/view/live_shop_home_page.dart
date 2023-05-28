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
                    padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                    child: const Row(
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
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.favorite_border),
                    color: Colors.white,
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  const Badge(
                    label: Text("8"),
                    child: Icon(
                      Icons.chat_bubble_outline,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 72,
              margin: const EdgeInsets.only(
                left: 8,
                top: 12,
                bottom: 16,
              ),
              color: Colors.blue,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    height: 400,
                    
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(8)
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: Container(
          height: 72,
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.home_max,
                ),
                color: Colors.white,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                ),
                color: Colors.grey,
              ),
              const CircleAvatar(
                radius: 24,
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                child: Icon(Icons.add),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.shopping_bag_outlined,
                ),
                color: Colors.grey,
              ),
              const CircleAvatar(
                radius: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
