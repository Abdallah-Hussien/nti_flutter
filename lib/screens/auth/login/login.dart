// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nti_flutter/screens/auth/register/register.dart';
import 'package:nti_flutter/screens/profile/edit_profile.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        // leading: const Icon(Icons.arrow_back),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 23),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const Text(
              'Login to Your Account',
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
            const SizedBox(height: 15),
            Center(
              child: SvgPicture.asset(
                'assets/icons/ic_bannar_login.svg',
                width: double.infinity,
                height: 200,
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
                onPressed: () {},
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
            Row(
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
            ),
            SizedBox(height: 20),
            Center(
              child: RichText(
                  text: TextSpan(
                children: [
                  TextSpan(
                    text: "Don't have an account? ",
                    style: TextStyle(color: Colors.black),
                  ),
                  TextSpan(
                    text: "Sign Up",
                    style: TextStyle(color: Color(0xFF5DBC5D)),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        /// simple navigation
                        // Navigator.push(context, MaterialPageRoute(
                        //   builder: (context) {
                        //     return Register();
                        //   },
                        // ));

                        /// named navigation
                        Navigator.pushNamed(context, '/register');
                      },
                  ),
                ],
              )),
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
