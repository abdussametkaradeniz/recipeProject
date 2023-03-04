import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:recipeapp/AuthProcess/Login/Login.dart';
import 'package:recipeapp/AuthProcess/SignIn/SignIn.dart';
import 'package:recipeapp/AuthProcess/promotion/Promotion.dart';
import 'package:recipeapp/Constant/ScreenSize.dart';
import 'package:recipeapp/TopBar/TopBar.dart';
import 'package:recipeapp/UserPage/UserPage.dart';
import 'package:recipeapp/components/navigate.dart';

import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
      home: const Login(),
    );
  }
}
