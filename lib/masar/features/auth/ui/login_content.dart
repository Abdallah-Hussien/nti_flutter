import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:nti_flutter/masar/core/networking/firebase_auth_services.dart';
import 'package:nti_flutter/masar/utils/app_color.dart';
import 'package:nti_flutter/masar/utils/widgets.dart';
import '../data/user_data.dart';

class LoginContent extends StatelessWidget {
  LoginContent({
    super.key,
    required this.clickCreateAccount,
  });
  final VoidCallback clickCreateAccount;
  final TextEditingController emailController = TextEditingController();
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
              hintText: 'البريد الإلكتروني',
              suffixIcon: Icons.email,
              keyboardType: TextInputType.emailAddress,
              controller: emailController,
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
              hintText: 'كلمة المرور',
              suffixIcon: Icons.lock_outlined,
              prefixIcon: Icons.visibility_outlined,
              obscureText: true,
              controller: passwordController,
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
                  if (_formKey.currentState!.validate()) {
                    setubLogin(context);
                  }
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
        ),
      ),
    );
  }

  setubLogin(BuildContext context) {
    FireBaseAuthServices.signIn(
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
