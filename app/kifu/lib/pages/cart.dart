import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kifu/models/user_data.dart';
import 'package:kifu/utils/routes.dart';
import 'package:kifu/widgets/drawer.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Your Items",
          style: TextStyle(
            fontFamily: GoogleFonts.lato().fontFamily,
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 25,
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Column(
            children: [
              Card(
                child: ListTile(
                  leading: Image.asset("assets/images/apple.png"),
                  title: Text(
                    "Apple",
                    style: TextStyle(
                      fontFamily: GoogleFonts.lato().fontFamily,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                  trailing: Text(
                    "- 1 +",
                    style: TextStyle(
                      fontFamily: GoogleFonts.lato().fontFamily,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Image.asset("assets/images/jeans.jpg"),
                  title: Text(
                    "Jeans",
                    style: TextStyle(
                      fontFamily: GoogleFonts.lato().fontFamily,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                  trailing: Text(
                    "- 1 +",
                    style: TextStyle(
                      fontFamily: GoogleFonts.lato().fontFamily,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Image.asset("assets/images/book.jpg"),
                  title: Text(
                    "Books",
                    style: TextStyle(
                      fontFamily: GoogleFonts.lato().fontFamily,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                  trailing: Text(
                    "- 1 +",
                    style: TextStyle(
                      fontFamily: GoogleFonts.lato().fontFamily,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 80,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, MyRoutes.imageRoute);
                  },
                  style: TextButton.styleFrom(
                      backgroundColor: Color.fromRGBO(62, 92, 85, 1),
                      minimumSize: Size(160, 60),
                      maximumSize: Size(200, 60)),
                  child: Text(
                    "Add More Items",
                    style: TextStyle(
                      fontFamily: GoogleFonts.lato().fontFamily,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  )),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, MyRoutes.timeRoute);
                  },
                  style: TextButton.styleFrom(
                      backgroundColor: Color.fromRGBO(62, 92, 85, 1),
                      minimumSize: Size(160, 60),
                      maximumSize: Size(200, 60)),
                  child: Text(
                    "Confirm Selection",
                    style: TextStyle(
                      fontFamily: GoogleFonts.lato().fontFamily,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  )),
            ],
          )
        ],
      ),
    );
  }
}
