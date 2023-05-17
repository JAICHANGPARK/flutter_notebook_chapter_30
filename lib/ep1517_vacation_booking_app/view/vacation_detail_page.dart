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
        title: Text("SEARCH"),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.share),
        ],
      ),
    );
  }
}
