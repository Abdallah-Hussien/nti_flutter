import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:nti_flutter/masar/utils/app_color.dart';
import 'package:nti_flutter/masar/utils/widgets.dart';

class RegisterContent extends StatefulWidget {
  const RegisterContent({
    super.key,
    required this.clickLoginToAccount,
  });
  final VoidCallback clickLoginToAccount;

  @override
  State<RegisterContent> createState() => _RegisterContentState();
}

class _RegisterContentState extends State<RegisterContent> {
  bool termsIsChecked = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CustomTextInput(
            hintText: 'الأسم',
            suffixIcon: Icons.person,
          ),
          const SizedBox(
            height: 10,
          ),
          const CustomTextInput(
            hintText: 'البريد الألكتروني',
            suffixIcon: Icons.email,
            keyboardType: TextInputType.emailAddress,
          ),
          const SizedBox(
            height: 10,
          ),
          const CustomTextInput(
            hintText: 'رقم الهاتف',
            suffixIcon: Icons.phone,
            keyboardType: TextInputType.phone,
          ),
          const SizedBox(
            height: 10,
          ),
          const CustomTextInput(
            hintText: 'كلمة المرور',
            suffixIcon: Icons.lock_outlined,
            prefixIcon: Icons.visibility_outlined,
            obscureText: true,
          ),
          const SizedBox(
            height: 10,
          ),
          const SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                RichText(
                    text: const TextSpan(children: [
                  TextSpan(
                    text: 'أوافق علي',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: AppColor.secondaryText,
                    ),
                  ),
                  TextSpan(
                    text: '  الشروط والأحكام',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  )
                ])),
                const SizedBox(
                  width: 5,
                ),
                Checkbox(
                  activeColor: const Color.fromARGB(255, 12, 234, 212),
                  checkColor: const Color.fromARGB(255, 255, 255, 255),
                  value: termsIsChecked,
                  onChanged: (value) {
                    setState(() {
                      termsIsChecked = value!;
                    });
                  },
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 19,
          ),
          CustomButton(
              text: 'إنشاء حساب',
              textColor: AppColor.primaryBlue,
              onTap: () {
                Navigator.pushNamed(
                  context,
                  'home',
                );
              }),
          const SizedBox(
            height: 19,
          ),
          RichText(
              text: TextSpan(children: [
            const TextSpan(
              text: ' لديك حساب؟ ',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: AppColor.secondaryText,
              ),
            ),
            TextSpan(
              text: ' تسجيل دخول',
              style: const TextStyle(
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = widget.clickLoginToAccount,
            )
          ]))
        ],
      ),
    );
  }
}
