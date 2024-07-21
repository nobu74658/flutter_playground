// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CourseTagImpl _$$CourseTagImplFromJson(Map<String, dynamic> json) =>
    _$CourseTagImpl(
      courseTagId: json['courseTagId'] as String,
      name: json['name'] as String,
      colorValue: (json['colorValue'] as num).toInt(),
      isDeleted: json['isDeleted'] as bool? ?? false,
      createdAt:
          onlyOneDateTimeToServerTimeConverter.fromJson(json['createdAt']),
      updatedAt: dateTimeToServerTimeConverter.fromJson(json['updatedAt']),
    );

Map<String, dynamic> _$$CourseTagImplToJson(_$CourseTagImpl instance) =>
    <String, dynamic>{
      'courseTagId': instance.courseTagId,
      'name': instance.name,
      'colorValue': instance.colorValue,
      'isDeleted': instance.isDeleted,
      'createdAt':
          onlyOneDateTimeToServerTimeConverter.toJson(instance.createdAt),
      'updatedAt': dateTimeToServerTimeConverter.toJson(instance.updatedAt),
    };
