import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'smart_device.freezed.dart';

@freezed
class SmartDevice with _$SmartDevice {
  factory SmartDevice({
    String? name,
    String? subtitle,
    bool? isOn,
    Color? color,
    IconData? icon,
  }) = _SmartDevice;
}
