import 'package:flutter/material.dart';

class RealEstateMaintenancePage extends StatefulWidget {
  const RealEstateMaintenancePage({super.key});

  @override
  State<RealEstateMaintenancePage> createState() => _RealEstateMaintenancePageState();
}

class _RealEstateMaintenancePageState extends State<RealEstateMaintenancePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBar(
          title: Text("Maintenance"),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.build_outlined)),
          ],
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
        )
      ],
    );
  }
}
