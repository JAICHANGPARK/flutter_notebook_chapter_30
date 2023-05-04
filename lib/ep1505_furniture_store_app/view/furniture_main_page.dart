import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_30/ep1505_furniture_store_app/view/furniture_home_page.dart';
import 'package:flutter_notebook_chapter_30/ep1505_furniture_store_app/view/furniture_order_page.dart';

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
        child: ValueListenableBuilder(
          builder: (context, v, _) {
            return IndexedStack(
              index: v,
              children: const [
                FurnitureHomePage(),
                FurnitureOrderPage(),
              ],
            );
          },
          valueListenable: menuIndex,
          child: Container(
            color: Colors.blue,
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
