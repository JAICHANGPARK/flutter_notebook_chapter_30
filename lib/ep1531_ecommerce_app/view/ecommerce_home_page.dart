import 'package:flutter/material.dart';

class EcommerceHomePage extends StatefulWidget {
  const EcommerceHomePage({Key? key}) : super(key: key);

  @override
  State<EcommerceHomePage> createState() => _EcommerceHomePageState();
}

class _EcommerceHomePageState extends State<EcommerceHomePage> {
  final blueColor = const Color.fromRGBO(56, 130, 205, 1);
  final greyColor = Color.fromRGBO(243, 249, 249, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Container(
                height: 32,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: greyColor,
                          borderRadius: BorderRadius.circular(2),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: Center(
                          child: TextField(
                            decoration: InputDecoration(
                              icon: Icon(
                                Icons.search,
                                size: 18,
                              ),
                              border: InputBorder.none,
                              hintText: "Search",
                              hintStyle: TextStyle(fontSize: 12),
                              contentPadding: EdgeInsets.fromLTRB(8, 0, 0, 8),
                            ),

                            // style: TextStyle(fontSize: 12),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 8),
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: greyColor,
                        borderRadius: BorderRadius.circular(2),
                      ),
                      child: Icon(
                        Icons.notifications_none,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: greyColor,
                        borderRadius: BorderRadius.circular(2),
                      ),
                      padding: EdgeInsets.all(4),
                      child: Icon(
                        Icons.shopping_cart_outlined,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 130,
                color: Colors.blueGrey,
                margin: EdgeInsets.symmetric(vertical: 16),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Shop by Category"),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "See all",
                            ),
                          )
                        ],
                      ),
                      Container(
                        height: 84,
                        color: Colors.blueGrey,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Popular"),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "See all",
                            ),
                          )
                        ],
                      ),
                      Container(
                        height: 260,
                        color: Colors.blueGrey,
                      )
                    ],
                  ),
                ),
              ),
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
