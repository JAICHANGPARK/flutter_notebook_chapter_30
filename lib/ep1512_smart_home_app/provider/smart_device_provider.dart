import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_30/ep1512_smart_home_app/model/smart_device.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final smartDeviceProvider = NotifierProvider<SmartDeviceService, List<SmartDevice>>(SmartDeviceService.new);

class SmartDeviceService extends Notifier<List<SmartDevice>> {
  @override
  List<SmartDevice> build() {
    // TODO: implement build
    return [
      SmartDevice(
        name: "Television",
        subtitle: "123456 123456",
        isOn: true,
        color: Colors.grey[200],
        icon: Icons.tv,
      ),
      SmartDevice(
        name: "Stereo",
        subtitle: "123456 123456",
        isOn: false,
        color: Colors.blue[50],
        icon: Icons.speaker,
      ),
      SmartDevice(
        name: "Lamp",
        subtitle: "123456 123456",
        isOn: false,
        color: Colors.orange[100],
        icon: Icons.light,
      ),
      SmartDevice(
        name: "Air-conditioning",
        subtitle: "123456 123456",
        isOn: false,
        color: Colors.grey[200],
        icon: Icons.devices,
      ),
    ];
  }

  void update(int index, SmartDevice data) {
    state[index] = data;
    state = [...state];
  }
}
