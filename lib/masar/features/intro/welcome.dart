// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:nti_flutter/masar/utils/app_color.dart';
import 'package:nti_flutter/masar/utils/widgets.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Image(
          image: AssetImage('assets/images/welcome_bg.jpeg'),
          fit: BoxFit.fill,
          width: double.infinity,
          height: 400,
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
            height: 300,
            child: Padding(
              padding: const EdgeInsets.all(22),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'أهلا بك في مؤسسة المسار',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'للفئات الخاصه',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  SizedBox(
                    height: 19,
                  ),
                  CustomButton(
                      text: 'تسجيل الدخول',
                      textColor: AppColor.primaryBlue,
                      onTap: () {
                        Navigator.pushReplacementNamed(context, 'auth',
                            arguments: true);
                      }),
                  SizedBox(
                    height: 19,
                  ),
                  CustomButton(
                      text: 'إنشاء حساب',
                      textColor: AppColor.primaryBlue,
                      onTap: () {
                        Navigator.pushReplacementNamed(context, 'auth',
                            arguments: false);
                      }),
                ],
              ),
            ),
          ),
        )
      ],
    ));
  }
}
