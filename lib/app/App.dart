import 'package:converter/app/routing/router.dart';
import 'package:converter/app/theme.dart';
import 'package:converter/pages/covert_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../processes/localization/localization_model.dart';
import 'di.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final _localizationModel = locator<LocalizationModel>();

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => MaterialApp.router(
        theme: calculatorDarkTheme,
        localizationsDelegates: _localizationModel.localizationsDelegates,
        supportedLocales: _localizationModel.supportedLocales,
        locale: _localizationModel.locale,
        routerDelegate: router.routerDelegate,
        backButtonDispatcher: router.backButtonDispatcher,
        routeInformationParser: router.routeInformationParser,
        routeInformationProvider: router.routeInformationProvider,
      ),
    );
  }
}
