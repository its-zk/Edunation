import 'package:freezed_annotation/freezed_annotation.dart';

part 'university_model.freezed.dart';
part 'university_model.g.dart';

@freezed
abstract class UniversityModel implements _$UniversityModel {
  const UniversityModel._();

  @JsonSerializable(explicitToJson: true)
  const factory UniversityModel({
    required String applyLink,
    required String id,
    required String location,
    required String logo,
    required String name,
    required Map<String, dynamic> departments,
    required List programs,
  }) = _UniversityModel;

  factory UniversityModel.fromJson(Map<String, dynamic> json) =>
      _$UniversityModelFromJson(json);
}
