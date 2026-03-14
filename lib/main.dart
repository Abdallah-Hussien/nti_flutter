// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:nti_flutter/app_theme_data.dart';

import 'task_2/features/home.dart';


void main() {
  runApp(const MainWidget());
}

class MainWidget extends StatelessWidget {
  const MainWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (_) => Home()
      },
      // home: Login(),
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: AppThemeData.lightTheme,
      darkTheme: AppThemeData.darkTheme,
    );
  }
}
