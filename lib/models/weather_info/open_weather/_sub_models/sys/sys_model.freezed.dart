// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sys_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SysModel _$SysModelFromJson(Map<String, dynamic> json) {
  return _SysModel.fromJson(json);
}

/// @nodoc
mixin _$SysModel {
  @JsonKey(name: 'country')
  String get country => throw _privateConstructorUsedError;
  @JsonKey(name: 'sunrise')
  int get sunrise => throw _privateConstructorUsedError;
  @JsonKey(name: 'sunset')
  int get sunset => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SysModelCopyWith<SysModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SysModelCopyWith<$Res> {
  factory $SysModelCopyWith(SysModel value, $Res Function(SysModel) then) =
      _$SysModelCopyWithImpl<$Res, SysModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'country') String country,
      @JsonKey(name: 'sunrise') int sunrise,
      @JsonKey(name: 'sunset') int sunset});
}

/// @nodoc
class _$SysModelCopyWithImpl<$Res, $Val extends SysModel>
    implements $SysModelCopyWith<$Res> {
  _$SysModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = null,
    Object? sunrise = null,
    Object? sunset = null,
  }) {
    return _then(_value.copyWith(
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      sunrise: null == sunrise
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as int,
      sunset: null == sunset
          ? _value.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SysModelImplCopyWith<$Res>
    implements $SysModelCopyWith<$Res> {
  factory _$$SysModelImplCopyWith(
          _$SysModelImpl value, $Res Function(_$SysModelImpl) then) =
      __$$SysModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'country') String country,
      @JsonKey(name: 'sunrise') int sunrise,
      @JsonKey(name: 'sunset') int sunset});
}

/// @nodoc
class __$$SysModelImplCopyWithImpl<$Res>
    extends _$SysModelCopyWithImpl<$Res, _$SysModelImpl>
    implements _$$SysModelImplCopyWith<$Res> {
  __$$SysModelImplCopyWithImpl(
      _$SysModelImpl _value, $Res Function(_$SysModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = null,
    Object? sunrise = null,
    Object? sunset = null,
  }) {
    return _then(_$SysModelImpl(
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      sunrise: null == sunrise
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as int,
      sunset: null == sunset
          ? _value.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SysModelImpl extends _SysModel {
  _$SysModelImpl(
      {@JsonKey(name: 'country') required this.country,
      @JsonKey(name: 'sunrise') required this.sunrise,
      @JsonKey(name: 'sunset') required this.sunset})
      : super._();

  factory _$SysModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SysModelImplFromJson(json);

  @override
  @JsonKey(name: 'country')
  final String country;
  @override
  @JsonKey(name: 'sunrise')
  final int sunrise;
  @override
  @JsonKey(name: 'sunset')
  final int sunset;

  @override
  String toString() {
    return 'SysModel(country: $country, sunrise: $sunrise, sunset: $sunset)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SysModelImpl &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.sunrise, sunrise) || other.sunrise == sunrise) &&
            (identical(other.sunset, sunset) || other.sunset == sunset));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, country, sunrise, sunset);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SysModelImplCopyWith<_$SysModelImpl> get copyWith =>
      __$$SysModelImplCopyWithImpl<_$SysModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SysModelImplToJson(
      this,
    );
  }
}

abstract class _SysModel extends SysModel {
  factory _SysModel(
      {@JsonKey(name: 'country') required final String country,
      @JsonKey(name: 'sunrise') required final int sunrise,
      @JsonKey(name: 'sunset') required final int sunset}) = _$SysModelImpl;
  _SysModel._() : super._();

  factory _SysModel.fromJson(Map<String, dynamic> json) =
      _$SysModelImpl.fromJson;

  @override
  @JsonKey(name: 'country')
  String get country;
  @override
  @JsonKey(name: 'sunrise')
  int get sunrise;
  @override
  @JsonKey(name: 'sunset')
  int get sunset;
  @override
  @JsonKey(ignore: true)
  _$$SysModelImplCopyWith<_$SysModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
