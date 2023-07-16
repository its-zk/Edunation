// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fee_structure_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FeeStructureModel _$FeeStructureModelFromJson(Map<String, dynamic> json) {
  return _FeeStructureModel.fromJson(json);
}

/// @nodoc
mixin _$FeeStructureModel {
  String get link => throw _privateConstructorUsedError;
  Map<String, Map<String, int>> get feeStructure =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeeStructureModelCopyWith<FeeStructureModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeeStructureModelCopyWith<$Res> {
  factory $FeeStructureModelCopyWith(
          FeeStructureModel value, $Res Function(FeeStructureModel) then) =
      _$FeeStructureModelCopyWithImpl<$Res, FeeStructureModel>;
  @useResult
  $Res call({String link, Map<String, Map<String, int>> feeStructure});
}

/// @nodoc
class _$FeeStructureModelCopyWithImpl<$Res, $Val extends FeeStructureModel>
    implements $FeeStructureModelCopyWith<$Res> {
  _$FeeStructureModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? link = null,
    Object? feeStructure = null,
  }) {
    return _then(_value.copyWith(
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      feeStructure: null == feeStructure
          ? _value.feeStructure
          : feeStructure // ignore: cast_nullable_to_non_nullable
              as Map<String, Map<String, int>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FeeStructureModelCopyWith<$Res>
    implements $FeeStructureModelCopyWith<$Res> {
  factory _$$_FeeStructureModelCopyWith(_$_FeeStructureModel value,
          $Res Function(_$_FeeStructureModel) then) =
      __$$_FeeStructureModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String link, Map<String, Map<String, int>> feeStructure});
}

/// @nodoc
class __$$_FeeStructureModelCopyWithImpl<$Res>
    extends _$FeeStructureModelCopyWithImpl<$Res, _$_FeeStructureModel>
    implements _$$_FeeStructureModelCopyWith<$Res> {
  __$$_FeeStructureModelCopyWithImpl(
      _$_FeeStructureModel _value, $Res Function(_$_FeeStructureModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? link = null,
    Object? feeStructure = null,
  }) {
    return _then(_$_FeeStructureModel(
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      feeStructure: null == feeStructure
          ? _value._feeStructure
          : feeStructure // ignore: cast_nullable_to_non_nullable
              as Map<String, Map<String, int>>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_FeeStructureModel extends _FeeStructureModel {
  const _$_FeeStructureModel(
      {required this.link,
      required final Map<String, Map<String, int>> feeStructure})
      : _feeStructure = feeStructure,
        super._();

  factory _$_FeeStructureModel.fromJson(Map<String, dynamic> json) =>
      _$$_FeeStructureModelFromJson(json);

  @override
  final String link;
  final Map<String, Map<String, int>> _feeStructure;
  @override
  Map<String, Map<String, int>> get feeStructure {
    if (_feeStructure is EqualUnmodifiableMapView) return _feeStructure;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_feeStructure);
  }

  @override
  String toString() {
    return 'FeeStructureModel(link: $link, feeStructure: $feeStructure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FeeStructureModel &&
            (identical(other.link, link) || other.link == link) &&
            const DeepCollectionEquality()
                .equals(other._feeStructure, _feeStructure));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, link, const DeepCollectionEquality().hash(_feeStructure));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FeeStructureModelCopyWith<_$_FeeStructureModel> get copyWith =>
      __$$_FeeStructureModelCopyWithImpl<_$_FeeStructureModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FeeStructureModelToJson(
      this,
    );
  }
}

abstract class _FeeStructureModel extends FeeStructureModel {
  const factory _FeeStructureModel(
          {required final String link,
          required final Map<String, Map<String, int>> feeStructure}) =
      _$_FeeStructureModel;
  const _FeeStructureModel._() : super._();

  factory _FeeStructureModel.fromJson(Map<String, dynamic> json) =
      _$_FeeStructureModel.fromJson;

  @override
  String get link;
  @override
  Map<String, Map<String, int>> get feeStructure;
  @override
  @JsonKey(ignore: true)
  _$$_FeeStructureModelCopyWith<_$_FeeStructureModel> get copyWith =>
      throw _privateConstructorUsedError;
}
