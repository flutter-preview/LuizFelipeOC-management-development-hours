import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/shared/app_colors.dart';
import '../../../../core/shared/app_text_styles.dart';
import '../../../home/model/project_model.dart';
import '../../controller/participantes_peoples_controller.dart';
import 'list_participants_people_widgets.dart';
import 'list_tasks_widget.dart';

class DetailsProjects extends StatefulWidget {
  const DetailsProjects({super.key, required this.projects});

  final ProjectsModel projects;

  @override
  State<DetailsProjects> createState() => _DetailsProjectsState();
}

class _DetailsProjectsState extends State<DetailsProjects> {
  final participantsController = ParticipantsPeopleController();

  @override
  void initState() {
    participantsController.getPeoples();

    if (mounted) {
      setState(() {});
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: RefreshIndicator(
          backgroundColor: AppColors.white,
          color: AppColors.primary,
          strokeWidth: 0.6,
          edgeOffset: 50.0,
          onRefresh: () async {},
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.only(
                top: 70,
                left: 20,
                right: 20,
                bottom: 30,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () => Navigator.pop(context),
                        child: const FaIcon(
                          FontAwesomeIcons.arrowLeft,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        widget.projects.title,
                        style: AppTextStyles.heading,
                      ),
                      const SizedBox(height: 5),
                      Text(
                        widget.projects.description,
                        style: AppTextStyles.body500,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Created in: 26/06/2023",
                        style: AppTextStyles.text500,
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  ListParticipantsPeoplesWidget(
                    participantsController: participantsController,
                  ),
                  const SizedBox(height: 20),
                  const ListTasksWidget()
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => {},
        label: const Row(
          children: [
            FaIcon(
              FontAwesomeIcons.plus,
            ),
            SizedBox(width: 20),
            Text(
              "TASK",
            ),
          ],
        ),
      ),
    );
  }
}
