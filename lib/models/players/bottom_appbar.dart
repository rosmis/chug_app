import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

import '../go_button_pregame.dart';
import '../players/textfield.dart';

class BottomAppBarPlayers extends StatefulWidget {
  final List tab;

  const BottomAppBarPlayers({required this.tab});

  @override
  _BottomAppBarPlayersState createState() => _BottomAppBarPlayersState();
}

class _BottomAppBarPlayersState extends State<BottomAppBarPlayers> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.transparent,
      elevation: 0.0,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 25.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GoButtonCTA(),
            GlassmorphicContainer(
              width: 60.0,
              height: 60.0,
              borderRadius: 50.0,
              blur: 20.0,
              border: 2.0,
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
                child: FloatingActionButton(
                  splashColor: Colors.transparent,
                  backgroundColor: Colors.transparent,
                  elevation: 0.0,
                  onPressed: () {
                    setState(() => {
                          widget.tab.add(
                            UserName(text: 'Joueur ${widget.tab.length + 1}'),
                          )
                        });
                    // print(widget.tab);
                  },
                  child: Icon(
                    Icons.add,
                    size: 40.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
