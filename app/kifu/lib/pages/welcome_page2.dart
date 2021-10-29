// ignore_for_file: prefer_const_constructors
// ignore_for_file:prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kifu/utils/routes.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:hexcolor/hexcolor.dart';

class WelcomePage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 32),
            child: Row(
              children: [
                Image.asset(
                  "assets/images/k.png",
                  scale: 0.9,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Image.asset("assets/images/1.png"),
          SizedBox(
            height: 25,
          ),
          Image.asset("assets/images/welc1.png"),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 0),
            child: Text(
              "Your one-stop destination for",
              style: TextStyle(
                  fontFamily: GoogleFonts.montserrat().fontFamily,
                  fontSize: 19,
                  fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            ),
          ),
          Text(
            "donating books, food, clothes and more!",
            style: TextStyle(
                fontFamily: GoogleFonts.montserrat().fontFamily,
                fontSize: 19,
                fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 100,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, MyRoutes.welcomeRoute3);
            },
            style: TextButton.styleFrom(
                backgroundColor: Color.fromRGBO(62, 92, 85, 1)),
            child: Text(
              "Next",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
