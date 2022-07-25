import 'package:flutter/material.dart';
import 'package:udemy_clone_responsivo/breakpoints.dart';
import 'package:udemy_clone_responsivo/pages/home/widgets/app_bar/mobile_app_bar.dart';
import 'package:udemy_clone_responsivo/pages/home/widgets/app_bar/web_app_bar.dart';
import 'package:udemy_clone_responsivo/pages/home/widgets/sections/advantagess_section.dart';
import 'package:udemy_clone_responsivo/pages/home/widgets/sections/courses_section.dart';
import 'package:udemy_clone_responsivo/pages/home/widgets/sections/top_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        backgroundColor: Colors.black,
        appBar: constraints.maxWidth < mobileBreakpoint
            ? const PreferredSize(
                child: MobileAppBar(),
                preferredSize: Size(double.infinity, 56),
              )
            : const PreferredSize(
                child: WebAppBar(),
                preferredSize: Size(double.infinity, 72),
              ),
        drawer: constraints.maxWidth < mobileBreakpoint ? const Drawer() : null,
        body: Align(
          alignment: Alignment.topCenter,
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 1400),
            child: ListView(
              children: [TopSection(), AdvantagessSection(), CoursesSection()],
            ),
          ),
        ),
      );
    });
  }
}
