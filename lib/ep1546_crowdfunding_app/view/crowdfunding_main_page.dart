import 'package:flutter/material.dart';

class CrowdfundingMainPage extends StatefulWidget {
  const CrowdfundingMainPage({super.key});

  @override
  State<CrowdfundingMainPage> createState() => _CrowdfundingMainPageState();
}

class _CrowdfundingMainPageState extends State<CrowdfundingMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.bar_chart,
            ),
            label: "Analytic",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.qr_code_scanner,
            ),
            label: "qris",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.list_alt,
            ),
            label: "History",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
            ),
            label: "Profile",
          )
        ],
      ),
    );
  }
}
