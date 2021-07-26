import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lovecalc/screens.dart/resuktscreen.dart';

class LoveScreen extends StatelessWidget {
  TextEditingController person1Controller = TextEditingController();
  TextEditingController person2Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              'assets/me.gif',
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Person 1',
                  style: GoogleFonts.lobster(
                      textStyle: TextStyle(
                          color: Colors.red,
                          fontSize: 26,
                          fontWeight: FontWeight.w600)),
                ),
                Container(
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                      color: Color(0xFFEFF3F6),
                      borderRadius: BorderRadius.circular(100.0),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.1),
                          offset: Offset(6, 2),
                          blurRadius: 6.0,
                          spreadRadius: 3.0,
                        ),
                        BoxShadow(
                          color: Color.fromRGBO(255, 255, 255, 0.9),
                          offset: Offset(-6, -2),
                          blurRadius: 6.0,
                          spreadRadius: 3.0,
                        ),
                      ]),
                  child: TextFormField(
                    controller: person1Controller,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      icon: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Icon(
                          Icons.person,
                          color: Colors.blueGrey,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Love',
                  style: GoogleFonts.lobster(
                      textStyle: TextStyle(
                          color: Colors.pink,
                          fontSize: 26,
                          fontWeight: FontWeight.w600)),
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  'Person 2',
                  style: GoogleFonts.lobster(
                      textStyle: TextStyle(
                          color: Colors.red,
                          fontSize: 26,
                          fontWeight: FontWeight.w600)),
                ),
                Container(
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                      color: Color(0xFFEFF3F6),
                      borderRadius: BorderRadius.circular(100.0),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.1),
                          offset: Offset(6, 2),
                          blurRadius: 6.0,
                          spreadRadius: 3.0,
                        ),
                        BoxShadow(
                          color: Color.fromRGBO(255, 255, 255, 0.9),
                          offset: Offset(-6, -2),
                          blurRadius: 6.0,
                          spreadRadius: 3.0,
                        ),
                      ]),
                  child: TextFormField(
                    controller: person2Controller,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      icon: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Icon(
                          Icons.person,
                          color: Colors.blueGrey,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                RaisedButton(
                  shape: StadiumBorder(),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return ResultPage(
                            personName1: person1Controller.text,
                            personName2: person2Controller.text);
                      }),
                    );
                  },
                  child: Text('Result'),
                  color: Colors.red,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
