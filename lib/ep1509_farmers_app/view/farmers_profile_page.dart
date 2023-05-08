import 'package:flutter/material.dart';

class FarmersProfilePage extends StatefulWidget {
  const FarmersProfilePage({Key? key}) : super(key: key);

  @override
  State<FarmersProfilePage> createState() => _FarmersProfilePageState();
}

class _FarmersProfilePageState extends State<FarmersProfilePage> {
  List<String> chips = [
    "🍅 Tomatoes",
    "🥒 Cucumbers",
    "🥕 Carrots",
    "🥔 Potatoes",
    "🧅 Onions",
    "🍊 Oranges",
    "🍎 Apples",
    "🍓 Strawberries",
    " Olives",
  ];

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
                        const SizedBox(
                          height: 16,
                        ),
                        const Text(
                          "Dream Walker",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const Text(
                          "Republic of Korea, Seoul",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          child: Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "12",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8, right: 20),
                              child: Text("members"),
                            ),
                            Text(
                              "642",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8, right: 20),
                              child: Text("plants in GrowthByou"),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          child: Wrap(
                            spacing: 8,
                            runSpacing: 0,
                            children: chips
                                .map(
                                  (e) => Chip(
                                    backgroundColor: Colors.grey[200],
                                    label: Text(e),
                                  ),
                                )
                                .toList(),
                          ),
                        ),
                        Text(
                          "Photo",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 8),
                          height: 84,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                          ),
                          child: Row(
                            children: [
                              Expanded(child: Placeholder()),
                              SizedBox(
                                width: 8,
                              ),
                              Expanded(child: Placeholder()),
                              SizedBox(
                                width: 8,
                              ),
                              Expanded(child: Placeholder()),
                              SizedBox(
                                width: 8,
                              ),
                              Expanded(child: Placeholder()),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Text(
                          "Way to plant",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
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
