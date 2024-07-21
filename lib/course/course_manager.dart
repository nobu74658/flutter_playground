import 'dart:async';

import 'package:flutter_playground/course/models/course/entity.dart';
import 'package:flutter_playground/course/interface/course_repository.dart';

class CourseManager {
  CourseManager({
    required this.repository,
    required this.condition,
  });

  // 複数の repository に依存する処理が必要であれば、引数として複数の repository を受け取って処理する。
  // 今回のケースであれば repository は一つであるため、manager は省略可能かもしれない
  final CourseRepository repository;
  final CourseCondition condition;
  StreamController<Course>? _updateStreamController;
  final _courseSubscriptions = <String, StreamSubscription<Course>>{};

  Future<List<Course>> fetch() => repository.fetch();

  Future<Course> fetchById(String courseId) => fetchById(courseId);

  Future<List<Course>> fetchByIdList(List<String> courseIdList) =>
      repository.fetchByIdList(courseIdList);

  Stream<List<Course>> stream() => repository.stream(condition);

  void changeCondition(CourseCondition condition) =>
      repository.changeCondition(condition);

  Future<Course> add(Course course) => repository.add(course);

  Future<void> update(Course course) => repository.update(course);

  Future<void> delete(String courseId) => repository.delete(courseId);

  void _cancelSubscriptions() {
    for (final subscription in _courseSubscriptions.values) {
      unawaited(subscription.cancel());
    }
    _courseSubscriptions.clear();
  }

  void dispose() {
    _cancelSubscriptions();
    unawaited(_updateStreamController?.close());
  }
}
