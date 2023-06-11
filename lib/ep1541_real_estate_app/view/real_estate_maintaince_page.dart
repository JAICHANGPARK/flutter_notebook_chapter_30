import 'package:flutter/material.dart';

class RealEstateMaintenancePage extends StatefulWidget {
  const RealEstateMaintenancePage({super.key});

  @override
  State<RealEstateMaintenancePage> createState() => _RealEstateMaintenancePageState();
}

class _RealEstateMaintenancePageState extends State<RealEstateMaintenancePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          AppBar(
            title: Text("Maintenance"),
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.build_outlined)),
            ],
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            bottom: TabBar(
              tabs: [
                Tab(
                  text: "Active(2)",
                ),
                Tab(
                  text: "History(21)",
                ),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              children: [
                Container(),
                Container(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
