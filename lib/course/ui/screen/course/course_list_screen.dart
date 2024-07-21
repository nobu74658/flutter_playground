import 'package:flutter_playground/course/ui/screen/course/course_detail_screen.dart';
import 'package:flutter_playground/course/ui/state/course/courses.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SampleCourseListScreen extends ConsumerWidget {
  const SampleCourseListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final courses = ref.watch(courseListManagerValueProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('コース一覧'),
      ),
      body: ListView.builder(
        itemCount: courses.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(courses[index].name),
          subtitle: Image.network(
            courses[index].thumbnailImageUrl,
          ),
          onTap: () async {
            await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SampleCourseDetailScreen(
                  course: courses[index],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
