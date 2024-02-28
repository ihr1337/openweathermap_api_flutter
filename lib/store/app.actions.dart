import 'package:flutter/material.dart';

import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:geolocator/geolocator.dart';
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';

import 'package:openweathermap_api_flutter/models/city/city_model.dart';
import 'package:openweathermap_api_flutter/models/weather_info/open_weather/weather_info_model.dart';
import 'package:openweathermap_api_flutter/models/weather_info/visual_crossing/forecast_info_model.dart';
import 'package:openweathermap_api_flutter/store/_app.api.dart';
import 'package:openweathermap_api_flutter/store/app.state.dart';

abstract class AppAction {}

class EnableLoaderAction extends AppAction {}

class DisableLoaderAction extends AppAction {}

class SetWeatherInfoAction extends AppAction {
  final WeatherInfoModel weatherInfo;

  SetWeatherInfoAction({required this.weatherInfo});
}

class SetForecastInfoAction extends AppAction {
  final ForecastInfoModel forecastInfo;

  SetForecastInfoAction({required this.forecastInfo});
}

class SetCitiesListAction extends AppAction {
  final List<CityModel> cities;

  SetCitiesListAction({required this.cities});
}

class InitAppAction extends CallableThunkAction<AppState> {
  final BuildContext context;

  InitAppAction({required this.context});

  @override
  void call(Store<AppState> store) async {
    try {
      final apiService = Modular.get<DioAppApi>();

      await Geolocator.requestPermission();

      final Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );

      final weatherInfo = await apiService.getWeatherByCoordsFromOpenWeather(
        position.latitude,
        position.longitude,
      );

      ///Due to huge amount of data being loaded I've added delay, because otherwise splashscreen animation gets stuttered
      final forecastInfo = await Future.delayed(
        const Duration(seconds: 2),
        () => apiService.getForecastByCoordsFromVisualCrossing(
          position.latitude,
          position.longitude,
        ),
      );

      store.dispatch(SetWeatherInfoAction(weatherInfo: weatherInfo));

      store.dispatch(SetForecastInfoAction(forecastInfo: forecastInfo));

      await Future.delayed(
        const Duration(seconds: 1),
        () => Modular.to.navigate('/home_screen'),
      );
    } on DioException catch (error) {
      throw Exception(error);
    } catch (error) {
      throw Exception(error);
    }
  }
}

class GetCityByNameAction extends CallableThunkAction<AppState> {
  final String name;

  GetCityByNameAction({required this.name});

  @override
  void call(Store<AppState> store) async {
    try {
      store.dispatch(EnableLoaderAction());

      final apiService = Modular.get<DioAppApi>();

      final cities = await apiService.getCityByNameFromOpenWeather(name);

      store.dispatch(SetCitiesListAction(cities: cities));
    } on DioException catch (error) {
      throw Exception(error);
    } catch (error) {
      throw Exception(error);
    } finally {
      store.dispatch(DisableLoaderAction());
    }
  }
}

class GetWeatherByCoordsAction extends CallableThunkAction<AppState> {
  final double lat;
  final double lon;

  GetWeatherByCoordsAction({required this.lat, required this.lon});

  @override
  void call(Store<AppState> store) async {
    try {
      store.dispatch(EnableLoaderAction());

      final apiService = Modular.get<DioAppApi>();

      final weatherInfo =
          await apiService.getWeatherByCoordsFromOpenWeather(lat, lon);

      final forecastInfo =
          await apiService.getForecastByCoordsFromVisualCrossing(lat, lon);

      store.dispatch(SetWeatherInfoAction(weatherInfo: weatherInfo));
      store.dispatch(SetForecastInfoAction(forecastInfo: forecastInfo));
    } on DioException catch (error) {
      throw Exception(error);
    } catch (error) {
      throw Exception(error);
    } finally {
      store.dispatch(DisableLoaderAction());
    }
  }
}
