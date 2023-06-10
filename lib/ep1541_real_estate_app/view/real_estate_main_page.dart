import 'package:flutter/material.dart';

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
      body: Column(
        children: [
          Container(
            height: 240,
            width: double.infinity,
            padding: const EdgeInsets.fromLTRB(16, 84, 16, 24),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  "https://cdn.pixabay.com/photo/2021/08/23/01/03/cubic-house-6566412_1280.jpg",
                ),
                fit: BoxFit.cover,
              ),
              color: Colors.blue,
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Seek out your\ndream living\nspace",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                    fontSize: 32,
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 64,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 2,
                  spreadRadius: 2,
                  offset: const Offset(0, 3),
                )
              ],
            ),
            child: Row(
              children: [
                const Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search...",
                      prefixIcon: Icon(Icons.search),
                    ),
                  ),
                ),
                const VerticalDivider(),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.tune,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(16, 24, 16, 24),
                    height: 42,
                    // decoration: const BoxDecoration(
                    //   color: Colors.red,
                    // ),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 12),
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey[400]!,
                            ),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: const Row(
                            children: [
                              Icon(
                                Icons.villa,
                                color: Colors.orange,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                "Villa",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 12),
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey[400]!,
                            ),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: const Row(
                            children: [
                              Icon(
                                Icons.apartment,
                                color: Colors.orange,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                "Apartment",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 12),
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey[400]!,
                            ),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: const Row(
                            children: [
                              Icon(
                                Icons.home,
                                color: Colors.orange,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                "House",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 0, 0, 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Featured",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Container(
                          height: 320,
                          color: Colors.pink,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 10,
                            itemBuilder: (context, index) {
                              return Container(
                                width: 280,
                                margin: EdgeInsets.only(right: 16),
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                ),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 8,
                                      top: 0,
                                      bottom: 0,
                                      right: 0,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(8)
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 0, 0, 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Explore Nearby",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Container(
                          height: 320,
                          color: Colors.pink,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 10,
                            itemBuilder: (context, index) {
                              return Container(
                                width: 280,
                                margin: EdgeInsets.only(right: 16),
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                ),
                                child: Stack(
                                  children: [
                                    Positioned(child: Container()),
                                    Positioned(
                                      left: 8,
                                      top: 0,
                                      bottom: 0,
                                      right: 0,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(8)
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
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
