import 'package:flutter/material.dart';
import 'package:kifu/utils/routes.dart';

class thank extends StatelessWidget {
  const thank({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, MyRoutes.lastRoute);
      }, // handle your image tap here
      child: Image.asset(
        'assets/two.png',
        // fit: BoxFit.cover, // this is the solution for border
        // width: 100.0,
        // height: 100.0,
      ),
    );
  }
}
