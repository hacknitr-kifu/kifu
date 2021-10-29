import 'package:flutter/material.dart';
import 'package:kifu/models/user_data.dart';

class HomePage extends StatelessWidget {
  UserData userData;
  HomePage({Key? key, required this.userData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text(userData.userId), Text(userData.identifierType)],
        ),
      ),
    );
  }
}
