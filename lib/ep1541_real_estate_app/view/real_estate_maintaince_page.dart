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
          labelColor: Colors.black,
          indicatorColor: Colors.orange,
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
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                        child: Row(
                          children: [
                            Container(
                              height: 52,
                              width: 52,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.blue,
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 8),
                                child: Text(
                                  "Flutter Project - Title Title Title Title Title Title Title Title",
                                  maxLines: 2,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.blue[50],
                                borderRadius: BorderRadius.circular(4),
                              ),
                              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                              child: Text(
                                "Live",
                                style: TextStyle(color: Colors.blue),
                              ),
                            )
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
