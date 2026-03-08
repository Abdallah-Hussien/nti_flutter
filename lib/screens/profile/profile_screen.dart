import 'package:flutter/material.dart';
import 'package:nti_flutter/screens/profile/widgets.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        leading: const Icon(Icons.arrow_back),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 23),
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              const SizedBox(
                width: double.infinity,
                child: AvatarSection(),
              ),
              const SizedBox(height: 10),
              const Divider(),
              const SizedBox(height: 10),
              const HeadingTitle(title: 'Profile Information'),
              const SizedBox(height: 20),
              ProfileMenuItem(
                  label: 'Name', value: 'Abdallah Alghamdi', onTap: () {}),
              ProfileMenuItem(label: 'User Name', value: 'Abdo', onTap: () {}),
              const SizedBox(height: 10),
              const Divider(),
              const SizedBox(height: 10),
              const HeadingTitle(title: 'Personal Information'),
              const SizedBox(height: 20),
              ProfileMenuItem(label: 'User id', value: '0356030', onTap: () {}),
              ProfileMenuItem(
                  label: 'E-mail', value: 'Abdo@example.com', onTap: () {}),
              ProfileMenuItem(
                  label: 'Phone Number',
                  value: '+966 12 345 6789',
                  onTap: () {}),
              ProfileMenuItem(label: 'Gender', value: 'Male', onTap: () {}),
              ProfileMenuItem(
                  label: 'Date of Birth', value: '1990-01-01', onTap: () {}),
              const SizedBox(
                height: 23,
              ),
              Center(
                child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Close Profile",
                      style: TextStyle(color: Colors.red),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}

