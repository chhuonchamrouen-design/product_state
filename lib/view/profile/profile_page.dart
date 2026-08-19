import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text("Profile", style: TextStyle(color: Colors.blue)),
        actions: [Icon(Icons.settings)],
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            color: Colors.blue,
            child: Stack(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.white,
                  ),
                ),
                Positioned(top: 10, left: 20, right: 20, child: Text("Hiii")),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
