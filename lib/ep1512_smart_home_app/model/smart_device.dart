import 'package:freezed_annotation/freezed_annotation.dart';

part 'smart_device.freezed.dart';

@freezed
class SmartDevice with _$SmartDevice {
  factory SmartDevice({
    String? name,
    String? subtitle,
    bool? isOn,
  }) = _SmartDevice;
}
