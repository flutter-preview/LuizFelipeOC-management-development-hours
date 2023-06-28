import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/shared/app_colors.dart';

class FormCreateProjectWidget extends StatelessWidget {
  const FormCreateProjectWidget({
    super.key,
    required GlobalKey<FormState> formKey,
  }) : _formKey = formKey;

  final GlobalKey<FormState> _formKey;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            cursorColor: AppColors.primary,
            decoration: const InputDecoration(
              labelText: " Project",
            ),
          ),
          const SizedBox(height: 15),
          TextFormField(
            cursorColor: AppColors.primary,
            maxLines: 3,
            maxLength: 500,
            decoration: const InputDecoration(
              labelText: "Short description",
            ),
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: TextFormField(
                  cursorColor: AppColors.primary,
                  decoration: InputDecoration(
                    hintText: "Initial date",
                    suffixIcon: Container(
                      padding: const EdgeInsets.only(top: 10),
                      child: InkWell(
                        onTap: () async {
                          if (Platform.isAndroid) {
                            await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime.now(),
                              lastDate: DateTime(2030),
                              builder: (context, child) {
                                return Theme(
                                  data: Theme.of(context).copyWith(
                                    colorScheme: ColorScheme.light(
                                      primary: AppColors.darkBlue,
                                    ),
                                  ),
                                  child: child!,
                                );
                              },
                            );
                          }

                          if (Platform.isIOS) {
                            CupertinoDatePicker(
                              onDateTimeChanged: (value) {},
                              initialDateTime: DateTime.now(),
                              maximumYear: 2030,
                              dateOrder: DatePickerDateOrder.dmy,
                              mode: CupertinoDatePickerMode.date,
                            );
                          }
                        },
                        child: const FaIcon(
                          FontAwesomeIcons.calendar,
                        ),
                      ),
                    ),
                    suffixIconColor: AppColors.darkBlue,
                  ),
                ),
              ),
              const SizedBox(width: 30),
              Expanded(
                child: TextFormField(
                  cursorColor: AppColors.primary,
                  decoration: InputDecoration(
                    hintText: "End date",
                    suffixIcon: Container(
                      padding: const EdgeInsets.only(top: 10),
                      child: InkWell(
                        onTap: () async {
                          if (Platform.isAndroid) {
                            await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime.now(),
                              lastDate: DateTime(2030),
                              builder: (context, child) {
                                return Theme(
                                  data: Theme.of(context).copyWith(
                                    colorScheme: ColorScheme.light(
                                      primary: AppColors.darkBlue,
                                    ),
                                  ),
                                  child: child!,
                                );
                              },
                            );
                          }

                          if (Platform.isIOS) {
                            CupertinoDatePicker(
                              onDateTimeChanged: (value) {},
                              initialDateTime: DateTime.now(),
                              maximumYear: 2030,
                              dateOrder: DatePickerDateOrder.dmy,
                              mode: CupertinoDatePickerMode.date,
                            );
                          }
                        },
                        child: const FaIcon(
                          FontAwesomeIcons.calendar,
                        ),
                      ),
                    ),
                    suffixIconColor: AppColors.darkBlue,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
