import 'package:flutter/material.dart';
import 'package:openweathermap_api_flutter/common/enums/forecast_length_enum.dart';

import 'package:openweathermap_api_flutter/models/weather_info/open_weather/weather_info_model.dart';
import 'package:openweathermap_api_flutter/models/weather_info/visual_crossing/forecast_info_model.dart';
import 'package:openweathermap_api_flutter/pages/home_screen/widgets/day_forecast_item.dart';
import 'package:openweathermap_api_flutter/pages/home_screen/widgets/forecast_length_switch_item.dart';
import 'package:openweathermap_api_flutter/pages/home_screen/widgets/search_bar_with_suggestions.dart';

class HomeScreenPage extends StatefulWidget {
  final WeatherInfoModel weatherInfo;
  final ForecastInfoModel forecastInfo;
  final Function({required String cityName}) onSearchCity;
  final Function({required double lat, required double lon})
      onSelectSuggestedCity;

  const HomeScreenPage({
    Key? key,
    required this.weatherInfo,
    required this.forecastInfo,
    required this.onSearchCity,
    required this.onSelectSuggestedCity,
  }) : super(key: key);

  @override
  State<HomeScreenPage> createState() => _HomeScreenPageState();
}

class _HomeScreenPageState extends State<HomeScreenPage> {
  late ForecastLength selectedForecastLength;

  @override
  void initState() {
    selectedForecastLength = ForecastLength.seven;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final temp = widget.weatherInfo.main.temp.toStringAsFixed(0);
    final minTemp = widget.forecastInfo.days[0].tempMin.toStringAsFixed(0);
    final maxTemp = widget.forecastInfo.days[0].tempMax.toStringAsFixed(0);
    final humidity = widget.forecastInfo.days[0].humidity;

    final daysToShow = selectedForecastLength == ForecastLength.max
        ? widget.forecastInfo.days.length
        : 7;

    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: [
                    Color.fromARGB(255, 28, 111, 17),
                    Color.fromARGB(255, 7, 213, 0),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 54, 16, 30),
              child: Center(
                child: Column(
                  children: [
                    SearchBarWithSuggestions(
                      onSearchCity: widget.onSearchCity,
                      onSelectSuggestedCity: widget.onSelectSuggestedCity,
                    ),
                    const SizedBox(height: 20),
                    FittedBox(
                      child: Text(
                        widget.weatherInfo.name,
                        maxLines: 1,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 45,
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    Image.asset(
                        'assets/weather_icons/${widget.forecastInfo.days[0].icon}.png'),
                    Text(
                      '$temp°',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 60,
                      ),
                    ),
                    Text(
                      'H:$maxTemp - L:$minTemp      Humidity: $humidity%',
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        for (ForecastLength forecastLength
                            in ForecastLength.values)
                          ForecastLengthSwitchItem(
                            text: forecastLength.buttonLabel,
                            isActive: forecastLength == selectedForecastLength,
                            onTap: () {
                              setState(() {
                                selectedForecastLength = forecastLength;
                              });
                            },
                          ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Expanded(
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: daysToShow,
                        itemBuilder: (context, index) {
                          final forecast = widget.forecastInfo.days[index];
                          return DayForecastItem(
                            dayForecast: forecast,
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
