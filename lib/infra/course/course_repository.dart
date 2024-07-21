import 'package:flutter_playground/model/course/entity.dart';

abstract class CourseRepository {
  CourseRepository({
    required this.areaId,
    required this.producerId,
  });
  final String areaId;
  final String producerId;

  Future<List<Course>> fetch();
  Future<Course> fetchById(String courseId);
  Future<List<Course>> fetchByIdList(List<String> courseIdList);
  Stream<List<Course>> stream(CourseCondition condition);
  void changeCondition(CourseCondition condition);

  Future<Course> add(Course course);

  Future<void> update(Course course);

  Future<void> delete(String courseId);
}

// 絞り込み条件の例
class CourseCondition {
  CourseCondition({
    this.from,
    this.to,
    this.tags,
  });
  DateTime? from;
  DateTime? to;
  List<String>? tags;
  bool isMine = false;
  int limit = 20;
  int offset = 0;
}
