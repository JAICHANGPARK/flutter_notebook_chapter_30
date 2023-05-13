// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'smart_device.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SmartDevice {
  String? get name => throw _privateConstructorUsedError;
  String? get subtitle => throw _privateConstructorUsedError;
  bool? get isOn => throw _privateConstructorUsedError;
  Color? get color => throw _privateConstructorUsedError;
  IconData? get icon => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SmartDeviceCopyWith<SmartDevice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SmartDeviceCopyWith<$Res> {
  factory $SmartDeviceCopyWith(
          SmartDevice value, $Res Function(SmartDevice) then) =
      _$SmartDeviceCopyWithImpl<$Res, SmartDevice>;
  @useResult
  $Res call(
      {String? name,
      String? subtitle,
      bool? isOn,
      Color? color,
      IconData? icon});
}

/// @nodoc
class _$SmartDeviceCopyWithImpl<$Res, $Val extends SmartDevice>
    implements $SmartDeviceCopyWith<$Res> {
  _$SmartDeviceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? subtitle = freezed,
    Object? isOn = freezed,
    Object? color = freezed,
    Object? icon = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      subtitle: freezed == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String?,
      isOn: freezed == isOn
          ? _value.isOn
          : isOn // ignore: cast_nullable_to_non_nullable
              as bool?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as IconData?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SmartDeviceCopyWith<$Res>
    implements $SmartDeviceCopyWith<$Res> {
  factory _$$_SmartDeviceCopyWith(
          _$_SmartDevice value, $Res Function(_$_SmartDevice) then) =
      __$$_SmartDeviceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? subtitle,
      bool? isOn,
      Color? color,
      IconData? icon});
}

/// @nodoc
class __$$_SmartDeviceCopyWithImpl<$Res>
    extends _$SmartDeviceCopyWithImpl<$Res, _$_SmartDevice>
    implements _$$_SmartDeviceCopyWith<$Res> {
  __$$_SmartDeviceCopyWithImpl(
      _$_SmartDevice _value, $Res Function(_$_SmartDevice) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? subtitle = freezed,
    Object? isOn = freezed,
    Object? color = freezed,
    Object? icon = freezed,
  }) {
    return _then(_$_SmartDevice(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      subtitle: freezed == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String?,
      isOn: freezed == isOn
          ? _value.isOn
          : isOn // ignore: cast_nullable_to_non_nullable
              as bool?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as IconData?,
    ));
  }
}

/// @nodoc

class _$_SmartDevice implements _SmartDevice {
  _$_SmartDevice({this.name, this.subtitle, this.isOn, this.color, this.icon});

  @override
  final String? name;
  @override
  final String? subtitle;
  @override
  final bool? isOn;
  @override
  final Color? color;
  @override
  final IconData? icon;

  @override
  String toString() {
    return 'SmartDevice(name: $name, subtitle: $subtitle, isOn: $isOn, color: $color, icon: $icon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SmartDevice &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.subtitle, subtitle) ||
                other.subtitle == subtitle) &&
            (identical(other.isOn, isOn) || other.isOn == isOn) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, subtitle, isOn, color, icon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SmartDeviceCopyWith<_$_SmartDevice> get copyWith =>
      __$$_SmartDeviceCopyWithImpl<_$_SmartDevice>(this, _$identity);
}

abstract class _SmartDevice implements SmartDevice {
  factory _SmartDevice(
      {final String? name,
      final String? subtitle,
      final bool? isOn,
      final Color? color,
      final IconData? icon}) = _$_SmartDevice;

  @override
  String? get name;
  @override
  String? get subtitle;
  @override
  bool? get isOn;
  @override
  Color? get color;
  @override
  IconData? get icon;
  @override
  @JsonKey(ignore: true)
  _$$_SmartDeviceCopyWith<_$_SmartDevice> get copyWith =>
      throw _privateConstructorUsedError;
}
