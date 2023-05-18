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
                crossAxisAlignment: CrossAxisAlignment.start,
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
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 16),
                          decoration: BoxDecoration(
                            color: Colors.green[100],
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(Icons.local_shipping),
                              Text("Free Shipping"),
                            ],
                          ),
                        ),

                        Container(
                          margin: EdgeInsets.only(bottom: 8 ,top: 0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                            border: Border.all(
                              color: Colors.grey[200]!,
                            ),
                          ),
                          child: IntrinsicHeight(
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(Icons.remove),
                                VerticalDivider(),
                                Text("1"),
                                VerticalDivider(),
                                Icon(Icons.add),
                              ],
                            ),
                          ),
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
