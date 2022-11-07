import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:homeless_tonight/pageTemplate.dart';
import 'package:homeless_tonight/resources_screen.dart';

class Shelter extends StatelessWidget {
  const Shelter({super.key});

  @override
  Widget build(BuildContext context) {
    return HomelessTonightPage(
        child: Center(
            child: Column(children: [
      const Spacer(),
      TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
              backgroundColor: Colors.teal[200],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18))),
          child: const Text(
            "I am homeless in \n Conway and don't \n have a place to \n sleep tonight ",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 27,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          )),
      const Padding(
          padding: EdgeInsets.only(top: 30, bottom: 100),
          child: Text("Connect with a local \n homeless service \n provider",
              style: TextStyle(fontSize: 22))),
      const Padding(
          padding: EdgeInsets.only(top: 5, bottom: 50),
          child: Text(" 1. Enter Your Name",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold))),
      const Padding(
          padding: EdgeInsets.only(top: 4, bottom: 50),
          child: Text(
            " 2. Enter Current Location",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          )),
      const Padding(
          padding: EdgeInsets.only(top: 1, bottom: 60),
          child: Text(
            " 3. What Type of Shelter Do You Need?",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          )),
      TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
              backgroundColor: Colors.teal[200],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
          child: const Text(
            "Send ",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          )),
    ])));
  }
}
