import 'package:flutter/material.dart';

import '../../../../core/shared/app_text_styles.dart';
import '../../models/participante_peoples_model.dart';

class CardParticipantsPeoplesWidget extends StatelessWidget {
  const CardParticipantsPeoplesWidget({
    super.key,
    required this.people,
  });

  final ParticipantsPeoplesModel people;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 20,
        right: 15,
      ),
      height: 10,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.asset(
              people.picture,
              width: 62,
              height: 62,
            ),
          ),
          const SizedBox(height: 10),
          Flexible(
            child: Text(
              people.name,
              style: AppTextStyles.body500,
            ),
          )
        ],
      ),
    );
  }
}
