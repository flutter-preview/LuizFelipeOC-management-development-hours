import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../core/shared/app_colors.dart';
import '../../../core/shared/app_text_styles.dart';

class CardsOptiornsUserWidget extends StatelessWidget {
  const CardsOptiornsUserWidget({
    super.key,
    required this.title,
    required this.onTap,
    required this.fontAwesomeIcons,
  });

  final String title;
  final Function() onTap;
  final IconData fontAwesomeIcons;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.primary.withOpacity(0.45),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: FaIcon(
                fontAwesomeIcons,
                size: 30,
                color: AppColors.white,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            title,
            style: AppTextStyles.body500,
          )
        ],
      ),
    );
  }
}
