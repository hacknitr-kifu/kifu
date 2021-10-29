import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kifu/models/user_data.dart';
import 'package:kifu/utils/routes.dart';
import 'package:kifu/widgets/drawer.dart';

class HomePage extends StatefulWidget {
  // UserData userData;
  //HomePage({Key? key, required this.userData}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final name = "Raghav ";
  int _value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Hello $name 👋",
          style: TextStyle(
            fontFamily: GoogleFonts.lato().fontFamily,
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 25,
          ),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          //children: [Text(userData.userId), Text(userData.identifierType)],
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
              child: Container(
                color: Colors.amber,
                width: 500,
                height: 200,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    "Category",
                    style: TextStyle(
                      fontFamily: GoogleFonts.lato().fontFamily,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 25,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  GestureDetector(
                    onTap: () => setState(() => _value = 0),
                    child: Container(
                      child: Image.asset(
                        'assets/images/home1.png',
                        scale: _value == 0 ? 1 : 1.1,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => setState(() => _value = 1),
                    child: Container(
                      child: Image.asset(
                        'assets/images/home2.png',
                        scale: _value == 1 ? 1 : 1.1,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => setState(() => _value = 2),
                    child: Container(
                      child: Image.asset(
                        'assets/images/home3.png',
                        scale: _value == 2 ? 1 : 1.1,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    "Explore",
                    style: TextStyle(
                      fontFamily: GoogleFonts.lato().fontFamily,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 25,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                color: Colors.amber,
                width: 500,
                height: 150,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, MyRoutes.welcomeRoute2);
                      },
                      style: TextButton.styleFrom(
                          backgroundColor: Color.fromRGBO(62, 92, 85, 1)),
                      child: Text(
                        "Schedule Pickup",
                        style: TextStyle(
                          fontFamily: GoogleFonts.lato().fontFamily,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      )),
                )
              ],
            )
          ],
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
