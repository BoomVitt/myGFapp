import 'package:flutter/material.dart';
import 'package:twogether/user/homepage.dart';

class pic extends StatefulWidget {
  const pic({super.key});

  @override
  State<pic> createState() => _picState();
}

int daysBetween(DateTime from, DateTime to) {
  from = DateTime(from.year, from.month, from.day);
  to = DateTime(to.year, to.month, to.day);
  return (to.difference(from).inHours / 24).round();
}

//the birthday's date
final birthday = DateTime(1967, 10, 12);
final date2 = DateTime.now();
final difference = daysBetween(birthday, date2).toString();

class _picState extends State<pic> {
  @override
  Widget build(BuildContext context) {
    print(difference);
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
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/bg.JPG"), fit: BoxFit.cover),
        ),
        child: Padding(
          padding: EdgeInsets.all(30),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Center(
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80),
                      //set border radius more than 50% of height and width to make circle
                    ),
                    child: Center(
                      child: Image.asset('assets/favpic/28.JPG'),
                    ),
                  ),
                ),
                Center(
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80),
                      //set border radius more than 50% of height and width to make circle
                    ),
                    child: Center(
                      child: Image.asset('assets/favpic/29.JPG'),
                    ),
                  ),
                ),
                Center(
                  child: Card(
                    child: Center(
                      child: Image.asset('assets/favpic/26.HEIC'),
                    ),
                  ),
                ),
                Center(
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80),
                      //set border radius more than 50% of height and width to make circle
                    ),
                    child: Center(
                      child: Image.asset('assets/favpic/25.HEIC'),
                    ),
                  ),
                ),
                Center(
                  child: Card(
                    child: Center(
                      child: Image.asset('assets/favpic/24.JPG'),
                    ),
                  ),
                ),
                Center(
                  child: Card(
                    child: Center(
                      child: Image.asset('assets/favpic/23.HEIC'),
                    ),
                  ),
                ),
                Center(
                  child: Card(
                    child: Center(
                      child: Image.asset('assets/favpic/22.HEIC'),
                    ),
                  ),
                ),
                Center(
                  child: Card(
                    child: Center(
                      child: Image.asset('assets/favpic/21.JPG'),
                    ),
                  ),
                ),
                Center(
                  child: Card(
                    child: Center(
                      child: Image.asset('assets/favpic/20.HEIC'),
                    ),
                  ),
                ),
                Center(
                  child: Card(
                    child: Center(
                      child: Image.asset('assets/favpic/19.HEIC'),
                    ),
                  ),
                ),
                Center(
                  child: Card(
                    child: Center(
                      child: Image.asset('assets/favpic/18.HEIC'),
                    ),
                  ),
                ),
                Center(
                  child: Card(
                    child: Center(
                      child: Image.asset('assets/favpic/17.JPG'),
                    ),
                  ),
                ),
                Center(
                  child: Card(
                    child: Center(
                      child: Image.asset('assets/favpic/16.HEIC'),
                    ),
                  ),
                ),
                Center(
                  child: Card(
                    child: Center(
                      child: Image.asset('assets/favpic/15.HEIC'),
                    ),
                  ),
                ),
                Center(
                  child: Card(
                    child: Center(
                      child: Image.asset('assets/favpic/14.HEIC'),
                    ),
                  ),
                ),
                Center(
                  child: Card(
                    child: Center(
                      child: Image.asset('assets/favpic/12.HEIC'),
                    ),
                  ),
                ),
                Center(
                  child: Card(
                    child: Center(
                      child: Image.asset('assets/favpic/11.JPG'),
                    ),
                  ),
                ),
                Center(
                  child: Card(
                    child: Center(
                      child: Image.asset('assets/favpic/10.JPG'),
                    ),
                  ),
                ),
                Center(
                  child: Card(
                    child: Center(
                      child: Image.asset('assets/favpic/9.JPG'),
                    ),
                  ),
                ),
                Center(
                  child: Card(
                    child: Center(
                      child: Image.asset('assets/favpic/8.HEIC'),
                    ),
                  ),
                ),
                Center(
                  child: Card(
                    child: Center(
                      child: Image.asset('assets/favpic/7.HEIC'),
                    ),
                  ),
                ),
                Center(
                  child: Card(
                    child: Center(
                      child: Image.asset('assets/favpic/6.HEIC'),
                    ),
                  ),
                ),
                Center(
                  child: Card(
                    child: Center(
                      child: Image.asset('assets/favpic/5.JPG'),
                    ),
                  ),
                ),
                Center(
                  child: Card(
                    child: Center(
                      child: Image.asset('assets/favpic/4.JPG'),
                    ),
                  ),
                ),
                Center(
                  child: Card(
                    child: Center(
                      child: Image.asset('assets/favpic/3.HEIC'),
                    ),
                  ),
                ),
                Center(
                  child: Card(
                    child: Center(
                      child: Image.asset('assets/favpic/2.HEIC'),
                    ),
                  ),
                ),
                Center(
                  child: Card(
                    child: Center(
                      child: Image.asset('assets/favpic/1.JPG'),
                    ),
                  ),
                ),
                Center(
                  child: Card(
                    child: Center(
                      child: Image.asset('assets/favpic/27.HEIC'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
