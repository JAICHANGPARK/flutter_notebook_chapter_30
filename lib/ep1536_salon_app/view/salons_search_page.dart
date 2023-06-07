import 'package:flutter/material.dart';

class SalonSearchPage extends StatefulWidget {
  const SalonSearchPage({super.key});

  @override
  State<SalonSearchPage> createState() => _SalonSearchPageState();
}

class _SalonSearchPageState extends State<SalonSearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: DefaultTabController(
          length: 5,
          child: Column(
            children: [
              Material(
                // height: 64,
                child: Row(
                  children: [
                    Expanded(
                      child: Hero(
                        tag: "search_bar",
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                          child: const TextField(
                            decoration: InputDecoration(
                                icon: Icon(
                                  Icons.search,
                                ),
                                border: InputBorder.none,
                                hintText: "Search by Salons",
                                suffixIcon: Icon(Icons.tune)),
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(Icons.clear),
                    )
                  ],
                ),
              ),
              const TabBar(
                indicatorColor: Colors.indigoAccent,
                indicatorSize: TabBarIndicatorSize.label,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                isScrollable: true,
                tabs: [
                  Tab(text: "All"),
                  Tab(text: "Haircuts"),
                  Tab(text: "Make up"),
                  Tab(text: "Massage"),
                  Tab(text: "Skin care"),
                ],
              ),
              Expanded(
                  child: TabBarView(
                children: [
                  Container(
                    padding: const EdgeInsets.fromLTRB(16, 16, 0, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Popular artist",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        Container(
                          height: 120,
                          margin: const EdgeInsets.symmetric(vertical: 16),
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(right: 16),
                                child: Column(
                                  children: [
                                    CircleAvatar(
                                      radius: 32,
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      "Dream",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text("Flutter Dev")
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                        const Text(
                          "Result found(248)",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 16,right: 16),
                            child: ListView.builder(
                              itemBuilder: (context, index) {
                                return Container(
                                  height: 100,
                                  margin: const EdgeInsets.only(bottom: 16),
                                  color: Colors.blue,
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 100,
                                        decoration: BoxDecoration(
                                          color: Colors.indigoAccent,
                                        ),
                                      )
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(),
                  Container(),
                  Container(),
                  Container(),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
