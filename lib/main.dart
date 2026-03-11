// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:nti_flutter/app_theme_data.dart';
import 'package:nti_flutter/navigation/onboarding.dart';

void main() {
  runApp(const MainWidget());
}

class MainWidget extends StatelessWidget {
  const MainWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Onboarding(),
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: AppThemeData.lightTheme,
      darkTheme: AppThemeData.darkTheme,

      // initialRoute: '/',
      // routes: {
      //   '/': (context) => Onboarding(),
      //   '/login': (context) => LoginNavigation(),
      //   '/home': (context) {
      //     var args = ModalRoute.of(context)?.settings.arguments as String;
      //     return HomeNavigation(name: args);
      //   },
      // },
    );
  }
}
