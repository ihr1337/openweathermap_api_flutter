// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'day_forecast_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DayForecastModel _$DayForecastModelFromJson(Map<String, dynamic> json) {
  return _DayForecastModel.fromJson(json);
}

/// @nodoc
mixin _$DayForecastModel {
  @JsonKey(name: 'datetime')
  String get datetime => throw _privateConstructorUsedError;
  @JsonKey(name: 'temp')
  double get temp => throw _privateConstructorUsedError;
  @JsonKey(name: 'tempmin')
  double get tempMin => throw _privateConstructorUsedError;
  @JsonKey(name: 'tempmax')
  double get tempMax => throw _privateConstructorUsedError;
  @JsonKey(name: 'humidity')
  double get humidity => throw _privateConstructorUsedError;
  @JsonKey(name: 'icon')
  String get icon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DayForecastModelCopyWith<DayForecastModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DayForecastModelCopyWith<$Res> {
  factory $DayForecastModelCopyWith(
          DayForecastModel value, $Res Function(DayForecastModel) then) =
      _$DayForecastModelCopyWithImpl<$Res, DayForecastModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'datetime') String datetime,
      @JsonKey(name: 'temp') double temp,
      @JsonKey(name: 'tempmin') double tempMin,
      @JsonKey(name: 'tempmax') double tempMax,
      @JsonKey(name: 'humidity') double humidity,
      @JsonKey(name: 'icon') String icon});
}

/// @nodoc
class _$DayForecastModelCopyWithImpl<$Res, $Val extends DayForecastModel>
    implements $DayForecastModelCopyWith<$Res> {
  _$DayForecastModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? datetime = null,
    Object? temp = null,
    Object? tempMin = null,
    Object? tempMax = null,
    Object? humidity = null,
    Object? icon = null,
  }) {
    return _then(_value.copyWith(
      datetime: null == datetime
          ? _value.datetime
          : datetime // ignore: cast_nullable_to_non_nullable
              as String,
      temp: null == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double,
      tempMin: null == tempMin
          ? _value.tempMin
          : tempMin // ignore: cast_nullable_to_non_nullable
              as double,
      tempMax: null == tempMax
          ? _value.tempMax
          : tempMax // ignore: cast_nullable_to_non_nullable
              as double,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as double,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DayForecastModelImplCopyWith<$Res>
    implements $DayForecastModelCopyWith<$Res> {
  factory _$$DayForecastModelImplCopyWith(_$DayForecastModelImpl value,
          $Res Function(_$DayForecastModelImpl) then) =
      __$$DayForecastModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'datetime') String datetime,
      @JsonKey(name: 'temp') double temp,
      @JsonKey(name: 'tempmin') double tempMin,
      @JsonKey(name: 'tempmax') double tempMax,
      @JsonKey(name: 'humidity') double humidity,
      @JsonKey(name: 'icon') String icon});
}

/// @nodoc
class __$$DayForecastModelImplCopyWithImpl<$Res>
    extends _$DayForecastModelCopyWithImpl<$Res, _$DayForecastModelImpl>
    implements _$$DayForecastModelImplCopyWith<$Res> {
  __$$DayForecastModelImplCopyWithImpl(_$DayForecastModelImpl _value,
      $Res Function(_$DayForecastModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? datetime = null,
    Object? temp = null,
    Object? tempMin = null,
    Object? tempMax = null,
    Object? humidity = null,
    Object? icon = null,
  }) {
    return _then(_$DayForecastModelImpl(
      datetime: null == datetime
          ? _value.datetime
          : datetime // ignore: cast_nullable_to_non_nullable
              as String,
      temp: null == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double,
      tempMin: null == tempMin
          ? _value.tempMin
          : tempMin // ignore: cast_nullable_to_non_nullable
              as double,
      tempMax: null == tempMax
          ? _value.tempMax
          : tempMax // ignore: cast_nullable_to_non_nullable
              as double,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as double,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DayForecastModelImpl extends _DayForecastModel {
  _$DayForecastModelImpl(
      {@JsonKey(name: 'datetime') required this.datetime,
      @JsonKey(name: 'temp') required this.temp,
      @JsonKey(name: 'tempmin') required this.tempMin,
      @JsonKey(name: 'tempmax') required this.tempMax,
      @JsonKey(name: 'humidity') required this.humidity,
      @JsonKey(name: 'icon') required this.icon})
      : super._();

  factory _$DayForecastModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DayForecastModelImplFromJson(json);

  @override
  @JsonKey(name: 'datetime')
  final String datetime;
  @override
  @JsonKey(name: 'temp')
  final double temp;
  @override
  @JsonKey(name: 'tempmin')
  final double tempMin;
  @override
  @JsonKey(name: 'tempmax')
  final double tempMax;
  @override
  @JsonKey(name: 'humidity')
  final double humidity;
  @override
  @JsonKey(name: 'icon')
  final String icon;

  @override
  String toString() {
    return 'DayForecastModel(datetime: $datetime, temp: $temp, tempMin: $tempMin, tempMax: $tempMax, humidity: $humidity, icon: $icon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DayForecastModelImpl &&
            (identical(other.datetime, datetime) ||
                other.datetime == datetime) &&
            (identical(other.temp, temp) || other.temp == temp) &&
            (identical(other.tempMin, tempMin) || other.tempMin == tempMin) &&
            (identical(other.tempMax, tempMax) || other.tempMax == tempMax) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, datetime, temp, tempMin, tempMax, humidity, icon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DayForecastModelImplCopyWith<_$DayForecastModelImpl> get copyWith =>
      __$$DayForecastModelImplCopyWithImpl<_$DayForecastModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DayForecastModelImplToJson(
      this,
    );
  }
}

abstract class _DayForecastModel extends DayForecastModel {
  factory _DayForecastModel(
          {@JsonKey(name: 'datetime') required final String datetime,
          @JsonKey(name: 'temp') required final double temp,
          @JsonKey(name: 'tempmin') required final double tempMin,
          @JsonKey(name: 'tempmax') required final double tempMax,
          @JsonKey(name: 'humidity') required final double humidity,
          @JsonKey(name: 'icon') required final String icon}) =
      _$DayForecastModelImpl;
  _DayForecastModel._() : super._();

  factory _DayForecastModel.fromJson(Map<String, dynamic> json) =
      _$DayForecastModelImpl.fromJson;

  @override
  @JsonKey(name: 'datetime')
  String get datetime;
  @override
  @JsonKey(name: 'temp')
  double get temp;
  @override
  @JsonKey(name: 'tempmin')
  double get tempMin;
  @override
  @JsonKey(name: 'tempmax')
  double get tempMax;
  @override
  @JsonKey(name: 'humidity')
  double get humidity;
  @override
  @JsonKey(name: 'icon')
  String get icon;
  @override
  @JsonKey(ignore: true)
  _$$DayForecastModelImplCopyWith<_$DayForecastModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
