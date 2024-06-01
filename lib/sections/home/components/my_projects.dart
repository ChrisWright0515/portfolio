import 'package:chris_wright_portfolio/responsive.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/Project.dart';
import 'project_card.dart';

class MyProjects extends StatelessWidget {
  const MyProjects({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "My Projects",
            style: Theme.of(context).textTheme.titleLarge!,
          ),
          const SizedBox(height: defaultPadding),
          const Responsive(
            mobile: ProjectGridView(crossAxisCount: 1, childAspectRatio: 1.7),
            mobileLarge: ProjectGridView(crossAxisCount: 2),
            tablet: ProjectGridView(childAspectRatio: 1.1),
            desktop: ProjectGridView(),
          ),
          const SizedBox(height: defaultPadding),
        ],
      ),
    );
  }
}

class ProjectGridView extends StatelessWidget {
  final int crossAxisCount;
  final double childAspectRatio;
  const ProjectGridView({
    super.key,
    this.crossAxisCount = 3,
    this.childAspectRatio = 1.3,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        itemCount: projects.length,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            childAspectRatio: childAspectRatio,
            crossAxisSpacing: defaultPadding,
            mainAxisSpacing: defaultPadding),
        itemBuilder: (context, index) {
          var newestFirst = projects.reversed.toList();
          return ProjectCard(project: newestFirst[index]);
        });
  }
}
