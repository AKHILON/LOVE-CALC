import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lovecalc/screens.dart/loveScreen.dart';
import 'package:page_transition/page_transition.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    Timer(
        Duration(seconds: 5),
        () => Navigator.pushReplacement(
            context,
            PageTransition(
              child: LoveScreen(),
              type: PageTransitionType.bottomToTop,
            )));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      body: Stack(children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Image.asset(
            'assets/love.gif',
            fit: BoxFit.cover,
          ),
        ),
        Center(
          child: Text(
            'Love You',
            style: GoogleFonts.lobster(
                textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.w600)),
          ),
        ),
      ]),
    );
  }
}
