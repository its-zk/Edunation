// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChatDetailsModel _$$_ChatDetailsModelFromJson(Map<String, dynamic> json) =>
    _$_ChatDetailsModel(
      lastMsg: json['lastMsg'] as String,
      ambassadorId: json['ambassadorId'] as String,
      studentId: json['studentId'] as String,
      studentName: json['studentName'] as String,
      createdAt: const DateTimeTimeStampConverter()
          .fromJson(json['createdAt'] as Timestamp),
    );

Map<String, dynamic> _$$_ChatDetailsModelToJson(_$_ChatDetailsModel instance) =>
    <String, dynamic>{
      'lastMsg': instance.lastMsg,
      'ambassadorId': instance.ambassadorId,
      'studentId': instance.studentId,
      'studentName': instance.studentName,
      'createdAt':
          const DateTimeTimeStampConverter().toJson(instance.createdAt),
    };

_$_ChatModel _$$_ChatModelFromJson(Map<String, dynamic> json) => _$_ChatModel(
      msg: json['msg'] as String,
      fromStudent: json['fromStudent'] as bool,
      createdAt: const DateTimeTimeStampConverter()
          .fromJson(json['createdAt'] as Timestamp),
    );

Map<String, dynamic> _$$_ChatModelToJson(_$_ChatModel instance) =>
    <String, dynamic>{
      'msg': instance.msg,
      'fromStudent': instance.fromStudent,
      'createdAt':
          const DateTimeTimeStampConverter().toJson(instance.createdAt),
    };
