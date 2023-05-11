// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'smart_home_tab_menu.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SmartHomeTabMenu {
  String? get title => throw _privateConstructorUsedError;
  String? get num => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SmartHomeTabMenuCopyWith<SmartHomeTabMenu> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SmartHomeTabMenuCopyWith<$Res> {
  factory $SmartHomeTabMenuCopyWith(
          SmartHomeTabMenu value, $Res Function(SmartHomeTabMenu) then) =
      _$SmartHomeTabMenuCopyWithImpl<$Res, SmartHomeTabMenu>;
  @useResult
  $Res call({String? title, String? num});
}

/// @nodoc
class _$SmartHomeTabMenuCopyWithImpl<$Res, $Val extends SmartHomeTabMenu>
    implements $SmartHomeTabMenuCopyWith<$Res> {
  _$SmartHomeTabMenuCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? num = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      num: freezed == num
          ? _value.num
          : num // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SmartHomeTabMenuCopyWith<$Res>
    implements $SmartHomeTabMenuCopyWith<$Res> {
  factory _$$_SmartHomeTabMenuCopyWith(
          _$_SmartHomeTabMenu value, $Res Function(_$_SmartHomeTabMenu) then) =
      __$$_SmartHomeTabMenuCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? title, String? num});
}

/// @nodoc
class __$$_SmartHomeTabMenuCopyWithImpl<$Res>
    extends _$SmartHomeTabMenuCopyWithImpl<$Res, _$_SmartHomeTabMenu>
    implements _$$_SmartHomeTabMenuCopyWith<$Res> {
  __$$_SmartHomeTabMenuCopyWithImpl(
      _$_SmartHomeTabMenu _value, $Res Function(_$_SmartHomeTabMenu) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? num = freezed,
  }) {
    return _then(_$_SmartHomeTabMenu(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      num: freezed == num
          ? _value.num
          : num // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_SmartHomeTabMenu implements _SmartHomeTabMenu {
  _$_SmartHomeTabMenu({this.title, this.num});

  @override
  final String? title;
  @override
  final String? num;

  @override
  String toString() {
    return 'SmartHomeTabMenu(title: $title, num: $num)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SmartHomeTabMenu &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.num, num) || other.num == num));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, num);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SmartHomeTabMenuCopyWith<_$_SmartHomeTabMenu> get copyWith =>
      __$$_SmartHomeTabMenuCopyWithImpl<_$_SmartHomeTabMenu>(this, _$identity);
}

abstract class _SmartHomeTabMenu implements SmartHomeTabMenu {
  factory _SmartHomeTabMenu({final String? title, final String? num}) =
      _$_SmartHomeTabMenu;

  @override
  String? get title;
  @override
  String? get num;
  @override
  @JsonKey(ignore: true)
  _$$_SmartHomeTabMenuCopyWith<_$_SmartHomeTabMenu> get copyWith =>
      throw _privateConstructorUsedError;
}
