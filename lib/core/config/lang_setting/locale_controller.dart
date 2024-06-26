import 'package:flutter/material.dart';
import 'package:jaxon/core/database/db_language.dart';
import 'package:jaxon/setup.dart';

enum Language { en, uz, ru }

final localController = LocalController();

class LocalController with ChangeNotifier {
  DBLanguage dblanguage = DBLanguage();
  String? _appLocale = prefss.getString('lang');
  Locale get appLocale => _appLocale == Language.en.name
      ? const Locale('en', 'US')
      : _appLocale == Language.ru.name
          ? const Locale('ru', 'RU')
          : const Locale('uz', 'UZ');

  void changLanguages(Language language) async {
    _appLocale = language.name;
    prefss.setString('lang', '$_appLocale');
    notifyListeners();
  }
}
