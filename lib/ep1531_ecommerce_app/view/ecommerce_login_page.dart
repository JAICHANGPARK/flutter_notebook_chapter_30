import 'package:flutter/material.dart';

class EcommerceLoginPage extends StatefulWidget {
  const EcommerceLoginPage({Key? key}) : super(key: key);

  @override
  State<EcommerceLoginPage> createState() => _EcommerceLoginPageState();
}

class _EcommerceLoginPageState extends State<EcommerceLoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.network(
              "https://cdn.pixabay.com/photo/2023/03/05/23/46/girl-7832385_1280.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            child: Column(
              children: [
                Text("Fine your unique style"),
                Text("")
              ],
            ),
          )
        ],
      ),
    );
  }
}
