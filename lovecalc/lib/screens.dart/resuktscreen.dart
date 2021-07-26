import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lovecalc/model/provider.dart';
import 'package:lovecalc/screens.dart/homepage.dart';

class ResultPage extends StatefulWidget {
  final String personName1;
  final String personName2;
  ResultPage({this.personName1, this.personName2});

  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  int loveCheck = Random().nextInt(101);
  String loveText;

  Brain _brain = Brain();
  void upDate(int loveScore) {
    setState(() {
      loveText = _brain.getMsg(loveScore);
    });
  }

  @override
  void initState() {
    upDate(loveCheck);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              'assets/kiss.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  widget.personName1,
                  style: GoogleFonts.lobster(
                      textStyle: TextStyle(
                          color: Colors.black45,
                          fontSize: 26,
                          fontWeight: FontWeight.w600)),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  loveCheck.toString() + '%',
                  style: GoogleFonts.lobster(
                      textStyle: TextStyle(
                          color: Colors.black45,
                          fontSize: 36,
                          fontWeight: FontWeight.w600)),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  widget.personName2,
                  style: GoogleFonts.lobster(
                      textStyle: TextStyle(
                          color: Colors.black45,
                          fontSize: 26,
                          fontWeight: FontWeight.w600)),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  loveText,
                  style: GoogleFonts.lobster(
                      textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 26,
                          fontWeight: FontWeight.w600)),
                ),
                SizedBox(
                  height: 50,
                ),
                RaisedButton(
                  shape: StadiumBorder(),
                  color: Colors.amberAccent,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return HomePage();
                      }),
                    );
                  },
                  child: Text(
                    'Check Another',
                    style: TextStyle(
                      color: Colors.pink,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
