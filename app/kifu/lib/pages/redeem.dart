import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kifu/models/user_data.dart';
import 'package:kifu/utils/routes.dart';
import 'package:kifu/widgets/drawer.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:convert';
import 'package:kifu/models/data.dart';

class RedeemPage extends StatefulWidget {
  // UserData userData;
  //HomePage({Key? key, required this.userData}) : super(key: key);
  @override
  State<RedeemPage> createState() => _RedeemPageState();
}

class _RedeemPageState extends State<RedeemPage> {
  int _value = 0;
  int points = 547;
  List<Marker> allMarkers = [];
  final addpoints = 9;

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Redeem",
          style: TextStyle(
            fontFamily: GoogleFonts.lato().fontFamily,
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 25,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            //children: [Text(userData.userId), Text(userData.identifierType)],
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
                child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.lightGreen.shade800,
                      Colors.white,
                    ],
                    stops: [
                      0.3,
                      0.9,
                    ],
                  )),
                  width: 450,
                  height: 170,
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/money.png",
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text(
                              "Your Points",
                              style: TextStyle(
                                  fontFamily: GoogleFonts.lato().fontFamily,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 18),
                            ),
                            Text(
                              "$points",
                              style: TextStyle(
                                fontFamily: GoogleFonts.lato().fontFamily,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(255, 224, 0, 1),
                                fontSize: 53,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Text("Your last donation gave you $addpoints points",
                  style: TextStyle(
                    fontFamily: GoogleFonts.lato().fontFamily,
                    color: Colors.black,
                    fontSize: 17,
                  )),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Text(
                      "Available Options ",
                      style: TextStyle(
                        fontFamily: GoogleFonts.lato().fontFamily,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 25,
                      ),
                    ),
                    SizedBox(
                      width: 90,
                    ),
                    Text(
                      " ₹ 54",
                      style: TextStyle(
                        fontFamily: GoogleFonts.lato().fontFamily,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Card(
                      child: ListTile(
                        leading: Image.asset("assets/images/netflix.png"),
                        title: Text(
                          "Netflix",
                          style: TextStyle(
                            fontFamily: GoogleFonts.lato().fontFamily,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                        trailing: Text("250 credits"),
                      ),
                    ),
                    Card(
                      child: ListTile(
                        leading: Image.asset("assets/images/itunes.png"),
                        title: Text(
                          "Itunes",
                          style: TextStyle(
                            fontFamily: GoogleFonts.lato().fontFamily,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                        trailing: Text("250 credits"),
                      ),
                    ),
                    Card(
                      child: ListTile(
                        leading: Image.asset("assets/images/amazon.png"),
                        title: Text(
                          "Amazon",
                          style: TextStyle(
                            fontFamily: GoogleFonts.lato().fontFamily,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                        trailing: Text("1000 credits"),
                      ),
                    ),
                    Card(
                      child: ListTile(
                        leading: Image.asset("assets/images/starbucks.png"),
                        title: Text(
                          "Starbucks",
                          style: TextStyle(
                            fontFamily: GoogleFonts.lato().fontFamily,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                        trailing: Text("500 credits"),
                      ),
                    ),
                    Card(
                      child: ListTile(
                        leading: Image.asset("assets/images/zomato.png"),
                        title: Text(
                          "Zomato",
                          style: TextStyle(
                            fontFamily: GoogleFonts.lato().fontFamily,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                        trailing: Text("500 credits"),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
