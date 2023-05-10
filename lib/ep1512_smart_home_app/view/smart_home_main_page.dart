import 'package:flutter/material.dart';

class SmartHomeMainPage extends StatefulWidget {
  const SmartHomeMainPage({Key? key}) : super(key: key);

  @override
  State<SmartHomeMainPage> createState() => _SmartHomeMainPageState();
}

class _SmartHomeMainPageState extends State<SmartHomeMainPage> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Colors.black,
            padding: const EdgeInsets.fromLTRB(16, 52, 16, 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.location_on_outlined,
                      color: Colors.grey,
                    ),
                    const Text(
                      "Republic of Korea, Seoul",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    const Spacer(),
                    Container(
                      margin: const EdgeInsets.only(right: 12),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        icon: const Icon(
                          Icons.notifications_none,
                        ),
                        onPressed: () {},
                        color: Colors.white,
                      ),
                    ),
                    const CircleAvatar(
                      radius: 24,
                    )
                  ],
                ),
                const SizedBox(
                  height: 48,
                ),
                const Text(
                  "Hello Dream",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  "Welcome back to your smart home!",
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [],
            ),
          ),
        ],
      ),
      bottomNavigationBar: SizedBox(
        height: 90,
        child: BottomNavigationBar(
          onTap: (idx) {
            setState(() {
              pageIndex = idx;
            });
          },
          currentIndex: pageIndex,
          backgroundColor: Colors.grey[300],
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.black,
          items: [
            const BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.route),
              label: "Routine",
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.add_circle_outline_rounded),
              label: "Add device",
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.door_back_door_outlined),
              label: "Rooms",
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.settings_outlined),
              label: "Settings",
            ),
          ],
        ),
      ),
    );
  }
}
