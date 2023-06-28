import 'package:flutter/material.dart';

import '../../../core/shared/app_colors.dart';
import '../controller/projects_controller.dart';
import 'card_projects.dart';

class ListProjectsWidget extends StatelessWidget {
  const ListProjectsWidget({
    super.key,
    required this.projectController,
  });

  final ProjectController projectController;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: projectController.loadingProjects,
      builder: (BuildContext context, value, _) {
        return AnimatedCrossFade(
          duration: const Duration(milliseconds: 350),
          crossFadeState:
              value ? CrossFadeState.showFirst : CrossFadeState.showSecond,
          firstChild: SizedBox(
            height: MediaQuery.of(context).size.height * .55,
            child: Center(
              child: CircularProgressIndicator(
                color: AppColors.primary,
                strokeWidth: 0.8,
              ),
            ),
          ),
          secondChild: ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: projectController.listOfProjects.length,
            itemBuilder: (BuildContext context, int index) {
              final projects = projectController.listOfProjects[index];

              return Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: CardProjectsWidget(projects: projects),
              );
            },
          ),
        );
      },
    );
  }
}
