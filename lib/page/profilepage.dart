import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [Colors.orange, Colors.purple],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight),
      ),
      child: const Center(
        child: Text('Profile Page'),
      ),
    );
  }
}
