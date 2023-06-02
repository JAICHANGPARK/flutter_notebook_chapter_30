import 'package:flutter/material.dart';

class Product{
  String? img;

  Product(this.img);
}

class EcommerceDetailPage extends StatefulWidget {
  const EcommerceDetailPage({Key? key}) : super(key: key);

  @override
  State<EcommerceDetailPage> createState() => _EcommerceDetailPageState();
}

class _EcommerceDetailPageState extends State<EcommerceDetailPage> {
  List<Product> productItems = [
    Product(
      "https://cdn.pixabay.com/photo/2018/01/29/19/55/fur-3117033_1280.jpg",
    ),
    Product(
      "https://cdn.pixabay.com/photo/2018/01/29/19/55/fur-3117033_1280.jpg",
    ),
    Product(
      "https://cdn.pixabay.com/photo/2018/01/29/19/55/fur-3117033_1280.jpg",
    ),
    Product(
      "https://cdn.pixabay.com/photo/2018/01/29/19/55/fur-3117033_1280.jpg",
    ),
    Product(
      "https://cdn.pixabay.com/photo/2018/01/29/19/55/fur-3117033_1280.jpg",
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Product details"),
        leading: Container(
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(4),
          ),
          margin: const EdgeInsets.all(8),
          child: const Icon(Icons.arrow_back),
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
            margin: const EdgeInsets.all(8),
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: const Icon(Icons.favorite_border),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 340,
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(8),
            ),
            margin: const EdgeInsets.all(16),
          ),
          Container(
            height: 72,
            padding: const EdgeInsets.symmetric(horizontal: 16),
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
                const SizedBox(
                  width: 8,
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
                const SizedBox(
                  width: 8,
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
                const SizedBox(
                  width: 8,
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
                const SizedBox(
                  width: 8,
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
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  children: [
                    CircleAvatar(
                      radius: 6,
                    ),
                    Text("Developer Hoodie")
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                const Divider(
                  height: 24,
                ),
                const Text(
                  "Select Size",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(2),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                      margin: const EdgeInsets.only(right: 8),
                      child: const Center(
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
                      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                      margin: const EdgeInsets.only(right: 8),
                      child: const Center(
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
                      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                      margin: const EdgeInsets.only(right: 8),
                      child: const Center(
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
                      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                      margin: const EdgeInsets.only(right: 8),
                      child: const Center(
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
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 12),
                  child: Text(
                    "Description",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, "),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            Container(
              child: const Icon(
                Icons.shopping_cart_outlined,
              ),
              margin: const EdgeInsets.all(8),
              padding: const EdgeInsets.all(8),
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
                margin: const EdgeInsets.symmetric(vertical: 8),
                height: 42,
                child: const Center(
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
