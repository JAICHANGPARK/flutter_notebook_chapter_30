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
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(color: Colors.grey),
                      ),
                      height: 42,
                      child: TextField(),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.chat_outlined),
                  ),
                  Badge(
                    child: Icon(Icons.notifications_none),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.shopping_bag_outlined,
                    ),
                  )
                ],
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 12,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 8),
                        height: 140,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 8),
                        height: 140,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Container(
                        height: 240,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Expanded(child: Placeholder()),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Expanded(child: Placeholder()),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Expanded(child: Placeholder()),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Text("Products"),
                          TextButton(
                            onPressed: () {},
                            child: Text(
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
