// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ForecastInfoModelImpl _$$ForecastInfoModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ForecastInfoModelImpl(
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      address: json['address'] as String,
      timezone: json['timezone'] as String,
      timezoneOffset: (json['tzoffset'] as num).toDouble(),
      description: json['description'] as String,
      days: (json['days'] as List<dynamic>)
          .map((e) => DayForecastModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ForecastInfoModelImplToJson(
        _$ForecastInfoModelImpl instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'address': instance.address,
      'timezone': instance.timezone,
      'tzoffset': instance.timezoneOffset,
      'description': instance.description,
      'days': instance.days,
    };
