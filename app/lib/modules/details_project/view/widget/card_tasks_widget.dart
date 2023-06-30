import 'package:flutter/material.dart';

import '../../../../core/shared/app_colors.dart';
import '../../../../core/shared/app_text_styles.dart';

class CardTasksWidget extends StatelessWidget {
  const CardTasksWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 20,
          bottom: 20,
          left: 15,
          right: 15,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Creating biometrics unlocked",
                  style: AppTextStyles.text500,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: AppColors.darkBlue.withOpacity(
                      0.85,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Text(
                      "Module",
                      style: AppTextStyles.bodyWhite500,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 15),
            Text(
              "Creating the unlocked app using biometrics or face id",
              style: AppTextStyles.body300,
            ),
            const SizedBox(height: 10),
            Text.rich(
              TextSpan(
                text: "Inital: 20/06/2023 - ",
                style: AppTextStyles.bodyBlue200,
                children: [
                  TextSpan(
                    text: "End: 20/06/2023",
                    style: AppTextStyles.error300,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 5),
            Text(
              "Task responsability: Luiz Queiroz",
              style: AppTextStyles.body300,
            ),
          ],
        ),
      ),
    );
  }
}
