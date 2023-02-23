import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipeapp/Widgets/custom_button.dart';
import 'package:recipeapp/Widgets/custom_text_field.dart';
import 'package:recipeapp/Widgets/have_account_widget.dart';
import 'package:recipeapp/Widgets/header_widget.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width / 4;
    final double useWidth = MediaQuery.of(context).size.width / 6 + width;
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
                  children: const [
                    Expanded(
                        flex: 49, child: CustomTextField(hintText: 'Name')),
                    Spacer(),
                    Expanded(
                        flex: 49, child: CustomTextField(hintText: 'Surname')),
                  ],
                ),

                const SizedBox(height: 10),

                const CustomTextField(
                  hintText: 'Email',
                ),

                const SizedBox(height: 10),

                //password
                const CustomTextField(hintText: 'Password'),
                const SizedBox(height: 10),

                const CustomTextField(hintText: 'Confirm Password'),
                const SizedBox(height: 25),

                //sign in
                const CustomButton(btnText: 'Sign In'),
                const SizedBox(height: 10),

                //not a member
                const HaveAccountWidget(
                  haveAccountText: 'Do you have an account?',
                  logOrSign: 'Log In',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
