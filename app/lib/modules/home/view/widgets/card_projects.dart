import 'package:flutter/material.dart';

import '../../../../core/shared/app_text_styles.dart';
import '../../../details_project/view/widget/details_project.dart';
import '../../model/project_model.dart';

class CardProjectsWidget extends StatelessWidget {
  const CardProjectsWidget({
    super.key,
    required this.projects,
  });

  final ProjectsModel projects;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 7,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              projects.title,
              style: AppTextStyles.bodyBold,
            ),
            projects.description.isEmpty
                ? Container()
                : Text(
                    projects.description,
                    style: AppTextStyles.body300,
                  ),
            const SizedBox(height: 10),
            Container(
              alignment: Alignment.bottomRight,
              child: TextButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => DetailsProjects(
                      projects: projects,
                    ),
                  ),
                ),
                child: Text(
                  "View details",
                  style: AppTextStyles.bodyBlue200,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
