import 'package:flutter/material.dart';

class RealEstateMainPage extends StatefulWidget {
  const RealEstateMainPage({super.key});

  @override
  State<RealEstateMainPage> createState() => _RealEstateMainPageState();
}

class _RealEstateMainPageState extends State<RealEstateMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 240,
            color: Colors.blue,
            padding: EdgeInsets.fromLTRB(16, 84, 16, 24),
            child: Column(
              
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Seek out your dream living space", style: TextStyle(
                  color: Colors.white,

                ),)
              ],
            ),
          ),
          Container(
            height: 64,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 2,
                  spreadRadius: 2,
                  offset: Offset(0, 3),
                )
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(16, 24, 16, 24),
                    height: 64,
                    decoration: BoxDecoration(
                      color: Colors.red,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 0, 0, 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Featured"),
                        Container(
                          height: 300,
                          color: Colors.pink,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.apps), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: "My Property"),
          BottomNavigationBarItem(icon: Icon(Icons.build_outlined), label: "Mainenance"),
          BottomNavigationBarItem(icon: Icon(Icons.mail_outline), label: "Message"),
        ],
      ),
    );
  }
}
