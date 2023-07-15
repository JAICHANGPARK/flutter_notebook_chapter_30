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
        title: const Text("Maintenance"),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.build_outlined)),
        ],
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        bottom: TabBar(
          controller: tabController,
          labelColor: Colors.black,
          indicatorColor: Colors.orange,
          tabs: const [
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
          ListView.builder(
            shrinkWrap: true,
            itemCount: 10,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: Colors.grey[300]!,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            "STATUS",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[400],
                            ),
                          ),
                          const Spacer(),
                          const Icon(
                            Icons.check_circle,
                            size: 16,
                            color: Colors.orange,
                          ),
                          const Text("Confirmed")
                        ],
                      ),
                    ),
                    const Divider(),
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
                          const Expanded(
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8),
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
                            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                            child: const Text(
                              "Live",
                              style: TextStyle(color: Colors.blue),
                            ),
                          )
                        ],
                      ),
                    ),
                    const Divider(),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "MAINTENANCE",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[400],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(4),
                            ),
                            margin: const EdgeInsets.only(top: 8),
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                            child: const Row(
                              children: [
                                Icon(
                                  Icons.build_outlined,
                                  size: 14,
                                ),
                                SizedBox(
                                  width: 7,
                                ),
                                Text(
                                  "Addressing electrical issues",
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    const Divider(),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "VENDOR",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[400],
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              const CircleAvatar(),
                              const Expanded(
                                child: Padding(
                                  padding: EdgeInsets.only(left: 8),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Dreamwalker"),
                                      Text("+1 2345 6789"),
                                    ],
                                  ),
                                ),
                              ),
                              OutlinedButton(
                                onPressed: () {},
                                child: const Text("Email"),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              MaterialButton(
                                minWidth: 24,
                                color: Colors.orange,
                                onPressed: () {},
                                child: const Text("Call"),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              );
            },
          ),
          Container(),
        ],
      ),
    );
  }
}
