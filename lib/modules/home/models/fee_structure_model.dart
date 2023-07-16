import 'package:freezed_annotation/freezed_annotation.dart';

part 'fee_structure_model.freezed.dart';
part 'fee_structure_model.g.dart';

@freezed
abstract class FeeStructureModel implements _$FeeStructureModel {
  const FeeStructureModel._();

  @JsonSerializable(explicitToJson: true)
  const factory FeeStructureModel({
    required String link,
    required Map<String, Map<String, int>> feeStructure,
  }) = _FeeStructureModel;

  factory FeeStructureModel.fromJson(Map<String, dynamic> json) =>
      _$FeeStructureModelFromJson(json);
}
