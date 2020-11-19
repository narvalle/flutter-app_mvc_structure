import 'package:flutter/material.dart';
import '../repository/setting_repository.dart' as settingRepo;

Color primaryColor(double opacity) {
  try {
    return Color(
      int.parse(
        settingRepo.setting.value.primaryColor.replaceAll('#', '0xFF'),
      ),
    );
  } catch (e) {
    return Color(0xFFCCCCCC).withOpacity(opacity);
  }
}

Color secondColor(double opacity) {
  try {
    return Color(
      int.parse(
        settingRepo.setting.value.secondColor.replaceAll('#', '0xFF'),
      ),
    );
  } catch (e) {
    return Color(0xFFCCCCCC).withOpacity(opacity);
  }
}

Color accentColor(double opacity) {
  try {
    return Color(
      int.parse(
        settingRepo.setting.value.accentColor.replaceAll('#', '0xFF'),
      ),
    );
  } catch (e) {
    return Color(0xFFCCCCCC).withOpacity(opacity);
  }
}

Color accentColorDark(double opacity) {
  try {
    return Color(
      int.parse(
        settingRepo.setting.value.accentColorDark.replaceAll('#', '0xFF'),
      ),
    );
  } catch (e) {
    return Color(0xFFCCCCCC).withOpacity(opacity);
  }
}

Color mainColor(double opacity) {
  try {
    return Color(
      int.parse(
        settingRepo.setting.value.mainColor.replaceAll('#', '0xFF'),
      ),
    );
  } catch (e) {
    return Color(0xFFFFFFFF).withOpacity(opacity);
  }
}
Color mainColorDark(double opacity) {
  try {
    return Color(
      int.parse(
        settingRepo.setting.value.mainColorDark.replaceAll('#', '0xFF'),
      ),
    );
  } catch (e) {
    return Color(0xFFFFFFFF).withOpacity(opacity);
  }
}
