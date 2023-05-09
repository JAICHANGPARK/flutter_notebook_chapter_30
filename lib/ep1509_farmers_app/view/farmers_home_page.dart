import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FarmersHomePage extends StatefulWidget {
  const FarmersHomePage({Key? key}) : super(key: key);

  @override
  State<FarmersHomePage> createState() => _FarmersHomePageState();
}

class _FarmersHomePageState extends State<FarmersHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.black,
        centerTitle: true,
        title: Text("My Virtual Garden"),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: GestureDetector(
                onTap: () {
                  context.go("/profile");
                },
                child: CircleAvatar()),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white
            ),
          )
        ],
      ),
    );
  }
}
