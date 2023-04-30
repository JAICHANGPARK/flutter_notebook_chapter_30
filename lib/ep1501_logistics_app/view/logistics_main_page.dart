import 'package:flutter/material.dart';

class LogisticsMainPage extends StatefulWidget {
  const LogisticsMainPage({Key? key}) : super(key: key);

  @override
  State<LogisticsMainPage> createState() => _LogisticsMainPageState();
}

class _LogisticsMainPageState extends State<LogisticsMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(234, 234, 234, 1),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Row(
                  children: [
                    Text(
                      "Afternoon",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 34,
                      ),
                    ),
                    Spacer(),
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(),
                      ),
                      padding: EdgeInsets.all(8),
                      child: Icon(
                        Icons.notifications_none,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 8),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(),
                      ),
                      padding: EdgeInsets.all(8),
                      child: Icon(
                        Icons.person_outline,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 32,
              ),
              Container(
                height: 340,
                decoration: BoxDecoration(
                  color: Colors.yellow,
                ),
                margin: EdgeInsets.only(bottom: 16),
              ),
              Container(
                height: 240,
                decoration: BoxDecoration(
                  color: Colors.orange,
                ),
              ),
              Spacer(),
              Container(
                height: 84,
                margin: EdgeInsets.only(bottom: 8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(24),
                ),
                padding: EdgeInsets.all(6),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(229, 248, 0, 1),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.home_filled,
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text("Home".toUpperCase(),),
                          ],
                        ),
                      ),
                    ),
                    Expanded(child: Placeholder()),
                    Expanded(child: Placeholder()),
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
