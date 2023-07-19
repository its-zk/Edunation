// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChatDetailsModel _$ChatDetailsModelFromJson(Map<String, dynamic> json) {
  return _ChatDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$ChatDetailsModel {
  String get lastMsg => throw _privateConstructorUsedError;
  String get ambassadorId => throw _privateConstructorUsedError;
  String get studentId => throw _privateConstructorUsedError;
  String get studentName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatDetailsModelCopyWith<ChatDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatDetailsModelCopyWith<$Res> {
  factory $ChatDetailsModelCopyWith(
          ChatDetailsModel value, $Res Function(ChatDetailsModel) then) =
      _$ChatDetailsModelCopyWithImpl<$Res, ChatDetailsModel>;
  @useResult
  $Res call(
      {String lastMsg,
      String ambassadorId,
      String studentId,
      String studentName});
}

/// @nodoc
class _$ChatDetailsModelCopyWithImpl<$Res, $Val extends ChatDetailsModel>
    implements $ChatDetailsModelCopyWith<$Res> {
  _$ChatDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastMsg = null,
    Object? ambassadorId = null,
    Object? studentId = null,
    Object? studentName = null,
  }) {
    return _then(_value.copyWith(
      lastMsg: null == lastMsg
          ? _value.lastMsg
          : lastMsg // ignore: cast_nullable_to_non_nullable
              as String,
      ambassadorId: null == ambassadorId
          ? _value.ambassadorId
          : ambassadorId // ignore: cast_nullable_to_non_nullable
              as String,
      studentId: null == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as String,
      studentName: null == studentName
          ? _value.studentName
          : studentName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChatDetailsModelCopyWith<$Res>
    implements $ChatDetailsModelCopyWith<$Res> {
  factory _$$_ChatDetailsModelCopyWith(
          _$_ChatDetailsModel value, $Res Function(_$_ChatDetailsModel) then) =
      __$$_ChatDetailsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String lastMsg,
      String ambassadorId,
      String studentId,
      String studentName});
}

/// @nodoc
class __$$_ChatDetailsModelCopyWithImpl<$Res>
    extends _$ChatDetailsModelCopyWithImpl<$Res, _$_ChatDetailsModel>
    implements _$$_ChatDetailsModelCopyWith<$Res> {
  __$$_ChatDetailsModelCopyWithImpl(
      _$_ChatDetailsModel _value, $Res Function(_$_ChatDetailsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastMsg = null,
    Object? ambassadorId = null,
    Object? studentId = null,
    Object? studentName = null,
  }) {
    return _then(_$_ChatDetailsModel(
      lastMsg: null == lastMsg
          ? _value.lastMsg
          : lastMsg // ignore: cast_nullable_to_non_nullable
              as String,
      ambassadorId: null == ambassadorId
          ? _value.ambassadorId
          : ambassadorId // ignore: cast_nullable_to_non_nullable
              as String,
      studentId: null == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as String,
      studentName: null == studentName
          ? _value.studentName
          : studentName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_ChatDetailsModel extends _ChatDetailsModel {
  const _$_ChatDetailsModel(
      {required this.lastMsg,
      required this.ambassadorId,
      required this.studentId,
      required this.studentName})
      : super._();

  factory _$_ChatDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$$_ChatDetailsModelFromJson(json);

  @override
  final String lastMsg;
  @override
  final String ambassadorId;
  @override
  final String studentId;
  @override
  final String studentName;

  @override
  String toString() {
    return 'ChatDetailsModel(lastMsg: $lastMsg, ambassadorId: $ambassadorId, studentId: $studentId, studentName: $studentName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatDetailsModel &&
            (identical(other.lastMsg, lastMsg) || other.lastMsg == lastMsg) &&
            (identical(other.ambassadorId, ambassadorId) ||
                other.ambassadorId == ambassadorId) &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.studentName, studentName) ||
                other.studentName == studentName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, lastMsg, ambassadorId, studentId, studentName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatDetailsModelCopyWith<_$_ChatDetailsModel> get copyWith =>
      __$$_ChatDetailsModelCopyWithImpl<_$_ChatDetailsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChatDetailsModelToJson(
      this,
    );
  }
}

abstract class _ChatDetailsModel extends ChatDetailsModel {
  const factory _ChatDetailsModel(
      {required final String lastMsg,
      required final String ambassadorId,
      required final String studentId,
      required final String studentName}) = _$_ChatDetailsModel;
  const _ChatDetailsModel._() : super._();

  factory _ChatDetailsModel.fromJson(Map<String, dynamic> json) =
      _$_ChatDetailsModel.fromJson;

  @override
  String get lastMsg;
  @override
  String get ambassadorId;
  @override
  String get studentId;
  @override
  String get studentName;
  @override
  @JsonKey(ignore: true)
  _$$_ChatDetailsModelCopyWith<_$_ChatDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

ChatModel _$ChatModelFromJson(Map<String, dynamic> json) {
  return _ChatModel.fromJson(json);
}

/// @nodoc
mixin _$ChatModel {
  String get msg => throw _privateConstructorUsedError;
  bool get fromStudent => throw _privateConstructorUsedError;
  @DateTimeTimeStampConverter()
  DateTime get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatModelCopyWith<ChatModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatModelCopyWith<$Res> {
  factory $ChatModelCopyWith(ChatModel value, $Res Function(ChatModel) then) =
      _$ChatModelCopyWithImpl<$Res, ChatModel>;
  @useResult
  $Res call(
      {String msg,
      bool fromStudent,
      @DateTimeTimeStampConverter() DateTime createdAt});
}

/// @nodoc
class _$ChatModelCopyWithImpl<$Res, $Val extends ChatModel>
    implements $ChatModelCopyWith<$Res> {
  _$ChatModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
    Object? fromStudent = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
      fromStudent: null == fromStudent
          ? _value.fromStudent
          : fromStudent // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChatModelCopyWith<$Res> implements $ChatModelCopyWith<$Res> {
  factory _$$_ChatModelCopyWith(
          _$_ChatModel value, $Res Function(_$_ChatModel) then) =
      __$$_ChatModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String msg,
      bool fromStudent,
      @DateTimeTimeStampConverter() DateTime createdAt});
}

/// @nodoc
class __$$_ChatModelCopyWithImpl<$Res>
    extends _$ChatModelCopyWithImpl<$Res, _$_ChatModel>
    implements _$$_ChatModelCopyWith<$Res> {
  __$$_ChatModelCopyWithImpl(
      _$_ChatModel _value, $Res Function(_$_ChatModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
    Object? fromStudent = null,
    Object? createdAt = null,
  }) {
    return _then(_$_ChatModel(
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
      fromStudent: null == fromStudent
          ? _value.fromStudent
          : fromStudent // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_ChatModel extends _ChatModel {
  const _$_ChatModel(
      {required this.msg,
      required this.fromStudent,
      @DateTimeTimeStampConverter() required this.createdAt})
      : super._();

  factory _$_ChatModel.fromJson(Map<String, dynamic> json) =>
      _$$_ChatModelFromJson(json);

  @override
  final String msg;
  @override
  final bool fromStudent;
  @override
  @DateTimeTimeStampConverter()
  final DateTime createdAt;

  @override
  String toString() {
    return 'ChatModel(msg: $msg, fromStudent: $fromStudent, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatModel &&
            (identical(other.msg, msg) || other.msg == msg) &&
            (identical(other.fromStudent, fromStudent) ||
                other.fromStudent == fromStudent) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, msg, fromStudent, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatModelCopyWith<_$_ChatModel> get copyWith =>
      __$$_ChatModelCopyWithImpl<_$_ChatModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChatModelToJson(
      this,
    );
  }
}

abstract class _ChatModel extends ChatModel {
  const factory _ChatModel(
          {required final String msg,
          required final bool fromStudent,
          @DateTimeTimeStampConverter() required final DateTime createdAt}) =
      _$_ChatModel;
  const _ChatModel._() : super._();

  factory _ChatModel.fromJson(Map<String, dynamic> json) =
      _$_ChatModel.fromJson;

  @override
  String get msg;
  @override
  bool get fromStudent;
  @override
  @DateTimeTimeStampConverter()
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_ChatModelCopyWith<_$_ChatModel> get copyWith =>
      throw _privateConstructorUsedError;
}
