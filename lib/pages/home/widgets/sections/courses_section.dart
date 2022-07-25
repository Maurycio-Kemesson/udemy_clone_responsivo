import 'package:flutter/material.dart';
import 'package:udemy_clone_responsivo/breakpoints.dart';
import 'package:udemy_clone_responsivo/pages/home/widgets/course_item.dart';

class CoursesSection extends StatelessWidget {
  const CoursesSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) {
        return GridView.builder(
          shrinkWrap: true,
          itemCount: 20,
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 300,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
          ),
          padding: EdgeInsets.symmetric(
              vertical: 16,
              horizontal: constraints.maxWidth >= tabletBreakpoint ? 0 : 16),
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return const CourseItem();
          },
        );
      },
    );
  }
}
