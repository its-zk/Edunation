import 'package:edunation/utils/converters/datetime_timestamp_json_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
part 'chat_details_model.freezed.dart';
part 'chat_details_model.g.dart';

@freezed
abstract class ChatDetailsModel implements _$ChatDetailsModel {
  const ChatDetailsModel._();

  @JsonSerializable(explicitToJson: true)
  const factory ChatDetailsModel({
    required String lastMsg,
    required String ambassadorId,
    required String studentId,
    required String studentName,
  }) = _ChatDetailsModel;

  factory ChatDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$ChatDetailsModelFromJson(json);
}

@freezed
abstract class ChatModel implements _$ChatModel {
  const ChatModel._();

  @JsonSerializable(explicitToJson: true)
  const factory ChatModel({
    required String msg,
    required bool fromStudent,
    @DateTimeTimeStampConverter() required DateTime createdAt,
  }) = _ChatModel;

  factory ChatModel.fromJson(Map<String, dynamic> json) =>
      _$ChatModelFromJson(json);
}
