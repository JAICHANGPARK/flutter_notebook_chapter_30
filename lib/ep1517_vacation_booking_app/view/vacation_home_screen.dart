import 'package:flutter/material.dart';

class VacationHomeScreen extends StatefulWidget {
  const VacationHomeScreen({Key? key}) : super(key: key);

  @override
  State<VacationHomeScreen> createState() => _VacationHomeScreenState();
}

class _VacationHomeScreenState extends State<VacationHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey[200],
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.search),
                color: Colors.deepOrange,
                iconSize: 30,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.favorite_border),
                iconSize: 30,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.chat_bubble_outline),
                iconSize: 30,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.settings_outlined),
                iconSize: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
