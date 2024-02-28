import 'package:flutter/material.dart';

import 'package:intl/intl.dart';

import 'package:openweathermap_api_flutter/models/weather_info/visual_crossing/sub_models/day_forecast_model.dart';

class DayForecastItem extends StatelessWidget {
  final DayForecastModel dayForecast;

  const DayForecastItem({
    super.key,
    required this.dayForecast,
  });

  @override
  Widget build(BuildContext context) {
    final date = DateTime.parse(dayForecast.datetime);

    return Container(
      width: 100,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            DateFormat('EEEE').format(date),
            style: const TextStyle(color: Colors.white),
          ),
          Image.asset('assets/weather_icons/${dayForecast.icon}.png'),
          Text(
            'Temp: ${dayForecast.temp.toStringAsFixed(0)}°',
            style: const TextStyle(color: Colors.white),
          ),
          Text(
            'Humid: ${dayForecast.humidity.toStringAsFixed(0)}%',
            style: const TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
