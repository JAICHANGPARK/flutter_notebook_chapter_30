import 'package:flutter/material.dart';

class SaladMainPage extends StatefulWidget {
  const SaladMainPage({Key? key}) : super(key: key);

  @override
  State<SaladMainPage> createState() => _SaladMainPageState();
}

class _SaladMainPageState extends State<SaladMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(254, 251, 240, 1),
      appBar: AppBar(
        title: const Text("SaladShop"),
        actions: [
          const CircleAvatar(
            child: Icon(Icons.light),
            backgroundColor: Color.fromRGBO(130, 134, 112, 1),
            foregroundColor: Colors.white,
          ),
          const SizedBox(
            width: 8,
          ),
        ],
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      drawer: const Drawer(),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(8, 24, 8, 16),
            height: 140,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(45, 54, 42, 1),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16, top: 32, bottom: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            color: Color.fromRGBO(231, 235, 123, 1),
                          ),
                          padding: const EdgeInsets.all(2),
                          child: const Text(
                            "Saladworks",
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        const Text(
                          "Fresh,plant-\nforward, earth\nfriendly food",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(231, 235, 123, 1),
                            fontSize: 15,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Salad Features",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text("See All"),
                ),
              ],
            ),
          ),
          Container(
            height: 320,
            color: Colors.green,
            margin: EdgeInsets.only(left: 16),
            child: ListView.builder(
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                          width: 140,
                        ),
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              Text("Crunch Salad"),
                              Row(
                                children: [
                                  Text("\$ 70.00"),
                                  Text(
                                    "\$75.00",
                                    style: TextStyle(
                                      decoration: TextDecoration.lineThrough,
                                    ),
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Best Sales",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text("See All"),
                ),
              ],
            ),
          ),
          Container(
            height: 110,
            decoration: const BoxDecoration(color: Colors.orange),
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        height: 72,
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Home",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  CircleAvatar(
                    radius: 3,
                    backgroundColor: Colors.black,
                  ),
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.explore_outlined,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.percent,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.account_circle_outlined,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
