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
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          title: Text("Your Items"),
        ),
        body: Container(
            width: 411,
            height: 774,
            child: Stack(children: <Widget>[
              Positioned(
                  top: 62,
                  left: 17,
                  child: Container(
                      width: 358,
                      height: 242,
                      child: Stack(children: <Widget>[
                        Positioned(
                            top: 0,
                            left: 0,
                            child: Container(
                                width: 358,
                                height: 242,
                                child: Stack(children: <Widget>[
                                  Positioned(
                                      top: 0,
                                      left: 0,
                                      child: Container(
                                          width: 358,
                                          height: 242,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(10),
                                              topRight: Radius.circular(10),
                                              bottomLeft: Radius.circular(10),
                                              bottomRight: Radius.circular(10),
                                            ),
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 0.5),
                                                  offset: Offset(0, 4),
                                                  blurRadius: 10)
                                            ],
                                            color:
                                                Color.fromRGBO(30, 109, 86, 1),
                                            border: Border.all(
                                              color:
                                                  Color.fromRGBO(3, 55, 45, 1),
                                              width: 1,
                                            ),
                                          ))),
                                  Positioned(
                                      top: 23,
                                      left: 15,
                                      child: Container(
                                          width: 327,
                                          height: 88,
                                          child: Stack(children: <Widget>[
                                            Positioned(
                                                top: 0,
                                                left: 0,
                                                child: Container(
                                                    width: 327,
                                                    height: 88,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        topLeft:
                                                            Radius.circular(10),
                                                        topRight:
                                                            Radius.circular(10),
                                                        bottomLeft:
                                                            Radius.circular(10),
                                                        bottomRight:
                                                            Radius.circular(10),
                                                      ),
                                                      color: Color.fromRGBO(
                                                          255, 255, 255, 1),
                                                    ))),
                                            Positioned(
                                                top: 14,
                                                left: 19,
                                                child: Container(
                                                    width: 69,
                                                    height: 64,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        topLeft:
                                                            Radius.circular(
                                                                100),
                                                        topRight:
                                                            Radius.circular(
                                                                100),
                                                        bottomLeft:
                                                            Radius.circular(
                                                                100),
                                                        bottomRight:
                                                            Radius.circular(
                                                                100),
                                                      ),
                                                      image: DecorationImage(
                                                          image: AssetImage(
                                                              'assets/images/Unsplashwxuzs9xr49m.png'),
                                                          fit: BoxFit.fitWidth),
                                                    ))),
                                            Positioned(
                                                top: 34,
                                                left: 100,
                                                child: Text(
                                                  'Apple',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      color: Color.fromRGBO(
                                                          0, 0, 0, 1),
                                                      fontSize: 30,
                                                      letterSpacing:
                                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      height: 1),
                                                )),
                                            Positioned(
                                                top: 29,
                                                left: 229,
                                                child: Text(
                                                  '- 12 +',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      color: Color.fromRGBO(
                                                          0, 0, 0, 1),
                                                      fontSize: 35,
                                                      letterSpacing:
                                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      height: 1),
                                                )),
                                          ]))),
                                  Positioned(
                                      top: 126,
                                      left: 15,
                                      child: Container(
                                          width: 327,
                                          height: 88,
                                          child: Stack(children: <Widget>[
                                            Positioned(
                                                top: 0,
                                                left: 0,
                                                child: Container(
                                                    width: 327,
                                                    height: 88,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        topLeft:
                                                            Radius.circular(10),
                                                        topRight:
                                                            Radius.circular(10),
                                                        bottomLeft:
                                                            Radius.circular(10),
                                                        bottomRight:
                                                            Radius.circular(10),
                                                      ),
                                                      color: Color.fromRGBO(
                                                          255, 255, 255, 1),
                                                    ))),
                                            Positioned(
                                                top: 32,
                                                left: 100,
                                                child: Text(
                                                  'Banana',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      color: Color.fromRGBO(
                                                          0, 0, 0, 1),
                                                      fontSize: 30,
                                                      letterSpacing:
                                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      height: 1),
                                                )),
                                            Positioned(
                                                top: 29,
                                                left: 242,
                                                child: Text(
                                                  '- 3 +',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      color: Color.fromRGBO(
                                                          0, 0, 0, 1),
                                                      fontSize: 35,
                                                      letterSpacing:
                                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      height: 1),
                                                )),
                                          ]))),
                                ]))),
                        Positioned(
                            top: 138,
                            left: 34,
                            child: Container(
                                width: 69,
                                height: 64,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(100),
                                    topRight: Radius.circular(100),
                                    bottomLeft: Radius.circular(100),
                                    bottomRight: Radius.circular(100),
                                  ),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/Unsplashdktugvgpota.png'),
                                      fit: BoxFit.fitWidth),
                                ))),
                      ]))),
              Positioned(
                  top: 341,
                  left: 42,
                  child: Container(
                      width: 330,
                      height: 52,
                      child: Stack(children: <Widget>[
                        Positioned(
                            top: 0,
                            left: 0,
                            child: Container(
                                width: 330,
                                height: 52,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color.fromRGBO(0, 0, 0, 0.25),
                                        offset: Offset(0, 4),
                                        blurRadius: 4)
                                  ],
                                  color: Color.fromRGBO(30, 109, 86, 1),
                                ))),
                        Positioned(
                            top: 12,
                            left: 52,
                            child: Text(
                              '+ Add more items',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  fontSize: 27,
                                  letterSpacing:
                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1),
                            )),
                      ]))),
              Positioned(
                  top: 425,
                  left: 42,
                  child: Container(
                      width: 330,
                      height: 52,
                      child: Stack(children: <Widget>[
                        Positioned(
                            top: 0,
                            left: 0,
                            child: Container(
                                width: 330,
                                height: 52,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color.fromRGBO(0, 0, 0, 0.25),
                                        offset: Offset(0, 4),
                                        blurRadius: 4)
                                  ],
                                  color: Color.fromRGBO(0, 0, 0, 1),
                                ))),
                        Positioned(
                            top: 13.220338821411133,
                            left: 53.8369140625,
                            child: Text(
                              'Confirm Selection',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  fontSize: 27,
                                  letterSpacing:
                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1),
                            )),
                      ]))),
              Positioned(
                  top: 520,
                  left: 0,
                  child: Container(
                      width: 411,
                      height: 254,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30),
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.25),
                              offset: Offset(0, -4),
                              blurRadius: 4)
                        ],
                        color: Color.fromRGBO(245, 245, 245, 1),
                      ))),
              Positioned(
                  top: 546,
                  left: 10,
                  child: Text(
                    'Are you sure you want to confirm selection?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontSize: 20,
                        letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1),
                  )),
              Positioned(
                  top: 620,
                  left: 71,
                  child: Container(
                      width: 276,
                      height: 53,
                      child: Stack(children: <Widget>[
                        Positioned(
                            top: 0,
                            left: 0,
                            child: Container(
                                width: 113,
                                height: 53,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                  ),
                                  color: Color.fromRGBO(30, 109, 86, 1),
                                ))),
                        Positioned(
                            top: 0,
                            left: 163,
                            child: Container(
                                width: 113,
                                height: 53,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                  ),
                                  color: Color.fromRGBO(190, 33, 47, 1),
                                ))),
                        Positioned(
                            top: 12,
                            left: 32,
                            child: Text(
                              'Yes',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  fontSize: 30,
                                  letterSpacing:
                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1),
                            )),
                        Positioned(
                            top: 12,
                            left: 200,
                            child: Text(
                              'No',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  fontSize: 30,
                                  letterSpacing:
                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1),
                            )),
                      ]))),
            ])));
  }
}
