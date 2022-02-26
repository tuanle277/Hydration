import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:hydration_app/shelves_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _fbApp = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      debugShowCheckedModeBanner: false,
      home: FutureBuilder(
        future: _fbApp,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            print('You have an error! ${snapshot.error.toString()}');
            return const Text("There is an error");
          } else if (snapshot.hasData) {
            return const MyHomePage();
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _cupDrunk = 0;
  int flowerPlanted = 0;
  int flowerGrown = 0;
  String treeAsset = 'assets/images/plant_1.png';

  double fromRight = 0.2;

  double treeHeight = 0.15;
  double treeWidth = 0.9;

  List divider = [20, 40, 60, 80, 100];
  List divider10 = [10, 30, 50, 70, 90];

  void plantGrow() {
    if (10 <= _cupDrunk && _cupDrunk < 20 ||
        30 <= _cupDrunk && _cupDrunk < 40 ||
        50 <= _cupDrunk && _cupDrunk < 60 ||
        70 <= _cupDrunk && _cupDrunk < 80 ||
        90 <= _cupDrunk && _cupDrunk < 100) {
      setState(
        () {
          treeAsset = 'assets/images/plant_2.png';
          fromRight = 0.14;
          treeHeight = 0.21;
        },
      );
    } else if (divider.contains(_cupDrunk)) {
      setState(
        () {
          treeAsset = 'assets/images/plant_3.png';
          fromRight = 0.15;
          treeHeight = 0.25;
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              behavior: SnackBarBehavior.floating,
              backgroundColor: Colors.white,
              content: Text(
                "Congrats, you have grown a flower!",
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Sherry',
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          );
        },
      );
    } else {
      setState(
        () {
          treeAsset = 'assets/images/plant_1.png';
          fromRight = 0.2;
          treeHeight = 0.15;
        },
      );
    }

    if (divider.contains(_cupDrunk)) {
      setState(
        () {
          flowerGrown += 1;
        },
      );
    }
  }

  void flowerStates() {
    if (10 <= _cupDrunk && _cupDrunk < 20 ||
        30 <= _cupDrunk && _cupDrunk < 40 ||
        50 <= _cupDrunk && _cupDrunk < 60 ||
        70 <= _cupDrunk && _cupDrunk < 80 ||
        90 <= _cupDrunk && _cupDrunk < 100) {
      setState(
        () {
          print("initialized");

          treeAsset = 'assets/images/plant_2.png';
          fromRight = 0.14;
          treeHeight = 0.21;
        },
      );
    } else if (divider.contains(_cupDrunk)) {
      print("initialized");
      setState(
        () {
          treeAsset = 'assets/images/plant_3.png';
          fromRight = 0.15;
          treeHeight = 0.25;
        },
      );
    } else {
      setState(
        () {
          print("initialized");

          treeAsset = 'assets/images/plant_1.png';
          fromRight = 0.2;
          treeHeight = 0.15;
        },
      );
    }
  }

  @override
  initState() {
    print("init");
    flowerStates();
    super.initState();
  }

  void drink() {
    setState(
      () {
        _cupDrunk++;
      },
    );
    plantGrow();
  }

  void _resetApp() {
    print("did to");
    setState(
      () {
        _cupDrunk = 0;
        flowerPlanted = 0;
        flowerGrown = 0;
        treeAsset = 'assets/images/plant_1.png';
        fromRight = 0.2;
        treeHeight = 0.15;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);

    return Scaffold(
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   child: Icon(
      //     Icons.umbrella,
      //   ),
      // ),
      body: Container(
        height: mediaQuery.size.height,
        width: mediaQuery.size.width,
        color: const Color(0xff92C2C6),
        child: Stack(
          children: <Widget>[
            // Padding(
            //   padding: const EdgeInsets.only(
            //     bottom: 10,
            //   ),
            //   child: Text(
            //     'Your water intake today',
            //     style: TextStyle(
            //       color: Colors.grey[600],
            //     ),
            //   ),
            // ),
            Positioned(
              top: 0,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                          color: const Color(
                            0xffE6DAD1,
                          ),
                          width: mediaQuery.size.width,
                          height: mediaQuery.size.height * 0.15),
                      GestureDetector(
                        onTap: () => _resetApp(),
                        child: const Positioned.fill(
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: 15,
                                top: 10,
                              ),
                              child: Text(
                                "reset",
                                style: TextStyle(
                                  fontFamily: 'Sherry',
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned.fill(
                        child: Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.only(
                              top: 10,
                            ),
                            child: Image.asset(
                              'assets/images/logo 1.png',
                              height: mediaQuery.size.height * 0.08,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      SizedBox(
                        width: mediaQuery.size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Stack(
                              children: <Widget>[
                                Image.asset(
                                  'assets/images/sign_cups.png',
                                  width: mediaQuery.size.width * 0.34,
                                ),
                                Positioned(
                                  left: mediaQuery.size.width * 0.22,
                                  top: mediaQuery.size.height * 0.04,
                                  child: Text(
                                    '$_cupDrunk',
                                    style: const TextStyle(
                                      fontSize: 24,
                                      fontFamily: 'Sherry',
                                      color: Color(
                                        0xff944210,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Image.asset(
                              'assets/images/sign_grow.png',
                              width: mediaQuery.size.width * 0.25,
                            ),
                            InkWell(
                              child: Image.asset(
                                'assets/images/sign_mygarden.png',
                                width: mediaQuery.size.width * 0.38,
                              ),
                              onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ShelvesScreen(
                                    flowerPlanted,
                                    _cupDrunk,
                                    flowerGrown,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        color: const Color(
                          0xffDDC09E,
                        ),
                        width: mediaQuery.size.width,
                        height: mediaQuery.size.height * 0.01,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              top: mediaQuery.size.height * 0.2,
              left: mediaQuery.size.width * 0.1,
              child: Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: mediaQuery.size.width,
                  height: mediaQuery.size.height,
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        bottom: mediaQuery.size.height * 0.65,
                        right: mediaQuery.size.width * fromRight,
                        child: Image.asset(
                          treeAsset,
                          height: mediaQuery.size.height * treeHeight,
                          width: mediaQuery.size.width * treeWidth,
                        ),
                      ),
                      Positioned(
                        bottom: mediaQuery.size.height * 0.57,
                        child: SizedBox(
                          height: mediaQuery.size.height * 0.13,
                          width: mediaQuery.size.width * 0.8,
                          child: Image.asset(
                            'assets/images/plantpot.png',
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: mediaQuery.size.height * 0.25,
                        child: Image.asset(
                          'assets/images/table.png',
                          height: mediaQuery.size.height * 0.4,
                          width: mediaQuery.size.width * 0.8,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Stack(
                children: [
                  Container(
                      color: const Color(0xffCDA87E),
                      width: mediaQuery.size.width,
                      height: mediaQuery.size.height * 0.2),
                  Positioned(
                    bottom: 0,
                    child: Container(
                        color: const Color(0xffAF7C45),
                        width: mediaQuery.size.width,
                        height: mediaQuery.size.height * 0.02),
                  ),
                ],
              ),
            ),
            Positioned.fill(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(
                    bottom: 40,
                  ),
                  child: ElevatedButton(
                    onPressed: drink,
                    child: Stack(
                      children: <Widget>[
                        Image.asset(
                          'assets/images/button_image.png',
                        ),
                      ],
                    ),
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(
                        // Color(
                        //   0xff1BAAE6,
                        // ),
                        Colors.white,
                      ),
                      side: MaterialStateProperty.all(
                        const BorderSide(
                          width: 4.0,
                          color: Colors.white,
                        ),
                      ),
                      fixedSize: MaterialStateProperty.all(
                        const Size(
                          140,
                          140,
                        ),
                      ),
                      elevation: MaterialStateProperty.all(8.0),
                      backgroundColor: MaterialStateProperty.all(
                        const Color(0xff1BAAE6),
                      ),
                      shape: MaterialStateProperty.all<CircleBorder>(
                        const CircleBorder(),
                      ),
                    ),
                  ),
                ),

                // RichText(
                //   text: TextSpan(
                //     children: <TextSpan>[
                //       TextSpan(
                //         text: '${waterIntake} /',
                //         style: TextStyle(
                //           letterSpacing: 1,
                //           fontSize: 34,
                //           color: Colors.black,
                //         ),
                //       ),
                //       TextSpan(
                //         text: ' ${waterRequired}',
                //         style: TextStyle(
                //           fontFamily: 'Helvetica',
                //           fontWeight: FontWeight.bold,
                //           letterSpacing: 1,
                //           fontSize: 34,
                //         ),
                //       )
                //     ],
                //   ),
                // ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
