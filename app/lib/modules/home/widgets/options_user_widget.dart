import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../core/shared/app_text_styles.dart';
import 'cards_option_user_widget.dart';

class OptionsUserWidget extends StatelessWidget {
  const OptionsUserWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              InkWell(
                onTap: () => Navigator.pop(context),
                child: const FaIcon(
                  FontAwesomeIcons.xmark,
                  size: 26,
                ),
              ),
              const SizedBox(width: 20),
              Text(
                "Lorem Ipsum",
                style: AppTextStyles.heading500,
              )
            ],
          ),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CardsOptiornsUserWidget(
                title: "Pick Camera",
                onTap: () {},
                fontAwesomeIcons: FontAwesomeIcons.camera,
              ),
              CardsOptiornsUserWidget(
                title: "Pick Gallery",
                onTap: () {},
                fontAwesomeIcons: FontAwesomeIcons.image,
              ),
              CardsOptiornsUserWidget(
                title: "Profile",
                onTap: () {},
                fontAwesomeIcons: FontAwesomeIcons.userAstronaut,
              ),
            ],
          ),
        ),
        const SizedBox(height: 30),
      ],
    );
  }
}
