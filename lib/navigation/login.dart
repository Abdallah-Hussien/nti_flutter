// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nti_flutter/navigation/home.dart';

class LoginNavigation extends StatelessWidget {
  const LoginNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        title: const Text('Login'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 23),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const Text(
              'Loginto Your Account',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              'Welcome Back',
              style: TextStyle(
                fontSize: 12,
              ),
            ),
            const SizedBox(height: 20),
            Text("Email"),
            const SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                hintText: 'example@gmail.com',
                hintStyle: TextStyle(color: Colors.grey[600]),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                suffixIcon: Icon(
                  Icons.email,
                  color: Colors.grey[600],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text("Password"),
            const SizedBox(height: 10),
            TextField(
              obscureText: true,
              obscuringCharacter: '*',
              decoration: InputDecoration(
                hintText: '*********',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                suffixIcon: Icon(
                  Icons.lock,
                  color: Colors.grey[600],
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => HomeNavigation(name: 'name'),
                    ),
                  );

                  /// named navigation
                  // Navigator.pushNamed(context, 'login');
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 48),
                  backgroundColor: Color(0xFF5DBC5D),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child: Text(
                  'Login',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                )),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: Divider(
                    height: 1,
                    thickness: 1,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Text("Or Login With"),
                ),
                Expanded(
                  child: Divider(
                    height: 1,
                    thickness: 1,
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            AccountsLogin(),
            SizedBox(height: 20),
            DoNotHaveAccount(),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}

class DoNotHaveAccount extends StatelessWidget {
  const DoNotHaveAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
          text: TextSpan(
        children: [
          TextSpan(
            text: "Don't have an account? ",
            style: TextStyle(color: Colors.black),
          ),
          TextSpan(
            text: " Sign Up",
            style: TextStyle(color: Color(0xFF5DBC5D), fontSize: 16),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                /// simple navigation
                // Navigator.push(context, MaterialPageRoute(
                //   builder: (context) {
                //     return Register();
                //   },
                // ));

                /// named navigation
                //Navigator.pushNamed(context, '/register');

                /// receive data from register screen
                //move(context);
              },
          ),
        ],
      )),
    );
  }
}

class AccountsLogin extends StatelessWidget {
  const AccountsLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            'assets/icons/ic_apple.svg',
            width: 32,
            height: 32,
          ),
        ),
        SizedBox(width: 20),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            'assets/icons/ic_facebook.svg',
            width: 32,
            height: 32,
          ),
        ),
        SizedBox(width: 20),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            'assets/icons/ic_google.svg',
            width: 32,
            height: 32,
          ),
        )
      ],
    );
  }
}

move(BuildContext context) async {
  final result = await Navigator.pushNamed(context, '/register');
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(result.toString()),
    action: SnackBarAction(label: 'ok', onPressed: () {}),
  ));
}
