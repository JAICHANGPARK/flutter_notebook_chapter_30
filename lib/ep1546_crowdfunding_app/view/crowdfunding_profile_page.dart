import 'package:flutter/material.dart';

class CrowdfundingProfilePage extends StatefulWidget {
  const CrowdfundingProfilePage({super.key});

  @override
  State<CrowdfundingProfilePage> createState() => _CrowdfundingProfilePageState();
}

class _CrowdfundingProfilePageState extends State<CrowdfundingProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(16),
              height: 48,
              child: Stack(
                children: [
                  Positioned(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: CircleAvatar(
                          backgroundColor: Colors.grey[300],
                          foregroundColor: Colors.black,
                          child: Icon(Icons.arrow_back),
                        ),
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.grey[300],
                        foregroundColor: Colors.black,
                        child: Icon(Icons.share),
                      ),
                    ],
                  )),
                  Positioned(
                    child: Center(
                      child: Text(
                        "Profile",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              margin: EdgeInsets.all(16),
              child: Column(
                children: [
                  Container(
                    height: 200,
                    child: Stack(
                      children: [
                        Positioned(
                          top: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            height: 150,
                            decoration: BoxDecoration(
                              color: Colors.pink,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  child: CircleAvatar(
                                    backgroundColor: Colors.white,
                                  ),
                                  right: 8,
                                  top: 8,
                                )
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          right: 0,
                          bottom: 0,
                          child: Center(
                            child: Container(
                              height: 100,
                              decoration: BoxDecoration(
                                color: Colors.orange,
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Dream Walker",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  Text("Flutter Streaming"),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat",
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 8),
                    height: 42,
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 8),
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                ],
              ),
            ),
            Container(
              height: 72,
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      
                    ),
                  ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
