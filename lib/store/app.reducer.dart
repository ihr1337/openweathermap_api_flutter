import 'package:redux/redux.dart';

import 'package:openweathermap_api_flutter/store/app.actions.dart';
import 'package:openweathermap_api_flutter/store/app.state.dart';

class AppReducer extends ReducerClass<AppState> {
  static final internalDelegate = combineReducers<AppState>([
    TypedReducer<AppState, EnableLoaderAction>(_enableLoader),
    TypedReducer<AppState, DisableLoaderAction>(_disableLoader),
    TypedReducer<AppState, SetWeatherInfoAction>(_setWeatherInfo),
    TypedReducer<AppState, SetForecastInfoAction>(_setForecastInfo),
    TypedReducer<AppState, SetCitiesListAction>(_getCityByName),
  ]);

  static AppState _enableLoader(AppState state, EnableLoaderAction action) {
    return state.copyWith(
      loader: state.loader + 1,
    );
  }

  static AppState _disableLoader(AppState state, DisableLoaderAction action) {
    return state.copyWith(
      loader: state.loader - 1,
    );
  }

  static AppState _setWeatherInfo(AppState state, SetWeatherInfoAction action) {
    return state.copyWith(
      weatherInfo: action.weatherInfo,
    );
  }

  static AppState _setForecastInfo(
      AppState state, SetForecastInfoAction action) {
    return state.copyWith(
      forecastInfo: action.forecastInfo,
    );
  }

  static AppState _getCityByName(AppState state, SetCitiesListAction action) {
    return state.copyWith(
      cities: action.cities,
    );
  }

  @override
  AppState call(AppState state, action) {
    return internalDelegate(state, action);
  }
}
