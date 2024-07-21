import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_playground/extensions/released_course_status.dart';

const releasedCourseStatusConverter = ReleasedCourseStatusConverter();

class ReleasedCourseStatusConverter
    implements JsonConverter<ReleasedCourseStatus, Object> {
  const ReleasedCourseStatusConverter();

  @override
  ReleasedCourseStatus fromJson(Object json) {
    if (json is String) {
      return ReleasedCourseStatus.fromValue(json);
    }
    return ReleasedCourseStatus.unknown;
  }

  @override
  Object toJson(ReleasedCourseStatus object) => object.value;
}
