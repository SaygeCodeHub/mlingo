import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mlingo/bloc/translations/translations_bloc.dart';
import 'package:mlingo/bloc/translations/translations_states.dart';

import 'package:mlingo/configs/app_color.dart';
import 'package:mlingo/configs/app_dimensions.dart';
import 'package:mlingo/configs/app_spacing.dart';
import 'package:mlingo/screens/dashboard/widgets/dashboard_data_table_web.dart';
import 'package:mlingo/screens/dashboard/widgets/dashboard_data_table_mobile.dart';
import 'package:mlingo/widgets/primary_button.dart';
import 'package:mlingo/widgets/responsive_layout.dart';

class DashboardWebScreen extends StatelessWidget {
  const DashboardWebScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: spacingHuge, right: spacingHuge, bottom: spacingHuge),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              PrimaryButton(
                  onPressed: () {},
                  icon: Icons.add,
                  buttonTitle: "New Key",
                  buttonWidth: spacingXExcel)
            ],
          ),
          const SizedBox(height: spacingMedium),
          BlocBuilder<TranslationsBloc, TranslationsStates>(
            builder: (context, state) {
              if (state is FetchingAllTranslations) {
                return const Expanded(
                  child: Center(
                      child: CircularProgressIndicator(
                          color: AppColor.mediumOrchid)),
                );
              }
              if (state is TranslationsFetched) {
                return Expanded(
                  child: Card(
                    shape: const RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.all(Radius.circular(kCardRadius))),
                    child: Expanded(
                      child: ResponsiveLayout(
                        desktopBody: DashboardDataTableWeb(
                          getAllTranslationsModel:
                              state.getAllTranslationsModel,
                        ),
                        mobileBody: DashboardDataTableMobile(
                            getAllTranslationsModel:
                                state.getAllTranslationsModel),
                      ),
                    ),
                  ),
                );
              } else {
                return const SizedBox.shrink();
              }
            },
          )
        ],
      ),
    );
  }
}
