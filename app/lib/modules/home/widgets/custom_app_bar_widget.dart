import 'package:flutter/cupertino.dart';

import '../../../core/shared/app_colors.dart';
import '../../../core/shared/app_text_styles.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text.rich(
                TextSpan(
                  text: "Welcome,\n",
                  style: AppTextStyles.heading500,
                  children: [
                    TextSpan(
                      text: "Luiz Felipe",
                      style: AppTextStyles.heading,
                    ),
                  ],
                ),
              ),
              Container(
                height: 64,
                width: 64,
                decoration: BoxDecoration(
                  color: AppColors.primary.withOpacity(0.15),
                  borderRadius: BorderRadius.circular(
                    15,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
