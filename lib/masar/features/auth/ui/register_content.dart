import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:nti_flutter/masar/core/networking/firebase_auth_services.dart';
import 'package:nti_flutter/masar/utils/app_color.dart';
import 'package:nti_flutter/masar/utils/widgets.dart';

import '../data/user_data.dart';

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
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomTextInput(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your name';
                }
                return null;
              },
              controller: nameController,
              hintText: 'الأسم',
              suffixIcon: Icons.person,
            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextInput(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your email';
                }
                if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                  return 'Please enter a valid email';
                }
                return null;
              },
              controller: emailController,
              hintText: 'البريد الألكتروني',
              suffixIcon: Icons.email,
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextInput(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your phone number';
                }
                return null;
              },
              controller: phoneController,
              hintText: 'رقم الهاتف',
              suffixIcon: Icons.phone,
              keyboardType: TextInputType.phone,
            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextInput(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your password';
                }
                if (value.length < 6) {
                  return 'Password must be at least 6 characters';
                }
                return null;
              },
              controller: passwordController,
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
                  if (_formKey.currentState!.validate()) {
                    // Handle registration logic here
                    setubLogin(context);
                  }
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
      ),
    );
  }
   setubLogin(BuildContext context) {
    FireBaseAuthServices.signUp(
      userData: UserData(
          email: emailController.text, password: passwordController.text),
    ).then((value) {
      //showdialog with the value
      final snackBar = SnackBar(
        /// need to set following properties for best effect of awesome_snackbar_content
        elevation: 0,
        behavior: SnackBarBehavior.floating,
        backgroundColor: Colors.transparent,
        content: AwesomeSnackbarContent(
          title: 'On Snap!',
          message: value,

          /// change contentType to ContentType.success, ContentType.warning or ContentType.help for variants
          contentType: ContentType.help,
        ),
      );
      ScaffoldMessenger.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(snackBar);
    });
  }

}
