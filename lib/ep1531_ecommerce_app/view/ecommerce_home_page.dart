import 'package:flutter/material.dart';

class EcommerceHomePage extends StatefulWidget {
  const EcommerceHomePage({Key? key}) : super(key: key);

  @override
  State<EcommerceHomePage> createState() => _EcommerceHomePageState();
}

class _EcommerceHomePageState extends State<EcommerceHomePage> {
  final blueColor = const Color.fromRGBO(56, 130, 205, 1);
  final greyColor = Color.fromRGBO(241, 242, 242, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Container(
                height: 48,
                color: greyColor,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        height: 72,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  child: Icon(Icons.home_outlined),
                  backgroundColor: Color.fromRGBO(56, 130, 205, 1),
                  foregroundColor: Colors.white,
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  "Home",
                  style: TextStyle(fontWeight: FontWeight.bold, color: blueColor),
                ),
              ],
            ),
            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  child: Icon(Icons.language),
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  "Explore",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  child: Icon(Icons.favorite_border),
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  "Wishlist",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  child: Icon(Icons.account_circle_outlined),
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  "Profile",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
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
