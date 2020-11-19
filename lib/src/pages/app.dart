import 'package:flutter/material.dart';
import '../repository/setting_repository.dart' as _settingRepo;
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:mvc_structure_gogoapp/generated/l10n.dart';
import '../helpers/route_helper.dart' as _route;

class App extends StatefulWidget{
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App>{

  @override
  void initState() {
    _settingRepo.initSettings();
    super.initState();
  }

  @override
  Widget build(BuildContext context) => ValueListenableBuilder(
    valueListenable: _settingRepo.setting,
    builder: (context, _settingRepo.SettingsApp setting, _) => MaterialApp(
      navigatorKey: _settingRepo.navigatorKey,
      onGenerateRoute: _route.generateRoute,
      title: setting.appName,
      initialRoute: '/Home',
      debugShowCheckedModeBanner: false,
      theme: setting.themeApp(),
      //add internationalization....
      locale: setting.mobileLanguage.value,
      localizationsDelegates: [
        S.delegate, GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
    ),
  );

  @override
  void dispose() {
    _settingRepo.setting.dispose();
    super.dispose();
  }

}