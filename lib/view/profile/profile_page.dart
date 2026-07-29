import 'package:flutter/material.dart';
import 'package:project/util/app_text.dart';
//import 'package:project_state11_12/util/app_text.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: AppText(text: "Profile Scren", size: 20)),
    );
  }
}