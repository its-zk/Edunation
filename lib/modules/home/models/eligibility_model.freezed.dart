// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'eligibility_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EligibilityModel _$EligibilityModelFromJson(Map<String, dynamic> json) {
  return _EligibilityModel.fromJson(json);
}

/// @nodoc
mixin _$EligibilityModel {
  List<dynamic> get eligibility => throw _privateConstructorUsedError;
  String get link => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EligibilityModelCopyWith<EligibilityModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EligibilityModelCopyWith<$Res> {
  factory $EligibilityModelCopyWith(
          EligibilityModel value, $Res Function(EligibilityModel) then) =
      _$EligibilityModelCopyWithImpl<$Res, EligibilityModel>;
  @useResult
  $Res call({List<dynamic> eligibility, String link});
}

/// @nodoc
class _$EligibilityModelCopyWithImpl<$Res, $Val extends EligibilityModel>
    implements $EligibilityModelCopyWith<$Res> {
  _$EligibilityModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eligibility = null,
    Object? link = null,
  }) {
    return _then(_value.copyWith(
      eligibility: null == eligibility
          ? _value.eligibility
          : eligibility // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EligibilityModelCopyWith<$Res>
    implements $EligibilityModelCopyWith<$Res> {
  factory _$$_EligibilityModelCopyWith(
          _$_EligibilityModel value, $Res Function(_$_EligibilityModel) then) =
      __$$_EligibilityModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<dynamic> eligibility, String link});
}

/// @nodoc
class __$$_EligibilityModelCopyWithImpl<$Res>
    extends _$EligibilityModelCopyWithImpl<$Res, _$_EligibilityModel>
    implements _$$_EligibilityModelCopyWith<$Res> {
  __$$_EligibilityModelCopyWithImpl(
      _$_EligibilityModel _value, $Res Function(_$_EligibilityModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eligibility = null,
    Object? link = null,
  }) {
    return _then(_$_EligibilityModel(
      eligibility: null == eligibility
          ? _value._eligibility
          : eligibility // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_EligibilityModel extends _EligibilityModel {
  const _$_EligibilityModel(
      {required final List<dynamic> eligibility, required this.link})
      : _eligibility = eligibility,
        super._();

  factory _$_EligibilityModel.fromJson(Map<String, dynamic> json) =>
      _$$_EligibilityModelFromJson(json);

  final List<dynamic> _eligibility;
  @override
  List<dynamic> get eligibility {
    if (_eligibility is EqualUnmodifiableListView) return _eligibility;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_eligibility);
  }

  @override
  final String link;

  @override
  String toString() {
    return 'EligibilityModel(eligibility: $eligibility, link: $link)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EligibilityModel &&
            const DeepCollectionEquality()
                .equals(other._eligibility, _eligibility) &&
            (identical(other.link, link) || other.link == link));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_eligibility), link);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EligibilityModelCopyWith<_$_EligibilityModel> get copyWith =>
      __$$_EligibilityModelCopyWithImpl<_$_EligibilityModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EligibilityModelToJson(
      this,
    );
  }
}

abstract class _EligibilityModel extends EligibilityModel {
  const factory _EligibilityModel(
      {required final List<dynamic> eligibility,
      required final String link}) = _$_EligibilityModel;
  const _EligibilityModel._() : super._();

  factory _EligibilityModel.fromJson(Map<String, dynamic> json) =
      _$_EligibilityModel.fromJson;

  @override
  List<dynamic> get eligibility;
  @override
  String get link;
  @override
  @JsonKey(ignore: true)
  _$$_EligibilityModelCopyWith<_$_EligibilityModel> get copyWith =>
      throw _privateConstructorUsedError;
}
