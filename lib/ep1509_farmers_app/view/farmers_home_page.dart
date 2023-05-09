import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_30/ep1509_farmers_app/model/garden.dart';
import 'package:go_router/go_router.dart';

class FarmersHomePage extends StatefulWidget {
  const FarmersHomePage({Key? key}) : super(key: key);

  @override
  State<FarmersHomePage> createState() => _FarmersHomePageState();
}

class _FarmersHomePageState extends State<FarmersHomePage> {
  List<Garden> seedItems = [
    Garden(
      emoji: "🍅",
      count: "12",
      title: "Tomatoes",
      duration: "1 month",
      progress: 5.0,
    ),
    Garden(
      emoji: "🧅",
      count: "12",
      title: "Onions",
      duration: "1 month",
      progress: 5.0,
    ),
    Garden(
      emoji: "🧅",
      count: "12",
      title: "Onions",
      duration: "1 month",
      progress: 5.0,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.black,
        centerTitle: true,
        title: Text("My Virtual Garden"),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: GestureDetector(
                onTap: () {
                  context.go("/profile");
                },
                child: CircleAvatar()),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(24), bottomLeft: Radius.circular(24))),
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
            child: Center(
              child: Wrap(
                alignment: WrapAlignment.center,
                runAlignment: WrapAlignment.center,
                spacing: 8,
                children: [
                  Chip(
                    backgroundColor: Colors.grey[200],
                    label: Text(
                      "2 Seeds",
                    ),
                  ),
                  Chip(
                    backgroundColor: Colors.grey[200],
                    label: Text(
                      "16 In Growth",
                    ),
                  ),
                  Chip(
                    backgroundColor: Colors.grey[200],
                    label: Text(
                      "5 Ready",
                    ),
                  ),
                  Chip(
                    backgroundColor: Colors.grey[200],
                    label: Text(
                      "6 On The Way",
                    ),
                  ),
                  Chip(
                    backgroundColor: Colors.grey[200],
                    label: Text(
                      "54 Consumed",
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 20),
              child: ListView(
                children: [
                  Text(
                    "Seeds",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Container(
                    height: 120,
                    color: Colors.blue,
                    margin: EdgeInsets.only(top: 16, bottom: 20),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
