import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:recipeapp/Widgets/custom_button.dart';
import 'package:recipeapp/Widgets/custom_text_field.dart';
import 'package:lottie/lottie.dart';
import 'package:getwidget/getwidget.dart';

class Promotion extends StatefulWidget {
  const Promotion({super.key});

  @override
  State<Promotion> createState() => _PromotionState();
}

class _PromotionState extends State<Promotion> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData = MediaQuery.of(context);

    return Scaffold(
      backgroundColor: Colors.yellow[50],
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            Lottie.network(
                "https://assets4.lottiefiles.com/packages/lf20_tll0j4bb.json"),
            Divider(),
          ],
        ),
      )),
    );
  }
}
