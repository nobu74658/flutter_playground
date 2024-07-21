import 'dart:async';

import 'package:flutter_playground/model/course/entity.dart';
import 'package:flutter_playground/presentation/course/state/course/course_manager.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'courses.g.dart';

@riverpod
class CourseListManagerValue extends _$CourseListManagerValue {
  @override
  List<Course> build() {
    final manager = ref.watch(courseManagerProvider);
    if (manager == null) {
      return [];
    }

    final subscription = manager.stream().listen((courseList) {
      state = courseList;
    });

    ref.onDispose(() {
      manager.dispose();
      unawaited(subscription.cancel());
    });

    return [];
  }

  // ignore: use_setters_to_change_properties
  void update(List<Course> courses) => state = courses;
}
