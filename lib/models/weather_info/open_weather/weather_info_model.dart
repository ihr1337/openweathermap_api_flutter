import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:openweathermap_api_flutter/models/weather_info/open_weather/_sub_models/clouds/clouds_model.dart';
import 'package:openweathermap_api_flutter/models/weather_info/open_weather/_sub_models/coord/coord_model.dart';
import 'package:openweathermap_api_flutter/models/weather_info/open_weather/_sub_models/main/main_model.dart';
import 'package:openweathermap_api_flutter/models/weather_info/open_weather/_sub_models/sys/sys_model.dart';
import 'package:openweathermap_api_flutter/models/weather_info/open_weather/_sub_models/weather/weather_model.dart';
import 'package:openweathermap_api_flutter/models/weather_info/open_weather/_sub_models/wind/wind_model.dart';

part 'weather_info_model.freezed.dart';
part 'weather_info_model.g.dart';

@freezed
class WeatherInfoModel with _$WeatherInfoModel {
  const WeatherInfoModel._();

  factory WeatherInfoModel({
    @JsonKey(name: 'coord') required CoordModel coord,
    @JsonKey(name: 'weather') required List<WeatherModel> weather,
    @JsonKey(name: 'base') required String base,
    @JsonKey(name: 'main') required MainModel main,
    @JsonKey(name: 'visibility') required int visibility,
    @JsonKey(name: 'wind') required WindModel wind,
    @JsonKey(name: 'clouds') required CloudsModel clouds,
    @JsonKey(name: 'dt') required int dt,
    @JsonKey(name: 'sys') required SysModel sys,
    @JsonKey(name: 'timezone') required int timezone,
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'cod') required int cod,
  }) = _WeatherInfoModel;

  factory WeatherInfoModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherInfoModelFromJson(json);
}
