import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kifu/models/user_data.dart';
import 'package:kifu/utils/routes.dart';
import 'package:kifu/widgets/drawer.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomePage extends StatefulWidget {
  // UserData userData;
  //HomePage({Key? key, required this.userData}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final name = "Raghav ";
  int _value = 0;
  final points = 547;

  static const _initialCameraPosition = CameraPosition(
    target: LatLng(28.4595, 77.0266),
    zoom: 11.5,
  );

  late GoogleMapController _googleMapController;

  @override
  void dispose() {
    _googleMapController.dispose();
    super.dispose();
  }

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
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            //children: [Text(userData.userId), Text(userData.identifierType)],
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
                child: Container(
                  width: 450,
                  height: 20,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 70,
                      ),
                      Text("Let's help others!")
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
                child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.lightGreen.shade800,
                      Colors.white,
                    ],
                    stops: [
                      0.3,
                      0.9,
                    ],
                  )),
                  width: 450,
                  height: 170,
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/money.png",
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text(
                              "Your Points",
                              style: TextStyle(
                                  fontFamily: GoogleFonts.lato().fontFamily,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 18),
                            ),
                            Text(
                              "$points",
                              style: TextStyle(
                                fontFamily: GoogleFonts.lato().fontFamily,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(255, 224, 0, 1),
                                fontSize: 53,
                              ),
                            ),
                            ElevatedButton(
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, MyRoutes.welcomeRoute2);
                                },
                                style: TextButton.styleFrom(
                                  backgroundColor:
                                      Color.fromRGBO(62, 92, 85, 1),
                                  minimumSize: Size(60, 30),
                                ),
                                child: Text(
                                  "Redeem",
                                  style: TextStyle(
                                    fontFamily: GoogleFonts.lato().fontFamily,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),
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
                  child: GoogleMap(
                    myLocationButtonEnabled: false,
                    zoomControlsEnabled: false,
                    initialCameraPosition: _initialCameraPosition,
                  ),
                  width: 500,
                  height: 150,
                ),
<<<<<<< Updated upstream
=======
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                child: Stack(children: [
                  GoogleMap(
                    myLocationButtonEnabled: false,
                    zoomControlsEnabled: false,
                    initialCameraPosition: _initialCameraPosition,
                  ),
                  FloatingActionButton(
                      onPressed: () => _googleMapController.animateCamera(
                          CameraUpdate.newCameraPosition(
                              _initialCameraPosition)))
                ]),
                width: 500,
                height: 150,
>>>>>>> Stashed changes
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 40),
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, MyRoutes.scheduleRoute);
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
      ),
      drawer: MyDrawer(),
    );
  }
}
