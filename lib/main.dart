// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:nti_flutter/app_theme_data.dart';
import 'package:nti_flutter/masar/auth/auth.dart';
import 'package:nti_flutter/masar/intro/splash.dart';
import 'package:nti_flutter/masar/intro/welcome.dart';
import 'package:nti_flutter/masar/home/home.dart';

void main() {
  runApp(const MainWidget());
}

class MainWidget extends StatelessWidget {
  const MainWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'splash': (_) => Splash(),
        'welcome': (_) => Welcome(),
        'auth': (context) {
          var arg = ModalRoute.of(context)?.settings.arguments as bool;
          return Auth(
            isLoginScreen: arg,
          );
        },
        'home': (_) => Home()
      },
      // home: Login(),
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme: AppThemeData.lightTheme,
      darkTheme: AppThemeData.darkTheme,
      initialRoute: 'splash',
    );
  }
}
