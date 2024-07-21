import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_playground/extensions/season.dart';
import 'package:flutter_playground/utils/converter/date_time.dart';
import 'package:flutter_playground/utils/converter/season.dart';

part 'entity.freezed.dart';
part 'entity.g.dart';

@freezed
abstract class Course with _$Course {
  const factory Course({
    required String courseId,
    required String producerId,
    required String areaId,
    required String name,
    required int price,
    required String desc,
    required List<String> imageUrls,
    required List<String> tagIds,
    required List<String> yuiStationIds,
    @seasonListConverter required Set<Season> seasons,
    @Default(false) bool isDeleted,
    @onlyOneDateTimeToServerTimeConverter DateTime? createdAt,
    @dateTimeToServerTimeConverter DateTime? updatedAt,
  }) = _Course;

  const Course._();

  factory Course.fromJson(Map<String, dynamic> json) => _$CourseFromJson(json);

  static String get collectionName => 'courses';

  static Course get mock => const Course(
        courseId: 'courseId',
        name: 'Test Course',
        producerId: 'producer1',
        areaId: 'area1',
        price: 1000,
        desc: 'This is a test course',
        imageUrls: ['https://example.com/image1.jpg'],
        tagIds: ['tag1', 'tag2'],
        yuiStationIds: ['station1', 'station2'],
        seasons: {Season.spring},
      );

  String get thumbnailImageUrl =>
      imageUrls.isEmpty ? 'Urls.noImage' : imageUrls.first;
}
