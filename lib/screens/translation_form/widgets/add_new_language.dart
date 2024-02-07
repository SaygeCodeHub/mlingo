import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:mlingo/configs/new_app_theme.dart';

import '../../../utils/constants/string_constants.dart';
import 'new_language_field.dart';

class AddNewLanguage extends StatefulWidget {

   const AddNewLanguage({super.key});

  @override
  State<AddNewLanguage> createState() => _AddNewLanguageState();
}

class _AddNewLanguageState extends State<AddNewLanguage> {
  bool showAddLanguageButton = true;
  int additionalTextFieldsCount = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int i = 0; i < additionalTextFieldsCount; i++)
          NewLanguageField(
            onMinimize: () {
              setState(() {
                additionalTextFieldsCount--;
                log('additionalTextFieldsCount decreased to $additionalTextFieldsCount');
              });
            },
          ),
        if (showAddLanguageButton)
          Align(
            alignment: Alignment.center,
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  additionalTextFieldsCount++;
                  showAddLanguageButton = additionalTextFieldsCount<double.infinity;
                  log('additionalTextFieldsCount========>$additionalTextFieldsCount');
                });
              },
              child: Text(
                StringConstants.kNewLang,
                style: Theme.of(context)
                    .textTheme
                    .submitButtonTextStyle,
              ),
            ),
          ),
      ],
    );
  }
}
