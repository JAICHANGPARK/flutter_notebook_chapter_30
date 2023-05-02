import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_30/ep1501_logistics_app/view/widgets/seperator_widget.dart';

class LogisticsDeliveriesPage extends StatefulWidget {
  const LogisticsDeliveriesPage({Key? key}) : super(key: key);

  @override
  State<LogisticsDeliveriesPage> createState() => _LogisticsDeliveriesPageState();
}

class _LogisticsDeliveriesPageState extends State<LogisticsDeliveriesPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Row(
            children: [
              const Text(
                "Deliveries",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(),
                ),
                padding: const EdgeInsets.all(8),
                child: const Icon(
                  Icons.timer_outlined,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 42,
        ),
        Container(
          height: 42,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.all(4),
          child: Row(
            children: [
              Expanded(
                  child: Container(
                decoration:
                    BoxDecoration(color: const Color.fromRGBO(229, 248, 0, 1), borderRadius: BorderRadius.circular(8)),
                child: const Center(
                  child: Text("TO ME (6)"),
                ),
              )),
              Expanded(
                  child: Container(
                child: const Center(
                  child: Text("FROM ME (2)"),
                ),
              )),
            ],
          ),
        ),
        Expanded(
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
                  child: Row(
                    children: [
                      const Text(
                        "ID:",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      const Text(
                        "94 2167 2200 0000",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      const Spacer(),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(),
                          shape: BoxShape.circle,
                        ),
                        padding: const EdgeInsets.all(8),
                        child: const Icon(
                          Icons.location_pin,
                        ),
                      )
                    ],
                  ),
                ),
                Divider(
                  color: Colors.grey,
                  thickness: 2,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("27 JAN 2023"),
                      Text("28 JAN 2023"),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Boston",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        "New york",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 12, 8.0, 12),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 3,
                        backgroundColor: Colors.black,
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 4),
                          height: 2,
                          color: Colors.black,
                        ),
                      ),
                      CircleAvatar(
                        radius: 3,
                        backgroundColor: Colors.black,
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 4),
                          height: 2,
                          color: Colors.black,
                        ),
                      ),
                      CircleAvatar(
                        radius: 3,
                        backgroundColor: Colors.black,
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 4),
                          height: 2,
                          color: Colors.grey,
                        ),
                      ),
                      CircleAvatar(
                        radius: 3,
                        backgroundColor: Colors.grey,
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "ON THE WAY To FACILITY",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: SeparatorWidget(),
                ),
                Row(
                  children: [
                    Expanded(
                        child: Column(
                      children: [
                        Text(
                          "DELIVERY COST",
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          "\$10.99",
                        )
                      ],
                    )),
                    Expanded(child: Column( children: [
                      Text(
                        "ITEMS #",
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        "5",
                      )
                    ],)),
                    Expanded(child: Column( children: [
                      Text(
                        "WEIGHT",
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        "30.8 lbs",
                      )
                    ],)),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: SeparatorWidget(),
                ),
              ],
            ),
          ),
        ),
        Container(
          height: 52,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.grey[200]!,
                spreadRadius: -32,
                blurRadius: 1,
                offset: Offset(0, 32),
              ),
              BoxShadow(
                color: Colors.grey[300]!,
                spreadRadius: -8,
                blurRadius: 1,
                offset: Offset(0, 16),
              ),
            ],
          ),
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            children: [
              const Text(
                "ID:",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              const Text(
                "94 2167 2200 0000",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              const Spacer(),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(),
                  shape: BoxShape.circle,
                ),
                padding: const EdgeInsets.all(8),
                child: const Icon(
                  Icons.location_pin,
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 24,
        )
      ],
    );
  }
}
