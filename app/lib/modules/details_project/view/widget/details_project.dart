import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/shared/app_text_styles.dart';
import '../../../home/model/project_model.dart';
import '../../controller/participantes_peoples_controller.dart';
import 'list_participants_people_widgets.dart';

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
        child: Padding(
          padding: const EdgeInsets.only(
            top: 70,
            left: 20,
            right: 20,
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
                ],
              ),
              const SizedBox(height: 40),
              ListParticipantsPeoplesWidget(
                participantsController: participantsController,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
