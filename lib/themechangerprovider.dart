import 'package:flutter/material.dart';


class ThemeChangerProvider with ChangeNotifier{
  ThemeData _themeData;
  

  ThemeChangerProvider(this._themeData);

  getTheme() => _themeData ;

  setTheme(ThemeData theme){
    _themeData = theme;
    notifyListeners();
  }
}