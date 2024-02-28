import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_model.freezed.dart';
part 'weather_model.g.dart';

@freezed
class WeatherModel with _$WeatherModel {
  const WeatherModel._();

  factory WeatherModel({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'main') required String main,
    @JsonKey(name: 'description') required String description,
    @JsonKey(name: 'icon') required String icon,
  }) = _WeatherModel;

  factory WeatherModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherModelFromJson(json);
}
