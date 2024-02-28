import 'package:freezed_annotation/freezed_annotation.dart';

part 'city_model.freezed.dart';
part 'city_model.g.dart';

@freezed
class CityModel with _$CityModel {
  const factory CityModel({
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'lat') required double lat,
    @JsonKey(name: 'lon') required double lon,
    @JsonKey(name: 'country') required String country,
  }) = _CityModel;

  factory CityModel.fromJson(Map<String, dynamic> json) =>
      _$CityModelFromJson(json);
}
