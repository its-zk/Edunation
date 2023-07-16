// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'university_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UniversityModel _$$_UniversityModelFromJson(Map<String, dynamic> json) =>
    _$_UniversityModel(
      applyLink: json['applyLink'] as String,
      id: json['id'] as String,
      location: json['location'] as String,
      logo: json['logo'] as String,
      name: json['name'] as String,
      departments: json['departments'] as Map<String, dynamic>,
      programs: json['programs'] as List<dynamic>,
    );

Map<String, dynamic> _$$_UniversityModelToJson(_$_UniversityModel instance) =>
    <String, dynamic>{
      'applyLink': instance.applyLink,
      'id': instance.id,
      'location': instance.location,
      'logo': instance.logo,
      'name': instance.name,
      'departments': instance.departments,
      'programs': instance.programs,
    };
