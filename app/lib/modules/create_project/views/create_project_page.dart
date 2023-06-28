import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../core/shared/app_text_styles.dart';
import 'widget/form_create_project.dart';

class CreateProjectPage extends StatefulWidget {
  const CreateProjectPage({super.key});

  @override
  State<CreateProjectPage> createState() => _CreateProjectPageState();
}

class _CreateProjectPageState extends State<CreateProjectPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  child: const FaIcon(
                    FontAwesomeIcons.arrowLeft,
                    size: 26,
                  ),
                  onTap: () => Navigator.pop(context),
                ),
                const SizedBox(height: 40),
                Text(
                  "New Project",
                  style: AppTextStyles.heading,
                ),
                const SizedBox(height: 40),
                FormCreateProjectWidget(formKey: _formKey),
                const SizedBox(height: 50),
                SizedBox(
                  height: 56,
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text("CREATE"),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
