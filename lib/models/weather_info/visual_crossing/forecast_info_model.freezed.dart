// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forecast_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ForecastInfoModel _$ForecastInfoModelFromJson(Map<String, dynamic> json) {
  return _ForecastInfoModel.fromJson(json);
}

/// @nodoc
mixin _$ForecastInfoModel {
  @JsonKey(name: 'latitude')
  double get latitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'longitude')
  double get longitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'address')
  String get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'timezone')
  String get timezone => throw _privateConstructorUsedError;
  @JsonKey(name: 'tzoffset')
  double get timezoneOffset => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'days')
  List<DayForecastModel> get days => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForecastInfoModelCopyWith<ForecastInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastInfoModelCopyWith<$Res> {
  factory $ForecastInfoModelCopyWith(
          ForecastInfoModel value, $Res Function(ForecastInfoModel) then) =
      _$ForecastInfoModelCopyWithImpl<$Res, ForecastInfoModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'latitude') double latitude,
      @JsonKey(name: 'longitude') double longitude,
      @JsonKey(name: 'address') String address,
      @JsonKey(name: 'timezone') String timezone,
      @JsonKey(name: 'tzoffset') double timezoneOffset,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'days') List<DayForecastModel> days});
}

/// @nodoc
class _$ForecastInfoModelCopyWithImpl<$Res, $Val extends ForecastInfoModel>
    implements $ForecastInfoModelCopyWith<$Res> {
  _$ForecastInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
    Object? address = null,
    Object? timezone = null,
    Object? timezoneOffset = null,
    Object? description = null,
    Object? days = null,
  }) {
    return _then(_value.copyWith(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      timezone: null == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String,
      timezoneOffset: null == timezoneOffset
          ? _value.timezoneOffset
          : timezoneOffset // ignore: cast_nullable_to_non_nullable
              as double,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      days: null == days
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as List<DayForecastModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ForecastInfoModelImplCopyWith<$Res>
    implements $ForecastInfoModelCopyWith<$Res> {
  factory _$$ForecastInfoModelImplCopyWith(_$ForecastInfoModelImpl value,
          $Res Function(_$ForecastInfoModelImpl) then) =
      __$$ForecastInfoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'latitude') double latitude,
      @JsonKey(name: 'longitude') double longitude,
      @JsonKey(name: 'address') String address,
      @JsonKey(name: 'timezone') String timezone,
      @JsonKey(name: 'tzoffset') double timezoneOffset,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'days') List<DayForecastModel> days});
}

/// @nodoc
class __$$ForecastInfoModelImplCopyWithImpl<$Res>
    extends _$ForecastInfoModelCopyWithImpl<$Res, _$ForecastInfoModelImpl>
    implements _$$ForecastInfoModelImplCopyWith<$Res> {
  __$$ForecastInfoModelImplCopyWithImpl(_$ForecastInfoModelImpl _value,
      $Res Function(_$ForecastInfoModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
    Object? address = null,
    Object? timezone = null,
    Object? timezoneOffset = null,
    Object? description = null,
    Object? days = null,
  }) {
    return _then(_$ForecastInfoModelImpl(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      timezone: null == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String,
      timezoneOffset: null == timezoneOffset
          ? _value.timezoneOffset
          : timezoneOffset // ignore: cast_nullable_to_non_nullable
              as double,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      days: null == days
          ? _value._days
          : days // ignore: cast_nullable_to_non_nullable
              as List<DayForecastModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ForecastInfoModelImpl implements _ForecastInfoModel {
  const _$ForecastInfoModelImpl(
      {@JsonKey(name: 'latitude') required this.latitude,
      @JsonKey(name: 'longitude') required this.longitude,
      @JsonKey(name: 'address') required this.address,
      @JsonKey(name: 'timezone') required this.timezone,
      @JsonKey(name: 'tzoffset') required this.timezoneOffset,
      @JsonKey(name: 'description') required this.description,
      @JsonKey(name: 'days') required final List<DayForecastModel> days})
      : _days = days;

  factory _$ForecastInfoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForecastInfoModelImplFromJson(json);

  @override
  @JsonKey(name: 'latitude')
  final double latitude;
  @override
  @JsonKey(name: 'longitude')
  final double longitude;
  @override
  @JsonKey(name: 'address')
  final String address;
  @override
  @JsonKey(name: 'timezone')
  final String timezone;
  @override
  @JsonKey(name: 'tzoffset')
  final double timezoneOffset;
  @override
  @JsonKey(name: 'description')
  final String description;
  final List<DayForecastModel> _days;
  @override
  @JsonKey(name: 'days')
  List<DayForecastModel> get days {
    if (_days is EqualUnmodifiableListView) return _days;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_days);
  }

  @override
  String toString() {
    return 'ForecastInfoModel(latitude: $latitude, longitude: $longitude, address: $address, timezone: $timezone, timezoneOffset: $timezoneOffset, description: $description, days: $days)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForecastInfoModelImpl &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone) &&
            (identical(other.timezoneOffset, timezoneOffset) ||
                other.timezoneOffset == timezoneOffset) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._days, _days));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      latitude,
      longitude,
      address,
      timezone,
      timezoneOffset,
      description,
      const DeepCollectionEquality().hash(_days));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForecastInfoModelImplCopyWith<_$ForecastInfoModelImpl> get copyWith =>
      __$$ForecastInfoModelImplCopyWithImpl<_$ForecastInfoModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ForecastInfoModelImplToJson(
      this,
    );
  }
}

abstract class _ForecastInfoModel implements ForecastInfoModel {
  const factory _ForecastInfoModel(
          {@JsonKey(name: 'latitude') required final double latitude,
          @JsonKey(name: 'longitude') required final double longitude,
          @JsonKey(name: 'address') required final String address,
          @JsonKey(name: 'timezone') required final String timezone,
          @JsonKey(name: 'tzoffset') required final double timezoneOffset,
          @JsonKey(name: 'description') required final String description,
          @JsonKey(name: 'days') required final List<DayForecastModel> days}) =
      _$ForecastInfoModelImpl;

  factory _ForecastInfoModel.fromJson(Map<String, dynamic> json) =
      _$ForecastInfoModelImpl.fromJson;

  @override
  @JsonKey(name: 'latitude')
  double get latitude;
  @override
  @JsonKey(name: 'longitude')
  double get longitude;
  @override
  @JsonKey(name: 'address')
  String get address;
  @override
  @JsonKey(name: 'timezone')
  String get timezone;
  @override
  @JsonKey(name: 'tzoffset')
  double get timezoneOffset;
  @override
  @JsonKey(name: 'description')
  String get description;
  @override
  @JsonKey(name: 'days')
  List<DayForecastModel> get days;
  @override
  @JsonKey(ignore: true)
  _$$ForecastInfoModelImplCopyWith<_$ForecastInfoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
