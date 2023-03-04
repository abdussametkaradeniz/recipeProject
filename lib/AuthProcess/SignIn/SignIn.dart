import 'package:flutter/material.dart';
import 'package:recipeapp/AuthProcess/AuthService.dart';
import 'package:recipeapp/AuthProcess/Login/Login.dart';
import 'package:recipeapp/Widgets/custom_button.dart';
import 'package:recipeapp/Widgets/custom_text_field.dart';
import 'package:recipeapp/Widgets/have_account_widget.dart';
import 'package:recipeapp/Widgets/header_widget.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _registryFormKey = GlobalKey<FormState>();

  final _nameTextController = TextEditingController();
  final _lastNameTextController = TextEditingController();
  final _emailTextController = TextEditingController();
  final _passwordTextController = TextEditingController();
  final _confirmPasswordTextController = TextEditingController();

  final _focusName = FocusNode();
  final _focusEmail = FocusNode();
  final _focusPassword = FocusNode();

  bool _isProcessing = false;

  driverFunction() {
    checkPassword();
    /* unfocusFunction();
    signInFunction();
    resultSignInFunction(); */
  }

  resultSignInFunction() {
    if (FirebaseAuth.instance.currentUser != null) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const Login()));
    }
  }

  checkPassword() {
    if (_passwordTextController.text != _confirmPasswordTextController.text) {
      print("First password must be same confirm password");
    } else {
      unfocusFunction();
      signInFunction();
      resultSignInFunction();
    }
  }

  signInFunction() {
    AuthService.signIn(
        email: _emailTextController.text,
        password: _passwordTextController.text,
        name: _nameTextController.text,
        lastName: _lastNameTextController.text);
  }

  unfocusFunction() {
    _focusEmail.unfocus();
    _focusName.unfocus();
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const HeaderWidget(
                  goodToSeeYouOrLogin: 'Good to see you.',
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 49,
                      child: CustomTextField(
                        hintText: 'Name',
                        controller: _nameTextController,
                        textFormFieldType: "Name",
                      ),
                    ),
                    Spacer(),
                    Expanded(
                      flex: 49,
                      child: CustomTextField(
                        hintText: 'Surname',
                        controller: _lastNameTextController,
                        textFormFieldType: "Surname",
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 10),

                CustomTextField(
                  hintText: 'Email',
                  controller: _emailTextController,
                  textFormFieldType: "Email",
                ),

                const SizedBox(height: 10),

                //password
                CustomTextField(
                  hintText: 'Password',
                  controller: _passwordTextController,
                  textFormFieldType: "Password",
                ),
                const SizedBox(height: 10),

                CustomTextField(
                  hintText: 'Confirm Password',
                  controller: _confirmPasswordTextController,
                  textFormFieldType: "Password",
                ),
                const SizedBox(height: 25),

                //sign in
                CustomButton(
                  btnText: 'Sign In',
                  function: driverFunction,
                ),
                const SizedBox(height: 10),

                //not a member
                HaveAccountWidget(
                  haveAccountText: 'Do you have an account?',
                  logOrSign: 'Log In',
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const Login()));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
