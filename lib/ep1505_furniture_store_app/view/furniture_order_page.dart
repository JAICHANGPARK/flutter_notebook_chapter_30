import 'package:flutter/material.dart';

class FurnitureOrderPage extends StatefulWidget {
  const FurnitureOrderPage({Key? key}) : super(key: key);

  @override
  State<FurnitureOrderPage> createState() => _FurnitureOrderPageState();
}

class _FurnitureOrderPageState extends State<FurnitureOrderPage> {
  List<String> tabItems = [
    "All Order",
    "Payment",
    "On Progress",
    "Shipping",
  ];
  int _tabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              const Text(
                "Order List",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.chat_outlined,
                ),
              ),
              const Badge(
                child: Icon(Icons.notifications_none),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.shopping_bag_outlined,
                ),
              )
            ],
          ),
        ),
        const Divider(
          color: Colors.grey,
        ),
        SizedBox(
          height: 30,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: tabItems.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    _tabIndex = index;
                  });
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 8),
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(4),
                    color: _tabIndex == index ? Colors.deepOrange : Colors.white,
                  ),
                  child: Center(
                    child: Text(
                      tabItems[index],
                      style: TextStyle(
                        color: _tabIndex == index ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.grey[300],
            child: ListView(
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 12),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 12, top: 12),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 14,
                              backgroundColor: Colors.grey[200],
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 12),
                              child: Text("Waiting Payment"),
                            ),
                            const Text("12 Aug 2023"),
                            const Spacer(),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.more_vert,
                              ),
                            )
                          ],
                        ),
                      ),
                      const Divider(
                        color: Colors.grey,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 52,
                              width: 52,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2),
                                border: Border.all(),
                              ),
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text("Dreamwalker Chair"),
                                const SizedBox(
                                  height: 8,
                                ),
                                const Text("1 item"),
                              ],
                            ),
                            const Spacer(),
                            const Text(
                              "\$72",
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          children: [
                            const Text("Total Price"),
                            const SizedBox(
                              width: 12,
                            ),
                            const Text("\$72"),
                            const Spacer(),
                            Container(
                              decoration: BoxDecoration(border: Border.all(), borderRadius: BorderRadius.circular(4)),
                              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                              child: const Center(
                                child: Text(
                                  "Pay Now",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 12),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 12, top: 12),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 14,
                              backgroundColor: Colors.grey[200],
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 12),
                              child: Text("Waiting Payment"),
                            ),
                            const Text("12 Aug 2023"),
                            const Spacer(),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.more_vert,
                              ),
                            )
                          ],
                        ),
                      ),
                      const Divider(
                        color: Colors.grey,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 52,
                              width: 52,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2),
                                border: Border.all(),
                              ),
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text("Dreamwalker Chair"),
                                const SizedBox(
                                  height: 8,
                                ),
                                const Text("1 item"),
                              ],
                            ),
                            const Spacer(),
                            const Text(
                              "\$72",
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          children: [
                            const Text("Total Price"),
                            const SizedBox(
                              width: 12,
                            ),
                            const Text("\$72"),
                            const Spacer(),
                            Container(
                              decoration: BoxDecoration(border: Border.all(), borderRadius: BorderRadius.circular(4)),
                              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                              child: const Center(
                                child: Text(
                                  "Pay Now",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
