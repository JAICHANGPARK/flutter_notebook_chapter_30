import 'package:flutter/material.dart';

class RealEstateMainPage extends StatefulWidget {
  const RealEstateMainPage({super.key});

  @override
  State<RealEstateMainPage> createState() => _RealEstateMainPageState();
}

class _RealEstateMainPageState extends State<RealEstateMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 240,
            color: Colors.blue,
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.apps), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: "My Property"),
          BottomNavigationBarItem(icon: Icon(Icons.build_outlined), label: "Mainenance"),
          BottomNavigationBarItem(icon: Icon(Icons.mail_outline), label: "Message"),
        ],
      ),
    );
  }
}
