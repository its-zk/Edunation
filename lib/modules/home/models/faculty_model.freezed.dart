// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'faculty_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FacultyModel _$FacultyModelFromJson(Map<String, dynamic> json) {
  return _FacultyModel.fromJson(json);
}

/// @nodoc
mixin _$FacultyModel {
  List<Map<String, dynamic>> get faculty => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FacultyModelCopyWith<FacultyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FacultyModelCopyWith<$Res> {
  factory $FacultyModelCopyWith(
          FacultyModel value, $Res Function(FacultyModel) then) =
      _$FacultyModelCopyWithImpl<$Res, FacultyModel>;
  @useResult
  $Res call({List<Map<String, dynamic>> faculty});
}

/// @nodoc
class _$FacultyModelCopyWithImpl<$Res, $Val extends FacultyModel>
    implements $FacultyModelCopyWith<$Res> {
  _$FacultyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? faculty = null,
  }) {
    return _then(_value.copyWith(
      faculty: null == faculty
          ? _value.faculty
          : faculty // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FacultyModelCopyWith<$Res>
    implements $FacultyModelCopyWith<$Res> {
  factory _$$_FacultyModelCopyWith(
          _$_FacultyModel value, $Res Function(_$_FacultyModel) then) =
      __$$_FacultyModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Map<String, dynamic>> faculty});
}

/// @nodoc
class __$$_FacultyModelCopyWithImpl<$Res>
    extends _$FacultyModelCopyWithImpl<$Res, _$_FacultyModel>
    implements _$$_FacultyModelCopyWith<$Res> {
  __$$_FacultyModelCopyWithImpl(
      _$_FacultyModel _value, $Res Function(_$_FacultyModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? faculty = null,
  }) {
    return _then(_$_FacultyModel(
      faculty: null == faculty
          ? _value._faculty
          : faculty // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_FacultyModel extends _FacultyModel {
  const _$_FacultyModel({required final List<Map<String, dynamic>> faculty})
      : _faculty = faculty,
        super._();

  factory _$_FacultyModel.fromJson(Map<String, dynamic> json) =>
      _$$_FacultyModelFromJson(json);

  final List<Map<String, dynamic>> _faculty;
  @override
  List<Map<String, dynamic>> get faculty {
    if (_faculty is EqualUnmodifiableListView) return _faculty;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_faculty);
  }

  @override
  String toString() {
    return 'FacultyModel(faculty: $faculty)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FacultyModel &&
            const DeepCollectionEquality().equals(other._faculty, _faculty));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_faculty));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FacultyModelCopyWith<_$_FacultyModel> get copyWith =>
      __$$_FacultyModelCopyWithImpl<_$_FacultyModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FacultyModelToJson(
      this,
    );
  }
}

abstract class _FacultyModel extends FacultyModel {
  const factory _FacultyModel(
      {required final List<Map<String, dynamic>> faculty}) = _$_FacultyModel;
  const _FacultyModel._() : super._();

  factory _FacultyModel.fromJson(Map<String, dynamic> json) =
      _$_FacultyModel.fromJson;

  @override
  List<Map<String, dynamic>> get faculty;
  @override
  @JsonKey(ignore: true)
  _$$_FacultyModelCopyWith<_$_FacultyModel> get copyWith =>
      throw _privateConstructorUsedError;
}
