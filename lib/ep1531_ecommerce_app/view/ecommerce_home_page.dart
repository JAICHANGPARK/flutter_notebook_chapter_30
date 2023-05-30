import 'package:flutter/material.dart';

class EcommerceHomePage extends StatefulWidget {
  const EcommerceHomePage({Key? key}) : super(key: key);

  @override
  State<EcommerceHomePage> createState() => _EcommerceHomePageState();
}

class _EcommerceHomePageState extends State<EcommerceHomePage> {
  final blueColor = Color.fromRGBO(56, 130, 205, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [],
      ),
      bottomNavigationBar: BottomAppBar(
        height: 72,
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  child: Icon(Icons.home_outlined),
                  backgroundColor: Color.fromRGBO(56, 130, 205, 1),
                  foregroundColor: Colors.white,
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  "Home",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: blueColor
                  ),

                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
