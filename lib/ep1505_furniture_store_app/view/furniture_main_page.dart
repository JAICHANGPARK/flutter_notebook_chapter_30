import 'package:flutter/material.dart';

class FurnitureMainPage extends StatefulWidget {
  const FurnitureMainPage({Key? key}) : super(key: key);

  @override
  State<FurnitureMainPage> createState() => _FurnitureMainPageState();
}

class _FurnitureMainPageState extends State<FurnitureMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.holiday_village_outlined,
            ),
            label: "Home"
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.inventory_2_outlined,
            ),
            label: "My Order"
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.storefront,
              ),
              label: "Store"
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_border,
              ),
              label: "Wishlist"
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline,
              ),
              label: "Profile"
          )
        ],
      ),
    );
  }
}
