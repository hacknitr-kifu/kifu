import 'package:flutter/material.dart';
import 'package:kifu/utils/routes.dart';

class last extends StatelessWidget {
  const last({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, MyRoutes.homeRoute);
      }, // handle your image tap here
      child: Image.asset(
        'assets/one.png',
        // fit: BoxFit.cover, // this is the solution for border
        // width: 100.0,
        // height: 100.0,
      ),
    );
  }
}
