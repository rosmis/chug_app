import 'package:chug_app2/pages/players.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:glassmorphism_ui/glassmorphism_ui.dart';

import '../../pages/players.dart';


class GoButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Players()),
        );
      },
      style: ButtonStyle(
        enableFeedback: false,
        overlayColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) => Colors.white10,
        ),
      ),
      child: GlassContainer(
        height: 70,
        blur: 3,
        shadowStrength: 10,
        opacity: 0.2,
        width: 230,
        borderRadius: BorderRadius.circular(50),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Let's go !".toUpperCase(),
              style: GoogleFonts.roboto(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.w900,
              ),
            ),
            SizedBox(width: 10),
            Image.asset(
              'assets/shotglass.png',
              width: 25,
            )
          ],
        ),
      ),
    );
  }
}