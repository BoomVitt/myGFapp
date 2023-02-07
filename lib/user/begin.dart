import 'package:flutter/material.dart';
import 'package:twogether/user/homepage.dart';

class begin extends StatefulWidget {
  begin({Key? key}) : super(key: key);

  @override
  State<begin> createState() => _beginState();
}

class _beginState extends State<begin> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWeight = MediaQuery.of(context).size.width;
    return MaterialApp(
      
      home: Scaffold(
        body: Container(
          child: Stack(
            alignment: Alignment.topCenter,
            clipBehavior: Clip.none,
            children: [
              Image.asset(
                "assets/favpic/fav.JPG",
                height: screenHeight * 0.6,
                width: screenWeight,
                fit: BoxFit.cover,
              ),
              Container(
                
                margin: EdgeInsets.only(top: screenHeight * 0.5),
                height: double.infinity,
                width: screenWeight,
                decoration: BoxDecoration(
                      color: Color.fromARGB(255, 43, 41, 41),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(45),
                        topRight: Radius.circular(45))),
                child: Column(
                  children: [
                    SizedBox(height: 40),
                    Icon(
                      Icons.favorite,
                      color: Colors.pink[400],
                      size: 60,
                    ),
                    Text(
                      "Will you",
                      style: TextStyle(fontSize: 40, fontFamily: "Lobster", color: Colors.white),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Be my",
                      style: TextStyle(fontSize: 25, fontFamily: "Lobster", color: Colors.white),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Best Present ?",
                      style: TextStyle(fontSize: 40, fontFamily: "Lobster", color: Colors.white),
                    ),
                    SizedBox(height: 15),
                    Text(
                      "''Love you นะคับอีดุ๋ย 🥰''",
                      style: TextStyle(fontSize: 15 , color: Colors.white),
                    ),
                    SizedBox(height: 20),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => homepage(),
                          ),
                        );
                      },
                      child: Container(
                       
                        width: screenWeight * 0.6,
                        padding: EdgeInsets.symmetric(vertical: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(25),
                          ),
                          color: Colors.pink[400],
                        ),
                        child: Text(
                          "YES!!",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
