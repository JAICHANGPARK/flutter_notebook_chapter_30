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
                          child: TextField(
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
                        icon: Icon(Icons.clear))
                  ],
                ),
              ),
              TabBar(
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
                    padding: EdgeInsets.fromLTRB(16, 16, 0, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Popular artist",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        Container(
                          height: 120,
                          color: Colors.blue,
                        ),
                        Text(
                          "Result founed(248)",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Expanded(
                          child: ListView.builder(
                            itemBuilder: (context, index) {
                              return Container(
                                margin: EdgeInsets.only(bottom: 16),
                              );
                            },
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
