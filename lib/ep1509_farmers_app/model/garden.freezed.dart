// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'garden.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Garden {
  String? get emoji => throw _privateConstructorUsedError;
  String? get count => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get duration => throw _privateConstructorUsedError;
  double? get progress => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GardenCopyWith<Garden> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GardenCopyWith<$Res> {
  factory $GardenCopyWith(Garden value, $Res Function(Garden) then) =
      _$GardenCopyWithImpl<$Res, Garden>;
  @useResult
  $Res call(
      {String? emoji,
      String? count,
      String? title,
      String? duration,
      double? progress});
}

/// @nodoc
class _$GardenCopyWithImpl<$Res, $Val extends Garden>
    implements $GardenCopyWith<$Res> {
  _$GardenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emoji = freezed,
    Object? count = freezed,
    Object? title = freezed,
    Object? duration = freezed,
    Object? progress = freezed,
  }) {
    return _then(_value.copyWith(
      emoji: freezed == emoji
          ? _value.emoji
          : emoji // ignore: cast_nullable_to_non_nullable
              as String?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String?,
      progress: freezed == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GardenCopyWith<$Res> implements $GardenCopyWith<$Res> {
  factory _$$_GardenCopyWith(_$_Garden value, $Res Function(_$_Garden) then) =
      __$$_GardenCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? emoji,
      String? count,
      String? title,
      String? duration,
      double? progress});
}

/// @nodoc
class __$$_GardenCopyWithImpl<$Res>
    extends _$GardenCopyWithImpl<$Res, _$_Garden>
    implements _$$_GardenCopyWith<$Res> {
  __$$_GardenCopyWithImpl(_$_Garden _value, $Res Function(_$_Garden) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emoji = freezed,
    Object? count = freezed,
    Object? title = freezed,
    Object? duration = freezed,
    Object? progress = freezed,
  }) {
    return _then(_$_Garden(
      emoji: freezed == emoji
          ? _value.emoji
          : emoji // ignore: cast_nullable_to_non_nullable
              as String?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String?,
      progress: freezed == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$_Garden implements _Garden {
  const _$_Garden(
      {this.emoji, this.count, this.title, this.duration, this.progress});

  @override
  final String? emoji;
  @override
  final String? count;
  @override
  final String? title;
  @override
  final String? duration;
  @override
  final double? progress;

  @override
  String toString() {
    return 'Garden(emoji: $emoji, count: $count, title: $title, duration: $duration, progress: $progress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Garden &&
            (identical(other.emoji, emoji) || other.emoji == emoji) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.progress, progress) ||
                other.progress == progress));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, emoji, count, title, duration, progress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GardenCopyWith<_$_Garden> get copyWith =>
      __$$_GardenCopyWithImpl<_$_Garden>(this, _$identity);
}

abstract class _Garden implements Garden {
  const factory _Garden(
      {final String? emoji,
      final String? count,
      final String? title,
      final String? duration,
      final double? progress}) = _$_Garden;

  @override
  String? get emoji;
  @override
  String? get count;
  @override
  String? get title;
  @override
  String? get duration;
  @override
  double? get progress;
  @override
  @JsonKey(ignore: true)
  _$$_GardenCopyWith<_$_Garden> get copyWith =>
      throw _privateConstructorUsedError;
}
