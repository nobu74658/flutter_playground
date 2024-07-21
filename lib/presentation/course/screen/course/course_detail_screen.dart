import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_playground/model/course/entity.dart';
import 'package:flutter_playground/presentation/course/screen/course/course_edit_screen.dart';
import 'package:flutter_playground/presentation/course/state/course/course_service.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SampleCourseDetailScreen extends ConsumerWidget {
  const SampleCourseDetailScreen({
    required this.course,
    super.key,
  });

  final Course course;

  @override
  Widget build(BuildContext context, WidgetRef ref) => Scaffold(
        appBar: AppBar(
          title: const Text('コース編集'),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: IconButton(
                onPressed: () {
                  unawaited(
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CourseEditScreen(course: course),
                      ),
                    ),
                  );
                },
                icon: const Icon(Icons.edit),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: IconButton(
                onPressed: () {
                  unawaited(
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: const Text('コースを削除する'),
                        content: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text('いいえ'),
                            ),
                            TextButton(
                              onPressed: () {
                                ref
                                    .read(courseServiceProvider.notifier)
                                    .deleteCourse(
                                      course.courseId,
                                    );
                              },
                              child: const Text('はい'),
                            ),
                          ],
                        ),
                        contentPadding: const EdgeInsets.all(16),
                      ),
                    ),
                  );
                },
                icon: const Icon(Icons.delete),
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            Align(
              child: Image.network(
                course.thumbnailImageUrl,
                width: MediaQuery.of(context).size.width * 0.8,
                fit: BoxFit.fitWidth,
              ),
            ),
            const Text(
              'コース名',
              style: TextStyle(fontSize: 14),
            ),
            Text(
              course.name,
              style: const TextStyle(fontSize: 20),
            ),
            const Gap(16),
            const Text(
              'コース詳細',
              style: TextStyle(fontSize: 14),
            ),
            Text(
              course.desc,
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      );
}
