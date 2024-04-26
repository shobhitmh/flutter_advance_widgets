import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';

class avatarglowwidget extends StatelessWidget {
  const avatarglowwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      body: Center(
        child: AvatarGlow(
          glowCount: 4,
          glowColor: Colors.white,
          duration: Duration(milliseconds: 1000),
          child: Icon(
            Icons.person,
            size: 30,
          ),
        ),
      ),
    );
  }
}
