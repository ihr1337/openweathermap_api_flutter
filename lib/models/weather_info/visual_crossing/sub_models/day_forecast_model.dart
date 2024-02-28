import 'package:freezed_annotation/freezed_annotation.dart';

part 'day_forecast_model.freezed.dart';
part 'day_forecast_model.g.dart';

@freezed
class DayForecastModel with _$DayForecastModel {
  const DayForecastModel._();

  factory DayForecastModel({
    @JsonKey(name: 'datetime') required String datetime,
    @JsonKey(name: 'temp') required double temp,
    @JsonKey(name: 'tempmin') required double tempMin,
    @JsonKey(name: 'tempmax') required double tempMax,
    @JsonKey(name: 'humidity') required double humidity,
    @JsonKey(name: 'icon') required String icon,
  }) = _DayForecastModel;

  factory DayForecastModel.fromJson(Map<String, dynamic> json) =>
      _$DayForecastModelFromJson(json);
}
