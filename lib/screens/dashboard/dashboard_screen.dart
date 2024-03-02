import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mlingo/bloc/translations/translations_bloc.dart';
import 'package:mlingo/bloc/translations/translations_events.dart';
import 'package:mlingo/bloc/translations/translations_states.dart';
import 'package:mlingo/configs/app_color.dart';
import 'package:mlingo/configs/app_dimensions.dart';
import 'package:mlingo/configs/app_spacing.dart';
import 'package:mlingo/configs/app_theme.dart';
import 'package:mlingo/screens/dashboard/widgets/dashboard_data_table.dart';
import 'package:mlingo/widgets/primary_button.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);
  static const routeName = 'DashboardScreen';

  @override
  Widget build(BuildContext context) {
    context.read<TranslationsBloc>().add(GetAllTranslations());

    return Scaffold(
        backgroundColor: AppColor.white,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          titleSpacing: spacingHuge,
          title: const Text("Mlingo"),
          titleTextStyle: Theme.of(context).textTheme.mlingoAppBarTextStyle,
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.notifications)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.person))
          ],
        ),
        body: Padding(
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
                                borderRadius: BorderRadius.all(
                                    Radius.circular(kCardRadius))),
                            child: DashboardDataTable(
                                getAllTranslationsModel:
                                    state.getAllTranslationsModel)));
                  } else {
                    return const SizedBox.shrink();
                  }
                },
              )
            ],
          ),
        ));
  }
}
