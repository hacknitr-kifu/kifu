import 'package:flutter/material.dart';
import 'package:kifu/utils/routes.dart';

class set_time extends StatelessWidget {
  const set_time({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, MyRoutes.thankRoute);
      }, // handle your image tap here
      child: Image.asset(
        'assets/three.jpg',
        // fit: BoxFit.cover, // this is the solution for border
        // width: 100.0,
        // height: 100.0,
      ),
    );
  }
}
