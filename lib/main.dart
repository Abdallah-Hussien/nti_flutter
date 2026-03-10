// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:nti_flutter/app_theme_data.dart';
import 'package:nti_flutter/data/item.dart';
import 'package:nti_flutter/screens/auth/login/login.dart';
import 'package:nti_flutter/screens/auth/register/register.dart';
import 'package:nti_flutter/screens/home/best_seller.dart';
import 'package:nti_flutter/screens/home/home.dart';

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
        '/': (context) => Login(),
        '/register': (context) => Register(),
        '/home': (context) => Home(),
        '/bestSeller': (context) {
          final l = ModalRoute.of(context)!.settings.arguments as List<Item>;
          return BestSeller(list: l);
        },
      },
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: AppThemeData.lightTheme,
      darkTheme: AppThemeData.darkTheme,
      // home: Home(),
    );
  }
}
