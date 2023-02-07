import 'package:flutter/material.dart';
import 'package:twogether/components/healing.dart';
import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';
import 'package:twogether/user/3d.dart';
import 'package:twogether/user/audio2.dart';
import 'package:twogether/user/favpic.dart';
import 'package:twogether/user/game.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWeight = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          child: Image.asset('assets/logo.png'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        // actions: <Widget>[
        //   Padding(
        //       padding: EdgeInsets.only(right: 20.0),
        //       child: GestureDetector(
        //         onTap: () {
        //           Navigator.push(
        //             context,
        //             MaterialPageRoute(
        //               builder: (context) => homepage(),
        //             ),
        //           );
        //         },
        //         child: Icon(
        //           Icons.home,
        //           size: 26.0,
        //         ),
        //       )),
        // ],
        title: const Text(
          '2GETHER',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 30, color: Colors.black),
        ),
        backgroundColor: Color.fromARGB(255, 245, 127, 167),
      ),
      body: Container(
          constraints: BoxConstraints.expand(),
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/bg.JPG"), fit: BoxFit.cover),
          ),
          child: Center(
            child: SizedBox(
              height: screenHeight * 0.5,
              width: screenWeight * 0.5,
              child: Center(
                  child:
                      Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
                ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromARGB(255, 215, 87, 130)),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => healing(),
                        ),
                      );
                    },
                    child: const Text(
                      'Healing',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Color.fromARGB(255, 255, 255, 255)),
                    )),
                const SizedBox(height: 15),
                ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromARGB(255, 215, 87, 130)),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => audioforyou(),
                        ),
                      );
                    },
                    child: const Text(
                      'Audio Foryou',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Color.fromARGB(255, 255, 255, 255)),
                    )),
                const SizedBox(height: 15),
                ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromARGB(255, 215, 87, 130)),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => game(),
                        ),
                      );
                    },
                    child: const Text(
                      'Play game!',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Color.fromARGB(255, 255, 255, 255)),
                    )),
                const SizedBox(height: 15),
                // ElevatedButton(
                //     style: ButtonStyle(
                //       backgroundColor: MaterialStateProperty.all(
                //           Color.fromARGB(255, 215, 87, 130)),
                //     ),
                //     onPressed: () {
                //       Navigator.push(
                //         context,
                //         MaterialPageRoute(
                //           builder: (context) => threed(),
                //         ),
                //       );
                //     },
                //     child: const Text(
                //       'Our 3D model',
                //       style: TextStyle(
                //           fontWeight: FontWeight.bold,
                //           fontSize: 20,
                //           color: Color.fromARGB(255, 255, 255, 255)),
                //     )),
                // const SizedBox(height: 15),
                ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromARGB(255, 215, 87, 130)),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => pic(),
                        ),
                      );
                    },
                    child: const Text(
                      'Our favorite time',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Color.fromARGB(255, 255, 255, 255)),
                    )),
                const SizedBox(height: 15),
              ])),
            ),
          )),
    );
  }
}
