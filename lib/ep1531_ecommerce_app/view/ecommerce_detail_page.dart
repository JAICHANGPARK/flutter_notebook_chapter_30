import 'package:flutter/material.dart';

class EcommerceDetailPage extends StatefulWidget {
  const EcommerceDetailPage({Key? key}) : super(key: key);

  @override
  State<EcommerceDetailPage> createState() => _EcommerceDetailPageState();
}

class _EcommerceDetailPageState extends State<EcommerceDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Product details"),
        leading: Container(
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(4),
          ),
          margin: EdgeInsets.all(8),
          child: Icon(Icons.arrow_back),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.black,
        actions: [
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(4),
            ),
            margin: EdgeInsets.all(8),
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Icon(Icons.favorite_border),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 340,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(8),
            ),
            margin: EdgeInsets.all(16),
          ),
          Container(
            height: 72,
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(color: Colors.blue),
                      color: Colors.grey[200],
                    ),
                  ),
                ),
                Expanded(
                    child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(
                      color: Colors.white,
                    ),
                    color: Colors.grey[200],
                  ),
                )),
                Expanded(child: Container()),
                Expanded(child: Container()),
                Expanded(child: Container()),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 6,
                    ),
                    Text("Developer Hoodie")
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Flutter Hoodie",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      "\$72",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                Divider(),
                Text(
                  "Select Size",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(2),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                      margin: EdgeInsets.only(right: 8),
                      child: Center(
                        child: Text(
                          "S",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[300]!,
                        borderRadius: BorderRadius.circular(2),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                      margin: EdgeInsets.only(right: 8),
                      child: Center(
                        child: Text(
                          "M",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            // color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[300]!,
                        borderRadius: BorderRadius.circular(2),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                      margin: EdgeInsets.only(right: 8),
                      child: Center(
                        child: Text(
                          "L",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            // color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[300]!,
                        borderRadius: BorderRadius.circular(2),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                      margin: EdgeInsets.only(right: 8),
                      child: Center(
                        child: Text(
                          "XL",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            // color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Text(
                    "Description",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            Container(
              child: Icon(
                Icons.shopping_cart_outlined,
              ),
              margin: EdgeInsets.all(8),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.grey[200]!,
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Colors.blue,
                ),
                margin: EdgeInsets.symmetric(vertical: 8),
                height: 42,
                child: Center(
                  child: Text(
                    "Buy now",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
