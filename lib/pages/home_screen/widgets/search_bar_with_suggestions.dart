import 'package:flutter/material.dart';

import 'package:flutter_typeahead/flutter_typeahead.dart';

import 'package:openweathermap_api_flutter/models/city/city_model.dart';

class SearchBarWithSuggestions extends StatelessWidget {
  final Function({required String cityName}) onSearchCity;
  final Function({required double lat, required double lon})
      onSelectSuggestedCity;

  const SearchBarWithSuggestions({
    super.key,
    required this.onSearchCity,
    required this.onSelectSuggestedCity,
  });

  @override
  Widget build(BuildContext context) {
    return TypeAheadField<CityModel>(
      suggestionsCallback: (cityName) =>
          cityName.isNotEmpty ? onSearchCity(cityName: cityName) : null,
      builder: (context, controller, focusNode) {
        return TextFormField(
          controller: controller,
          focusNode: focusNode,
          style: const TextStyle(color: Colors.white),
          decoration: const InputDecoration(
            hintText: 'Input City',
            hintStyle: TextStyle(color: Colors.white),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.greenAccent,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(32.0),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(32.0),
              ),
            ),
          ),
        );
      },
      itemBuilder: (context, city) {
        return ListTile(
          title: Text(city.name),
          subtitle: Text(city.country),
        );
      },
      onSelected: (city) => onSelectSuggestedCity(
        lat: city.lat,
        lon: city.lon,
      ),
    );
  }
}
