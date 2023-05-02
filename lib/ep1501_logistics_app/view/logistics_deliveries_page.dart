import 'package:flutter/material.dart';

class LogisticsDeliveriesPage extends StatefulWidget {
  const LogisticsDeliveriesPage({Key? key}) : super(key: key);

  @override
  State<LogisticsDeliveriesPage> createState() => _LogisticsDeliveriesPageState();
}

class _LogisticsDeliveriesPageState extends State<LogisticsDeliveriesPage> {
  @override
  Widget build(BuildContext context) {
    return     Column(
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
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(229, 248, 0, 1),
                        borderRadius: BorderRadius.circular(8)),
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
                  padding: const EdgeInsets.fromLTRB(16,8,16,0),
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
