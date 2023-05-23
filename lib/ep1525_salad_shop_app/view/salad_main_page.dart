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
      ),
      drawer: Drawer(),
      bottomNavigationBar: BottomAppBar(
        height: 72,
        child: Row(
          children: [
            Column(
              children: [
                Text("Home"),
                CircleAvatar(
                  radius: 4,
                  backgroundColor: Colors.black,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
