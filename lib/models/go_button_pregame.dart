import 'package:chug_app2/pages/players.dart';
import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:google_fonts/google_fonts.dart';

import '../pages/players.dart';

class GoButtonCTA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GlassmorphicContainer(
      height: 60.0,
      width: 230.0,
      blur: 20.0,
      border: 2.0,
      borderRadius: 50.0,
      linearGradient: LinearGradient(
          begin: Alignment.bottomRight,
          end: Alignment.topLeft,
          colors: [
            Color(0xFF37414C).withAlpha(100),
            Color(0xFF37414C).withAlpha(100),
          ],
          stops: [
            0.06,
            1,
          ]),
      borderGradient: LinearGradient(
          begin: Alignment.bottomRight,
          end: Alignment.topLeft,
          colors: [
            Color(0xFF544691).withAlpha(100),
            Color(0xFF066AA9).withAlpha(100),
            Color(0xFF05A2BF).withAlpha(100),
            Color(0xFF3BAC9C).withAlpha(100),
            Color(0xFFE45985).withAlpha(100),
            Color(0xFF7C3F8B).withAlpha(100),
            Color(0xFF544691).withAlpha(100),
          ],
          stops: [
            0.10,
            0.20,
            0.30,
            0.60,
            0.70,
            0.90,
            1
          ]),
      child: Center(
        child: TextButton(
            style: TextButton.styleFrom(
              elevation: 0.0,
              minimumSize: const Size(246.0, 60.0),
              primary: Colors.transparent,
              enableFeedback: false,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Players()),
              );
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'LET\'S GO !',
                  style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontSize: 27,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                SizedBox(width: 10),
                Image.asset(
                  'assets/shotglass.png',
                  width: 23,
                )
              ],
            )),
      ),
    );
  }
}
