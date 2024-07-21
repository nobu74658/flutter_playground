import 'package:flutter_playground/model/course/entity.dart';
import 'package:flutter_playground/presentation/course/state/course/course_manager.dart';
import 'package:flutter_playground/presentation/course/state/course/courses.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'course_service.g.dart';

@riverpod
class CourseService extends _$CourseService {
  @override
  void build() {}

  // courseOf(courseId) のような命名でもOK
  Course fetchCourseById(String courseId) {
    final courses = ref.read(courseListManagerValueProvider);
    return courses.firstWhere((course) => course.courseId == courseId);
  }

  List<Course> fetchCoursesByIdList(List<String> courseIdList) {
    final newList = <Course>[];
    final courses = ref.read(courseListManagerValueProvider);
    // ignore: cascade_invocations
    courses.forEach((course) {
      if (courseIdList.contains(course.courseId)) {
        newList.add(course);
      }
    });
    return newList;
  }

  Future<Course?> add(Course course) async {
    final manager = ref.read(courseManagerProvider);
    if (manager == null) {
      return null;
    }
    final added = await manager.add(course);
    return added;
  }

  Future<void> editCourse(Course edited) async {
    await ref.read(courseManagerProvider)?.update(edited);
  }

  // service の中で Course に関する様々な変更を実装していく
  // Future<void> editCourseImage(String courseId, File file) async {
  //   final courses = ref.read(courseListManagerValueProvider);
  //   final course = courses.firstWhere((course) => course.courseId == courseId);
  // file を upload してURLを取得して変更する
  // await ref.read(courseManagerProvider)?.update();
  // }

  Future<void> deleteCourse(String courseId) async {
    await ref.read(courseManagerProvider)?.delete(courseId);
  }
}
