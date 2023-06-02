import 'package:flutter/material.dart';

class SalonHomePage extends StatefulWidget {
  const SalonHomePage({Key? key}) : super(key: key);

  @override
  State<SalonHomePage> createState() => _SalonHomePageState();
}

class _SalonHomePageState extends State<SalonHomePage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    Spacer(),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey[400]!,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: EdgeInsets.all(8),
                      child: Badge(
                        child: Icon(
                          Icons.notifications_none,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey[400]!,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: EdgeInsets.all(8),
                      child: Icon(
                        Icons.favorite_border,
                      ),
                    ),
                  ],
                ),
              ),
              Text("Hi, Dream Walker"),
              Row(
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    size: 14,
                  ),
                  Text("Seoul, Republic of Korea")
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        currentIndex: selectedIndex,
        onTap: (idx) {
          setState(() {
            selectedIndex = idx;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on_outlined),
            label: "Location",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: "Schedule",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: "Chat",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
