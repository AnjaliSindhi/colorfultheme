import 'package:colorfultheme/themechangerprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ColorfulTheme extends StatefulWidget {
  
  @override
  _ColorfulThemeState createState() => _ColorfulThemeState();
}

class _ColorfulThemeState extends State<ColorfulTheme> {
  @override
  Widget build(BuildContext context) {

    ThemeChangerProvider _themeChanger = Provider.of<ThemeChangerProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose theme color'),
      ),
    

      body: Center(
        child: Column(
          
          children: [
            Padding(padding: EdgeInsets.all(50)),
            ElevatedButton(
             
             onPressed: () {
               ThemeData(primaryColor: Colors.red);
               setState(() {
                  _themeChanger.setTheme(ThemeData(primaryColor: Colors.red));
                });
             }, 
             child: Text('Red'),
             style: ElevatedButton.styleFrom(primary: Colors.red),
            ),

          SizedBox( height: 30),

            ElevatedButton(
              onPressed: () {
                setState(() {
                  _themeChanger.setTheme(ThemeData(primaryColor: Colors.pink));
                });
                } ,
             child: Text('Pink'),
             style: ElevatedButton.styleFrom(primary: Colors.pink),
            ),

            SizedBox( height: 30),

            ElevatedButton(
             onPressed: () {
               setState(() {
                  _themeChanger.setTheme(ThemeData(primaryColor: Colors.amber));
                });
             }, 
             child: Text('Amber'),
             style: ElevatedButton.styleFrom(primary: Colors.amber),
            ),

            SizedBox( height: 30),

            ElevatedButton(
             onPressed: () {
               setState(() {
                  _themeChanger.setTheme(ThemeData(primaryColor: Colors.green));
                });
             }, 
             child: Text('Green'),
             style: ElevatedButton.styleFrom(primary: Colors.green),
            ),

            

        ],),
      ),

    );
  }
}