import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    super.key,
    required this.goodToSeeYouOrLogin,
  });

  final String goodToSeeYouOrLogin;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Icon(
          Icons.food_bank,
          size: 100,
        ),
        const SizedBox(height: 75),
        //Welcome text
        Text(
          "Welcome here!",
          style: GoogleFonts.bebasNeue(
            fontSize: 52,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          goodToSeeYouOrLogin,
          style: TextStyle(fontSize: 18),
        ),
        const SizedBox(height: 50),
      ],
    );
  }
}
