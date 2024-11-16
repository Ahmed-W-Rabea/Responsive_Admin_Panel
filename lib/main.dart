import 'package:flutter/material.dart';
import 'package:responsive_admin_panel/const/constant.dart';
import 'package:responsive_admin_panel/screens/main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Admin Panel',
   
        theme:
        ThemeData(scaffoldBackgroundColor:backgroundColor,
        brightness: Brightness.dark),
      
 home: const MainScreen(),
    );
  }
}