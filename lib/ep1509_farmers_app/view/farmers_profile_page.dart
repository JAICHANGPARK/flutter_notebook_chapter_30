import 'package:flutter/material.dart';


class FarmersProfilePage extends StatefulWidget {
  const FarmersProfilePage({Key? key}) : super(key: key);

  @override
  State<FarmersProfilePage> createState() => _FarmersProfilePageState();
}

class _FarmersProfilePageState extends State<FarmersProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(child: child)
        ],
      ),
    );
  }
}
