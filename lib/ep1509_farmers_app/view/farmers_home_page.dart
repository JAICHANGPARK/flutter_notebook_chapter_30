import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_30/ep1509_farmers_app/model/garden.dart';
import 'package:go_router/go_router.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class FarmersHomePage extends StatefulWidget {
  const FarmersHomePage({Key? key}) : super(key: key);

  @override
  State<FarmersHomePage> createState() => _FarmersHomePageState();
}

class _FarmersHomePageState extends State<FarmersHomePage> {
  List<Garden> seedItems = [
    const Garden(
      emoji: "🍅",
      count: "12",
      title: "Tomatoes",
      duration: "1 month",
      progress: 5.0,
    ),
    const Garden(
      emoji: "🧅",
      count: "12",
      title: "Onions",
      duration: "1 month",
      progress: 5.0,
    ),
    const Garden(
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
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.black,
        centerTitle: true,
        title: const Text("My Virtual Garden"),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: GestureDetector(
                onTap: () {
                  context.go("/profile");
                },
                child: const CircleAvatar()),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(24),
                bottomLeft: Radius.circular(24),
              ),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
            child: Center(
              child: Wrap(
                alignment: WrapAlignment.center,
                runAlignment: WrapAlignment.center,
                spacing: 8,
                children: [
                  Chip(
                    backgroundColor: Colors.grey[200],
                    label: const Text(
                      "2 Seeds",
                    ),
                  ),
                  Chip(
                    backgroundColor: Colors.grey[200],
                    label: const Text(
                      "16 In Growth",
                    ),
                  ),
                  Chip(
                    backgroundColor: Colors.grey[200],
                    label: const Text(
                      "5 Ready",
                    ),
                  ),
                  Chip(
                    backgroundColor: Colors.grey[200],
                    label: const Text(
                      "6 On The Way",
                    ),
                  ),
                  Chip(
                    backgroundColor: Colors.grey[200],
                    label: const Text(
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
                  const Text(
                    "Seeds",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Container(
                    height: 140,
                    margin: const EdgeInsets.only(top: 16, bottom: 20),
                    child: Row(
                      children: seedItems
                          .map(
                            (e) => Expanded(
                              child: Card(
                                child: Stack(
                                  children: [
                                    const Positioned(
                                      right: 4,
                                      top: 4,
                                      child: Icon(
                                        Icons.info_outline,
                                      ),
                                    ),
                                    Positioned(
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text(
                                            e.emoji ?? "",
                                            style: const TextStyle(fontSize: 40),
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                e.count ?? "",
                                                style: const TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Text(
                                                e.title ?? "",
                                              )
                                            ],
                                          ),
                                          Text("${e.duration} (${e.progress?.toStringAsFixed(0)}%)"),
                                          LinearPercentIndicator(
                                            lineHeight: 8,
                                            barRadius: const Radius.circular(24),
                                            backgroundColor: Colors.grey[300],
                                            progressColor: Colors.black,
                                            percent: ((e.progress ?? 0) / 100),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )
                          .toList(),
                    ),
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
