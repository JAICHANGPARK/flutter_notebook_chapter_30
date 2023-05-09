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
            decoration: BoxDecoration(color: Colors.white),
            child: Wrap(
              children: [
                Chip(
                  backgroundColor: Colors.grey[200],
                  label: Text(
                    "2 Seeds",
                  ),
                ),
                Chip(
                  backgroundColor: Colors.grey[200],
                  label: Text(
                    "16 In Growth",
                  ),
                ),
                Chip(
                  backgroundColor: Colors.grey[200],
                  label: Text(
                    "5 Ready",
                  ),
                ),
                Chip(
                  backgroundColor: Colors.grey[200],
                  label: Text(
                    "2 Seeds",
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
