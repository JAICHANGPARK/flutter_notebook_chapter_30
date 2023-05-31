import 'package:flutter/material.dart';

class EcommerceHomePage extends StatefulWidget {
  const EcommerceHomePage({Key? key}) : super(key: key);

  @override
  State<EcommerceHomePage> createState() => _EcommerceHomePageState();
}

class _EcommerceHomePageState extends State<EcommerceHomePage> {
  final blueColor = const Color.fromRGBO(56, 130, 205, 1);
  final greyColor = const Color.fromRGBO(243, 249, 249, 1);

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
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: const Center(
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
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: greyColor,
                        borderRadius: BorderRadius.circular(2),
                      ),
                      child: const Icon(
                        Icons.notifications_none,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: greyColor,
                        borderRadius: BorderRadius.circular(2),
                      ),
                      padding: const EdgeInsets.all(4),
                      child: const Icon(
                        Icons.shopping_cart_outlined,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 130,
                margin: const EdgeInsets.symmetric(vertical: 16),
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(8),
                  image: const DecorationImage(
                    image: NetworkImage("https://cdn.pixabay.com/photo/2016/10/26/07/56/wedding-1770860_1280.jpg"),
                    fit: BoxFit.cover,
                  ),
                  gradient: LinearGradient(
                    colors: [
                      Color.fromRGBO(55, 96, 148, 1),
                      Color.fromRGBO(74, 96, 130, 1),
                      Colors.white.withOpacity(0.1),
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned.fill(child: Container(
                      decoration: BoxDecoration(  gradient: LinearGradient(
                          colors: [
                            Color.fromRGBO(55, 96, 148, 1),
                            Color.fromRGBO(74, 96, 130, 1),
                            Colors.white.withOpacity(0.1),
                          ],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight
                      ),),
                    ))
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("Shop by Category"),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
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
                          const Text("Popular"),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              "See all",
                            ),
                          )
                        ],
                      ),
                      Container(
                        height: 260,
                        color: Colors.blueGrey,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("Recommended for you"),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
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