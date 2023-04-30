import 'package:flutter/material.dart';

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
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Row(
                  children: [
                    const Text(
                      "Afternoon",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 34,
                      ),
                    ),
                    const Spacer(),
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(),
                      ),
                      padding: const EdgeInsets.all(8),
                      child: const Icon(
                        Icons.notifications_none,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 8),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(),
                      ),
                      padding: const EdgeInsets.all(8),
                      child: const Icon(
                        Icons.person_outline,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              Container(
                height: 340,
                decoration: const BoxDecoration(
                  color: Colors.yellow,
                ),
                margin: const EdgeInsets.only(bottom: 16),
              ),
              Container(
                height: 240,
                decoration: const BoxDecoration(
                  color: Colors.orange,
                ),
              ),
              const Spacer(),
              Container(
                height: 78,
                margin: const EdgeInsets.only(bottom: 8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(24),
                ),
                padding: const EdgeInsets.all(6),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(229, 248, 0, 1),
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
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Expanded(child: Placeholder()),
                    const Expanded(child: Placeholder()),
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
