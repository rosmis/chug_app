import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class AppBarStart extends StatelessWidget implements PreferredSizeWidget {
  Size get preferredSize => new Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: SafeArea(
        top: true,
        child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: CupertinoButton(
            padding: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
            child: Icon(
              CupertinoIcons.arrow_left_circle,
              size: 30.0,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Image.asset('assets/logo.png'),
          centerTitle: true,
          actions: [
            CupertinoButton(
                padding: EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 0.0),
                child: Icon(CupertinoIcons.gear_alt,
                    size: 30.0, color: Colors.white),
                onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
