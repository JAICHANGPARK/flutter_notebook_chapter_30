import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_30/ep1501_logistics_app/view/logistics_deliveries_page.dart';
import 'package:flutter_notebook_chapter_30/ep1501_logistics_app/view/logistics_home_page.dart';

class LogisticsMainPage extends StatefulWidget {
  const LogisticsMainPage({Key? key}) : super(key: key);

  @override
  State<LogisticsMainPage> createState() => _LogisticsMainPageState();
}

class _LogisticsMainPageState extends State<LogisticsMainPage> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(234, 234, 234, 1),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: IndexedStack(
                  index: _index,
                  children: [
                    LogisticsHomePage(),
                    Container(),
                    LogisticsDeliveriesPage(),
                  ],
                ),
              ),
              // const Spacer(),
              Container(
                height: 78,
                margin: const EdgeInsets.only(bottom: 16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(24),
                ),
                padding: const EdgeInsets.all(6),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            _index = 0;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: _index == 0 ? const Color.fromRGBO(229, 248, 0, 1) : Colors.white,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.home_filled,
                                size: 28,
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              Text(
                                "Home".toUpperCase(),
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            _index = 1;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: _index == 1 ? const Color.fromRGBO(229, 248, 0, 1) : Colors.white,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.search,
                                size: 28,
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              Text(
                                "Search".toUpperCase(),
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            _index = 2;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: _index == 2 ? const Color.fromRGBO(229, 248, 0, 1) : Colors.white,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.inventory_2_outlined,
                                size: 28,
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              Text(
                                "My DELIVERIES".toUpperCase(),
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
