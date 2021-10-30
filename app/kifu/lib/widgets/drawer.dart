// ignore_for_file: prefer_const_constructors
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kifu/pages/home_page.dart';
import 'package:kifu/pages/login_page.dart';
import 'package:kifu/utils/routes.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int donations = 0;
    return Drawer(
      child: Container(
        color: Colors.lightGreen.shade600,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.lightGreen.shade900),
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.lightGreen.shade900),
                accountName: Text(
                  "Raghav Agrawal",
                  style: TextStyle(
                      fontFamily: GoogleFonts.lato().fontFamily,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                accountEmail: Text("araghav2003@gmail.com",
                    style: TextStyle(
                        fontFamily: GoogleFonts.lato().fontFamily,
                        fontWeight: FontWeight.bold)),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://cdn.icon-icons.com/icons2/2506/PNG/512/user_icon_150670.png'),
                ),
              ),
            ),
            ListTile(
              title: Text(
                "Donations: ₹ $donations",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                textScaleFactor: 1.2,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                textScaleFactor: 1.2,
              ),
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.homeRoute);
              },
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.money_dollar,
                color: Colors.white,
              ),
              title: Text(
                "Donate",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                textScaleFactor: 1.2,
              ),
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.scheduleRoute);
              },
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.arrow_2_circlepath,
                color: Colors.white,
              ),
              title: Text(
                "History",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                textScaleFactor: 1.2,
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.bell,
                color: Colors.white,
              ),
              title: Text(
                "Notifications",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                textScaleFactor: 1.2,
              ),
            ),
            SizedBox(
              height: 100,
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.settings,
                color: Colors.white,
              ),
              title: Text(
                "Settings",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                textScaleFactor: 1.2,
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.loginRoute);
              },
              leading: Icon(
                CupertinoIcons.arrow_left_circle_fill,
                color: Colors.white,
              ),
              title: Text(
                "Log Out",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                textScaleFactor: 1.2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
