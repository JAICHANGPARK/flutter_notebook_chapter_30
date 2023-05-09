import 'package:freezed_annotation/freezed_annotation.dart';

part 'garden.freezed.dart';

@freezed
class Garden with _$Garden {
  const factory Garden({
    String? emoji,
    String? count,
    String? title,
    String? duration,
    double? progress,
  }) = _Garden;
}
