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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: IndexedStack(
                  index: _index,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(229, 248, 0, 1),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          margin: const EdgeInsets.only(bottom: 16),
                          child: Stack(
                            children: [
                              Positioned(
                                left: 24,
                                right: 16,
                                top: 24,
                                bottom: 16,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Delivery TEAM\nTHAT CARES\nABOUT YOU",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const Spacer(),
                                    const Text(
                                      "Logistics",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(top: 16),
                                      height: 6,
                                      decoration: const BoxDecoration(
                                        color: Colors.blue,
                                      ),
                                      child: Row(
                                        children: const [
                                          Expanded(child: Placeholder()),
                                          Expanded(child: Placeholder()),
                                          Expanded(child: Placeholder()),
                                          Expanded(child: Placeholder()),
                                          Expanded(child: Placeholder()),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 220,
                          // decoration: const BoxDecoration(
                          //   color: Colors.orange,
                          // ),
                          child: Column(
                            children: [
                              Expanded(
                                  child: Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      child: Stack(
                                        children: const [
                                          Positioned(
                                            right: 12,
                                            top: 12,
                                            child: Icon(Icons.rocket_launch),
                                          ),
                                          Positioned(
                                            bottom: 12,
                                            left: 12,
                                            child: Text(
                                              "SEND\nSHIPMENT",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      child: Stack(
                                        children: const [
                                          Positioned(
                                            right: 12,
                                            top: 12,
                                            child: Icon(Icons.save),
                                          ),
                                          Positioned(
                                            bottom: 12,
                                            left: 12,
                                            child: Text(
                                              "FEES\n&PRICES",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              )),
                              const SizedBox(
                                height: 4,
                              ),
                              Expanded(
                                  child: Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(12),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey[400]!,
                                            spreadRadius: -4,
                                            blurRadius: 3,
                                            offset: const Offset(0, 9),
                                          )
                                        ],
                                      ),
                                      child: Stack(
                                        children: const [
                                          Positioned(
                                            right: 12,
                                            top: 12,
                                            child: Icon(Icons.biotech),
                                          ),
                                          Positioned(
                                            bottom: 12,
                                            left: 12,
                                            child: Text(
                                              "HELP\nCENTER",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(12),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey[400]!,
                                            spreadRadius: -4,
                                            blurRadius: 3,
                                            offset: const Offset(0, 9),
                                          )
                                        ],
                                      ),
                                      child: Stack(
                                        children: const [
                                          Positioned(
                                            right: 12,
                                            top: 12,
                                            child: Icon(Icons.flight_takeoff),
                                          ),
                                          Positioned(
                                            bottom: 12,
                                            left: 12,
                                            child: Text(
                                              "SERVICE\nPOINTS",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              )),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(),
                    Container(),
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
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12
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
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12
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
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12
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
