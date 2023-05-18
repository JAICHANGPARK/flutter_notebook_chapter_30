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
    return const Placeholder();
  }
}
