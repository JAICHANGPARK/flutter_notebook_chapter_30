import 'package:flutter/material.dart';

class RealEstateHomePage extends StatefulWidget {
  const RealEstateHomePage({super.key});

  @override
  State<RealEstateHomePage> createState() => _RealEstateHomePageState();
}

class _RealEstateHomePageState extends State<RealEstateHomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
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
                        margin: const EdgeInsets.only(right: 12),
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
                        margin: const EdgeInsets.only(right: 12),
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
                        margin: const EdgeInsets.only(right: 12),
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
                        // color: Colors.pink,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return Container(
                              width: 280,
                              margin: const EdgeInsets.only(right: 16),
                              decoration: const BoxDecoration(
                                  // color: Colors.red,
                                  ),
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 6,
                                    top: 0,
                                    bottom: 0,
                                    right: 0,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 160,
                                            decoration: const BoxDecoration(
                                                color: Colors.blue,
                                                image: DecorationImage(
                                                  image: NetworkImage(
                                                    "https://cdn.pixabay.com/photo/2016/06/24/10/47/house-1477041_1280.jpg",
                                                  ),
                                                  fit: BoxFit.cover,
                                                ),
                                                borderRadius: BorderRadius.only(
                                                    topRight: Radius.circular(8), topLeft: Radius.circular(8))),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.all(16.0),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Flutter House",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 16,
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 8,
                                                ),
                                                Text(
                                                  "Seoul, Republic of Korea",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 16,
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 8,
                                                ),
                                                Row(
                                                  children: [
                                                    Text("1,530 sqft"),
                                                    Text("4 Bedrooms"),
                                                    Text("3 Bathrooms"),
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                          const Divider(),
                                          const Padding(
                                            padding: EdgeInsets.symmetric(horizontal: 8),
                                            child: Row(
                                              children: [
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.orange,
                                                ),
                                                Text(
                                                  "4.6",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                Text(
                                                  "(24 Reviews)",
                                                  style: TextStyle(
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                                Spacer(),
                                                Text(
                                                  "\$1,5363",
                                                  style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                Text(
                                                  "\\yr",
                                                  style: TextStyle(
                                                    color: Colors.grey,
                                                  ),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 0,
                                    top: 20,
                                    child: Container(
                                      decoration: const BoxDecoration(
                                          color: Colors.lightGreen,
                                          borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(4), bottomRight: Radius.circular(4))),
                                      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                                      child: const Text(
                                        "Best Offer",
                                        style: TextStyle(color: Colors.white),
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
                              margin: const EdgeInsets.only(right: 16),
                              decoration: const BoxDecoration(
                                color: Colors.red,
                              ),
                              child: Stack(
                                children: [
                                  Positioned(
                                      left: 0,
                                      top: 20,
                                      child: Container(
                                        width: 160,
                                        decoration: const BoxDecoration(
                                          color: Colors.lightGreen,
                                        ),
                                        child: const Text(
                                          "Best Offer",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      )),
                                  Positioned(
                                    left: 8,
                                    top: 0,
                                    bottom: 0,
                                    right: 0,
                                    child: Container(
                                      decoration:
                                          BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(8)),
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
    );
  }
}
