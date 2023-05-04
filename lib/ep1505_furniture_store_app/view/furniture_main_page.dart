import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class FurnitureMainPage extends StatefulWidget {
  const FurnitureMainPage({Key? key}) : super(key: key);

  @override
  State<FurnitureMainPage> createState() => _FurnitureMainPageState();
}

class _FurnitureMainPageState extends State<FurnitureMainPage> {
  ValueNotifier<int> menuIndex = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 42,
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          icon: Icon(Icons.search),
                          hintText: "Search Furniture",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.chat_outlined),
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
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 12,
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 8),
                        height: 140,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Summer Sale',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                            const Text(
                              "25% off for all furniture",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              height: 24,
                            ),
                            const Text(
                              "SHOP NOW",
                            ),
                            DotsIndicator(
                              dotsCount: 4,
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 8),
                        height: 140,
                        decoration: const BoxDecoration(
                          color: Colors.blue,
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Container(
                        height: 240,
                        decoration: const BoxDecoration(
                          color: Colors.blue,
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: const [
                                  Expanded(child: Placeholder()),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Expanded(child: Placeholder()),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            const Expanded(
                              child: Placeholder(),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("Products"),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              "See all",
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: ValueListenableBuilder<int>(
          valueListenable: menuIndex,
          builder: (context, v, _) {
            return SizedBox(
              height: 72,
              child: BottomNavigationBar(
                onTap: (idx) {
                  menuIndex.value = idx;
                  // v = idx;
                },
                currentIndex: v,
                items: const [
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.holiday_village_outlined,
                      ),
                      label: "Home"),
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.inventory_2_outlined,
                      ),
                      label: "My Order"),
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.storefront,
                      ),
                      label: "Store"),
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.favorite_border,
                      ),
                      label: "Wishlist"),
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.person_outline,
                      ),
                      label: "Profile"),
                ],
                selectedItemColor: Colors.brown,
                type: BottomNavigationBarType.fixed,
              ),
            );
          }),
    );
  }
}
