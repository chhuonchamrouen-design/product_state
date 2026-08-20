import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final User? user = FirebaseAuth.instance.currentUser;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 80,
              backgroundImage:
                  (user!.photoURL != null && user!.photoURL!.isNotEmpty)
                  ? NetworkImage(user!.photoURL!)
                  : NetworkImage(
                      "https://i.pinimg.com/736x/1d/ec/e2/1dece2c8357bdd7cee3b15036344faf5.jpg",
                    ),
            ),
            Text(
              (user?.displayName?.isNotEmpty ?? false)
                  ? user!.displayName!
                  : "No Name",
            ),
            Text(
              (user?.email?.isNotEmpty ?? false) ? user!.email! : "No Email",
            ),
          ],
        ),
      ),
    );
  }
}
