import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_30/ep1541_real_estate_app/view/real_estate_home_page.dart';
import 'package:flutter_notebook_chapter_30/ep1541_real_estate_app/view/real_estate_maintaince_page.dart';

class RealEstateMainPage extends StatefulWidget {
  const RealEstateMainPage({super.key});

  @override
  State<RealEstateMainPage> createState() => _RealEstateMainPageState();
}

class _RealEstateMainPageState extends State<RealEstateMainPage> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: index,
        children: const [
          RealEstateHomePage(),
          RealEstateMaintenancePage(),
        ],
      ),
      bottomNavigationBar: SizedBox(
        height: 72,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: index,
          onTap: (idx) {
            setState(() {
              index = idx;
            });
          },
          selectedItemColor: Colors.orange,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.apps), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: "My Property"),
            BottomNavigationBarItem(icon: Icon(Icons.build_outlined), label: "Maintenance"),
            BottomNavigationBarItem(icon: Icon(Icons.mail_outline), label: "Message"),
          ],
        ),
      ),
    );
  }
}
