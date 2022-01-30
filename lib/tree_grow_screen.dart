// import 'package:flutter/material.dart';

// class GrowScreen extends StatefulWidget {
//   const GrowScreen({Key? key}) : super(key: key);

//   int cupdrunk;
//   MediaQuery mediaQuery;
//   double fromRight;
//   double treeHeight;
//   double treeWidth;
//   Function drink;

//   GrowScreen({required this.cupdrunk, required this.drink,required this.fromRight, required this.mediaQuery, required this.treeHeight,required this.treeWidth})

//   @override
//   _GrowScreenState createState() => _GrowScreenState();
// }

// class _GrowScreenState extends State<GrowScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
//       // floatingActionButton: FloatingActionButton(
//       //   onPressed: () {},
//       //   child: Icon(
//       //     Icons.umbrella,
//       //   ),
//       // ),
//       body: Container(
//         height: mediaQuery.size.height,
//         width: mediaQuery.size.width,
//         color: const Color(0xff92C2C6),
//         child: Stack(
//           children: <Widget>[
//             // Padding(
//             //   padding: const EdgeInsets.only(
//             //     bottom: 10,
//             //   ),
//             //   child: Text(
//             //     'Your water intake today',
//             //     style: TextStyle(
//             //       color: Colors.grey[600],
//             //     ),
//             //   ),
//             // ),
//             Positioned(
//               top: 0,
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: <Widget>[
//                   Stack(
//                     children: <Widget>[
//                       Container(
//                           color: const Color(
//                             0xffE6DAD1,
//                           ),
//                           width: mediaQuery.size.width,
//                           height: mediaQuery.size.height * 0.15),
//                       const Positioned.fill(
//                         child: Align(
//                           alignment: Alignment.center,
//                           child: Icon(
//                             Icons.track_changes,
//                             size: 60,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                   Stack(
//                     children: [
//                       SizedBox(
//                         width: mediaQuery.size.width,
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                           children: <Widget>[
//                             Stack(
//                               children: <Widget>[
//                                 Image.asset(
//                                   'assets/images/sign_cups.png',
//                                   width: mediaQuery.size.width * 0.34,
//                                 ),
//                                 Positioned(
//                                   left: mediaQuery.size.width * 0.23,
//                                   top: mediaQuery.size.height * 0.04,
//                                   child: Text(
//                                     '$cupDrunk',
//                                     style: const TextStyle(
//                                       fontSize: 20,
//                                     ),
//                                   ),
//                                 )
//                               ],
//                             ),
//                             Image.asset(
//                               'assets/images/sign_grow.png',
//                               width: mediaQuery.size.width * 0.25,
//                             ),
//                             Image.asset(
//                               'assets/images/sign_mygarden.png',
//                               width: mediaQuery.size.width * 0.38,
//                             ),
//                           ],
//                         ),
//                       ),
//                       Container(
//                         color: const Color(
//                           0xffDDC09E,
//                         ),
//                         width: mediaQuery.size.width,
//                         height: mediaQuery.size.height * 0.01,
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//             Positioned(
//               top: mediaQuery.size.height * 0.2,
//               left: mediaQuery.size.width * 0.1,
//               child: Align(
//                 alignment: Alignment.center,
//                 child: SizedBox(
//                   width: mediaQuery.size.width,
//                   height: mediaQuery.size.height,
//                   child: Stack(
//                     children: <Widget>[
//                       Positioned(
//                         bottom: mediaQuery.size.height * 0.65,
//                         right: mediaQuery.size.width * fromRight,
//                         child: Image.asset(
//                           treeAsset,
//                           height: mediaQuery.size.height * treeHeight,
//                           width: mediaQuery.size.width * treeWidth,
//                         ),
//                       ),
//                       Positioned(
//                         bottom: mediaQuery.size.height * 0.57,
//                         child: SizedBox(
//                           height: mediaQuery.size.height * 0.13,
//                           width: mediaQuery.size.width * 0.8,
//                           child: Image.asset(
//                             'assets/images/plantpot.png',
//                           ),
//                         ),
//                       ),
//                       Positioned(
//                         bottom: mediaQuery.size.height * 0.25,
//                         child: Image.asset(
//                           'assets/images/table.png',
//                           height: mediaQuery.size.height * 0.4,
//                           width: mediaQuery.size.width * 0.8,
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//             Positioned(
//               bottom: 0,
//               child: Stack(
//                 children: [
//                   Container(
//                       color: const Color(0xffCDA87E),
//                       width: mediaQuery.size.width,
//                       height: mediaQuery.size.height * 0.2),
//                   Positioned(
//                     bottom: 0,
//                     child: Container(
//                         color: const Color(0xffAF7C45),
//                         width: mediaQuery.size.width,
//                         height: mediaQuery.size.height * 0.02),
//                   ),
//                 ],
//               ),
//             ),
//             Positioned.fill(
//               child: Align(
//                 alignment: Alignment.bottomCenter,
//                 child: Padding(
//                   padding: const EdgeInsets.only(
//                     bottom: 40,
//                   ),
//                   child: ElevatedButton(
//                     onPressed: drink,
//                     child: Stack(
//                       children: <Widget>[
//                         Image.asset(
//                           'assets/images/button_image.png',
//                         ),
//                       ],
//                     ),
//                     style: ButtonStyle(
//                       foregroundColor: MaterialStateProperty.all(
//                         // Color(
//                         //   0xff1BAAE6,
//                         // ),
//                         Colors.white,
//                       ),
//                       side: MaterialStateProperty.all(
//                         const BorderSide(
//                           width: 4.0,
//                           color: Colors.white,
//                         ),
//                       ),
//                       fixedSize: MaterialStateProperty.all(
//                         const Size(
//                           140,
//                           140,
//                         ),
//                       ),
//                       elevation: MaterialStateProperty.all(8.0),
//                       backgroundColor: MaterialStateProperty.all(
//                         const Color(0xff1BAAE6),
//                       ),
//                       shape: MaterialStateProperty.all<CircleBorder>(
//                         CircleBorder(),
//                       ),
//                       shadowColor: MaterialStateProperty.all(
//                         Colors.blue,
//                       ),
//                     ),
//                   ),
//                 ),

//                 // RichText(
//                 //   text: TextSpan(
//                 //     children: <TextSpan>[
//                 //       TextSpan(
//                 //         text: '${waterIntake} /',
//                 //         style: TextStyle(
//                 //           letterSpacing: 1,
//                 //           fontSize: 34,
//                 //           color: Colors.black,
//                 //         ),
//                 //       ),
//                 //       TextSpan(
//                 //         text: ' ${waterRequired}',
//                 //         style: TextStyle(
//                 //           fontFamily: 'Helvetica',
//                 //           fontWeight: FontWeight.bold,
//                 //           letterSpacing: 1,
//                 //           fontSize: 34,
//                 //         ),
//                 //       )
//                 //     ],
//                 //   ),
//                 // ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
