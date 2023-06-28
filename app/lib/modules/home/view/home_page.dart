import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../core/shared/app_colors.dart';
import '../../../core/shared/app_text_styles.dart';
import '../controller/projects_controller.dart';
import '../widgets/custom_app_bar_widget.dart';
import '../widgets/list_projetcs_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final projectController = ProjectController();

  @override
  void initState() {
    projectController.getProjects();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: Scaffold(
        body: SafeArea(
          child: RefreshIndicator(
            backgroundColor: AppColors.white,
            color: AppColors.primary,
            strokeWidth: 0.6,
            edgeOffset: 50.0,
            onRefresh: () async {
              projectController.getProjects();
            },
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomAppBar(),
                  const SizedBox(height: 55),
                  Padding(
                    padding: const EdgeInsets.only(right: 2, left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "My Projects",
                          style: AppTextStyles.heading500,
                        ),
                        ListProjectsWidget(
                          projectController: projectController,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30)
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          label: const Row(
            children: [
              FaIcon(
                FontAwesomeIcons.plus,
              ),
              SizedBox(width: 20),
              Text(
                "New",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
