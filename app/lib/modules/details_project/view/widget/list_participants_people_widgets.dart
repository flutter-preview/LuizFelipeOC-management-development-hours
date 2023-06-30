import 'package:flutter/material.dart';

import '../../../../core/shared/app_colors.dart';
import '../../../../core/shared/app_text_styles.dart';
import '../../controller/participantes_peoples_controller.dart';
import 'card_participantes_people_widget.dart';

class ListParticipantsPeoplesWidget extends StatelessWidget {
  const ListParticipantsPeoplesWidget({
    super.key,
    required this.participantsController,
  });

  final ParticipantsPeopleController participantsController;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: participantsController.loadingParticipantes,
      builder: (BuildContext context, value, _) {
        return value
            ? Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Center(
                  child: CircularProgressIndicator(
                    color: AppColors.darkBlue,
                    strokeWidth: 0.8,
                  ),
                ),
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Participants peoples",
                    style: AppTextStyles.heading500,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .15,
                    child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: participantsController.peopales.length,
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index) {
                        final people = participantsController.peopales[index];

                        return CardParticipantsPeoplesWidget(people: people);
                      },
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Add",
                        style: AppTextStyles.bodyBlue200,
                      ),
                    ),
                  )
                ],
              );
      },
    );
  }
}
