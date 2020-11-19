import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';
import '../repository/setting_repository.dart';

class HomeController extends ControllerMVC {
  changeBrightness() async {
    if (setting.value.brightness.value == Brightness.light)
      await setBrightness(Brightness.dark);
    else
      await setBrightness(Brightness.light);
  }

  IconData iconBrightness() =>
      setting.value.brightness.value == Brightness.light
          ? Icons.brightness_2
          : Icons.brightness_7;

  changeLanguage() async {
    if (setting.value.mobileLanguage.value.languageCode == 'es') {
      await setLanguage('en');
    } else {
      await setLanguage('es');
    }
  }

  @override
  void dispose() {
    setting.dispose();
    super.dispose();
  }
}
