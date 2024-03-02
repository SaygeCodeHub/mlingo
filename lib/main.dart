import 'package:flutter/material.dart';
import 'package:mlingo/bloc/translations/translations_bloc.dart';
import 'package:mlingo/configs/app_theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mlingo/bloc/languages/languages_bloc.dart';
import 'package:mlingo/bloc/translation_form/translation_form_bloc.dart';
import 'package:mlingo/di/app_module.dart';
import 'bloc/dashboard/dashboard_bloc.dart';
import 'configs/app_route.dart';
import 'package:mlingo/screens/login/registeration.dart';
Future<void> main() async {
  await _initApp();
  await _initDependencies();
  runApp(const MyApp());
}

_initApp() async {
  WidgetsFlutterBinding.ensureInitialized();
}

_initDependencies() async {
  configurableDependencies();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(lazy: false, create: (context) => DashboardBloc()),
          BlocProvider(lazy: false, create: (context) => LanguagesBloc()),
          BlocProvider(lazy: false, create: (context) => TranslationFormBloc()),
          BlocProvider(lazy: false, create: (context) => TranslationsBloc()),
        ],
        child: MaterialApp(
            onGenerateRoute: AppRoutes.routes,
            theme: appTheme,
            debugShowCheckedModeBanner: false,
            home: const Registration()));
  }
}
