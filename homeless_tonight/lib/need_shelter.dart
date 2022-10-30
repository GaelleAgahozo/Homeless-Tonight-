import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Shelter extends StatelessWidget {
  const Shelter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: AppBar(
          backgroundColor: Colors.teal[200],
          centerTitle: true,
          title: Column(children: [
            Text("Toad Suck", style: TextStyle(color: Colors.black)),
            Text(
              "COALITION",
              style: TextStyle(color: Colors.white),
            ),
            Text(
              'FAULKNER COUNTY, ARKANSAS',
              style: TextStyle(fontSize: 8, color: Colors.red[900]),
            )
          ]),
        ),
      ),
      body: Column(children: const <Widget>[
        Align(
          alignment: Alignment.center,
        ),
        SizedBox(
          height: 40,
        ),
        Text("Homeless Tonight",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
        // TextButton(
        //   onPressed: null,
        // onPressed: () {},
        // style: TextButton.styleFrom(
        //     backgroundColor: Colors.teal[200],
        //     shape: RoundedRectangleBorder(
        //         borderRadius: BorderRadius.circular(10))),
        // child: Text(
        //   "Service Provider",
        //   textAlign: TextAlign.center,
        //   style: TextStyle(
        //     fontSize: 40,
        //     fontWeight: FontWeight.bold,
        //     color: Colors.white,
        //   ),
        // )),

        Padding(
            padding: EdgeInsets.only(top: 100, bottom: 10),
            child: ElevatedButton(
                onPressed: null,
                child: Text(
                    "\n I am homeless in \n Conway and don't \n have a place to \n sleep tonight",
                    selectionColor: Color.fromARGB(255, 177, 246, 239),
                    style: TextStyle(
                        fontSize: 24,
                        backgroundColor: Colors.white,
                        height: 1.1)))),
        Padding(
            padding: EdgeInsets.only(top: 20, bottom: 5),
            child: Text("Connect with a local \n homeless service \n provider",
                selectionColor: Color.fromARGB(255, 177, 246, 239),
                style: TextStyle(fontSize: 22))),
        // Padding(
        //     padding: EdgeInsets.only(top: 5, bottom: 30),
        //     child: Text("1-866-358-2265",
        //         style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold))),
        // Padding(
        //     padding: EdgeInsets.only(top: 10, bottom: 10),
        //     child: Text(
        //       "If you are seriously injured and need\nimmediate medical attention,\n please call 911 immediately.",
        //       style: TextStyle(fontSize: 16),
        //       textAlign: TextAlign.center,
        //     )),
        // Padding(
        //     padding: EdgeInsets.only(top: 10, bottom: 20),
        //     child: SizedBox(
        //       width: 250,
        //       height: 80,
        //       child: ElevatedButton(
        //           onPressed: null,
        //           child: Text("Call 911",
        //               style: TextStyle(fontSize: 25, height: 1.1))),
        //     )),
        // Padding(
        //     padding: EdgeInsets.only(top: 10),
        //     child: Text(
        //       "Connect with a Crisis\nTeam Member",
        //       style: TextStyle(fontSize: 22),
        //       textAlign: TextAlign.center,
        //     )),
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
            decoration: InputDecoration(hintText: "2. Enter Currect Location"),
            //Connect User Inputs to Controller
            controller: null,
          ),
        ),
        SizedBox(
          width: 300,
          child: TextField(
            decoration: InputDecoration(
                hintText: "2. What Type of Shelter Do You Need?"),
            //Connect User Inputs to Controller
            controller: null,
          ),
        ),
        Padding(
            padding: EdgeInsets.only(top: 10),
            child: SizedBox(
              width: 150,
              height: 60,
              child: ElevatedButton(
                  onPressed: null,
                  child: Text("Send",
                      style: TextStyle(
                          fontSize: 25,
                          backgroundColor: Colors.white,
                          height: 1.1))),
            )),
      ]),
    );
  }
}
