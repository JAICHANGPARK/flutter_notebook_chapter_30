import 'package:flutter/material.dart';

class LogisticsHomePage extends StatefulWidget {
  const LogisticsHomePage({Key? key}) : super(key: key);

  @override
  State<LogisticsHomePage> createState() => _LogisticsHomePageState();
}

class _LogisticsHomePageState extends State<LogisticsHomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
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
                      height: 4,
                      decoration: const BoxDecoration(
                          // color: Colors.blue,
                          ),
                      child: Row(
                        children: [
                          Expanded(
                              child: Container(
                            color: Colors.black,
                          )),
                          SizedBox(
                            width: 4,
                          ),
                          Expanded(
                              child: Container(
                            color: Colors.black,
                          )),
                          SizedBox(
                            width: 4,
                          ),
                          Expanded(
                              child: Container(
                            color: Colors.grey,
                          )),
                          SizedBox(
                            width: 4,
                          ),
                          Expanded(
                              child: Container(
                            color: Colors.grey,
                          )),
                          SizedBox(
                            width: 4,
                          ),
                          Expanded(
                              child: Container(
                            color: Colors.grey,
                          )),
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
    );
  }
}
