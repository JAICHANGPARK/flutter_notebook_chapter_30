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
        foregroundColor: Colors.black,
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
