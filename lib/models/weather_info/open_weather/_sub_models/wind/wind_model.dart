import 'package:freezed_annotation/freezed_annotation.dart';

part 'wind_model.freezed.dart';
part 'wind_model.g.dart';

@freezed
class WindModel with _$WindModel {
  const WindModel._();

  factory WindModel({
    @JsonKey(name: 'speed') required double speed,
    @JsonKey(name: 'deg') required int deg,
  }) = _WindModel;

  factory WindModel.fromJson(Map<String, dynamic> json) =>
      _$WindModelFromJson(json);
}
