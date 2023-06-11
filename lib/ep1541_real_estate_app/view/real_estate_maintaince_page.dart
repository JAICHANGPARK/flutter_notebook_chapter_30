import 'package:flutter/material.dart';

class RealEstateMaintenancePage extends StatefulWidget {
  const RealEstateMaintenancePage({super.key});

  @override
  State<RealEstateMaintenancePage> createState() => _RealEstateMaintenancePageState();
}

class _RealEstateMaintenancePageState extends State<RealEstateMaintenancePage> with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Maintenance"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.build_outlined)),
        ],
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        bottom: TabBar(
          controller: tabController,
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
      body: TabBarView(
        controller: tabController,
        children: [
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: Colors.grey[300]!,
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text("STATUS"),
                            Spacer(),
                            Icon(
                              Icons.check_circle,
                              size: 16,
                              color: Colors.orange,
                            ),
                            Text("Confirmed")
                          ],
                        ),
                      ),
                      Divider(),
                    ],
                  ),
                );
              },
              itemCount: 10,
            ),
          ),
          Container(),
        ],
      ),
    );
  }
}
