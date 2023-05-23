import 'package:flutter/material.dart';

class SaladMainPage extends StatefulWidget {
  const SaladMainPage({Key? key}) : super(key: key);

  @override
  State<SaladMainPage> createState() => _SaladMainPageState();
}

class _SaladMainPageState extends State<SaladMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SaladShop"),
        actions: [

          CircleAvatar(
            child: Icon(Icons.light),
          ),
          SizedBox(width: 8,),
        ],

        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      drawer: const Drawer(),
      body: Column(
        children: [],
      ),
      bottomNavigationBar: BottomAppBar(
        height: 72,
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Home",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  CircleAvatar(
                    radius: 3,
                    backgroundColor: Colors.black,
                  ),
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.explore_outlined,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.percent,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.account_circle_outlined,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
