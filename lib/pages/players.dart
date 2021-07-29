import 'package:chug_app2/models/players/bottom_appbar.dart';
import 'package:flutter/material.dart';

import '../models/appbar_pregame.dart';
import '../models/players/textfield.dart';

class Players extends StatelessWidget {
  final List<UserName> tab = [
    UserName(text: "Joueur 1"),
  ];

  @override
  Widget build(BuildContext context) {
    print(tab);
    return Scaffold(
      backgroundColor: Color(0xff1b2530),
      extendBodyBehindAppBar: true,
      appBar: AppBarStart(),
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 80),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: tab,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBarPlayers(tab: tab),
    );
  }
}
