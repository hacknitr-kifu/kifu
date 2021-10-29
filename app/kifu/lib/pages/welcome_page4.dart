// ignore_for_file: prefer_const_constructors
// ignore_for_file:prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kifu/utils/routes.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:hexcolor/hexcolor.dart';

class WelcomePage4 extends StatelessWidget {
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
          Image.asset("assets/images/3.png"),
          SizedBox(
            height: 10,
          ),
          Image.asset("assets/images/welc3.png"),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
            child: Text(
              "Earn points by donating and redeem them to get discounts, coupons and gift-cards in 100+ online stores!  ",
              style: TextStyle(
                fontFamily: GoogleFonts.montserrat().fontFamily,
                fontSize: 19,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, MyRoutes.loginRoute);
            },
            style: TextButton.styleFrom(
                minimumSize: Size(200, 60),
                backgroundColor: Color.fromRGBO(62, 92, 85, 1)),
            child: Text(
              "Let's kifu!",
              style: TextStyle(
                fontFamily: GoogleFonts.nunito().fontFamily,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
