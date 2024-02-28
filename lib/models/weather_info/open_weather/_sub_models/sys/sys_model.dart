import 'package:freezed_annotation/freezed_annotation.dart';

part 'sys_model.freezed.dart';
part 'sys_model.g.dart';

@freezed
class SysModel with _$SysModel {
  const SysModel._();

  factory SysModel({
    @JsonKey(name: 'country') required String country,
    @JsonKey(name: 'sunrise') required int sunrise,
    @JsonKey(name: 'sunset') required int sunset,
  }) = _SysModel;

  factory SysModel.fromJson(Map<String, dynamic> json) =>
      _$SysModelFromJson(json);
}
