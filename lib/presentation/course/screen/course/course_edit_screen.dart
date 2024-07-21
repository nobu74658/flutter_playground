import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_playground/model/course/entity.dart';
import 'package:flutter_playground/presentation/course/state/course/course_service.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CourseEditScreen extends HookConsumerWidget {
  const CourseEditScreen({
    required this.course,
    super.key,
  });

  final Course course;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // useState で編集中の Course を保持しておく管理方法でもOK
    // final courseState = useState(course);
    final courseNameController = useTextEditingController(
      text: course.name,
    );
    final courseDescriptionController = useTextEditingController(
      text: course.desc,
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('コース編集'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Text(
              'コース名',
              style: TextStyle(fontSize: 14),
            ),
            TextField(
              controller: courseNameController,
            ),
            const Gap(16),
            const Text(
              'コース説明',
              style: TextStyle(fontSize: 14),
            ),
            TextField(
              controller: courseDescriptionController,
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () async {
                await ref.read(courseServiceProvider.notifier).editCourse(
                      course.copyWith(
                        name: courseNameController.text,
                        desc: courseDescriptionController.text,
                      ),
                    );
              },
              child: const Text('保存'),
            ),
          ],
        ),
      ),
    );
  }
}
