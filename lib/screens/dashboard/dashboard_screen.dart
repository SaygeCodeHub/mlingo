import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mlingo/bloc/translations/translations_bloc.dart';
import 'package:mlingo/bloc/translations/translations_events.dart';
import 'package:mlingo/configs/app_color.dart';
import 'package:mlingo/configs/app_spacing.dart';
import 'package:mlingo/configs/app_theme.dart';
import 'package:mlingo/screens/dashboard/dashboard_mobile_screen.dart';
import 'package:mlingo/screens/dashboard/dashboard_web_screen.dart';
import 'package:mlingo/widgets/responsive_layout.dart';

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
        body:  const Expanded(
          child: ResponsiveLayout(
              desktopBody: DashboardWebScreen(),
              mobileBody: DashboardMobileScreen()),
        ));
  }
}
