// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:nti_flutter/masar/utils/app_color.dart';
import 'package:nti_flutter/masar/auth/login_content.dart';
import 'package:nti_flutter/masar/auth/register_content.dart';

class Auth extends StatefulWidget {
  Auth({super.key, required this.isLoginScreen});
  bool isLoginScreen;
  @override
  State<Auth> createState() => _LoginState();
}

class _LoginState extends State<Auth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Image(
          image: AssetImage('assets/images/login_and_register_bg.jpeg'),
          fit: BoxFit.fill,
          width: double.infinity,
          height: 350,
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(12),
              ),
              color: AppColor.primaryBlue,
            ),
            height: 400,
            child: Padding(
              padding: const EdgeInsets.all(22),
              child: widget.isLoginScreen
                  ? LoginContent(
                      clickCreateAccount: () {
                        setState(() {
                          widget.isLoginScreen = false;
                        });
                      },
                    )
                  : RegisterContent(
                      clickLoginToAccount: () {
                        setState(() {
                          widget.isLoginScreen = true;
                        });
                      },
                    ),
            ),
          ),
        )
      ],
    ));
  }
}
