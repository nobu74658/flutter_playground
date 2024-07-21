import 'package:flutter_playground/course/firestore_course_repository.dart';
import 'package:flutter_playground/course/interface/course_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'service_locator.g.dart';

@Riverpod(keepAlive: true)
CourseRepository courseRepository(
  CourseRepositoryRef ref, {
  required String areaId,
  required String producerId,
}) =>
    FirestoreCourseRepository(
      areaId,
      producerId,
    );
