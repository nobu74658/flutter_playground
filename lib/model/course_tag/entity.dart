import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_playground/utils/converter/date_time.dart';

part 'entity.freezed.dart';
part 'entity.g.dart';

@freezed
abstract class CourseTag with _$CourseTag {
  const factory CourseTag({
    required String courseTagId,
    required String name,
    required int colorValue,
    @Default(false) bool isDeleted,
    @onlyOneDateTimeToServerTimeConverter DateTime? createdAt,
    @dateTimeToServerTimeConverter DateTime? updatedAt,
  }) = _CourseTag;

  const CourseTag._();

  factory CourseTag.fromJson(Map<String, dynamic> json) =>
      _$CourseTagFromJson(json);

  static String get collectionName => 'course_tags';

  static CourseTag get mock => CourseTag(
        courseTagId: 'courseTagId',
        name: 'name',
        colorValue: const Color(0xff000000).value,
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
      );
}
