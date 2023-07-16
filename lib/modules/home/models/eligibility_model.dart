import 'package:freezed_annotation/freezed_annotation.dart';

part 'eligibility_model.freezed.dart';
part 'eligibility_model.g.dart';

@freezed
abstract class EligibilityModel implements _$EligibilityModel {
  const EligibilityModel._();

  @JsonSerializable(explicitToJson: true)
  const factory EligibilityModel({
    required List eligibility,
    required String link,
  }) = _EligibilityModel;

  factory EligibilityModel.fromJson(Map<String, dynamic> json) =>
      _$EligibilityModelFromJson(json);
}
