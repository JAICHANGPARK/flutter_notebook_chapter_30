import 'package:freezed_annotation/freezed_annotation.dart';

part 'smart_home_tab_menu.freezed.dart';

@freezed
class SmartHomeTabMenu with _$SmartHomeTabMenu {
  factory SmartHomeTabMenu({
    String? title,
    String? num,
  }) = _SmartHomeTabMenu;
}
