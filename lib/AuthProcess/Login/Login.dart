import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:recipeapp/AuthProcess/AuthService.dart';
import 'package:recipeapp/AuthProcess/SignIn/SignIn.dart';
import 'package:recipeapp/Constant/ScreenSize.dart';
import 'package:recipeapp/MainPage/MainPage.dart';
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
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final _focusEmail = FocusNode();
  final _focusPassword = FocusNode();

  driverFunction() {
    unfocusFunction();
  }

  unfocusFunction() {
    _focusEmail.unfocus();
    _focusPassword.unfocus();
  }

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
                  height: ScreenSize.logicalHeight / 4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomTextField(
                          hintText: 'Email',
                          controller: _emailController,
                          textFormFieldType: "Email"),
                      CustomTextField(
                          hintText: 'Password',
                          controller: _passwordController,
                          textFormFieldType: "Password"),
                      CustomButton(
                          btnText: 'Log In',
                          function: () async {
                            User? user = await AuthService.LoginWithEmailAndPassword(
                                email: _emailController.text,
                                password: _passwordController.text);

                            if (user != null) {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => MainPage(
                                        user: user,
                                      )));
                            }
                          }),
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
