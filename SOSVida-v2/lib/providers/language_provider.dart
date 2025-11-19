import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LanguageProvider extends ChangeNotifier {
  static const String _languageKey = 'selected_language';
  Locale _currentLocale = const Locale('pt', 'BR');

  Locale get currentLocale => _currentLocale;

  LanguageProvider() {
    _loadLanguage();
  }

  Future<void> _loadLanguage() async {
    final prefs = await SharedPreferences.getInstance();
    final languageCode = prefs.getString(_languageKey) ?? 'pt';
    
    if (languageCode == 'en') {
      _currentLocale = const Locale('en', 'US');
    } else {
      _currentLocale = const Locale('pt', 'BR');
    }
    notifyListeners();
  }

  Future<void> setLanguage(String languageCode) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_languageKey, languageCode);
    
    if (languageCode == 'en') {
      _currentLocale = const Locale('en', 'US');
    } else {
      _currentLocale = const Locale('pt', 'BR');
    }
    notifyListeners();
  }

  bool get isPortuguese => _currentLocale.languageCode == 'pt';
  bool get isEnglish => _currentLocale.languageCode == 'en';
}

