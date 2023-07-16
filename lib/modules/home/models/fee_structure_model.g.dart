// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fee_structure_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FeeStructureModel _$$_FeeStructureModelFromJson(Map<String, dynamic> json) =>
    _$_FeeStructureModel(
      link: json['link'] as String,
      feeStructure: (json['feeStructure'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, Map<String, int>.from(e as Map)),
      ),
    );

Map<String, dynamic> _$$_FeeStructureModelToJson(
        _$_FeeStructureModel instance) =>
    <String, dynamic>{
      'link': instance.link,
      'feeStructure': instance.feeStructure,
    };
