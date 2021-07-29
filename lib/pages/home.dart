import 'package:flutter/material.dart';

import '../models/home/appbar_home.dart';
import '../models/home/gobutton_home.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: MyAppBar(),
      body: Container(
          decoration: BoxDecoration(
            // color: Color(0xff1b2530),
            image: DecorationImage(
              //alignment: Alignment(-0.42, 0),
              fit: BoxFit.fitHeight,
              image: AssetImage(
                'assets/home_bg.png',
              ),
            ),
          ),
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                'assets/logo+baseline.png',
                // alignment: Alignment(0, -0.6),
              ),
              GoButton(),
            ],
          )),
    );
  }
}