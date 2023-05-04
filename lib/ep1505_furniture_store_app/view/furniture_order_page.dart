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
        ),
        Divider(
          color: Colors.grey,
        ),
        SizedBox(
          height: 32,
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
                  margin: EdgeInsets.symmetric(horizontal: 8),
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      tabItems[index],
                    ),
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
