import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:recipeapp/AuthProcess/AuthService.dart';

class MainPage extends StatefulWidget {
  final User user;
  const MainPage({required this.user, super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            AuthService.signOut(context);
          },
          child: Container(
            width: 300,
            height: 239,
            decoration: BoxDecoration(
              color: Colors.amber,
            ),
          ),
        ),
      ],
    );
  }
}
