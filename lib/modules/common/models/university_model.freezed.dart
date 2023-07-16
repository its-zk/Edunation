// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'university_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UniversityModel _$UniversityModelFromJson(Map<String, dynamic> json) {
  return _UniversityModel.fromJson(json);
}

/// @nodoc
mixin _$UniversityModel {
  String get applyLink => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  String get logo => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  Map<String, dynamic> get departments => throw _privateConstructorUsedError;
  List<dynamic> get programs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UniversityModelCopyWith<UniversityModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UniversityModelCopyWith<$Res> {
  factory $UniversityModelCopyWith(
          UniversityModel value, $Res Function(UniversityModel) then) =
      _$UniversityModelCopyWithImpl<$Res, UniversityModel>;
  @useResult
  $Res call(
      {String applyLink,
      String id,
      String location,
      String logo,
      String name,
      Map<String, dynamic> departments,
      List<dynamic> programs});
}

/// @nodoc
class _$UniversityModelCopyWithImpl<$Res, $Val extends UniversityModel>
    implements $UniversityModelCopyWith<$Res> {
  _$UniversityModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? applyLink = null,
    Object? id = null,
    Object? location = null,
    Object? logo = null,
    Object? name = null,
    Object? departments = null,
    Object? programs = null,
  }) {
    return _then(_value.copyWith(
      applyLink: null == applyLink
          ? _value.applyLink
          : applyLink // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      logo: null == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      departments: null == departments
          ? _value.departments
          : departments // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      programs: null == programs
          ? _value.programs
          : programs // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UniversityModelCopyWith<$Res>
    implements $UniversityModelCopyWith<$Res> {
  factory _$$_UniversityModelCopyWith(
          _$_UniversityModel value, $Res Function(_$_UniversityModel) then) =
      __$$_UniversityModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String applyLink,
      String id,
      String location,
      String logo,
      String name,
      Map<String, dynamic> departments,
      List<dynamic> programs});
}

/// @nodoc
class __$$_UniversityModelCopyWithImpl<$Res>
    extends _$UniversityModelCopyWithImpl<$Res, _$_UniversityModel>
    implements _$$_UniversityModelCopyWith<$Res> {
  __$$_UniversityModelCopyWithImpl(
      _$_UniversityModel _value, $Res Function(_$_UniversityModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? applyLink = null,
    Object? id = null,
    Object? location = null,
    Object? logo = null,
    Object? name = null,
    Object? departments = null,
    Object? programs = null,
  }) {
    return _then(_$_UniversityModel(
      applyLink: null == applyLink
          ? _value.applyLink
          : applyLink // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      logo: null == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      departments: null == departments
          ? _value._departments
          : departments // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      programs: null == programs
          ? _value._programs
          : programs // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_UniversityModel extends _UniversityModel {
  const _$_UniversityModel(
      {required this.applyLink,
      required this.id,
      required this.location,
      required this.logo,
      required this.name,
      required final Map<String, dynamic> departments,
      required final List<dynamic> programs})
      : _departments = departments,
        _programs = programs,
        super._();

  factory _$_UniversityModel.fromJson(Map<String, dynamic> json) =>
      _$$_UniversityModelFromJson(json);

  @override
  final String applyLink;
  @override
  final String id;
  @override
  final String location;
  @override
  final String logo;
  @override
  final String name;
  final Map<String, dynamic> _departments;
  @override
  Map<String, dynamic> get departments {
    if (_departments is EqualUnmodifiableMapView) return _departments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_departments);
  }

  final List<dynamic> _programs;
  @override
  List<dynamic> get programs {
    if (_programs is EqualUnmodifiableListView) return _programs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_programs);
  }

  @override
  String toString() {
    return 'UniversityModel(applyLink: $applyLink, id: $id, location: $location, logo: $logo, name: $name, departments: $departments, programs: $programs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UniversityModel &&
            (identical(other.applyLink, applyLink) ||
                other.applyLink == applyLink) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.logo, logo) || other.logo == logo) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._departments, _departments) &&
            const DeepCollectionEquality().equals(other._programs, _programs));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      applyLink,
      id,
      location,
      logo,
      name,
      const DeepCollectionEquality().hash(_departments),
      const DeepCollectionEquality().hash(_programs));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UniversityModelCopyWith<_$_UniversityModel> get copyWith =>
      __$$_UniversityModelCopyWithImpl<_$_UniversityModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UniversityModelToJson(
      this,
    );
  }
}

abstract class _UniversityModel extends UniversityModel {
  const factory _UniversityModel(
      {required final String applyLink,
      required final String id,
      required final String location,
      required final String logo,
      required final String name,
      required final Map<String, dynamic> departments,
      required final List<dynamic> programs}) = _$_UniversityModel;
  const _UniversityModel._() : super._();

  factory _UniversityModel.fromJson(Map<String, dynamic> json) =
      _$_UniversityModel.fromJson;

  @override
  String get applyLink;
  @override
  String get id;
  @override
  String get location;
  @override
  String get logo;
  @override
  String get name;
  @override
  Map<String, dynamic> get departments;
  @override
  List<dynamic> get programs;
  @override
  @JsonKey(ignore: true)
  _$$_UniversityModelCopyWith<_$_UniversityModel> get copyWith =>
      throw _privateConstructorUsedError;
}
