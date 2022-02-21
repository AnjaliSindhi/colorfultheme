
import 'package:colorfultheme/colorfultheme.dart';
import 'package:colorfultheme/themechangerprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ThemeChangerProvider>(
      create :(_) => ThemeChangerProvider(ThemeData(primaryColor: Colors.purple)),
      child:  ChooseTheme(),
    );
  }
}

class ChooseTheme extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeChangerProvider>(context);
    return MaterialApp(
      home: ColorfulTheme(),
      theme: theme.getTheme(),
    );
  }
}

