import 'package:flutter/material.dart';

void main() {
  runApp(ShoppingCartUI());
}

class ShoppingCartUI extends StatefulWidget {
  const ShoppingCartUI({Key? key}) : super(key: key);

  @override
  State<ShoppingCartUI> createState() => _ShoppingCartUIState();
}

class _ShoppingCartUIState extends State<ShoppingCartUI> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ShoppingCartWidget(),
    );
  }
}

class ShoppingCartWidget extends StatefulWidget {
  const ShoppingCartWidget({Key? key}) : super(key: key);

  @override
  State<ShoppingCartWidget> createState() => _ShoppingCartWidgetState();
}

class _ShoppingCartWidgetState extends State<ShoppingCartWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart"),
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.clear,
            ),
          ),
        ],
        elevation: 1,
      ),
      body: SafeArea(
        child: ListView.builder(itemBuilder: (context, index) {}),
      ),
      persistentFooterButtons: [],
    );
  }
}
