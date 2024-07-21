// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CourseImpl _$$CourseImplFromJson(Map<String, dynamic> json) => _$CourseImpl(
      courseId: json['courseId'] as String,
      producerId: json['producerId'] as String,
      areaId: json['areaId'] as String,
      name: json['name'] as String,
      price: (json['price'] as num).toInt(),
      desc: json['desc'] as String,
      imageUrls:
          (json['imageUrls'] as List<dynamic>).map((e) => e as String).toList(),
      tagIds:
          (json['tagIds'] as List<dynamic>).map((e) => e as String).toList(),
      yuiStationIds: (json['yuiStationIds'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      seasons: seasonListConverter.fromJson(json['seasons'] as Object),
      isDeleted: json['isDeleted'] as bool? ?? false,
      createdAt:
          onlyOneDateTimeToServerTimeConverter.fromJson(json['createdAt']),
      updatedAt: dateTimeToServerTimeConverter.fromJson(json['updatedAt']),
    );

Map<String, dynamic> _$$CourseImplToJson(_$CourseImpl instance) =>
    <String, dynamic>{
      'courseId': instance.courseId,
      'producerId': instance.producerId,
      'areaId': instance.areaId,
      'name': instance.name,
      'price': instance.price,
      'desc': instance.desc,
      'imageUrls': instance.imageUrls,
      'tagIds': instance.tagIds,
      'yuiStationIds': instance.yuiStationIds,
      'seasons': seasonListConverter.toJson(instance.seasons),
      'isDeleted': instance.isDeleted,
      'createdAt':
          onlyOneDateTimeToServerTimeConverter.toJson(instance.createdAt),
      'updatedAt': dateTimeToServerTimeConverter.toJson(instance.updatedAt),
    };
