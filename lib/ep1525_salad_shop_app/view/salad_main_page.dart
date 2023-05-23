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
        title: Text("SaladShop"),
        actions: [],
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      drawer: Drawer(),
      bottomNavigationBar: BottomAppBar(
        height: 72,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Home"),
                  SizedBox(
                    height: 4,
                  ),
                  CircleAvatar(
                    radius: 4,
                    backgroundColor: Colors.black,
                  ),
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.explore_outlined,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.percent,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
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
