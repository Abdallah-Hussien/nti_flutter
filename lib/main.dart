// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:nti_flutter/app_theme_data.dart';
import 'package:nti_flutter/screens/profile/profile_screen.dart';

void main() {
  runApp(const HomeSreen());
}

class HomeSreen extends StatelessWidget {
  const HomeSreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: AppThemeData.lightTheme,
      darkTheme: AppThemeData.darkTheme,
      home: ProfileScreen(),
    );
  }
}
