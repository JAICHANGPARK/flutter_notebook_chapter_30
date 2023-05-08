import 'package:flutter/material.dart';

class FarmersHomePage extends StatefulWidget {
  const FarmersHomePage({Key? key}) : super(key: key);

  @override
  State<FarmersHomePage> createState() => _FarmersHomePageState();
}

class _FarmersHomePageState extends State<FarmersHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("My Virtual Garden"),
        actions: [
          CircleAvatar(),
        ],
      ),
    );
  }
}
