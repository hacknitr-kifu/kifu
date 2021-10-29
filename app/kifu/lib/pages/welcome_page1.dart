// ignore_for_file: prefer_const_constructors
// ignore_for_file:prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kifu/utils/routes.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:hexcolor/hexcolor.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          SizedBox(
            height: 300,
            width: 100,
          ),
          Text("Welcome to",
              style: TextStyle(
                fontFamily: GoogleFonts.raleway().fontFamily,
                fontSize: 25,
              )),
          SizedBox(height: 20),
          GradientText('Kifu',
              colors: [HexColor('#16A085'), HexColor('#F4D03F')],
              style: TextStyle(
                fontFamily: GoogleFonts.redRose().fontFamily,
                fontSize: 120,
                letterSpacing: 0,
                height: 1,
              )),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, MyRoutes.welcomeRoute2);
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
