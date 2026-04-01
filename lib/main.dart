// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:nti_flutter/app_theme_data.dart';
import 'firebase_options.dart';
import 'fire_base_project/features/login/ui/login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MainWidget());
}

class MainWidget extends StatelessWidget {
  const MainWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {'/': (_) => Scaffold(body: LoginNavigation())},
      // home: Login(),
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: AppThemeData.lightTheme,
      darkTheme: AppThemeData.darkTheme,
    );
  }
}

