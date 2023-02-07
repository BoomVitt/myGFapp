import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:particles_flutter/particles_flutter.dart';
import 'package:twogether/user/homepage.dart';

class game extends StatefulWidget {
  const game({super.key});

  @override
  State<game> createState() => _gameState();
}

class _gameState extends State<game> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: GestureDetector(
          child: Image.asset("assets/logo.png"),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => homepage(),
                    ),
                  );
                },
                child: Icon(
                  Icons.home,
                  size: 26.0,
                ),
              )),
        ],
        title: const Text(
          '2GETHER',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 30, color: Colors.black),
        ),
        backgroundColor: Color.fromARGB(255, 245, 127, 167),
      ),
      body: Center(
        child: Container(
          key: UniqueKey(),
          child: Center(
            child: CircularParticle(
              // key: UniqueKey(),
              awayRadius: 80,
              numberOfParticles: 200,
              speedOfParticles: 1,
              height: screenHeight,
              width: screenWidth,
              onTapAnimation: true,
              particleColor: Colors.white.withAlpha(150),
              awayAnimationDuration: Duration(milliseconds: 600),
              maxParticleSize: 8,
              isRandSize: true,
              isRandomColor: true,
              randColorList: [
                Colors.red.withAlpha(210),
                Colors.white.withAlpha(210),
                Colors.yellow.withAlpha(210),
                Colors.green.withAlpha(210)
              ],
              awayAnimationCurve: Curves.easeInOutBack,
              enableHover: true,
              hoverColor: Colors.white,
              hoverRadius: 90,
              connectDots: true, //not recommended
            ),
          ),
        ),
      ),
    );
    ;
  }
}
