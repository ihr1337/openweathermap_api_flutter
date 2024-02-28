import 'package:flutter/material.dart';

import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import 'package:openweathermap_api_flutter/common/widgets/empty_page.dart';
import 'package:openweathermap_api_flutter/common/widgets/loader.dart';
import 'package:openweathermap_api_flutter/models/city/city_model.dart';
import 'package:openweathermap_api_flutter/models/weather_info/open_weather/weather_info_model.dart';
import 'package:openweathermap_api_flutter/models/weather_info/visual_crossing/forecast_info_model.dart';
import 'package:openweathermap_api_flutter/pages/home_screen/home_screen.page.dart';
import 'package:openweathermap_api_flutter/store/app.actions.dart';
import 'package:openweathermap_api_flutter/store/app.state.dart';

class HomeScreenContainer extends StatelessWidget {
  const HomeScreenContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, _ViewModel>(
      converter: _ViewModel.create,
      builder: (context, vm) {
        return vm.weatherInfo == null || vm.forecastInfo == null
            ? const EmptyPage()
            : Loader(
                child: HomeScreenPage(
                  weatherInfo: vm.weatherInfo!,
                  forecastInfo: vm.forecastInfo!,
                  onSearchCity: vm.onSearchCity,
                  onSelectSuggestedCity: vm.onSelectSuggestedCity,
                ),
              );
      },
    );
  }
}

class _ViewModel {
  final WeatherInfoModel? weatherInfo;
  final ForecastInfoModel? forecastInfo;

  final Function({required String cityName}) onSearchCity;

  final Function({required double lat, required double lon})
      onSelectSuggestedCity;

  _ViewModel({
    required this.weatherInfo,
    required this.forecastInfo,
    required this.onSearchCity,
    required this.onSelectSuggestedCity,
  });

  factory _ViewModel.create(Store<AppState> store) {
    Future<List<CityModel>> onSearchCity({required String cityName}) async {
      if (cityName.isNotEmpty) {
        await store.dispatch(GetCityByNameAction(name: cityName));
      }

      return store.state.cities;
    }

    Future<void> onSelectSuggestedCity(
        {required double lat, required double lon}) async {
      await store.dispatch(
        GetWeatherByCoordsAction(
          lat: lat,
          lon: lon,
        ),
      );
    }

    return _ViewModel(
      weatherInfo: store.state.weatherInfo,
      forecastInfo: store.state.forecastInfo,
      onSearchCity: onSearchCity,
      onSelectSuggestedCity: onSelectSuggestedCity,
    );
  }
}
