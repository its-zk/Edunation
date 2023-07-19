import 'package:freezed_annotation/freezed_annotation.dart';

part 'ambassador_model.freezed.dart';
part 'ambassador_model.g.dart';

@freezed
abstract class AmbassadorModel implements _$AmbassadorModel {
  const AmbassadorModel._();

  @JsonSerializable(explicitToJson: true)
  const factory AmbassadorModel({
    required String email,
    required String name,
    required String programName,
    required String uid,
    required String universityId,
  }) = _AmbassadorModel;

  factory AmbassadorModel.fromJson(Map<String, dynamic> json) =>
      _$AmbassadorModelFromJson(json);
}
