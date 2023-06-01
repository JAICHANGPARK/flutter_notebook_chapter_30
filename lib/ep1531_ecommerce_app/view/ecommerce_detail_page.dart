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
            height: 84,
            color: Colors.grey,
          ),
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
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Text(
                "\$72",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ],
          ),
          Divider(),
          Text("Select Size"),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(4),
                ),
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                child: Center(
                  child: Text(
                    "S",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
