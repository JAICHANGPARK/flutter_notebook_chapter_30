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
              height: 84,
              margin: const EdgeInsets.only(
                left: 8,
                top: 12,
                bottom: 16,
              ),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.white.withOpacity(0.8),
                            ),
                            image: const DecorationImage(
                              image: NetworkImage(
                                "https://cdn.pixabay.com/photo/2023/05/23/15/26/bengal-cat-8012976_1280.jpg",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          height: 64,
                          width: 64,
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        const Text(
                          "Dreamwalker",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    height: 540,
                    margin: const EdgeInsets.only(bottom: 2),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          left: 8,
                          right: 8,
                          top: 8,
                          child: Row(
                            children: [
                              CircleAvatar(),
                              Column(
                                children: [
                                  Text("Dreamwalker"),
                                  Text("Flutter Dev"),
                                ],
                              ),
                              Spacer(),
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 20,
                                  vertical: 8,
                                ),
                                decoration: ShapeDecoration(
                                  shape: StadiumBorder(),
                                  color: Colors.white,
                                ),
                                child: Text("Follow"),
                              )
                            ],
                          ),
                        ),
                      ],
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
          padding: const EdgeInsets.symmetric(horizontal: 16),
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
