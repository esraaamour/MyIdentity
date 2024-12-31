// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';


// This is a simple Flutter application that displays a profile screen with some personal details. 

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      home: profile(),
    );
  }
}

class profile extends StatelessWidget {
  const profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
        centerTitle: true,
        title: const Text(
          "Profile",
          style: TextStyle(color: Colors.white, fontSize: 35),
        ),
      ),
      body: Column(children: [
        Container(
          margin: EdgeInsets.only(top: 33),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CircleAvatar(
                radius: 66,
                backgroundImage: AssetImage("assest/pic.jpg"),
              ),
              Icon(
                Icons.verified,
                color: Color.fromARGB(255, 238, 223, 223),
                size: 27,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 50,
        ),
        Container(
          margin: EdgeInsets.only(left: 30),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              "Name : ",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.w100),
            ),
            Text(
              "Esraa Amour",
              style: TextStyle(
                  fontSize: 25,
                  fontFamily: "myFont",
                  color: Colors.amber[300],
                  fontWeight: FontWeight.w100),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Current Level :",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.w100),
            ),
            Text(
              "Advanced",
              style: TextStyle(
                  fontSize: 30,
                  fontFamily: "myFont",
                  color: Colors.amber[300],
                  fontWeight: FontWeight.w100),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Icon(Icons.email, color: Colors.grey),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "esraaamour@gmail.com",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ]),
        ),
      ]),
    );
  }
}
