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
                tabs: [
                  Tab(text: "All"),
                  Tab(text: "All"),
                  Tab(text: "All"),
                  Tab(text: "All"),
                  Tab(text: "All"),
                ],
              ),
              Expanded(
                  child: TabBarView(
                children: [
                  Container(),
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
