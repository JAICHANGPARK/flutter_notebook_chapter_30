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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "Afternoon",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 34
                    ),
                  ),
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
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(),
                    ),
                    padding: EdgeInsets.all(8),
                    child: Icon(
                      Icons.person_outline,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
