import 'package:flutter/material.dart';

class ShelvesScreen extends StatefulWidget {
  final int treePlanted;
  final int cupDrunk;
  final int flowerGrown;

  const ShelvesScreen(this.treePlanted, this.cupDrunk, this.flowerGrown);

  @override
  _ShelvesScreenState createState() => _ShelvesScreenState();
}

class _ShelvesScreenState extends State<ShelvesScreen> {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    // List<Tree>_listOfTree[Tree()]

    return Scaffold(
      body: Container(
        height: mediaQuery.size.height,
        width: mediaQuery.size.width,
        color: const Color(0xff92C2C6),
        child: Stack(
          children: <Widget>[
            // Positioned(
            //   left: mediaQuery.size.width * 0.4,
            //   top: mediaQuery.size.height * 0.02,
            //   child: Image.asset(
            //     'assets/images/plantpot.png',
            //     height: 70,
            //   ),
            // ),
            Positioned(
              bottom: 0,
              child: Image.asset(
                'assets/images/garden_bg.png',
                height: mediaQuery.size.height * 0.93,
                width: mediaQuery.size.width,
                fit: BoxFit.fitWidth,
              ),
            ),
            Positioned(
              left: mediaQuery.size.width * 0.42,
              top: mediaQuery.size.height * 0.3,
              child: Image.asset(
                widget.flowerGrown >= 1
                    ? 'assets/images/plant_3.png'
                    : 'assets/images/plant_1.png',
                height: 50,
              ),
            ),
            Positioned(
              left: mediaQuery.size.width * 0.41,
              top: mediaQuery.size.height * 0.35,
              child: Image.asset(
                'assets/images/plantpot.png',
                height: 50,
              ),
            ),
            Positioned(
              left: mediaQuery.size.width * 0.42,
              top: mediaQuery.size.height * 0.42,
              child: Image.asset(
                widget.flowerGrown >= 2
                    ? 'assets/images/plant_3.png'
                    : 'assets/images/plant_1.png',
                height: 50,
              ),
            ),
            Positioned(
              left: mediaQuery.size.width * 0.41,
              top: mediaQuery.size.height * 0.47,
              child: Image.asset(
                'assets/images/plantpot.png',
                height: 50,
              ),
            ),
            Positioned(
              left: mediaQuery.size.width * 0.42,
              top: mediaQuery.size.height * 0.54,
              child: Image.asset(
                widget.flowerGrown >= 3
                    ? 'assets/images/plant_3.png'
                    : 'assets/images/plant_1.png',
                height: 50,
              ),
            ),
            Positioned(
              left: mediaQuery.size.width * 0.41,
              top: mediaQuery.size.height * 0.59,
              child: Image.asset(
                'assets/images/plantpot.png',
                height: 50,
              ),
            ),
            Positioned(
              left: mediaQuery.size.width * 0.42,
              top: mediaQuery.size.height * 0.66,
              child: Image.asset(
                widget.flowerGrown >= 4
                    ? 'assets/images/plant_3.png'
                    : 'assets/images/plant_1.png',
                height: 50,
              ),
            ),
            Positioned(
              left: mediaQuery.size.width * 0.41,
              top: mediaQuery.size.height * 0.71,
              child: Image.asset(
                'assets/images/plantpot.png',
                height: 50,
              ),
            ),
            Positioned(
              left: mediaQuery.size.width * 0.42,
              top: mediaQuery.size.height * 0.78,
              child: Image.asset(
                widget.flowerGrown >= 5
                    ? 'assets/images/plant_3.png'
                    : 'assets/images/plant_1.png',
                height: 50,
              ),
            ),
            Positioned(
              left: mediaQuery.size.width * 0.41,
              top: mediaQuery.size.height * 0.83,
              child: Image.asset(
                'assets/images/plantpot.png',
                height: 50,
              ),
            ),
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
                      Positioned.fill(
                        child: Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 15,
                              top: 10,
                            ),
                            child: Image.asset(
                              'assets/images/logo 1.png',
                              height: mediaQuery.size.height * 0.08,
                            ),
                          ),
                        ),
                      ),
                      // Positioned.fill(
                      //   child: Align(
                      //     alignment: Alignment.center,
                      //     child: Padding(
                      //       padding: EdgeInsets.only(
                      //         left: 15,
                      //         top: 10,
                      //       ),
                      //       child: Image.asset(
                      //         'assets/images/logo 1.png',
                      //         height: mediaQuery.size.height * 0.08,
                      //       ),
                      //     ),
                      //   ),
                      // ),
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
                                    '${widget.cupDrunk}',
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
                            InkWell(
                              child: Image.asset(
                                'assets/images/sign_grow.png',
                                width: mediaQuery.size.width * 0.25,
                              ),
                              onTap: () => Navigator.pop(
                                context,
                              ),
                            ),
                            Image.asset(
                              'assets/images/sign_mygarden.png',
                              width: mediaQuery.size.width * 0.38,
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
            Positioned.fill(
              top: mediaQuery.size.height * 0.3,
              bottom: 0,
              child: Align(
                alignment: Alignment.center,
                child: SizedBox(
                  height: mediaQuery.size.height * 0.8,
                  width: mediaQuery.size.width,
                  child: Stack(children: <Widget>[
                    // Positioned(
                    //   left: mediaQuery.size.width * 0.4,
                    //   top: 0,
                    //   child: Image.asset(
                    //     'assets/images/plant_3.png',
                    //     height: 70,
                    //   ),
                    // ),

                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.brown.shade300,
                                Colors.brown.shade700,
                              ],
                            ),
                          ),
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.brown.shade300,
                                Colors.brown.shade700,
                              ],
                            ),
                          ),
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.brown.shade300,
                                Colors.brown.shade700,
                              ],
                            ),
                          ),
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.brown.shade300,
                                Colors.brown.shade700,
                              ],
                            ),
                          ),
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.brown.shade300,
                                Colors.brown.shade700,
                              ],
                            ),
                          ),
                          height: 10,
                        ),
                      ],
                    ),
                  ]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
