import 'package:openweathermap_api_flutter/models/city/city_model.dart';
import 'package:openweathermap_api_flutter/models/weather_info/open_weather/weather_info_model.dart';
import 'package:openweathermap_api_flutter/models/weather_info/visual_crossing/forecast_info_model.dart';

class AppState {
  final int loader;
  final WeatherInfoModel? weatherInfo;
  final ForecastInfoModel? forecastInfo;
  final List<CityModel> cities;

  AppState({
    required this.loader,
    required this.weatherInfo,
    required this.forecastInfo,
    required this.cities,
  });

  factory AppState.initialState() {
    return AppState(
      loader: 0,
      weatherInfo: null,
      forecastInfo: null,
      cities: [],
    );
  }

  AppState copyWith({
    int? loader,
    WeatherInfoModel? weatherInfo,
    ForecastInfoModel? forecastInfo,
    List<CityModel>? cities,
  }) {
    return AppState(
      loader: loader ?? this.loader,
      weatherInfo: weatherInfo ?? this.weatherInfo,
      forecastInfo: forecastInfo ?? this.forecastInfo,
      cities: cities ?? this.cities,
    );
  }
}
