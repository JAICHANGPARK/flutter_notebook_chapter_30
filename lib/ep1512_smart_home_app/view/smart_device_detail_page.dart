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
  bool _isOn = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // widget.smartDevice.isOn;
    setState(() {
      _isOn = widget.smartDevice.isOn ?? false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 72,
              child: Stack(
                children: [
                  Positioned(
                    left: 16,
                    top: 0,
                    bottom: 0,
                    child: Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(),
                      ),
                      child: const Icon(
                        Icons.arrow_back,
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
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          widget.smartDevice.subtitle ?? "??",
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[400],
                borderRadius: BorderRadius.circular(16)
              ),
              child: SwitchListTile(
                title: Text("Device status"),
                value: _isOn,
                onChanged: (v) {
                  setState(() {
                    _isOn = v;
                  });
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
