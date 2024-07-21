// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CourseTag _$CourseTagFromJson(Map<String, dynamic> json) {
  return _CourseTag.fromJson(json);
}

/// @nodoc
mixin _$CourseTag {
  String get courseTagId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get colorValue => throw _privateConstructorUsedError;
  bool get isDeleted => throw _privateConstructorUsedError;
  @onlyOneDateTimeToServerTimeConverter
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @dateTimeToServerTimeConverter
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CourseTagCopyWith<CourseTag> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseTagCopyWith<$Res> {
  factory $CourseTagCopyWith(CourseTag value, $Res Function(CourseTag) then) =
      _$CourseTagCopyWithImpl<$Res, CourseTag>;
  @useResult
  $Res call(
      {String courseTagId,
      String name,
      int colorValue,
      bool isDeleted,
      @onlyOneDateTimeToServerTimeConverter DateTime? createdAt,
      @dateTimeToServerTimeConverter DateTime? updatedAt});
}

/// @nodoc
class _$CourseTagCopyWithImpl<$Res, $Val extends CourseTag>
    implements $CourseTagCopyWith<$Res> {
  _$CourseTagCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseTagId = null,
    Object? name = null,
    Object? colorValue = null,
    Object? isDeleted = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      courseTagId: null == courseTagId
          ? _value.courseTagId
          : courseTagId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      colorValue: null == colorValue
          ? _value.colorValue
          : colorValue // ignore: cast_nullable_to_non_nullable
              as int,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CourseTagImplCopyWith<$Res>
    implements $CourseTagCopyWith<$Res> {
  factory _$$CourseTagImplCopyWith(
          _$CourseTagImpl value, $Res Function(_$CourseTagImpl) then) =
      __$$CourseTagImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String courseTagId,
      String name,
      int colorValue,
      bool isDeleted,
      @onlyOneDateTimeToServerTimeConverter DateTime? createdAt,
      @dateTimeToServerTimeConverter DateTime? updatedAt});
}

/// @nodoc
class __$$CourseTagImplCopyWithImpl<$Res>
    extends _$CourseTagCopyWithImpl<$Res, _$CourseTagImpl>
    implements _$$CourseTagImplCopyWith<$Res> {
  __$$CourseTagImplCopyWithImpl(
      _$CourseTagImpl _value, $Res Function(_$CourseTagImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseTagId = null,
    Object? name = null,
    Object? colorValue = null,
    Object? isDeleted = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$CourseTagImpl(
      courseTagId: null == courseTagId
          ? _value.courseTagId
          : courseTagId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      colorValue: null == colorValue
          ? _value.colorValue
          : colorValue // ignore: cast_nullable_to_non_nullable
              as int,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CourseTagImpl extends _CourseTag {
  const _$CourseTagImpl(
      {required this.courseTagId,
      required this.name,
      required this.colorValue,
      this.isDeleted = false,
      @onlyOneDateTimeToServerTimeConverter this.createdAt,
      @dateTimeToServerTimeConverter this.updatedAt})
      : super._();

  factory _$CourseTagImpl.fromJson(Map<String, dynamic> json) =>
      _$$CourseTagImplFromJson(json);

  @override
  final String courseTagId;
  @override
  final String name;
  @override
  final int colorValue;
  @override
  @JsonKey()
  final bool isDeleted;
  @override
  @onlyOneDateTimeToServerTimeConverter
  final DateTime? createdAt;
  @override
  @dateTimeToServerTimeConverter
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'CourseTag(courseTagId: $courseTagId, name: $name, colorValue: $colorValue, isDeleted: $isDeleted, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseTagImpl &&
            (identical(other.courseTagId, courseTagId) ||
                other.courseTagId == courseTagId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.colorValue, colorValue) ||
                other.colorValue == colorValue) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, courseTagId, name, colorValue,
      isDeleted, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseTagImplCopyWith<_$CourseTagImpl> get copyWith =>
      __$$CourseTagImplCopyWithImpl<_$CourseTagImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CourseTagImplToJson(
      this,
    );
  }
}

abstract class _CourseTag extends CourseTag {
  const factory _CourseTag(
          {required final String courseTagId,
          required final String name,
          required final int colorValue,
          final bool isDeleted,
          @onlyOneDateTimeToServerTimeConverter final DateTime? createdAt,
          @dateTimeToServerTimeConverter final DateTime? updatedAt}) =
      _$CourseTagImpl;
  const _CourseTag._() : super._();

  factory _CourseTag.fromJson(Map<String, dynamic> json) =
      _$CourseTagImpl.fromJson;

  @override
  String get courseTagId;
  @override
  String get name;
  @override
  int get colorValue;
  @override
  bool get isDeleted;
  @override
  @onlyOneDateTimeToServerTimeConverter
  DateTime? get createdAt;
  @override
  @dateTimeToServerTimeConverter
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$CourseTagImplCopyWith<_$CourseTagImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
