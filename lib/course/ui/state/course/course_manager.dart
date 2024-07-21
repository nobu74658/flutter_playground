import 'package:flutter_playground/course/course_manager.dart';
import 'package:flutter_playground/course/interface/course_repository.dart';
import 'package:flutter_playground/producer/provider/provider.dart';
import 'package:flutter_playground/service_locator.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'course_manager.g.dart';

@riverpod
CourseManager? courseManager(CourseManagerRef ref) {
  final currentProducer = ref.read(currentProducerProvider).requireValue;
  return CourseManager(
    repository: ref.watch(
      courseRepositoryProvider(
        areaId: currentProducer.areaId,
        producerId: currentProducer.producerId,
      ),
    ),
    condition: CourseCondition(
      from: DateTime(2023, 7, 5),
    ),
  );
}
