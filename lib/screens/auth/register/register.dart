// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nti_flutter/screens/auth/login/login.dart';
import 'package:nti_flutter/screens/profile/edit_profile.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
        // leading: const Icon(Icons.arrow_back),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 23),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const Text(
              'Create an Account',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 20),
            Text("Name"),
            const SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                hintText: 'John Doe',
                hintStyle: TextStyle(color: Colors.grey[600]),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                suffixIcon: Icon(
                  Icons.person,
                  color: Colors.grey[600],
                ),
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
                  Navigator.pushNamedAndRemoveUntil(
                      context, "/home", (route) => false);
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 48),
                  backgroundColor: Color(0xFF5DBC5D),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child: Text(
                  'Register',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                )),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: Divider(
                    height: 1,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Text("Or Sign up With"),
                ),
                Expanded(
                  child: Divider(
                    height: 1,
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
                    text: "Already have an account? ",
                    style: TextStyle(color: Colors.black),
                  ),
                  TextSpan(
                    text: " Login",
                    style: TextStyle(color: Color(0xFF5DBC5D), fontSize: 16),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        /// common mistake
                        // Navigator.push(context, MaterialPageRoute(
                        //   builder: (context) {
                        //     return Login();
                        //   },
                        // ));

                        /// finish current screen and go back to previous screen
                        // Navigator.pop(context);

                        /// finish current screen and send data back to previous screen
                        Navigator.pop(context, "Hello from register");
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
