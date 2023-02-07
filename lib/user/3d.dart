import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';
import 'package:twogether/user/homepage.dart';
import 'package:flutter_cube/flutter_cube.dart';

class threed extends StatefulWidget {
  const threed({super.key});

  @override
  State<threed> createState() => _threedState();
}

class _threedState extends State<threed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        child: ModelViewer(
          src: 'https://modelviewer.dev/shared-assets/models/Astronaut.glb',
          alt: "mymodel",
          ar: true,
          autoRotate: true,
          cameraControls: true,
        ),
      ),
    );
  }
}
