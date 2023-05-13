import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_30/ep1512_smart_home_app/model/smart_device.dart';

class SmartDeviceDetailPage extends StatefulWidget {
  const SmartDeviceDetailPage({
    super.key,
    required this.smartDevice,
  });

  final SmartDevice smartDevice;

  @override
  State<SmartDeviceDetailPage> createState() => _SmartDeviceDetailPageState();
}

class _SmartDeviceDetailPageState extends State<SmartDeviceDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 72,
              color: Colors.blue,
              child: Stack(
                children: [
                  Positioned(
                    left: 16,
                    top: 0,
                    bottom: 0,
                    child: Container(
                      height: 54,
                      width: 54,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                      right: 0,
                      bottom: 0,
                      top: 0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        widget.smartDevice.name ?? "??",
                      ),
                      Text(
                        widget.smartDevice.subtitle ?? "??",
                      )
                    ],
                  ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
