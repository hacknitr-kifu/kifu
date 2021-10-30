// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kifu/utils/routes.dart';
import 'package:sawo/sawo.dart';
import 'package:kifu/models/user_data.dart';
import 'package:kifu/pages/home_page.dart';
import 'dart:math' as math;

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // sawo object
  Sawo sawo = Sawo(
    apiKey: "7e9bc2bf-fcc7-4d67-ae32-c6289a6858b1",
    secretKey: "6176ed418140a809bb7cfe94rmxOt2XHiW7N3Apna3yfZ26F",
  );
  String name = "";
  final _formKey = GlobalKey<FormState>();
  int _value = 0;

  moveUsingEmail(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      sawo.signIn(
        context: context,
        identifierType: 'email',
        callback: payloadCallback,
      );
    }
  }

  moveUsingPhone(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      sawo.signIn(
        context: context,
        identifierType: 'phone_number_sms',
        callback: payloadCallback,
      );
    }
  }

  // user payload
  String user = "";

  void payloadCallback(context, payload) {
    if (payload == null || (payload is String && payload.length == 0)) {
      payload = "Hi, get out";
    }
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => HomePage(
            //userData: userDataFromJson(payload),
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30),
                    child: Image.asset(
                      "assets/images/k.png",
                      scale: 0.8,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Enter your name',
                        labelText: "Name",
                        labelStyle: TextStyle(
                            fontFamily: GoogleFonts.raleway().fontFamily,
                            fontSize: 25)),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Username nannot be empty";
                      }
                      return null;
                    },
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                      decoration: InputDecoration(
                          hintText: 'DD/MM/YY',
                          labelText: "Date of Birth",
                          labelStyle: TextStyle(
                              fontFamily: GoogleFonts.raleway().fontFamily,
                              fontSize: 25)),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "DOB nannot be empty";
                        }
                        return null;
                      }),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    "Select your profile",
                    style: TextStyle(
                      fontFamily: GoogleFonts.raleway().fontFamily,
                      fontSize: 25,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () => setState(() => _value = 0),
                        child: Container(
                          child: Image.asset(
                            'assets/images/login1.png',
                            scale: _value == 0 ? 0.9 : 1.1,
                          ),
                        ),
                      ),
                      SizedBox(width: 4),
                      GestureDetector(
                        onTap: () => setState(() => _value = 1),
                        child: Container(
                          child: Image.asset(
                            'assets/images/login2.png',
                            scale: _value == 1 ? 0.9 : 1.1,
                          ),
                        ),
                      ),
                      SizedBox(width: 4),
                      GestureDetector(
                        onTap: () => setState(() => _value = 2),
                        child: Container(
                          child: Image.asset(
                            'assets/images/login3.png',
                            scale: _value == 2 ? 0.9 : 1.1,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 80,
                  ),
                  ElevatedButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Color.fromRGBO(62, 92, 85, 1),
                      minimumSize: Size(200, 60),
                    ),
                    onPressed: () => moveUsingEmail(context),
                    child: Text(
                      'Login with Email',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Color.fromRGBO(62, 92, 85, 1),
                      minimumSize: Size(200, 60),
                    ),
                    onPressed: () => moveUsingPhone(context),
                    child: Text(
                      'Login with Phone',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
