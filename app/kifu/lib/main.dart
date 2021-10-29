import 'package:flutter/material.dart';
import 'package:kifu/pages/login_page.dart';
import 'package:kifu/pages/welcome_page1.dart';
import 'package:kifu/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kifu/pages/welcome_page2.dart';
import 'package:kifu/pages/welcome_page3.dart';
import 'package:kifu/pages/welcome_page4.dart';
import 'package:kifu/pages/home_page.dart';
import 'package:hexcolor/hexcolor.dart';

void main() {
  runApp(kifuApp());
}

class kifuApp extends StatelessWidget {
  const kifuApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.green,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => HomePage(),
        MyRoutes.welcomeRoute2: (context) => WelcomePage2(),
        MyRoutes.welcomeRoute3: (context) => WelcomePage3(),
        MyRoutes.welcomeRoute4: (context) => WelcomePage4(),
        MyRoutes.loginRoute: (context) => LoginPage(),
      },
    );
  }
}
