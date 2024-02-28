// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WeatherInfoModel _$WeatherInfoModelFromJson(Map<String, dynamic> json) {
  return _WeatherInfoModel.fromJson(json);
}

/// @nodoc
mixin _$WeatherInfoModel {
  @JsonKey(name: 'coord')
  CoordModel get coord => throw _privateConstructorUsedError;
  @JsonKey(name: 'weather')
  List<WeatherModel> get weather => throw _privateConstructorUsedError;
  @JsonKey(name: 'base')
  String get base => throw _privateConstructorUsedError;
  @JsonKey(name: 'main')
  MainModel get main => throw _privateConstructorUsedError;
  @JsonKey(name: 'visibility')
  int get visibility => throw _privateConstructorUsedError;
  @JsonKey(name: 'wind')
  WindModel get wind => throw _privateConstructorUsedError;
  @JsonKey(name: 'clouds')
  CloudsModel get clouds => throw _privateConstructorUsedError;
  @JsonKey(name: 'dt')
  int get dt => throw _privateConstructorUsedError;
  @JsonKey(name: 'sys')
  SysModel get sys => throw _privateConstructorUsedError;
  @JsonKey(name: 'timezone')
  int get timezone => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'cod')
  int get cod => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherInfoModelCopyWith<WeatherInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherInfoModelCopyWith<$Res> {
  factory $WeatherInfoModelCopyWith(
          WeatherInfoModel value, $Res Function(WeatherInfoModel) then) =
      _$WeatherInfoModelCopyWithImpl<$Res, WeatherInfoModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'coord') CoordModel coord,
      @JsonKey(name: 'weather') List<WeatherModel> weather,
      @JsonKey(name: 'base') String base,
      @JsonKey(name: 'main') MainModel main,
      @JsonKey(name: 'visibility') int visibility,
      @JsonKey(name: 'wind') WindModel wind,
      @JsonKey(name: 'clouds') CloudsModel clouds,
      @JsonKey(name: 'dt') int dt,
      @JsonKey(name: 'sys') SysModel sys,
      @JsonKey(name: 'timezone') int timezone,
      @JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'cod') int cod});

  $CoordModelCopyWith<$Res> get coord;
  $MainModelCopyWith<$Res> get main;
  $WindModelCopyWith<$Res> get wind;
  $CloudsModelCopyWith<$Res> get clouds;
  $SysModelCopyWith<$Res> get sys;
}

