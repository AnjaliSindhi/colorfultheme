/*

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:themes/themechangerprovider.dart';

class Themes extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    ThemeChangerProvider _themeChanger = Provider.of<ThemeChangerProvider>(context);
    return new Scaffold(
      appBar: AppBar(
        title: Text('Choose Theme'),
        ),
body: Container(
  child: Column(
    children: [
      TextButton(
        onPressed: () => _themeChanger.setTheme(ThemeData.dark()), 
        child: Text('Dark Theme'),),

        TextButton(
        onPressed: () => _themeChanger.setTheme(ThemeData.light()), 
        child: Text('Light Theme'),),


    ],
    ),
  
  ),

    );
  }
}

*/