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
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  const CircleAvatar(),
                  const SizedBox(
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
                  const SizedBox(
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
              height: 48,
              margin: const EdgeInsets.only(left: 16),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(color: Colors.grey[300], borderRadius: BorderRadius.circular(24)),
                    margin: const EdgeInsets.only(right: 12),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                    ),
                    child: const Row(
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
            ),
            Container(
              height: 100,
              margin: const EdgeInsets.only(left: 16, top: 24, bottom: 24),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    width: 84,
                    margin: const EdgeInsets.only(right: 16),
                    // color: Colors.orange,
                    child: Column(
                      children: [
                        Expanded(
                            child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              right: 0,
                              top: 0,
                              bottom: 0,
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.green, width: 1.5),
                                  shape: BoxShape.circle,
                                ),
                                padding: const EdgeInsets.all(2),
                                child: const CircleAvatar(),
                              ),
                            ),
                            const Positioned(
                              right: 4,
                              top: 4,
                              child: CircleAvatar(
                                radius: 10,
                                backgroundColor: Colors.white,
                                child: Text(
                                  "🔥",
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                            )
                          ],
                        )),
                        const SizedBox(
                          height: 6,
                        ),
                        const Text(
                          "Dreamwalker",
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Text(
                    "Top Creators",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  Text("See all"),
                  SizedBox(
                    width: 8,
                  ),
                  Icon(
                    Icons.arrow_forward,
                    size: 14,
                  ),
                ],
              ),
            ),
            Expanded(
                child: ListView.builder(
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: EdgeInsets.all(12),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 22,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Dream Walker",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text("Flutter Streaming"),
                              ],
                            ),
                          ),
                          Text(
                            "🔥",
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          )
                        ],
                      ),
                      Container(
                        height: 160,
                        margin: EdgeInsets.symmetric(vertical: 16),
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      SizedBox(
                        height: 32,
                        child: Row(
                          children: [
                            Expanded(child: Container()),
                            Expanded(child: Container()),
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
              itemCount: 10,
            ))
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
