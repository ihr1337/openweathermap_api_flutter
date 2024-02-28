import 'package:freezed_annotation/freezed_annotation.dart';

part 'clouds_model.freezed.dart';
part 'clouds_model.g.dart';

@freezed
class CloudsModel with _$CloudsModel {
  const CloudsModel._();

  factory CloudsModel({
    @JsonKey(name: 'all') required int all,
  }) = _CloudsModel;

  factory CloudsModel.fromJson(Map<String, dynamic> json) =>
      _$CloudsModelFromJson(json);
}
