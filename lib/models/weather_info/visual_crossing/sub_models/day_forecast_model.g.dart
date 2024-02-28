// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'day_forecast_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DayForecastModelImpl _$$DayForecastModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DayForecastModelImpl(
      datetime: json['datetime'] as String,
      temp: (json['temp'] as num).toDouble(),
      tempMin: (json['tempmin'] as num).toDouble(),
      tempMax: (json['tempmax'] as num).toDouble(),
      humidity: (json['humidity'] as num).toDouble(),
      icon: json['icon'] as String,
    );

Map<String, dynamic> _$$DayForecastModelImplToJson(
        _$DayForecastModelImpl instance) =>
    <String, dynamic>{
      'datetime': instance.datetime,
      'temp': instance.temp,
      'tempmin': instance.tempMin,
      'tempmax': instance.tempMax,
      'humidity': instance.humidity,
      'icon': instance.icon,
    };
