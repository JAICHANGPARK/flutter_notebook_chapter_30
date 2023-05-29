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
          Positioned.fill(
              child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                
                colors: [
                  Colors.black.withOpacity(0.6),
                  Colors.black.withOpacity(0.3),

                ],
              ),
            ),
          )),
          Positioned(
            left: 16,
            right: 16,
            bottom: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Fine your unique style"),
                Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."),
                Container(
                  child: Center(
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
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
