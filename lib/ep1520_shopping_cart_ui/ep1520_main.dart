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
        child: ListView.separated(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.all(16),
              child: Row(
                children: [
                  Container(
                    height: 72,
                    width: 72,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("DREAMWALKER MODULES"),
                        Text("DREAM WALKER"),
                        Row(
                          children: [
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: "SKU",
                                  ),
                                  TextSpan(
                                    text: "476415",
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) => Divider(),
        ),
      ),
      persistentFooterButtons: [
        OutlinedButton(
          onPressed: () {},
          child: Text(
            "View Cart",
          ),
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text("CHECKOUT"),
        ),
      ],
    );
  }
}
