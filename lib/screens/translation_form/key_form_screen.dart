import 'package:flutter/material.dart';
import 'package:mlingo/configs/app_color.dart';
import 'package:mlingo/configs/new_app_theme.dart';
import 'package:mlingo/screens/translation_form/widgets/add_new_language.dart';
import 'package:mlingo/screens/translation_form/widgets/language_field.dart';
import 'package:mlingo/widgets/primary_button.dart';
import '../../configs/app_dimensions.dart';
import '../../utils/constants/string_constants.dart';

class AddNewKey extends StatelessWidget {
  const AddNewKey({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.white,
        body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: kFormSizedBoxHeight, vertical: kMlingoTop),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(StringConstants.kMlingo,
                          style: Theme.of(context).textTheme.mlingoTextStyle),
                      const SizedBox(height: kFormSizedBoxHeight),
                      Text(StringConstants.kAddNewKey,
                          style:
                              Theme.of(context).textTheme.formHeadingTextStyle),
                      const SizedBox(height: kFormSizedBoxHeight),
                      SizedBox(
                          width: kFormContainerWidth,
                          child: Form(
                              child: Column(children: [
                            const LanguageField(
                                text: StringConstants.kEnglish,
                                hintText: StringConstants.kEnglishText),
                            const SizedBox(height: kFormSizedBoxHeight),
                            const LanguageField(
                                text: StringConstants.kHindi,
                                hintText: StringConstants.kHindiText),
                            const SizedBox(height: kFormSizedBoxHeight),
                            const LanguageField(
                                text: StringConstants.kGerman,
                                hintText: StringConstants.kGermanText),
                            const SizedBox(height: kFormSizedBoxHeight),
                            const AddNewLanguage(),
                            Padding(
                                padding: const EdgeInsets.all(20),
                                child: PrimaryButton(
                                    onPressed: () {}, buttonTitle: 'Add Key')),
                            const SizedBox(height: 20)
                          ])))
                    ]))));
  }
}
