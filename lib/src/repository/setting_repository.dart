import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/settings_app.dart';

//export
export '../models/settings_app.dart';

ValueNotifier<SettingsApp> setting = ValueNotifier(SettingsApp());
final navigatorKey = GlobalKey<NavigatorState>();

void initSettings() async {
  final localDB = await SharedPreferences.getInstance();
  if (!localDB.containsKey('settings')) {
    setting.value = SettingsApp(
      accentColor: '#3A5AE6',
      accentColorDark: '#3379e8',
      mainColor: '#FFFFFF',
      primaryColor: '#13254B',
      secondColor: '#1D2B36',
      mainColorDark: '#000000',
    );
    await setSetting();
  } else {
    setting.value = SettingsApp.fromMap(
      json.decode(
        localDB.getString('settings'),
      ),
    );
    setting.value.mobileLanguage.value = Locale(
      await localDB.get('languageCode'),
      '',
    );
    setting.value.brightness.value = Brightness.values.elementAt(
      localDB.getInt('brightness'),
    );
  }
}

Future setSetting() async {
  final localDB = await SharedPreferences.getInstance();
  return await localDB.setString('settings', json.encode(setting.value.toMap()));
}

Future setBrightness(Brightness brightness) async {
  final localDB = await SharedPreferences.getInstance();
  setting.value.brightness.value = brightness;
  // ignore: invalid_use_of_visible_for_testing_member, invalid_use_of_protected_member
  setting.notifyListeners();
  return await localDB.setInt('brightness', brightness.index);
}

Future setLanguage(String languageCode) async {
  final localDB = await SharedPreferences.getInstance();
  setting.value.mobileLanguage.value = Locale(languageCode, '');
  // ignore: invalid_use_of_visible_for_testing_member, invalid_use_of_protected_member
  setting.notifyListeners();
  return await localDB.setString('languageCode', languageCode);
}
