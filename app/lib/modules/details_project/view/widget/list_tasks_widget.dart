import 'package:flutter/material.dart';

import '../../../../core/shared/app_text_styles.dart';
import 'card_tasks_widget.dart';

class ListTasksWidget extends StatelessWidget {
  const ListTasksWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Tasks",
          style: AppTextStyles.heading500,
        ),
        const SizedBox(height: 15),
        ListView.builder(
          shrinkWrap: true,
          itemCount: 4,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            return const Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: CardTasksWidget(),
            );
          },
        ),
      ],
    );
  }
}
