import 'package:flutter/material.dart';
import 'package:homeless_tonight/pageTemplate.dart';

class DomesticViolenceScreen extends StatelessWidget {
  const DomesticViolenceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return HomelessTonightPage(
      child: Column(children: const <Widget>[
        Align(
          alignment: Alignment.center,
        ),
        Padding(
            padding: EdgeInsets.only(top: 100, bottom: 10),
            child: ElevatedButton(
                onPressed: null,
                child: Text(
                    "\n I am a victim of Domestic \n Violence/Sex Trafficking \n",
                    style: TextStyle(fontSize: 24, height: 1.1)))),
        Padding(
            padding: EdgeInsets.only(top: 20, bottom: 5),
            child: Text("24 Hour Crisis Line", style: TextStyle(fontSize: 22))),
        Padding(
            padding: EdgeInsets.only(top: 5, bottom: 30),
            child: Text("1-866-358-2265",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold))),
        Padding(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child: Text(
              "If you are seriously injured and need\nimmediate medical attention,\n please call 911 immediately.",
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            )),
        Padding(
            padding: EdgeInsets.only(top: 10, bottom: 20),
            child: SizedBox(
              width: 250,
              height: 80,
              child: ElevatedButton(
                  onPressed: null,
                  child: Text("Call 911",
                      style: TextStyle(fontSize: 25, height: 1.1))),
            )),
        Padding(
            padding: EdgeInsets.only(top: 10),
            child: Text(
              "Connect with a Crisis\nTeam Member",
              style: TextStyle(fontSize: 22),
              textAlign: TextAlign.center,
            )),
        SizedBox(
          width: 300,
          child: TextField(
            decoration: InputDecoration(hintText: "1. Enter Your Name"),
            //Connect User Inputs to Controller
            controller: null,
          ),
        ),
        SizedBox(
          width: 300,
          child: TextField(
            decoration: InputDecoration(hintText: "2. Need"),
            //Connect User Inputs to Controller
            controller: null,
          ),
        ),
        Padding(
            padding: EdgeInsets.only(top: 3),
            child: SizedBox(
              width: 150,
              height: 60,
              child: ElevatedButton(
                  onPressed: null,
                  child: Text("Send",
                      style: TextStyle(fontSize: 20, height: 0.5))),
            )),
      ]),
    );
  }
}
