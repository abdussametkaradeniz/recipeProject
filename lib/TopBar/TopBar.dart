import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipeapp/Constant/ScreenSize.dart';

class TopBar extends StatefulWidget {
  const TopBar({super.key});

  @override
  State<TopBar> createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData = MediaQuery.of(context);
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: ScreenSize.logicalWidth,
            height: ScreenSize.logicalHeight * 0.07,
            decoration: const BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(50),
              ),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 15,
                    horizontal: 20,
                  ),
                  child: Text(
                    "App Name",
                    style: GoogleFonts.bebasNeue(
                      fontSize: 24,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
                Spacer(),
                //messages icon
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 15.0,
                    horizontal: 20.0,
                  ),
                  child: Container(
                      child: Icon(
                    Icons.message,
                    color: Colors.red,
                  )),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
