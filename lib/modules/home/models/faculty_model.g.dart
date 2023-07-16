// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'faculty_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FacultyModel _$$_FacultyModelFromJson(Map<String, dynamic> json) =>
    _$_FacultyModel(
      faculty: (json['faculty'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
    );

Map<String, dynamic> _$$_FacultyModelToJson(_$_FacultyModel instance) =>
    <String, dynamic>{
      'faculty': instance.faculty,
    };
