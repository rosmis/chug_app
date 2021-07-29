import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  Size get preferredSize => new Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        CupertinoButton(
            padding: EdgeInsets.fromLTRB(0.0, 10.0, 10.0, 0.0),
            child:
                Icon(CupertinoIcons.gear_alt, size: 35.0, color: Colors.white),
            onPressed: () {}),
      ],
      backgroundColor: Colors.transparent,
      elevation: 0,
    );
  }
}
