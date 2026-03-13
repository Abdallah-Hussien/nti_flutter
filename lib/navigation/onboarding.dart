// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nti_flutter/navigation/home.dart';
import 'package:nti_flutter/navigation/login.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 149, 218, 252),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 10),
                Text(
                    style: TextStyle(
                        fontSize: 18,
                        color: const Color.fromARGB(255, 7, 118, 48)),
                    'Welcome to your new favorite shopping destination! \nWe are absolutely thrilled to have you join the our community.'),
                SizedBox(height: 30),
                SvgPicture.asset(
                  'assets/icons/ic_bannar_login.svg',
                  // width: 100,
                  height: 200,
                  // fit: BoxFit.fill,
                ),
                SizedBox(height: 30),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF5DBC5D),
                    minimumSize: Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(
                    'Start Shopping',
                    style: TextStyle(
                      fontSize: 16,
                      color: const Color(0xFFFFFFFF),
                    ),
                  ),
                  onPressed: () {
                    // simple navigation
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => HomeNavigation(name: 'name')));
                    // Navigator.pushNamed(context, 'home');

                    /// navigation with route name
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
