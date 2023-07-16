import 'package:freezed_annotation/freezed_annotation.dart';

part 'faculty_model.freezed.dart';
part 'faculty_model.g.dart';

@freezed
abstract class FacultyModel implements _$FacultyModel {
  const FacultyModel._();

  @JsonSerializable(explicitToJson: true)
  const factory FacultyModel({
    required List<Map<String, dynamic>> faculty,
  }) = _FacultyModel;

  factory FacultyModel.fromJson(Map<String, dynamic> json) =>
      _$FacultyModelFromJson(json);
}
