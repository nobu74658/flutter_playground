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

Course _$CourseFromJson(Map<String, dynamic> json) {
  return _Course.fromJson(json);
}

/// @nodoc
mixin _$Course {
  String get courseId => throw _privateConstructorUsedError;
  String get producerId => throw _privateConstructorUsedError;
  String get areaId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  String get desc => throw _privateConstructorUsedError;
  List<String> get imageUrls => throw _privateConstructorUsedError;
  List<String> get tagIds => throw _privateConstructorUsedError;
  List<String> get yuiStationIds => throw _privateConstructorUsedError;
  @seasonListConverter
  Set<Season> get seasons => throw _privateConstructorUsedError;
  bool get isDeleted => throw _privateConstructorUsedError;
  @onlyOneDateTimeToServerTimeConverter
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @dateTimeToServerTimeConverter
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CourseCopyWith<Course> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseCopyWith<$Res> {
  factory $CourseCopyWith(Course value, $Res Function(Course) then) =
      _$CourseCopyWithImpl<$Res, Course>;
  @useResult
  $Res call(
      {String courseId,
      String producerId,
      String areaId,
      String name,
      int price,
      String desc,
      List<String> imageUrls,
      List<String> tagIds,
      List<String> yuiStationIds,
      @seasonListConverter Set<Season> seasons,
      bool isDeleted,
      @onlyOneDateTimeToServerTimeConverter DateTime? createdAt,
      @dateTimeToServerTimeConverter DateTime? updatedAt});
}

/// @nodoc
class _$CourseCopyWithImpl<$Res, $Val extends Course>
    implements $CourseCopyWith<$Res> {
  _$CourseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseId = null,
    Object? producerId = null,
    Object? areaId = null,
    Object? name = null,
    Object? price = null,
    Object? desc = null,
    Object? imageUrls = null,
    Object? tagIds = null,
    Object? yuiStationIds = null,
    Object? seasons = null,
    Object? isDeleted = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
      producerId: null == producerId
          ? _value.producerId
          : producerId // ignore: cast_nullable_to_non_nullable
              as String,
      areaId: null == areaId
          ? _value.areaId
          : areaId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      desc: null == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrls: null == imageUrls
          ? _value.imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      tagIds: null == tagIds
          ? _value.tagIds
          : tagIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      yuiStationIds: null == yuiStationIds
          ? _value.yuiStationIds
          : yuiStationIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      seasons: null == seasons
          ? _value.seasons
          : seasons // ignore: cast_nullable_to_non_nullable
              as Set<Season>,
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
abstract class _$$CourseImplCopyWith<$Res> implements $CourseCopyWith<$Res> {
  factory _$$CourseImplCopyWith(
          _$CourseImpl value, $Res Function(_$CourseImpl) then) =
      __$$CourseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String courseId,
      String producerId,
      String areaId,
      String name,
      int price,
      String desc,
      List<String> imageUrls,
      List<String> tagIds,
      List<String> yuiStationIds,
      @seasonListConverter Set<Season> seasons,
      bool isDeleted,
      @onlyOneDateTimeToServerTimeConverter DateTime? createdAt,
      @dateTimeToServerTimeConverter DateTime? updatedAt});
}

