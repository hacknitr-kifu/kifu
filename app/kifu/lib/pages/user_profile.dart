import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kifu/models/data.dart';
import 'package:kifu/models/user_data.dart';
import 'package:kifu/utils/routes.dart';
import 'package:kifu/widgets/drawer.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:kifu/widgets/item_widget.dart';
import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;

class UserProfile extends StatefulWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  _UserProfileState createState() => _UserProfileState();
}

// Future<http.Response> fetchAlbum() {
//   return http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));
// }

class _UserProfileState extends State<UserProfile> {
  @override
  // void initState() {
  //   super.initState();
  //   loadData();
  // }

  // loadData() async {
  //   final dataJson = await rootBundle.loadString("assets/files/data.json");
  //   final decodedData = jsonDecode(dataJson);
  //   final productsData = decodedData["users"];
  //   UserModel.userdata = List.from(productsData)
  //       .map<Item>((item) => Item.fromMap(item))
  //       .toList();
  //   setState(() {});
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Donations 💵",
          style: TextStyle(
            fontFamily: GoogleFonts.lato().fontFamily,
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 25,
          ),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => Card(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
                children: <Widget>[Text('Note Title'), Text('Note Text')]),
          ),
        ),
        itemCount: 50,
      ),
    );
  }
}
