import 'dart:ui' as ui;

import 'package:hrms_mobile/core/constants/storage_keys.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'locale_provider.g.dart';

const supportedAppLocales = [
  ui.Locale('en'),
  ui.Locale('id'),
];

@Riverpod(keepAlive: true)
class Locale extends _$Locale {
  @override
  Future<ui.Locale> build() async {
    final prefs = await SharedPreferences.getInstance();
    final saved = prefs.getString(StorageKeys.appLocale);

    if (saved == 'en' || saved == 'id') {
      return ui.Locale(saved!);
    }

    final deviceLanguage = ui.PlatformDispatcher.instance.locale.languageCode;
    if (deviceLanguage == 'id') {
      return const ui.Locale('id');
    }

    return const ui.Locale('en');
  }

  Future<void> setLocale(ui.Locale locale) async {
    if (locale.languageCode != 'en' && locale.languageCode != 'id') {
      return;
    }

    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(StorageKeys.appLocale, locale.languageCode);
    state = AsyncData(locale);
  }
}
