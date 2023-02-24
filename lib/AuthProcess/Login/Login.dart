import 'package:flutter/material.dart';
import 'package:recipeapp/AuthProcess/SignIn/SignIn.dart';
import 'package:recipeapp/Widgets/custom_button.dart';
import 'package:recipeapp/Widgets/custom_text_field.dart';
import 'package:recipeapp/Widgets/have_account_widget.dart';
import 'package:recipeapp/Widgets/header_widget.dart';
import 'package:recipeapp/components/navigate.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[290],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const HeaderWidget(
                  goodToSeeYouOrLogin: 'Please Login.',
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const CustomTextField(hintText: 'Email'),
                      const CustomTextField(hintText: 'Password'),
                      const CustomButton(btnText: 'Log In'),
                      HaveAccountWidget(
                        haveAccountText: 'Need an account?',
                        logOrSign: 'Sign In',
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const SignIn()));
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