/// @nodoc
class _$WeatherInfoModelCopyWithImpl<$Res, $Val extends WeatherInfoModel>
    implements $WeatherInfoModelCopyWith<$Res> {
  _$WeatherInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coord = null,
    Object? weather = null,
    Object? base = null,
    Object? main = null,
    Object? visibility = null,
    Object? wind = null,
    Object? clouds = null,
    Object? dt = null,
    Object? sys = null,
    Object? timezone = null,
    Object? id = null,
    Object? name = null,
    Object? cod = null,
  }) {
    return _then(_value.copyWith(
      coord: null == coord
          ? _value.coord
          : coord // ignore: cast_nullable_to_non_nullable
              as CoordModel,
      weather: null == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<WeatherModel>,
      base: null == base
          ? _value.base
          : base // ignore: cast_nullable_to_non_nullable
              as String,
      main: null == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as MainModel,
      visibility: null == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as int,
      wind: null == wind
          ? _value.wind
          : wind // ignore: cast_nullable_to_non_nullable
              as WindModel,
      clouds: null == clouds
          ? _value.clouds
          : clouds // ignore: cast_nullable_to_non_nullable
              as CloudsModel,
      dt: null == dt
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int,
      sys: null == sys
          ? _value.sys
          : sys // ignore: cast_nullable_to_non_nullable
              as SysModel,
      timezone: null == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      cod: null == cod
          ? _value.cod
          : cod // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CoordModelCopyWith<$Res> get coord {
    return $CoordModelCopyWith<$Res>(_value.coord, (value) {
      return _then(_value.copyWith(coord: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MainModelCopyWith<$Res> get main {
    return $MainModelCopyWith<$Res>(_value.main, (value) {
      return _then(_value.copyWith(main: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WindModelCopyWith<$Res> get wind {
    return $WindModelCopyWith<$Res>(_value.wind, (value) {
      return _then(_value.copyWith(wind: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CloudsModelCopyWith<$Res> get clouds {
    return $CloudsModelCopyWith<$Res>(_value.clouds, (value) {
      return _then(_value.copyWith(clouds: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SysModelCopyWith<$Res> get sys {
    return $SysModelCopyWith<$Res>(_value.sys, (value) {
      return _then(_value.copyWith(sys: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WeatherInfoModelImplCopyWith<$Res>
    implements $WeatherInfoModelCopyWith<$Res> {
  factory _$$WeatherInfoModelImplCopyWith(_$WeatherInfoModelImpl value,
          $Res Function(_$WeatherInfoModelImpl) then) =
      __$$WeatherInfoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'coord') CoordModel coord,
      @JsonKey(name: 'weather') List<WeatherModel> weather,
      @JsonKey(name: 'base') String base,
      @JsonKey(name: 'main') MainModel main,
      @JsonKey(name: 'visibility') int visibility,
      @JsonKey(name: 'wind') WindModel wind,
      @JsonKey(name: 'clouds') CloudsModel clouds,
      @JsonKey(name: 'dt') int dt,
      @JsonKey(name: 'sys') SysModel sys,
      @JsonKey(name: 'timezone') int timezone,
      @JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'cod') int cod});

  @override
  $CoordModelCopyWith<$Res> get coord;
  @override
  $MainModelCopyWith<$Res> get main;
  @override
  $WindModelCopyWith<$Res> get wind;
  @override
  $CloudsModelCopyWith<$Res> get clouds;
  @override
  $SysModelCopyWith<$Res> get sys;
}

/// @nodoc
class __$$WeatherInfoModelImplCopyWithImpl<$Res>
    extends _$WeatherInfoModelCopyWithImpl<$Res, _$WeatherInfoModelImpl>
    implements _$$WeatherInfoModelImplCopyWith<$Res> {
  __$$WeatherInfoModelImplCopyWithImpl(_$WeatherInfoModelImpl _value,
      $Res Function(_$WeatherInfoModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coord = null,
    Object? weather = null,
    Object? base = null,
    Object? main = null,
    Object? visibility = null,
    Object? wind = null,
    Object? clouds = null,
    Object? dt = null,
    Object? sys = null,
    Object? timezone = null,
    Object? id = null,
    Object? name = null,
    Object? cod = null,
  }) {
    return _then(_$WeatherInfoModelImpl(
      coord: null == coord
          ? _value.coord
          : coord // ignore: cast_nullable_to_non_nullable
              as CoordModel,
      weather: null == weather
          ? _value._weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<WeatherModel>,
      base: null == base
          ? _value.base
          : base // ignore: cast_nullable_to_non_nullable
              as String,
      main: null == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as MainModel,
      visibility: null == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as int,
      wind: null == wind
          ? _value.wind
          : wind // ignore: cast_nullable_to_non_nullable
              as WindModel,
      clouds: null == clouds
          ? _value.clouds
          : clouds // ignore: cast_nullable_to_non_nullable
              as CloudsModel,
      dt: null == dt
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int,
      sys: null == sys
          ? _value.sys
          : sys // ignore: cast_nullable_to_non_nullable
              as SysModel,
      timezone: null == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      cod: null == cod
          ? _value.cod
          : cod // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherInfoModelImpl extends _WeatherInfoModel {
  _$WeatherInfoModelImpl(
      {@JsonKey(name: 'coord') required this.coord,
      @JsonKey(name: 'weather') required final List<WeatherModel> weather,
      @JsonKey(name: 'base') required this.base,
      @JsonKey(name: 'main') required this.main,
      @JsonKey(name: 'visibility') required this.visibility,
      @JsonKey(name: 'wind') required this.wind,
      @JsonKey(name: 'clouds') required this.clouds,
      @JsonKey(name: 'dt') required this.dt,
      @JsonKey(name: 'sys') required this.sys,
      @JsonKey(name: 'timezone') required this.timezone,
      @JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'cod') required this.cod})
      : _weather = weather,
        super._();

  factory _$WeatherInfoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherInfoModelImplFromJson(json);

  @override
  @JsonKey(name: 'coord')
  final CoordModel coord;
  final List<WeatherModel> _weather;
  @override
  @JsonKey(name: 'weather')
  List<WeatherModel> get weather {
    if (_weather is EqualUnmodifiableListView) return _weather;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weather);
  }

  @override
  @JsonKey(name: 'base')
  final String base;
  @override
  @JsonKey(name: 'main')
  final MainModel main;
  @override
  @JsonKey(name: 'visibility')
  final int visibility;
  @override
  @JsonKey(name: 'wind')
  final WindModel wind;
  @override
  @JsonKey(name: 'clouds')
  final CloudsModel clouds;
  @override
  @JsonKey(name: 'dt')
  final int dt;
  @override
  @JsonKey(name: 'sys')
  final SysModel sys;
  @override
  @JsonKey(name: 'timezone')
  final int timezone;
  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'cod')
  final int cod;

  @override
  String toString() {
    return 'WeatherInfoModel(coord: $coord, weather: $weather, base: $base, main: $main, visibility: $visibility, wind: $wind, clouds: $clouds, dt: $dt, sys: $sys, timezone: $timezone, id: $id, name: $name, cod: $cod)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherInfoModelImpl &&
            (identical(other.coord, coord) || other.coord == coord) &&
            const DeepCollectionEquality().equals(other._weather, _weather) &&
            (identical(other.base, base) || other.base == base) &&
            (identical(other.main, main) || other.main == main) &&
            (identical(other.visibility, visibility) ||
                other.visibility == visibility) &&
            (identical(other.wind, wind) || other.wind == wind) &&
            (identical(other.clouds, clouds) || other.clouds == clouds) &&
            (identical(other.dt, dt) || other.dt == dt) &&
            (identical(other.sys, sys) || other.sys == sys) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.cod, cod) || other.cod == cod));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      coord,
      const DeepCollectionEquality().hash(_weather),
      base,
      main,
      visibility,
      wind,
      clouds,
      dt,
      sys,
      timezone,
      id,
      name,
      cod);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherInfoModelImplCopyWith<_$WeatherInfoModelImpl> get copyWith =>
      __$$WeatherInfoModelImplCopyWithImpl<_$WeatherInfoModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherInfoModelImplToJson(
      this,
    );
  }
}

abstract class _WeatherInfoModel extends WeatherInfoModel {
  factory _WeatherInfoModel(
      {@JsonKey(name: 'coord') required final CoordModel coord,
      @JsonKey(name: 'weather') required final List<WeatherModel> weather,
      @JsonKey(name: 'base') required final String base,
      @JsonKey(name: 'main') required final MainModel main,
      @JsonKey(name: 'visibility') required final int visibility,
      @JsonKey(name: 'wind') required final WindModel wind,
      @JsonKey(name: 'clouds') required final CloudsModel clouds,
      @JsonKey(name: 'dt') required final int dt,
      @JsonKey(name: 'sys') required final SysModel sys,
      @JsonKey(name: 'timezone') required final int timezone,
      @JsonKey(name: 'id') required final int id,
      @JsonKey(name: 'name') required final String name,
      @JsonKey(name: 'cod') required final int cod}) = _$WeatherInfoModelImpl;
  _WeatherInfoModel._() : super._();

  factory _WeatherInfoModel.fromJson(Map<String, dynamic> json) =
      _$WeatherInfoModelImpl.fromJson;

  @override
  @JsonKey(name: 'coord')
  CoordModel get coord;
  @override
  @JsonKey(name: 'weather')
  List<WeatherModel> get weather;
  @override
  @JsonKey(name: 'base')
  String get base;
  @override
  @JsonKey(name: 'main')
  MainModel get main;
  @override
  @JsonKey(name: 'visibility')
  int get visibility;
  @override
  @JsonKey(name: 'wind')
  WindModel get wind;
  @override
  @JsonKey(name: 'clouds')
  CloudsModel get clouds;
  @override
  @JsonKey(name: 'dt')
  int get dt;
  @override
  @JsonKey(name: 'sys')
  SysModel get sys;
  @override
  @JsonKey(name: 'timezone')
  int get timezone;
  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'cod')
  int get cod;
  @override
  @JsonKey(ignore: true)
  _$$WeatherInfoModelImplCopyWith<_$WeatherInfoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
