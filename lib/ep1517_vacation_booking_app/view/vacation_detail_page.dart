import 'package:flutter/material.dart';

class VacationDetailPage extends StatefulWidget {
  const VacationDetailPage({Key? key}) : super(key: key);

  @override
  State<VacationDetailPage> createState() => _VacationDetailPageState();
}

class _VacationDetailPageState extends State<VacationDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.black,
        title: Text("SEARCH"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.share),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.favorite_border),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(child: Container()),
          Column(
            children: [
              Row(
                children: [
                  Text("Sample Place4"),
                  Spacer(),
                  Icon(Icons.star),
                  Text("4.8"),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
