import 'package:flutter/material.dart';

import '../styles/theme_app.dart' as _themeApp;

class SettingsApp {
  final String appName;
  final String accentColor;
  final String accentColorDark;
  final String secondColor;
  final String mainColor;
  final String mainColorDark;
  final String primaryColor;
  ValueNotifier<Locale> mobileLanguage;
  ValueNotifier<Brightness> brightness;

  SettingsApp({
    this.appName = 'GogoApp',
    this.accentColor,
    this.secondColor,
    this.mainColor,
    this.primaryColor,
    this.mainColorDark,
    this.accentColorDark,
    String mobileLanguage = 'es',
    int brightness = 0,
  }) {
    this.mobileLanguage = ValueNotifier(Locale(mobileLanguage, ''));
    this.brightness =
        ValueNotifier(brightness == 0 ? Brightness.light : Brightness.dark);
  }

  factory SettingsApp.fromMap(Map<String, dynamic> map) => SettingsApp(
        appName: map['appName'],
        accentColor: map['accentColor'],
        accentColorDark: map['accentColorDark'],
        secondColor: map['secondColor'],
        mainColor: map['mainColor'],
        mainColorDark: map['mainColorDark'],
        primaryColor: map['primaryColor'],
      );

  Map<String, dynamic> toMap() => {
        'appName': this.appName,
        'accentColor': this.accentColor,
        'accentColorDark': this.accentColorDark,
        'secondColor': this.secondColor,
        'mainColor': this.mainColor,
        'mainColorDark': this.mainColorDark,
        'primaryColor': this.primaryColor,
      };

  themeApp() => _themeApp.themeData(this.brightness.value);
}
