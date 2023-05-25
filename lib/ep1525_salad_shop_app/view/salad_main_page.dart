import 'package:flutter/material.dart';

class SaladMainPage extends StatefulWidget {
  const SaladMainPage({Key? key}) : super(key: key);

  @override
  State<SaladMainPage> createState() => _SaladMainPageState();
}

class _SaladMainPageState extends State<SaladMainPage> {
  int menuIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(254, 251, 240, 1),
      appBar: AppBar(
        title: const Text("SaladShop"),
        actions: const [
          CircleAvatar(
            child: Icon(Icons.light),
            backgroundColor: Color.fromRGBO(130, 134, 112, 1),
            foregroundColor: Colors.white,
          ),
          SizedBox(
            width: 8,
          ),
        ],
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      drawer: const Drawer(),
      body: IndexedStack(
        index: menuIndex,
        children: [
          Column(
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
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
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
                height: 260,
                margin: const EdgeInsets.only(left: 16),
                child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: Container(
                        width: 180,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Container(
                                width: 180,
                                color: const Color.fromRGBO(232, 220, 199, 1),
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Crunch Salad",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Text("\$ 70.00"),
                                        Text(
                                          " \$75.00",
                                          style: TextStyle(
                                            decoration: TextDecoration.lineThrough,
                                            fontSize: 13,
                                            color: Colors.grey,
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                Container(
                                  padding: const EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                    border: Border.all(),
                                  ),
                                  child: const Icon(Icons.add),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              // SizedBox(
              //   height: 16,
              // ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
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
                height: 84,
                decoration: const BoxDecoration(
                    // color: Colors.orange,
                    ),
                margin: const EdgeInsets.only(left: 16),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 260,
                      margin: const EdgeInsets.only(right: 16),
                      // color: Colors.blue,
                      child: Row(
                        children: [
                          Container(
                            // height: 64,
                            width: 84,
                            color: Colors.pink,
                          ),
                          const Expanded(
                            child: Padding(
                              padding: EdgeInsets.all(12.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Spring Asparagus Salad",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  Row(
                                    children: [
                                      Text("\$ 70.00"),
                                      Text(
                                        " \$75.00",
                                        style: TextStyle(
                                          decoration: TextDecoration.lineThrough,
                                          fontSize: 13,
                                          color: Colors.grey,
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              )
            ],
          ),
          DefaultTabController(
              length: 3,
              child: Column(
                children: [
                  TabBar(
                    labelColor: Color.fromRGBO(45, 54, 42, 1),
                    unselectedLabelColor: Colors.grey,
                    indicatorColor: Color.fromRGBO(45, 54, 42, 1),
                    tabs: [
                      Tab(
                        text: "Recommend",
                      ),
                      Tab(
                        text: "Offers!",
                      ),
                      Tab(
                        text: "Hot Sale",
                      ),
                    ],
                  ),
                  Divider(
                    height: 0,
                    color: Colors.grey,
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: GridView.builder(
                            itemCount: 30,
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 12,
                              mainAxisSpacing: 12,
                            ),
                            itemBuilder: (context, index) {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: const Color.fromRGBO(232, 220, 199, 1),
                                      ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("Fish Taco Salad"),
                                          Row(
                                            children: [
                                              Text("\$82.00"),
                                              Text("\$89.00"),
                                            ],
                                          )
                                        ],
                                      ),
                                      Container(
                                        padding: EdgeInsets.all(4),
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Colors.grey,
                                          ),
                                        ),
                                        child: Icon(
                                          Icons.add,
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              );
                            },
                          ),
                        ),
                        Container(),
                        Container(),
                      ],
                    ),
                  )
                ],
              )),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        height: 72,
        elevation: 0,
        surfaceTintColor: const Color.fromRGBO(254, 251, 240, 1),
        color: const Color.fromRGBO(254, 251, 240, 1),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              switch (menuIndex == 0) {
                true => GestureDetector(
                    onTap: () {
                      setState(() {
                        menuIndex = 0;
                      });
                    },
                    child: const Column(
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
                  ),
                false => IconButton(
                    onPressed: () {
                      setState(() {
                        menuIndex = 0;
                      });
                    },
                    icon: const Icon(
                      Icons.home_filled,
                    ),
                  ),
              },
              switch (menuIndex == 1) {
                true => GestureDetector(
                    onTap: () {
                      setState(() {
                        menuIndex = 1;
                      });
                    },
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Explore",
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
                  ),
                false => IconButton(
                    onPressed: () {
                      setState(() {
                        menuIndex = 1;
                      });
                    },
                    icon: const Icon(
                      Icons.explore_outlined,
                    ),
                  ),
              },
              IconButton(
                onPressed: () {
                  setState(() {
                    menuIndex = 2;
                  });
                },
                icon: const Icon(
                  Icons.search,
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    menuIndex = 3;
                  });
                },
                icon: const Icon(
                  Icons.percent,
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    menuIndex = 4;
                  });
                },
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
