import 'package:freezed_annotation/freezed_annotation.dart';

part 'coord_model.freezed.dart';
part 'coord_model.g.dart';

@freezed
class CoordModel with _$CoordModel {
  const CoordModel._();

  factory CoordModel({
    @JsonKey(name: 'lon') required double lon,
    @JsonKey(name: 'lat') required double lat,
  }) = _CoordModel;

  factory CoordModel.fromJson(Map<String, dynamic> json) =>
      _$CoordModelFromJson(json);
}
