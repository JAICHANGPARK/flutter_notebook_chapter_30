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
                      CircleAvatar(),
                      CircleAvatar(),
                    ],
                  )),
                  Positioned(
                    child: Center(
                      child: Text(
                        "Profile",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