/// @nodoc
class __$$CourseImplCopyWithImpl<$Res>
    extends _$CourseCopyWithImpl<$Res, _$CourseImpl>
    implements _$$CourseImplCopyWith<$Res> {
  __$$CourseImplCopyWithImpl(
      _$CourseImpl _value, $Res Function(_$CourseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseId = null,
    Object? producerId = null,
    Object? areaId = null,
    Object? name = null,
    Object? price = null,
    Object? desc = null,
    Object? imageUrls = null,
    Object? tagIds = null,
    Object? yuiStationIds = null,
    Object? seasons = null,
    Object? isDeleted = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$CourseImpl(
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
      producerId: null == producerId
          ? _value.producerId
          : producerId // ignore: cast_nullable_to_non_nullable
              as String,
      areaId: null == areaId
          ? _value.areaId
          : areaId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      desc: null == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrls: null == imageUrls
          ? _value._imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      tagIds: null == tagIds
          ? _value._tagIds
          : tagIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      yuiStationIds: null == yuiStationIds
          ? _value._yuiStationIds
          : yuiStationIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      seasons: null == seasons
          ? _value._seasons
          : seasons // ignore: cast_nullable_to_non_nullable
              as Set<Season>,
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
class _$CourseImpl extends _Course {
  const _$CourseImpl(
      {required this.courseId,
      required this.producerId,
      required this.areaId,
      required this.name,
      required this.price,
      required this.desc,
      required final List<String> imageUrls,
      required final List<String> tagIds,
      required final List<String> yuiStationIds,
      @seasonListConverter required final Set<Season> seasons,
      this.isDeleted = false,
      @onlyOneDateTimeToServerTimeConverter this.createdAt,
      @dateTimeToServerTimeConverter this.updatedAt})
      : _imageUrls = imageUrls,
        _tagIds = tagIds,
        _yuiStationIds = yuiStationIds,
        _seasons = seasons,
        super._();

  factory _$CourseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CourseImplFromJson(json);

  @override
  final String courseId;
  @override
  final String producerId;
  @override
  final String areaId;
  @override
  final String name;
  @override
  final int price;
  @override
  final String desc;
  final List<String> _imageUrls;
  @override
  List<String> get imageUrls {
    if (_imageUrls is EqualUnmodifiableListView) return _imageUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_imageUrls);
  }

  final List<String> _tagIds;
  @override
  List<String> get tagIds {
    if (_tagIds is EqualUnmodifiableListView) return _tagIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tagIds);
  }

  final List<String> _yuiStationIds;
  @override
  List<String> get yuiStationIds {
    if (_yuiStationIds is EqualUnmodifiableListView) return _yuiStationIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_yuiStationIds);
  }

  final Set<Season> _seasons;
  @override
  @seasonListConverter
  Set<Season> get seasons {
    if (_seasons is EqualUnmodifiableSetView) return _seasons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_seasons);
  }

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
    return 'Course(courseId: $courseId, producerId: $producerId, areaId: $areaId, name: $name, price: $price, desc: $desc, imageUrls: $imageUrls, tagIds: $tagIds, yuiStationIds: $yuiStationIds, seasons: $seasons, isDeleted: $isDeleted, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseImpl &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.producerId, producerId) ||
                other.producerId == producerId) &&
            (identical(other.areaId, areaId) || other.areaId == areaId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.desc, desc) || other.desc == desc) &&
            const DeepCollectionEquality()
                .equals(other._imageUrls, _imageUrls) &&
            const DeepCollectionEquality().equals(other._tagIds, _tagIds) &&
            const DeepCollectionEquality()
                .equals(other._yuiStationIds, _yuiStationIds) &&
            const DeepCollectionEquality().equals(other._seasons, _seasons) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      courseId,
      producerId,
      areaId,
      name,
      price,
      desc,
      const DeepCollectionEquality().hash(_imageUrls),
      const DeepCollectionEquality().hash(_tagIds),
      const DeepCollectionEquality().hash(_yuiStationIds),
      const DeepCollectionEquality().hash(_seasons),
      isDeleted,
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseImplCopyWith<_$CourseImpl> get copyWith =>
      __$$CourseImplCopyWithImpl<_$CourseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CourseImplToJson(
      this,
    );
  }
}

abstract class _Course extends Course {
  const factory _Course(
      {required final String courseId,
      required final String producerId,
      required final String areaId,
      required final String name,
      required final int price,
      required final String desc,
      required final List<String> imageUrls,
      required final List<String> tagIds,
      required final List<String> yuiStationIds,
      @seasonListConverter required final Set<Season> seasons,
      final bool isDeleted,
      @onlyOneDateTimeToServerTimeConverter final DateTime? createdAt,
      @dateTimeToServerTimeConverter final DateTime? updatedAt}) = _$CourseImpl;
  const _Course._() : super._();

  factory _Course.fromJson(Map<String, dynamic> json) = _$CourseImpl.fromJson;

  @override
  String get courseId;
  @override
  String get producerId;
  @override
  String get areaId;
  @override
  String get name;
  @override
  int get price;
  @override
  String get desc;
  @override
  List<String> get imageUrls;
  @override
  List<String> get tagIds;
  @override
  List<String> get yuiStationIds;
  @override
  @seasonListConverter
  Set<Season> get seasons;
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
  _$$CourseImplCopyWith<_$CourseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
