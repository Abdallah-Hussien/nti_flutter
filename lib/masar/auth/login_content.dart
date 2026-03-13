import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:nti_flutter/masar/utils/app_color.dart';
import 'package:nti_flutter/masar/utils/widgets.dart';

class LoginContent extends StatelessWidget {
  const LoginContent({
    super.key,
    required this.clickCreateAccount,
  });
  final VoidCallback clickCreateAccount;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'أهلا بك نحن سعداء بعودتك',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          'من فضلك قم بتسجيل الدخول',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const SizedBox(
          height: 19,
        ),
        const CustomTextInput(
          hintText: 'رقم الهاتف',
          suffixIcon: Icons.person,
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
        const Align(
          alignment: Alignment.topLeft,
          child: Text(
            'نسيت كلمة المرور؟',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(
          height: 19,
        ),
        CustomButton(
            text: 'تسجيل الدخول',
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
            text: 'ليس لديك حساب؟ ',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
          ),
          TextSpan(
            text: ' إنشاء حساب',
            style: const TextStyle(
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
            recognizer: TapGestureRecognizer()..onTap = clickCreateAccount,
          )
        ]))
      ],
    );
  }
}
