// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    final cWidth = MediaQuery.of(context).size.width;
    final cHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Profile'),
        leading: const Icon(Icons.arrow_back),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 23),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                width: cWidth * .5,
                height: 50,
                color: Colors.grey[200],
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: const Text(
                'Edit Profile',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 20),
            AvatarSection(),
            const SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'Name',
                border: OutlineInputBorder(),
                suffixIcon: Icon(Icons.person),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'E-mail',
                border: OutlineInputBorder(),
                suffixIcon: Icon(Icons.email),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(300, 48),
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text(
                    'Login',
                    style: TextStyle(fontSize: 18),
                  )),
            ),
            SizedBox(height: 20),
            TextButton(
              onPressed: () {},
              child: RichText(
                text: TextSpan(
                    style: TextStyle(
                      fontSize: 16,
                    ),
                    children: [
                      TextSpan(
                          text: 'Create An Account  ',
                          style: TextStyle(color: Colors.blue)),
                      TextSpan(
                          text: 'Sign up',
                          style: TextStyle(color: Colors.grey)),
                    ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AvatarSection extends StatelessWidget {
  const AvatarSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          CircleAvatar(
            radius: 60,
            backgroundImage: NetworkImage(
                'data:image/jpeg;base64,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'),
          ),
          Positioned(
              top: 8,
              right: 12,
              child: CircleAvatar(
                backgroundColor: Colors.white30,
                child: IconButton(
                  padding: EdgeInsets.zero,
                  iconSize: 18,
                  onPressed: () {},
                  icon: Icon(
                    Icons.edit,
                    color: Colors.black38,
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
