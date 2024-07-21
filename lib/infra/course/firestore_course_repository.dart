import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_playground/model/course/entity.dart';
import 'package:flutter_playground/infra/course/course_repository.dart';
import 'package:flutter_playground/firestore_access_mixin.dart';

class FirestoreCourseRepository extends CourseRepository
    with FirestoreAccessMixin {
  FirestoreCourseRepository(this.areaId, this.producerId)
      : super(areaId: areaId, producerId: producerId);

  final String areaId;
  final String producerId;

  CollectionReference<Map<String, dynamic>> get courses => coursesOf(
        areaId,
        producerId,
      );

  @override
  Future<Course> add(Course course) async {
    final data = course.toJson();
    final reference = await courses.add(data);
    return course.copyWith(
      areaId: reference.id,
    );
  }

  @override
  void changeCondition(CourseCondition condition) {
    // TODO: implement changeCondition
  }

  @override
  Future<void> delete(String courseId) async {
    await courses.doc(courseId).delete();
  }

  @override
  Future<List<Course>> fetch() async => courses.get().then(
        (value) => value.docs.map((e) => Course.fromJson(e.data())).toList(),
      );

  @override
  Future<Course> fetchById(String courseId) async {
    final course = await courses.doc(courseId).get();
    final data = course.data() ?? {};
    return Course.fromJson(data);
  }

  @override
  Future<List<Course>> fetchByIdList(List<String> courseIdList) async {
    final result = <Course>[];
    for (final courseId in courseIdList) {
      final course = await courses.doc(courseId).get();
      final data = course.data() ?? {};
      result.add(Course.fromJson(data));
    }
    return result;
  }

  @override
  Stream<List<Course>> stream(CourseCondition condition) {
    late final StreamController<List<Course>> controller;
    StreamSubscription? courseListSubscription;

    StreamSubscription listenCourseList() => courses
        .orderBy('createdAt', descending: true)
        .endBefore([condition.from])
        .snapshots()
        .listen(
          (event) async {
            final newList = <Course>[];
            for (final doc in event.docs) {
              final course = Course.fromJson(doc.data());
              newList.add(course);
            }
            controller.add(newList);
          },
        );
    controller = StreamController(
      onListen: () {
        courseListSubscription = listenCourseList();
      },
      onCancel: () async {
        await courseListSubscription?.cancel();
        await controller.close();
      },
    );
    return controller.stream;
  }

  @override
  Future<void> update(Course course) async {
    final document = courses.doc(course.courseId);
    await document.update(course.toJson());
  }
}
