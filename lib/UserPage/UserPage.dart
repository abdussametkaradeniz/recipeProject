import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipeapp/Constant/ScreenSize.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: ScreenSize.logicalWidth,
                  height: ScreenSize.logicalHeight / 6,
                  decoration: BoxDecoration(
                    color: Colors.yellow[200],
                    borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(100),
                    ),
                  ),
                ),
                Positioned(
                  top: (ScreenSize.logicalHeight / 6),
                  child: Container(
                    width: ScreenSize.logicalWidth,
                    height: ScreenSize.logicalHeight / 10,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                    ),
                    child: Row(
                      children: [
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text(
                              "Abdussamet Karadeniz",
                              style: GoogleFonts.bebasNeue(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.none,
                                color: Colors.purple[600],
                              ),
                            ),
                          ),
                        ),
                        Spacer(),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text(
                              "Aşçıbaşı",
                              style: GoogleFonts.bebasNeue(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.none,
                                color: Colors.purple[600],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Center(
                  heightFactor: 2.5,
                  child: Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.purple[100],
                    ),
                  ),
                )
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 5,
                  ),
                  child: Container(
                    width: ScreenSize.logicalWidth,
                    height: 200,
                    decoration: const BoxDecoration(
                      color: Colors.amberAccent,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 20,
                  ),
                  child: Container(
                    width: ScreenSize.logicalWidth,
                    height: 200,
                    decoration: const BoxDecoration(
                      color: Colors.amberAccent,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
