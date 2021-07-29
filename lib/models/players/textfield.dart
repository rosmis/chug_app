import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';



class UserName extends StatefulWidget {
  final String text;

  const UserName({required this.text});

  @override
  _UserNameState createState() => _UserNameState();
}

class _UserNameState extends State<UserName> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: GlassmorphicContainer(
        width: 350,
        height: 55,
        borderRadius: 50,
        blur: 20,
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
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 4.0, 16.0, 0.0),
            child: TextField(
              controller: _controller,
              cursorColor: Colors.white,
              style: TextStyle(
                color: Colors.white,
              ),
              decoration: InputDecoration(
                  suffixIcon: IconButton(
                    padding: EdgeInsets.all(0.0),
                    icon: Icon(
                      Icons.clear_rounded,
                      size: 28.0,
                      color: Colors.white,
                    ),
                    onPressed: () => _controller.clear(),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                  hintText: widget.text,
                  hintStyle: TextStyle(color: Colors.white)),
            ),
          ),
        ),
      ),
    );
  }
}
