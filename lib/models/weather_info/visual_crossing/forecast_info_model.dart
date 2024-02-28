import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:openweathermap_api_flutter/models/weather_info/visual_crossing/sub_models/day_forecast_model.dart';

part 'forecast_info_model.freezed.dart';
part 'forecast_info_model.g.dart';

@freezed
class ForecastInfoModel with _$ForecastInfoModel {
  const factory ForecastInfoModel({
    @JsonKey(name: 'latitude') required double latitude,
    @JsonKey(name: 'longitude') required double longitude,
    @JsonKey(name: 'address') required String address,
    @JsonKey(name: 'timezone') required String timezone,
    @JsonKey(name: 'tzoffset') required double timezoneOffset,
    @JsonKey(name: 'description') required String description,
    @JsonKey(name: 'days') required List<DayForecastModel> days,
  }) = _ForecastInfoModel;

  factory ForecastInfoModel.fromJson(Map<String, dynamic> json) =>
      _$ForecastInfoModelFromJson(json);
}
