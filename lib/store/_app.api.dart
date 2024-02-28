import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:openweathermap_api_flutter/models/city/city_model.dart';
import 'package:openweathermap_api_flutter/models/weather_info/open_weather/weather_info_model.dart';
import 'package:openweathermap_api_flutter/models/weather_info/visual_crossing/forecast_info_model.dart';

abstract class AppApi {
  Future<WeatherInfoModel> getWeatherByCoordsFromOpenWeather(
    double lat,
    double lon,
  );

  Future<List<CityModel>> getCityByNameFromOpenWeather(String name);

  Future<ForecastInfoModel> getForecastByCoordsFromVisualCrossing(
    double lat,
    double lon,
  );
}

class DioAppApi extends AppApi {
  ///I'm using two different APIs because OpenWeatherApi doesn't provide needed for me data for free
  ///and VisualCrossingApi doens't provide City name when we search location with coords (check VisualCrossingApi response)

  final openWeatherMapApi = '718aca88d593c2f3ab6d820bfd4cb6d7';

  final visualCrossingWeatherApi = 'DYY7K7FBDR47NLPE3HSJDL8JP';

  final dio = Modular.get<Dio>();

  @override
  Future<WeatherInfoModel> getWeatherByCoordsFromOpenWeather(
    double lat,
    double lon,
  ) async {
    const getForecastUrl = 'https://api.openweathermap.org/data/2.5/weather';

    final url =
        '$getForecastUrl?lat=$lat&lon=$lon&units=metric&appid=$openWeatherMapApi';

    final response = await dio.get(url);
    return WeatherInfoModel.fromJson(response.data);
  }

  @override
  Future<List<CityModel>> getCityByNameFromOpenWeather(String name) async {
    const getCityUrl = 'https://api.openweathermap.org/geo/1.0/direct';

    final url = '$getCityUrl?q=$name&limit=5&appid=$openWeatherMapApi';

    final response = await dio.get(url);

    return response.data
        .map<CityModel>((city) => CityModel.fromJson(city))
        .toList();
  }

  @override
  Future<ForecastInfoModel> getForecastByCoordsFromVisualCrossing(
    double lat,
    double lon,
  ) async {
    const getForecastUrl =
        'https://weather.visualcrossing.com/VisualCrossingWebServices/rest/services/timeline';

    final url =
        '$getForecastUrl/$lat,$lon?unitGroup=metric&key=$visualCrossingWeatherApi';

    final response = await dio.get(url);
    return ForecastInfoModel.fromJson(response.data);
  }
}
