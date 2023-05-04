import 'package:flutter/material.dart';

class FurnitureOrderPage extends StatefulWidget {
  const FurnitureOrderPage({Key? key}) : super(key: key);

  @override
  State<FurnitureOrderPage> createState() => _FurnitureOrderPageState();
}

class _FurnitureOrderPageState extends State<FurnitureOrderPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text(
                "Order List",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.chat_outlined,
                ),
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
        )
      ],
    );
  }
}
