import 'package:flutter/material.dart';

class CrowdfundingMainPage extends StatefulWidget {
  const CrowdfundingMainPage({super.key});

  @override
  State<CrowdfundingMainPage> createState() => _CrowdfundingMainPageState();
}

class _CrowdfundingMainPageState extends State<CrowdfundingMainPage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  const CircleAvatar(),
                  SizedBox(
                    width: 12,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "4 SEPTEMBER",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        "Hello~!",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                  const Spacer(),
                  Container(
                    height: 52,
                    width: 52,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      shape: BoxShape.circle,
                    ),
                    child: const Center(
                      child: Badge(
                        child: Icon(Icons.notifications_none),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Container(
                    height: 52,
                    width: 52,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      shape: BoxShape.circle,
                    ),
                    child: const Center(
                      child: Icon(Icons.menu),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 58,
              margin: EdgeInsets.only(left: 16),
              color: Colors.blue,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                    ),
                    margin: EdgeInsets.only(right: 12),
                    padding: EdgeInsets.symmetric(horizontal: 4,),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 18,
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text("Streamer"),
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 72,
        child: BottomNavigationBar(
          onTap: (idx) {
            setState(() {
              selectedIndex = idx;
            });
          },
          currentIndex: selectedIndex,
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.fixed,
          items: const [
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
      ),
    );
  }
}
