import 'package:flutter/material.dart';

void main() {
  runApp(const ShoppingCartUI());
}

class ShoppingCartUI extends StatefulWidget {
  const ShoppingCartUI({Key? key}) : super(key: key);

  @override
  State<ShoppingCartUI> createState() => _ShoppingCartUIState();
}

class _ShoppingCartUIState extends State<ShoppingCartUI> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
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
        title: const Text("Cart"),
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
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
              padding: const EdgeInsets.all(16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 72,
                    width: 72,
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("DREAMWALKER MODULES"),
                        SizedBox(
                          height: 8,
                        ),
                        const Text(
                          "DREAM WALKER",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        SizedBox(height: 12),
                        const Row(
                          children: [
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: "SKU: ",
                                  ),
                                  TextSpan(
                                    text: "476415",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Brand: ",
                                  ),
                                  TextSpan(
                                    text: "Moog",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 16),
                          decoration: BoxDecoration(
                            color: Colors.green[100],
                            borderRadius: BorderRadius.circular(4),
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 4,
                            vertical: 4
                          ),
                          child: const Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.local_shipping,
                                size: 20,
                                color: Colors.teal,
                              ),
                              SizedBox(
                                width: 6,
                              ),
                              Text(
                                "Free Shipping",
                                style: TextStyle(
                                  color: Colors.teal,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 8, top: 0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                            border: Border.all(
                              color: Colors.grey[200]!,
                            ),
                          ),
                          child: const IntrinsicHeight(
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
          separatorBuilder: (BuildContext context, int index) => const Divider(),
        ),
      ),
      persistentFooterButtons: [
        OutlinedButton(
          onPressed: () {},
          child: const Text(
            "View Cart",
          ),
        ),
        ElevatedButton(
          onPressed: () {},
          child: const Text("CHECKOUT"),
        ),
      ],
    );
  }
}
