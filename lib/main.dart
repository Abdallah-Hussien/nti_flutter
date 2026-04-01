// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:nti_flutter/app_theme_data.dart';
import 'package:nti_flutter/fire_base_project/features/test.dart';
import 'package:nti_flutter/masar/features/auth/ui/auth.dart';
import 'package:nti_flutter/masar/features/home/home.dart';
import 'package:nti_flutter/masar/features/intro/splash.dart';
import 'package:nti_flutter/masar/features/intro/welcome.dart';
import 'firebase_options.dart';
import 'fire_base_project/features/login/ui/login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MainMasar());
}

class MainWidget extends StatelessWidget {
  const MainWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {'/': (_) => Scaffold(body: Test())},
      // home: Login(),
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: AppThemeData.lightTheme,
      darkTheme: AppThemeData.darkTheme,
    );
  }
}

class MainMasar extends StatelessWidget {
  const MainMasar({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/splash',
      routes: {
        'welcome': (_) => Welcome(),
        '/splash': (_) => Splash(),
        'auth': (_) => Auth(isLoginScreen: true),
        'home': (_) => Home(),
      },
      // home: Login(),
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: AppThemeData.lightTheme,
      darkTheme: AppThemeData.darkTheme,
    );
  }
}
