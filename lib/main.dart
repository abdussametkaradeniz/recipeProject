import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:recipeapp/AuthProcess/Login/Login.dart';
import 'package:recipeapp/AuthProcess/SignIn/SignIn.dart';
import 'package:recipeapp/AuthProcess/promotion/Promotion.dart';
import 'package:recipeapp/Constant/ScreenSize.dart';
import 'package:recipeapp/MainPage/MainPage.dart';
import 'package:recipeapp/TopBar/TopBar.dart';
import 'package:recipeapp/UserPage/UserPage.dart';
import 'package:recipeapp/components/navigate.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:recipeapp/firebase_options.dart';

class RecipeApp extends StatefulWidget {
  const RecipeApp({super.key});

  @override
  State<RecipeApp> createState() => _RecipeAppState();
}

class _RecipeAppState extends State<RecipeApp> {
  late FirebaseAuth auth;
  Widget currentPage = Promotion();
  User? user;

  @override
  void initState() {
    super.initState();
    auth = FirebaseAuth.instance;
    user = auth.currentUser;
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );
    return MaterialApp(
      navigatorKey: NavigationService.navigatorKey,
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      debugShowCheckedModeBanner: false,
      home: user == null ? Login() : MainPage(user: auth.currentUser!),
    );
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const RecipeApp());
}
