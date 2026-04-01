// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:nti_flutter/masar/utils/app_color.dart';
import 'package:nti_flutter/masar/utils/widgets.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('assets/images/splash_bg.jpeg'),
          )),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 28),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomButton(
                  backgroundColor: AppColor.secondaryRed,
                  text: 'Start',
                  textColor: Colors.white,
                  onTap: () {
                    Navigator.pushReplacementNamed(context, 'welcome');
                  },
                ),
              ],
            ),
          )),
    );
  }
}
