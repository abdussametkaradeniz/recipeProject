import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:recipeapp/AuthProcess/Validator.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    required this.controller,
    required this.textFormFieldType,
  });

  final String hintText;
  final TextEditingController controller;
  final String textFormFieldType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[200],
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: TextFormField(
            obscureText: textFormFieldType == "Password" ? true : false,
            controller: controller,
            validator: textFormFieldType == "Password"
                ? (value) =>
                    Validator.validatePassword(password: controller.text)
                : (value) => Validator.validateEmail(email: controller.text),
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hintText,
            ),
          ),
        ),
      ),
    );
  }
}
